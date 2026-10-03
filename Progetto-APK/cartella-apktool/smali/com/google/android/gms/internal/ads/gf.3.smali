.class public final Lcom/google/android/gms/internal/ads/gf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:I

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;

.field public final synthetic K:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Xf;Landroid/view/View;Lcom/google/android/gms/internal/ads/Hd;I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/gf;->G:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gf;->I:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gf;->J:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gf;->K:Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/ads/gf;->H:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/jf;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/gf;->G:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gf;->I:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gf;->J:Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/ads/gf;->H:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gf;->K:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/jz;Lcom/google/android/gms/internal/ads/fz;ILC2/g;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/gf;->G:I

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gf;->I:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gf;->J:Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/ads/gf;->H:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/gf;->K:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/ads/gf;->G:I

    .line 3
    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gf;->K:Ljava/lang/Object;

    .line 5
    .line 6
    iget v3, p0, Lcom/google/android/gms/internal/ads/gf;->H:I

    .line 7
    .line 8
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/gf;->J:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/gf;->I:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v5, Lcom/google/android/gms/internal/ads/jz;

    .line 16
    .line 17
    check-cast v4, Lcom/google/android/gms/internal/ads/fz;

    .line 18
    .line 19
    check-cast v2, LC2/g;

    .line 20
    .line 21
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/jz;->b:Ljava/lang/String;

    .line 22
    .line 23
    :try_start_0
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/jz;->a:Lcom/google/android/gms/internal/ads/pz;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    :try_start_1
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/pz;->j:Landroid/os/IInterface;

    .line 29
    .line 30
    check-cast v6, Lcom/google/android/gms/internal/ads/az;

    .line 31
    .line 32
    if-nez v6, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v7, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v8, "callerPackage"

    .line 41
    .line 42
    invoke-virtual {v7, v8, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v8, "displayMode"

    .line 46
    .line 47
    invoke-virtual {v7, v8, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/fz;->a:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v9, Lcom/google/android/gms/internal/ads/gz;

    .line 53
    .line 54
    invoke-direct {v9, v7, v0}, Lcom/google/android/gms/internal/ads/gz;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/jz;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/gz;)V

    .line 58
    .line 59
    .line 60
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/fz;->b:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v8, Lcom/google/android/gms/internal/ads/gz;

    .line 63
    .line 64
    const/4 v9, 0x5

    .line 65
    invoke-direct {v8, v7, v9}, Lcom/google/android/gms/internal/ads/gz;-><init>(Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v4, v8}, Lcom/google/android/gms/internal/ads/jz;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/gz;)V

    .line 69
    .line 70
    .line 71
    new-instance v4, Lcom/google/android/gms/internal/ads/iz;

    .line 72
    .line 73
    invoke-direct {v4, v5, v2}, Lcom/google/android/gms/internal/ads/iz;-><init>(Lcom/google/android/gms/internal/ads/jz;LC2/g;)V

    .line 74
    .line 75
    .line 76
    check-cast v6, Lcom/google/android/gms/internal/ads/Yy;

    .line 77
    .line 78
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/ads/A5;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 86
    .line 87
    .line 88
    const/4 v4, 0x3

    .line 89
    invoke-virtual {v6, v4, v2}, Lcom/google/android/gms/internal/ads/y5;->k3(ILandroid/os/Parcel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception v2

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const/4 v4, 0x2

    .line 99
    new-array v4, v4, [Ljava/lang/Object;

    .line 100
    .line 101
    aput-object v3, v4, v0

    .line 102
    .line 103
    const/4 v0, 0x1

    .line 104
    aput-object v1, v4, v0

    .line 105
    .line 106
    const-string v0, "switchDisplayMode overlay display to %d from: %s"

    .line 107
    .line 108
    sget-object v1, Lcom/google/android/gms/internal/ads/jz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 109
    .line 110
    invoke-virtual {v1, v2, v0, v4}, Lcom/google/android/gms/internal/ads/J;->c(Landroid/os/RemoteException;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :goto_0
    return-void

    .line 114
    :pswitch_0
    check-cast v5, Lcom/google/android/gms/internal/ads/Xf;

    .line 115
    .line 116
    check-cast v4, Landroid/view/View;

    .line 117
    .line 118
    check-cast v2, Lcom/google/android/gms/internal/ads/Hd;

    .line 119
    .line 120
    add-int/lit8 v3, v3, -0x1

    .line 121
    .line 122
    invoke-virtual {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/Xf;->F(Landroid/view/View;Lcom/google/android/gms/internal/ads/Hd;I)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_1
    new-instance v0, Ljava/util/HashMap;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v1, "event"

    .line 132
    .line 133
    const-string v6, "precacheComplete"

    .line 134
    .line 135
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    check-cast v5, Ljava/lang/String;

    .line 139
    .line 140
    const-string v1, "src"

    .line 141
    .line 142
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    check-cast v4, Ljava/lang/String;

    .line 146
    .line 147
    const-string v1, "cachedSrc"

    .line 148
    .line 149
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    const-string v1, "totalBytes"

    .line 153
    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    check-cast v2, Lcom/google/android/gms/internal/ads/jf;

    .line 162
    .line 163
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jf;->k(Lcom/google/android/gms/internal/ads/jf;Ljava/util/HashMap;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
