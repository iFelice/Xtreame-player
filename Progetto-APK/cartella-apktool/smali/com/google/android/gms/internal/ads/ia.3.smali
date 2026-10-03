.class public final Lcom/google/android/gms/internal/ads/ia;
.super Lcom/google/android/gms/internal/ads/y5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ja;


# virtual methods
.method public final r2(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
