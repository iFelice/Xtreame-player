.class public abstract Ll3/T;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"

# interfaces
.implements Ll3/U;


# static fields
.field public static final synthetic G:I


# virtual methods
.method public final y3(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 13
    .line 14
    .line 15
    move-object p2, p0

    .line 16
    check-cast p2, Lcom/google/android/gms/internal/ads/L5;

    .line 17
    .line 18
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/L5;->G2(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 22
    .line 23
    .line 24
    return v0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method
