.class public abstract Lcom/google/android/gms/internal/ads/YL;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lcom/google/android/gms/internal/ads/JL;
    .locals 0

    .line 1
    invoke-static {p0, p1}, LD0/a;->y(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/google/android/gms/internal/ads/JL;->d:Lcom/google/android/gms/internal/ads/JL;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p0, LD0/g;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, LD0/g;->a:Z

    .line 17
    .line 18
    iput-boolean p2, p0, LD0/g;->c:Z

    .line 19
    .line 20
    invoke-virtual {p0}, LD0/g;->c()Lcom/google/android/gms/internal/ads/JL;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
