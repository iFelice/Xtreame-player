.class public final Lcom/google/android/gms/internal/ads/Ro;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Rc;


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/So;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/So;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ro;->G:Lcom/google/android/gms/internal/ads/So;

    .line 2
    .line 3
    const-string p1, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

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
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/fp;

    .line 2
    .line 3
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ro;->G:Lcom/google/android/gms/internal/ads/So;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/So;->e:Lcom/google/android/gms/internal/ads/Wc;

    .line 11
    .line 12
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/fp;-><init>(Lcom/google/android/gms/internal/ads/Wc;Ljava/io/InputStream;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/So;->a:Lcom/google/android/gms/internal/ads/te;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/te;->b(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final s1(Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/internal/ads/Wc;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/fp;

    .line 2
    .line 3
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ads/fp;-><init>(Lcom/google/android/gms/internal/ads/Wc;Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ro;->G:Lcom/google/android/gms/internal/ads/So;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/So;->a:Lcom/google/android/gms/internal/ads/te;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/te;->b(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final w(Lo3/p;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ro;->G:Lcom/google/android/gms/internal/ads/So;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/So;->a:Lcom/google/android/gms/internal/ads/te;

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
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 19
    .line 20
    sget-object v1, Lcom/google/android/gms/internal/ads/Wc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    .line 22
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/google/android/gms/internal/ads/Wc;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/Ro;->s1(Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/internal/ads/Wc;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object p1, Lo3/p;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    .line 37
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lo3/p;

    .line 42
    .line 43
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Ro;->w(Lo3/p;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 51
    .line 52
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 57
    .line 58
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Ro;->F(Landroid/os/ParcelFileDescriptor;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    .line 66
    .line 67
    :goto_1
    return v0
.end method
