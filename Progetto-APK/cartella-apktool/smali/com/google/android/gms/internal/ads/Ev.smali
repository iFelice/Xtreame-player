.class public final synthetic Lcom/google/android/gms/internal/ads/Ev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nv;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/dd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dd;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Ev;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ev;->H:Lcom/google/android/gms/internal/ads/dd;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Ev;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ev;->H:Lcom/google/android/gms/internal/ads/dd;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/td;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/Cd;

    .line 11
    .line 12
    check-cast v1, Lcom/google/android/gms/internal/ads/bd;

    .line 13
    .line 14
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/bd;->G:Ljava/lang/String;

    .line 15
    .line 16
    iget v1, v1, Lcom/google/android/gms/internal/ads/bd;->H:I

    .line 17
    .line 18
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Cd;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/td;->Y1(Lcom/google/android/gms/internal/ads/nd;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/gd;

    .line 26
    .line 27
    check-cast p1, Lcom/google/android/gms/internal/ads/fd;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x5

    .line 37
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
