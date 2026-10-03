.class public final Lcom/google/android/gms/internal/ads/Nx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ix;


# static fields
.field public static d:Lcom/google/android/gms/internal/ads/Nx;


# instance fields
.field public a:F

.field public b:Lcom/google/android/gms/internal/ads/Dx;

.field public c:Lcom/google/android/gms/internal/ads/Hx;


# direct methods
.method public static a()Lcom/google/android/gms/internal/ads/Nx;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Nx;->d:Lcom/google/android/gms/internal/ads/Nx;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/Nx;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lcom/google/android/gms/internal/ads/Nx;->a:F

    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/ads/Nx;->d:Lcom/google/android/gms/internal/ads/Nx;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Nx;->d:Lcom/google/android/gms/internal/ads/Nx;

    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public final zzc(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/Vx;->g:Lcom/google/android/gms/internal/ads/Vx;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/Vx;->b()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/Vx;->g:Lcom/google/android/gms/internal/ads/Vx;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/google/android/gms/internal/ads/Vx;->i:Landroid/os/Handler;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/Vx;->k:Lcom/google/android/gms/internal/ads/w4;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    sput-object p1, Lcom/google/android/gms/internal/ads/Vx;->i:Landroid/os/Handler;

    .line 28
    .line 29
    :cond_1
    return-void
.end method
