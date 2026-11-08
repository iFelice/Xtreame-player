.class public abstract Ll3/P;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"


# virtual methods
.method public final y3(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    return v0

    .line 6
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ab;->z3(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/cb;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 15
    .line 16
    .line 17
    move-object p2, p0

    .line 18
    check-cast p2, Lcom/google/android/gms/internal/ads/ox;

    .line 19
    .line 20
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ox;->G:Lcom/google/android/gms/internal/ads/qx;

    .line 21
    .line 22
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/qx;->c:Lcom/google/android/gms/internal/ads/ux;

    .line 23
    .line 24
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/ux;->e:Lcom/google/android/gms/internal/ads/cb;

    .line 25
    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 36
    .line 37
    .line 38
    move-object p2, p0

    .line 39
    check-cast p2, Lcom/google/android/gms/internal/ads/ox;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ox;->G:Lcom/google/android/gms/internal/ads/qx;

    .line 42
    .line 43
    monitor-enter p2

    .line 44
    :try_start_0
    sget-object v0, Lf3/a;->I:Lf3/a;

    .line 45
    .line 46
    const-class v1, Ll3/J;

    .line 47
    .line 48
    invoke-virtual {p2, v1, p1, v0}, Lcom/google/android/gms/internal/ads/qx;->d(Ljava/lang/Class;Ljava/lang/String;Lf3/a;)Ljava/util/Optional;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lc4/J0;->D(Ljava/util/Optional;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ll3/J;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    monitor-exit p2

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    .line 61
    .line 62
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :catchall_0
    move-exception p1

    .line 68
    monitor-exit p2

    .line 69
    throw p1

    .line 70
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 75
    .line 76
    .line 77
    move-object p2, p0

    .line 78
    check-cast p2, Lcom/google/android/gms/internal/ads/ox;

    .line 79
    .line 80
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/ox;->D3(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 97
    .line 98
    .line 99
    move-object p2, p0

    .line 100
    check-cast p2, Lcom/google/android/gms/internal/ads/ox;

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/ox;->z3(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/c6;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    .line 108
    .line 109
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 119
    .line 120
    .line 121
    move-object p2, p0

    .line 122
    check-cast p2, Lcom/google/android/gms/internal/ads/ox;

    .line 123
    .line 124
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/ox;->C3(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 140
    .line 141
    .line 142
    move-object p2, p0

    .line 143
    check-cast p2, Lcom/google/android/gms/internal/ads/ox;

    .line 144
    .line 145
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/ox;->A3(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qd;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    .line 151
    .line 152
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 161
    .line 162
    .line 163
    move-object p2, p0

    .line 164
    check-cast p2, Lcom/google/android/gms/internal/ads/ox;

    .line 165
    .line 166
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/ox;->E3(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :pswitch_7
    sget-object p1, Ll3/T0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 178
    .line 179
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    if-nez v1, :cond_0

    .line 188
    .line 189
    const/4 v0, 0x0

    .line 190
    goto :goto_0

    .line 191
    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.client.IAdPreloadCallback"

    .line 192
    .line 193
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    instance-of v3, v2, Ll3/O;

    .line 198
    .line 199
    if-eqz v3, :cond_1

    .line 200
    .line 201
    move-object v0, v2

    .line 202
    check-cast v0, Ll3/O;

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_1
    new-instance v2, Ll3/O;

    .line 206
    .line 207
    const-string v3, "com.google.android.gms.ads.internal.client.IAdPreloadCallback"

    .line 208
    .line 209
    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 210
    .line 211
    .line 212
    move-object v0, v2

    .line 213
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 214
    .line 215
    .line 216
    move-object p2, p0

    .line 217
    check-cast p2, Lcom/google/android/gms/internal/ads/ox;

    .line 218
    .line 219
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/ox;->B3(Ljava/util/ArrayList;Ll3/O;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    .line 224
    .line 225
    :goto_1
    const/4 p1, 0x1

    .line 226
    return p1

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
