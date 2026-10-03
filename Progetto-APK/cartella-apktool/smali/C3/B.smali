.class public final synthetic LC3/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK3/p;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LC3/F;

.field public final synthetic I:Ljava/lang/String;

.field public final synthetic J:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LC3/F;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LC3/B;->G:I

    .line 3
    iput-object p1, p0, LC3/B;->H:LC3/F;

    iput-object p2, p0, LC3/B;->I:Ljava/lang/String;

    iput-object p3, p0, LC3/B;->J:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(LC3/F;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x1

    .line 5
    iput p4, p0, LC3/B;->G:I

    .line 6
    iput-object p1, p0, LC3/B;->H:LC3/F;

    iput-object p2, p0, LC3/B;->I:Ljava/lang/String;

    iput-object p3, p0, LC3/B;->J:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, LC3/B;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LC3/B;->H:LC3/F;

    .line 4
    .line 5
    iget-object v2, p0, LC3/B;->J:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, LC3/B;->I:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x2

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p1, LH3/y;

    .line 16
    .line 17
    check-cast p2, Lg4/i;

    .line 18
    .line 19
    iget-object v0, v1, LC3/F;->r:Ljava/util/HashMap;

    .line 20
    .line 21
    iget-object v7, v1, LC3/F;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 24
    .line 25
    .line 26
    move-result-wide v7

    .line 27
    iget v1, v1, LC3/F;->v:I

    .line 28
    .line 29
    if-ne v1, v6, :cond_0

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    :cond_0
    const-string v1, "Not connected to device"

    .line 33
    .line 34
    invoke-static {v1, v4}, Lcom/bumptech/glide/c;->j(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, LH3/f;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    .line 62
    .line 63
    const/16 v2, 0x9

    .line 64
    .line 65
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/y5;->i2(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception p1

    .line 70
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p1}, Lg4/i;->a(Ljava/lang/Exception;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void

    .line 81
    :pswitch_0
    check-cast p1, LH3/y;

    .line 82
    .line 83
    check-cast p2, Lg4/i;

    .line 84
    .line 85
    iget v0, v1, LC3/F;->v:I

    .line 86
    .line 87
    if-ne v0, v6, :cond_1

    .line 88
    .line 89
    const/4 v4, 0x1

    .line 90
    :cond_1
    const-string v0, "Not connected to device"

    .line 91
    .line 92
    invoke-static {v0, v4}, Lcom/bumptech/glide/c;->j(Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, LH3/f;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/cast/u;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 113
    .line 114
    .line 115
    const/16 v2, 0xe

    .line 116
    .line 117
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/y5;->i2(ILandroid/os/Parcel;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, v1, LC3/F;->h:Ljava/lang/Object;

    .line 121
    .line 122
    monitor-enter p1

    .line 123
    :try_start_1
    iget-object v0, v1, LC3/F;->e:Lg4/i;

    .line 124
    .line 125
    if-eqz v0, :cond_2

    .line 126
    .line 127
    const/16 v0, 0x9ad

    .line 128
    .line 129
    invoke-virtual {v1, v0}, LC3/F;->f(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catchall_0
    move-exception p2

    .line 134
    goto :goto_2

    .line 135
    :cond_2
    :goto_1
    iput-object p2, v1, LC3/F;->e:Lg4/i;

    .line 136
    .line 137
    monitor-exit p1

    .line 138
    return-void

    .line 139
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    throw p2

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
