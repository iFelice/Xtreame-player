.class public final Lcom/google/android/gms/internal/ads/Dx;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/media/AudioManager;

.field public c:F

.field public final d:Lcom/google/android/gms/internal/ads/Nx;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/android/gms/internal/ads/Nx;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Dx;->a:Landroid/content/Context;

    .line 5
    .line 6
    const-string p1, "audio"

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/media/AudioManager;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dx;->b:Landroid/media/AudioManager;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Dx;->d:Lcom/google/android/gms/internal/ads/Nx;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dx;->b:Landroid/media/AudioManager;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    if-gtz v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    int-to-float v1, v2

    .line 19
    int-to-float v0, v0

    .line 20
    div-float/2addr v1, v0

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    .line 23
    cmpl-float v2, v1, v0

    .line 24
    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    .line 29
    nop

    .line 30
    :cond_1
    :goto_0
    return v1
.end method

.method public final b()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Dx;->c:F

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dx;->d:Lcom/google/android/gms/internal/ads/Nx;

    .line 4
    .line 5
    iput v0, v1, Lcom/google/android/gms/internal/ads/Nx;->a:F

    .line 6
    .line 7
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Nx;->c:Lcom/google/android/gms/internal/ads/Hx;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/Hx;->c:Lcom/google/android/gms/internal/ads/Hx;

    .line 12
    .line 13
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/Nx;->c:Lcom/google/android/gms/internal/ads/Hx;

    .line 14
    .line 15
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Nx;->c:Lcom/google/android/gms/internal/ads/Hx;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Hx;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/google/android/gms/internal/ads/xx;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/xx;->d:Lcom/google/android/gms/internal/ads/Px;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Px;->a()Landroid/webkit/WebView;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Px;->a:Ljava/lang/String;

    .line 50
    .line 51
    const/4 v5, 0x2

    .line 52
    new-array v5, v5, [Ljava/lang/Object;

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    aput-object v4, v5, v6

    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    aput-object v2, v5, v4

    .line 59
    .line 60
    const-string v2, "setDeviceVolume"

    .line 61
    .line 62
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/ads/Cw;->L0(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public final onChange(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Dx;->a()F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/Dx;->c:F

    .line 9
    .line 10
    cmpl-float v0, p1, v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/Dx;->c:F

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Dx;->b()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
