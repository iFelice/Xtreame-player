.class public final synthetic Lcom/google/android/gms/internal/ads/Ej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/rk;
.implements Lcom/google/android/gms/internal/ads/dk;
.implements Lcom/google/android/gms/internal/ads/nv;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/dd;

.field public final synthetic I:Ljava/lang/String;

.field public final synthetic J:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dd;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/google/android/gms/internal/ads/Ej;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ej;->H:Lcom/google/android/gms/internal/ads/dd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ej;->I:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ej;->J:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Ej;->G:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ej;->J:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ej;->I:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Ej;->H:Lcom/google/android/gms/internal/ads/dd;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Lcom/google/android/gms/internal/ads/ed;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/yd;

    .line 33
    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/Cd;

    .line 35
    .line 36
    check-cast v4, Lcom/google/android/gms/internal/ads/bd;

    .line 37
    .line 38
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/bd;->G:Ljava/lang/String;

    .line 39
    .line 40
    iget v4, v4, Lcom/google/android/gms/internal/ads/bd;->H:I

    .line 41
    .line 42
    invoke-direct {v0, v5, v4}, Lcom/google/android/gms/internal/ads/Cd;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1, v4}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/Gv;

    .line 63
    .line 64
    invoke-virtual {p1, v4, v3, v2}, Lcom/google/android/gms/internal/ads/Gv;->g(Lcom/google/android/gms/internal/ads/dd;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/ads/pj;

    .line 69
    .line 70
    invoke-interface {p1, v4, v3, v2}, Lcom/google/android/gms/internal/ads/pj;->g(Lcom/google/android/gms/internal/ads/dd;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
