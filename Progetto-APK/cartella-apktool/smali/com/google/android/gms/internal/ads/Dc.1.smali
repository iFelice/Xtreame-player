.class public final Lcom/google/android/gms/internal/ads/Dc;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"


# virtual methods
.method public final y3(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    .line 1
    const/4 p2, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 5
    .line 6
    iget-object p1, p1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 7
    .line 8
    new-instance v0, LD0/t;

    .line 9
    .line 10
    const-string v1, "Flags were accessed before initialized."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "FlagsAccessedBeforeInitialized"

    .line 16
    .line 17
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p2, 0x0

    .line 25
    :goto_0
    return p2
.end method
