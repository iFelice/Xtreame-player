.class public final Lcom/google/android/gms/internal/ads/Zp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/QJ;

.field public final b:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/Vp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zp;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zp;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zp;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/Up;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zp;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 10
    .line 11
    check-cast v1, Lcom/google/android/gms/internal/ads/Vp;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Vp;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 14
    .line 15
    check-cast v2, Lcom/google/android/gms/internal/ads/Sp;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Sp;->a()Lcom/google/android/gms/internal/ads/Rp;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Vp;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 22
    .line 23
    check-cast v1, Lcom/google/android/gms/internal/ads/ig;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ig;->a()Lo3/L;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v3, LF5/g;

    .line 30
    .line 31
    invoke-direct {v3, v2, v1}, Lf/H;-><init>(Lcom/google/android/gms/internal/ads/Rp;Lo3/L;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/google/android/gms/internal/ads/Yp;

    .line 35
    .line 36
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/ads/Yp;-><init>(Lcom/google/android/gms/internal/ads/Up;LF5/g;)V

    .line 37
    .line 38
    .line 39
    return-object v1
.end method
