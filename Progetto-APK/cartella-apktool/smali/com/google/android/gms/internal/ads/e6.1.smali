.class public abstract Lcom/google/android/gms/internal/ads/e6;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final y3(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_2

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p1, v2, :cond_1

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-eq p1, v2, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    sget-object p1, Ll3/z0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ll3/z0;

    .line 19
    .line 20
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/f6;->b3(Ll3/z0;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const-string v2, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd"

    .line 43
    .line 44
    invoke-interface {p1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/c6;

    .line 49
    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    move-object p1, v3

    .line 53
    check-cast p1, Lcom/google/android/gms/internal/ads/c6;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    new-instance v3, Lcom/google/android/gms/internal/ads/b6;

    .line 57
    .line 58
    invoke-direct {v3, p1, v2, v0}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    move-object p1, v3

    .line 62
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/f6;->U2(Lcom/google/android/gms/internal/ads/c6;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    .line 70
    .line 71
    return v1
.end method
