.class public abstract Ll3/w0;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"

# interfaces
.implements Ll3/x0;


# direct methods
.method public static z3(Landroid/os/IBinder;)Ll3/x0;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IResponseInfo"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Ll3/x0;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Ll3/x0;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Ll3/v0;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Ll3/v0;-><init>(Landroid/os/IBinder;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method


# virtual methods
.method public final y3(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return p1

    .line 6
    :pswitch_0
    move-object p1, p0

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/lj;

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/lj;->I:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_1
    move-object p1, p0

    .line 19
    check-cast p1, Lcom/google/android/gms/internal/ads/lj;

    .line 20
    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/lj;->O:Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_2
    move-object p1, p0

    .line 31
    check-cast p1, Lcom/google/android/gms/internal/ads/lj;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lj;->zzf()Ll3/g1;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    .line 39
    .line 40
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_3
    move-object p1, p0

    .line 45
    check-cast p1, Lcom/google/android/gms/internal/ads/lj;

    .line 46
    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/lj;->K:Ljava/util/List;

    .line 51
    .line 52
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_4
    move-object p1, p0

    .line 57
    check-cast p1, Lcom/google/android/gms/internal/ads/lj;

    .line 58
    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    .line 61
    .line 62
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/lj;->H:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_5
    move-object p1, p0

    .line 69
    check-cast p1, Lcom/google/android/gms/internal/ads/lj;

    .line 70
    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    .line 73
    .line 74
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/lj;->G:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    const/4 p1, 0x1

    .line 80
    return p1

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
