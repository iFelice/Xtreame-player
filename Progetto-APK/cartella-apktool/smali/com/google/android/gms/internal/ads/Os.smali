.class public final Lcom/google/android/gms/internal/ads/Os;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Os;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Os;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Os;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/Ls;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Os;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/google/android/gms/internal/ads/qn;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Os;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 15
    .line 16
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/google/android/gms/internal/ads/eo;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Os;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 23
    .line 24
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/google/android/gms/internal/ads/Ns;

    .line 29
    .line 30
    new-instance v4, Lcom/google/android/gms/internal/ads/Ls;

    .line 31
    .line 32
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Ls;-><init>(Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/qn;Lcom/google/android/gms/internal/ads/eo;Lcom/google/android/gms/internal/ads/Ns;)V

    .line 33
    .line 34
    .line 35
    return-object v4
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Os;->a()Lcom/google/android/gms/internal/ads/Ls;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
