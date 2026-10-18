.class public abstract Lcom/google/android/gms/internal/ads/mM;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/TL;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1}, LB0/q;->g(Ljava/lang/Object;)Landroid/media/AudioDeviceInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p0, Lcom/google/android/gms/internal/ads/lM;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/IL;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/IL;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->Q:Lcom/google/android/gms/internal/ads/IL;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->r:Lcom/google/android/gms/internal/ads/GL;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/GL;->a(Landroid/media/AudioDeviceInfo;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/lM;->Q:Lcom/google/android/gms/internal/ads/IL;

    .line 33
    .line 34
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/cM;->a(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/IL;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method
