.class public final synthetic LC3/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK3/p;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LC3/F;

.field public final synthetic I:Ljava/lang/String;

.field public final synthetic J:LC3/f;


# direct methods
.method public synthetic constructor <init>(LC3/F;LC3/f;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LC3/A;->G:I

    .line 3
    iput-object p1, p0, LC3/A;->H:LC3/F;

    iput-object p2, p0, LC3/A;->J:LC3/f;

    iput-object p3, p0, LC3/A;->I:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(LC3/F;Ljava/lang/String;LE3/j;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, LC3/A;->G:I

    .line 6
    iput-object p1, p0, LC3/A;->H:LC3/F;

    iput-object p2, p0, LC3/A;->I:Ljava/lang/String;

    iput-object p3, p0, LC3/A;->J:LC3/f;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    const-string v1, "Not active connection"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget v4, p0, LC3/A;->G:I

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    iget-object v6, p0, LC3/A;->J:LC3/f;

    .line 11
    .line 12
    iget-object v7, p0, LC3/A;->I:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v8, p0, LC3/A;->H:LC3/F;

    .line 15
    .line 16
    packed-switch v4, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast p1, LH3/y;

    .line 20
    .line 21
    check-cast p2, Lg4/i;

    .line 22
    .line 23
    iget v4, v8, LC3/F;->v:I

    .line 24
    .line 25
    if-eq v4, v3, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    :cond_0
    invoke-static {v1, v2}, Lcom/bumptech/glide/c;->j(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, LH3/f;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/y5;->i2(ILandroid/os/Parcel;)V

    .line 45
    .line 46
    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, LH3/f;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/16 v1, 0xb

    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/y5;->i2(ILandroid/os/Parcel;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {p2, v5}, Lg4/i;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_0
    check-cast p1, LH3/y;

    .line 72
    .line 73
    check-cast p2, Lg4/i;

    .line 74
    .line 75
    iget v4, v8, LC3/F;->v:I

    .line 76
    .line 77
    if-eq v4, v3, :cond_2

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    :cond_2
    invoke-static {v1, v2}, Lcom/bumptech/glide/c;->j(Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, LH3/f;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/y5;->i2(ILandroid/os/Parcel;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    invoke-virtual {p2, v5}, Lg4/i;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
