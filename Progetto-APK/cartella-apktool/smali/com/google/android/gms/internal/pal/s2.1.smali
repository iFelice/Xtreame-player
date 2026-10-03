.class public final Lcom/google/android/gms/internal/pal/s2;
.super Lcom/google/android/gms/internal/cast/o;
.source "SourceFile"


# instance fields
.field public final synthetic H:Lg4/i;


# direct methods
.method public constructor <init>(Lg4/i;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/s2;->H:Lg4/i;

    .line 2
    .line 3
    const-string p1, "com.google.android.gms.ads.signalsdk.ISignalSdkCallback"

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/o;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final Y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/pal/s2;->H:Lg4/i;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/internal/pal/a2;->a(Landroid/os/Parcel;)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Lcom/google/android/gms/internal/pal/r2;

    .line 19
    .line 20
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/pal/r2;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p2}, Lg4/i;->c(Ljava/lang/Exception;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    .line 29
    sget v1, Lcom/google/android/gms/internal/pal/a2;->a:I

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/os/Parcelable;

    .line 44
    .line 45
    :goto_0
    check-cast p1, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-static {p2}, Lcom/google/android/gms/internal/pal/a2;->a(Landroid/os/Parcel;)V

    .line 48
    .line 49
    .line 50
    const-string p2, "newToken"

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p3, p1}, Lg4/i;->d(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    return v0
.end method
