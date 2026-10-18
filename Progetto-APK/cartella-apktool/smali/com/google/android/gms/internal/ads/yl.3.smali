.class public final Lcom/google/android/gms/internal/ads/yl;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/R8;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/Il;

.field public H:LR3/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Il;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IMediaContent"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yl;->G:Lcom/google/android/gms/internal/ads/Il;

    .line 7
    .line 8
    return-void
.end method

.method public static z3(LR3/a;)F
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, -0x1

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-float v0, v0

    .line 30
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    int-to-float p0, p0

    .line 35
    div-float/2addr v0, p0

    .line 36
    return v0

    .line 37
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 38
    return p0
.end method


# virtual methods
.method public final A3(Lcom/google/android/gms/internal/ads/q9;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl;->G:Lcom/google/android/gms/internal/ads/Il;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Il;->J()Ll3/B0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lcom/google/android/gms/internal/ads/Uf;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl;->G:Lcom/google/android/gms/internal/ads/Il;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Il;->J()Ll3/B0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/gms/internal/ads/Uf;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Uf;->H:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/Uf;->T:Lcom/google/android/gms/internal/ads/q9;

    .line 23
    .line 24
    monitor-exit v1

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1

    .line 29
    :cond_0
    return-void
.end method

.method public final y3(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl;->G:Lcom/google/android/gms/internal/ads/Il;

    .line 11
    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Il;->j:Lcom/google/android/gms/internal/ads/Ef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit p1

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/A5;->a:Ljava/lang/ClassLoader;

    .line 23
    .line 24
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :catchall_0
    move-exception p2

    .line 30
    monitor-exit p1

    .line 31
    throw p2

    .line 32
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener"

    .line 41
    .line 42
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/q9;

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    move-object p1, v0

    .line 51
    check-cast p1, Lcom/google/android/gms/internal/ads/q9;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/q9;

    .line 55
    .line 56
    const-string v3, "com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener"

    .line 57
    .line 58
    invoke-direct {v0, p1, v3, v2}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    move-object p1, v0

    .line 62
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/yl;->A3(Lcom/google/android/gms/internal/ads/q9;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl;->G:Lcom/google/android/gms/internal/ads/Il;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->J()Ll3/B0;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    :cond_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    .line 84
    .line 85
    sget-object p1, Lcom/google/android/gms/internal/ads/A5;->a:Ljava/lang/ClassLoader;

    .line 86
    .line 87
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl;->G:Lcom/google/android/gms/internal/ads/Il;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->J()Ll3/B0;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    .line 100
    .line 101
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_4

    .line 105
    .line 106
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl;->G:Lcom/google/android/gms/internal/ads/Il;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->J()Ll3/B0;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    if-eqz p2, :cond_4

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->J()Ll3/B0;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-interface {p1}, Ll3/B0;->zzf()F

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    :cond_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl;->G:Lcom/google/android/gms/internal/ads/Il;

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->J()Ll3/B0;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    if-eqz p2, :cond_5

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->J()Ll3/B0;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-interface {p1}, Ll3/B0;->zzg()F

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_4

    .line 153
    .line 154
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/yl;->zzi()LR3/a;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    .line 160
    .line 161
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_4

    .line 165
    .line 166
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 175
    .line 176
    .line 177
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yl;->H:LR3/a;

    .line 178
    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_4

    .line 183
    .line 184
    :pswitch_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl;->G:Lcom/google/android/gms/internal/ads/Il;

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->C()F

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    cmpl-float p2, p2, v0

    .line 191
    .line 192
    if-eqz p2, :cond_6

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->C()F

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    goto :goto_3

    .line 199
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->J()Ll3/B0;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    if-eqz p2, :cond_7

    .line 204
    .line 205
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->J()Ll3/B0;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-interface {p1}, Ll3/B0;->zze()F

    .line 210
    .line 211
    .line 212
    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    goto :goto_2

    .line 214
    :catch_0
    move-exception p1

    .line 215
    const-string p2, "Remote exception getting video controller aspect ratio."

    .line 216
    .line 217
    invoke-static {p2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yl;->H:LR3/a;

    .line 222
    .line 223
    if-eqz p2, :cond_8

    .line 224
    .line 225
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/yl;->z3(LR3/a;)F

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    goto :goto_2

    .line 230
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->M()Lcom/google/android/gms/internal/ads/T8;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    if-nez p1, :cond_9

    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/T8;->zzd()I

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    const/4 v2, -0x1

    .line 242
    if-eq p2, v2, :cond_a

    .line 243
    .line 244
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/T8;->zzc()I

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    if-eq p2, v2, :cond_a

    .line 249
    .line 250
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/T8;->zzd()I

    .line 251
    .line 252
    .line 253
    move-result p2

    .line 254
    int-to-float p2, p2

    .line 255
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/T8;->zzc()I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    int-to-float v2, v2

    .line 260
    div-float/2addr p2, v2

    .line 261
    goto :goto_1

    .line 262
    :cond_a
    const/4 p2, 0x0

    .line 263
    :goto_1
    cmpl-float v0, p2, v0

    .line 264
    .line 265
    if-nez v0, :cond_b

    .line 266
    .line 267
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/T8;->zzf()LR3/a;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yl;->z3(LR3/a;)F

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    goto :goto_3

    .line 276
    :cond_b
    move v0, p2

    .line 277
    :goto_2
    move p1, v0

    .line 278
    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 282
    .line 283
    .line 284
    :goto_4
    return v1

    .line 285
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
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

.method public final zzi()LR3/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl;->H:LR3/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl;->G:Lcom/google/android/gms/internal/ads/Il;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Il;->M()Lcom/google/android/gms/internal/ads/T8;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return-object v0

    .line 16
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/T8;->zzf()LR3/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
