.class public final Lcom/google/android/gms/internal/ads/mu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/QJ;

.field public final b:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/jg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mu;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mu;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mu;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/Qd;

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mu;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 15
    .line 16
    check-cast v2, Lcom/google/android/gms/internal/ads/jg;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jg;->a()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Lcom/google/android/gms/internal/ads/ku;

    .line 23
    .line 24
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ku;-><init>(Lcom/google/android/gms/internal/ads/Qd;Lcom/google/android/gms/internal/ads/re;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    return-object v3
.end method
