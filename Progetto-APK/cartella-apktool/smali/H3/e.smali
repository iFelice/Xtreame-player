.class public abstract LH3/e;
.super Lcom/google/android/gms/internal/cast/o;
.source "SourceFile"


# virtual methods
.method public final Y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    .line 1
    const/4 p3, 0x1

    .line 2
    if-ne p1, p3, :cond_0

    .line 3
    .line 4
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    .line 6
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 13
    .line 14
    .line 15
    move-object p2, p0

    .line 16
    check-cast p2, LH3/s;

    .line 17
    .line 18
    iget v0, p2, LH3/s;->H:I

    .line 19
    .line 20
    iget-object p2, p2, LH3/s;->I:Lg4/i;

    .line 21
    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lg4/i;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_0
    invoke-virtual {p2, p1}, Lg4/i;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_1
    invoke-virtual {p2, p1}, Lg4/i;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return p3

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    return p1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
