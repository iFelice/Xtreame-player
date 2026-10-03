.class public final Lcom/google/android/gms/internal/ads/yp;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Pc;


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/zp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yp;->G:Lcom/google/android/gms/internal/ads/zp;

    .line 2
    .line 3
    const-string p1, "com.google.android.gms.ads.internal.request.IAdsServiceResponseListener"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final F(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yp;->G:Lcom/google/android/gms/internal/ads/zp;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zp;->a:Lcom/google/android/gms/internal/ads/te;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/te;->b(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final w(Lo3/p;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yp;->G:Lcom/google/android/gms/internal/ads/zp;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zp;->a:Lcom/google/android/gms/internal/ads/te;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lo3/o;

    .line 9
    .line 10
    iget-object v2, p1, Lo3/p;->G:Ljava/lang/String;

    .line 11
    .line 12
    iget p1, p1, Lo3/p;->H:I

    .line 13
    .line 14
    invoke-direct {v1, v2, p1}, Lo3/o;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/te;->c(Ljava/lang/Throwable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final y3(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    sget-object p1, Lo3/p;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    .line 11
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lo3/p;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/yp;->w(Lo3/p;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 25
    .line 26
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 31
    .line 32
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/yp;->F(Landroid/os/ParcelFileDescriptor;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    .line 40
    .line 41
    :goto_1
    return v0
.end method
