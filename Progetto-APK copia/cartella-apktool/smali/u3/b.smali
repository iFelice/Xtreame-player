.class public final Lu3/b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public G:Z

.field public H:Landroid/widget/ImageView$ScaleType;

.field public I:Z

.field public J:Lu3/e;

.field public K:Lu3/e;


# virtual methods
.method public final declared-synchronized a(Lu3/e;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lu3/b;->K:Lu3/e;

    .line 3
    .line 4
    iget-boolean v0, p0, Lu3/b;->I:Z

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lu3/b;->H:Landroid/widget/ImageView$ScaleType;

    .line 9
    .line 10
    iget-object p1, p1, Lu3/e;->a:Lu3/d;

    .line 11
    .line 12
    iget-object p1, p1, Lu3/d;->H:Lcom/google/android/gms/internal/ads/X8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :try_start_1
    new-instance v1, LR3/b;

    .line 20
    .line 21
    invoke-direct {v1, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/X8;->r0(LR3/a;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    :try_start_2
    const-string v0, "Unable to call setMediaViewImageScaleType on delegate"

    .line 30
    .line 31
    invoke-static {v0, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit p0

    .line 41
    throw p1
.end method

.method public getMediaContent()Lf3/k;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public setImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lu3/b;->I:Z

    .line 3
    .line 4
    iput-object p1, p0, Lu3/b;->H:Landroid/widget/ImageView$ScaleType;

    .line 5
    .line 6
    iget-object v0, p0, Lu3/b;->K:Lu3/e;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, v0, Lu3/e;->a:Lu3/d;

    .line 11
    .line 12
    iget-object v0, v0, Lu3/d;->H:Lcom/google/android/gms/internal/ads/X8;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    :try_start_0
    new-instance v1, LR3/b;

    .line 20
    .line 21
    invoke-direct {v1, p1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/X8;->r0(LR3/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    const-string v0, "Unable to call setMediaViewImageScaleType on delegate"

    .line 30
    .line 31
    invoke-static {v0, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public setMediaContent(Lf3/k;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lu3/b;->G:Z

    .line 3
    .line 4
    iget-object v0, p0, Lu3/b;->J:Lu3/e;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Lu3/e;->a:Lu3/d;

    .line 9
    .line 10
    iget-object v0, v0, Lu3/d;->H:Lcom/google/android/gms/internal/ads/X8;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :try_start_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/X8;->Z(Lcom/google/android/gms/internal/ads/R8;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    const-string v1, "Unable to call setMediaContent on delegate"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    :try_start_1
    invoke-interface {p1}, Lf3/k;->zza()Lcom/google/android/gms/internal/ads/f9;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    invoke-interface {p1}, Lf3/k;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    new-instance p1, LR3/b;

    .line 42
    .line 43
    invoke-direct {p1, p0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/f9;->H(LR3/a;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    goto :goto_1

    .line 51
    :catch_1
    move-exception p1

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    invoke-interface {p1}, Lf3/k;->zzb()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    new-instance p1, LR3/b;

    .line 60
    .line 61
    invoke-direct {p1, p0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/f9;->K(LR3/a;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    :goto_1
    if-nez p1, :cond_5

    .line 69
    .line 70
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_2
    return-void

    .line 74
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 75
    .line 76
    .line 77
    const-string v0, ""

    .line 78
    .line 79
    invoke-static {v0, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
