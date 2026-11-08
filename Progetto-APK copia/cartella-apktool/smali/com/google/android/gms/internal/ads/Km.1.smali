.class public final Lcom/google/android/gms/internal/ads/Km;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f9;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Lcom/google/android/gms/internal/ads/Il;

.field public I:Lcom/google/android/gms/internal/ads/Sl;

.field public J:Lcom/google/android/gms/internal/ads/El;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Il;Lcom/google/android/gms/internal/ads/Sl;Lcom/google/android/gms/internal/ads/El;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Km;->G:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Km;->H:Lcom/google/android/gms/internal/ads/Il;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Km;->I:Lcom/google/android/gms/internal/ads/Sl;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Km;->J:Lcom/google/android/gms/internal/ads/El;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final H(LR3/a;)Z
    .locals 2

    .line 1
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Km;->I:Lcom/google/android/gms/internal/ads/Sl;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Sl;->c(Landroid/view/ViewGroup;Z)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Km;->H:Lcom/google/android/gms/internal/ads/Il;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->R()Lcom/google/android/gms/internal/ads/Ef;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/x;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/x;-><init>(Lcom/google/android/gms/internal/ads/Km;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Ef;->M0(Lcom/google/android/gms/internal/ads/x;)V

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 39
    return p1
.end method

.method public final K(LR3/a;)Z
    .locals 2

    .line 1
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Km;->I:Lcom/google/android/gms/internal/ads/Sl;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p1, Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Sl;->c(Landroid/view/ViewGroup;Z)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Km;->H:Lcom/google/android/gms/internal/ads/Il;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->P()Lcom/google/android/gms/internal/ads/Ef;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/x;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/x;-><init>(Lcom/google/android/gms/internal/ads/Km;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Ef;->M0(Lcom/google/android/gms/internal/ads/x;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_1
    :goto_0
    return v1
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Km;->J:Lcom/google/android/gms/internal/ads/El;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/El;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    :goto_0
    monitor-exit v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ll;->zzr()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :goto_1
    return-void

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1

    .line 22
    :cond_1
    return-void
.end method

.method public final y3(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6

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
    goto/16 :goto_b

    .line 8
    .line 9
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Km;->K(LR3/a;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_a

    .line 31
    .line 32
    :pswitch_1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Km;->J:Lcom/google/android/gms/internal/ads/El;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/El;->C:Lcom/google/android/gms/internal/ads/Gl;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Gl;->a()Lcom/google/android/gms/internal/ads/R8;

    .line 37
    .line 38
    .line 39
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    sget-object p2, Lk3/l;->A:Lk3/l;

    .line 43
    .line 44
    iget-object p2, p2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 45
    .line 46
    const-string v0, "InternalNativeCustomTemplateAdShim.getMediaContent"

    .line 47
    .line 48
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    .line 53
    .line 54
    invoke-static {p3, v2}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_a

    .line 58
    .line 59
    :pswitch_2
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Km;->H:Lcom/google/android/gms/internal/ads/Il;

    .line 60
    .line 61
    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    :try_start_2
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Il;->y:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .line 64
    :try_start_3
    monitor-exit p1

    .line 65
    const-string p1, "Google"

    .line 66
    .line 67
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    const-string p1, "Illegal argument specified for omid partner name."

    .line 74
    .line 75
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catch_1
    move-exception p1

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_1

    .line 86
    .line 87
    const-string p1, "Not starting OMID session. OM partner name has not been configured."

    .line 88
    .line 89
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Km;->J:Lcom/google/android/gms/internal/ads/El;

    .line 94
    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/El;->x(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/mq;

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_0
    move-exception p2

    .line 102
    monitor-exit p1

    .line 103
    throw p2
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 104
    :goto_1
    const-string p2, "InternalNativeCustomTemplateAdShim.initializeDisplayOpenMeasurement"

    .line 105
    .line 106
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 107
    .line 108
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 109
    .line 110
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_a

    .line 117
    .line 118
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    instance-of p2, p1, Landroid/view/View;

    .line 134
    .line 135
    if-nez p2, :cond_3

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Km;->H:Lcom/google/android/gms/internal/ads/Il;

    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Il;->T()Lcom/google/android/gms/internal/ads/mq;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-eqz p2, :cond_4

    .line 145
    .line 146
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Km;->J:Lcom/google/android/gms/internal/ads/El;

    .line 147
    .line 148
    if-eqz p2, :cond_4

    .line 149
    .line 150
    check-cast p1, Landroid/view/View;

    .line 151
    .line 152
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/El;->g(Landroid/view/View;)V

    .line 153
    .line 154
    .line 155
    :cond_4
    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_a

    .line 159
    .line 160
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Km;->H:Lcom/google/android/gms/internal/ads/Il;

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->T()Lcom/google/android/gms/internal/ads/mq;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    if-eqz p2, :cond_6

    .line 167
    .line 168
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 169
    .line 170
    iget-object v2, v2, Lk3/l;->v:Lc4/y;

    .line 171
    .line 172
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/mq;->a:Lcom/google/android/gms/internal/ads/xx;

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-static {p2}, Lc4/y;->f(Lcom/google/android/gms/internal/ads/xx;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->Q()Lcom/google/android/gms/internal/ads/Ef;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    if-eqz p2, :cond_5

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->Q()Lcom/google/android/gms/internal/ads/Ef;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    new-instance p2, Lr/f;

    .line 191
    .line 192
    invoke-direct {p2, v0}, Lr/m;-><init>(I)V

    .line 193
    .line 194
    .line 195
    const-string v0, "onSdkLoaded"

    .line 196
    .line 197
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 198
    .line 199
    .line 200
    :cond_5
    const/4 v0, 0x1

    .line 201
    goto :goto_4

    .line 202
    :cond_6
    const-string p1, "Trying to start OMID session before creation."

    .line 203
    .line 204
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :goto_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    .line 209
    .line 210
    sget-object p1, Lcom/google/android/gms/internal/ads/A5;->a:Ljava/lang/ClassLoader;

    .line 211
    .line 212
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_a

    .line 216
    .line 217
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Km;->J:Lcom/google/android/gms/internal/ads/El;

    .line 218
    .line 219
    if-eqz p1, :cond_7

    .line 220
    .line 221
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/El;->n:Lcom/google/android/gms/internal/ads/Kl;

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kl;->c()Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-eqz p1, :cond_a

    .line 228
    .line 229
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Km;->H:Lcom/google/android/gms/internal/ads/Il;

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->Q()Lcom/google/android/gms/internal/ads/Ef;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    if-nez p2, :cond_8

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->R()Lcom/google/android/gms/internal/ads/Ef;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    if-eqz p1, :cond_9

    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_9
    const/4 v0, 0x1

    .line 246
    :cond_a
    :goto_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    .line 248
    .line 249
    sget-object p1, Lcom/google/android/gms/internal/ads/A5;->a:Ljava/lang/ClassLoader;

    .line 250
    .line 251
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_a

    .line 255
    .line 256
    :pswitch_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    .line 258
    .line 259
    invoke-static {p3, v2}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_a

    .line 263
    .line 264
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Km;->H(LR3/a;)Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_a

    .line 286
    .line 287
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Km;->zzh()LR3/a;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    .line 293
    .line 294
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_a

    .line 298
    .line 299
    :pswitch_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Km;->J:Lcom/google/android/gms/internal/ads/El;

    .line 300
    .line 301
    if-eqz p1, :cond_b

    .line 302
    .line 303
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/El;->w()V

    .line 304
    .line 305
    .line 306
    :cond_b
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Km;->J:Lcom/google/android/gms/internal/ads/El;

    .line 307
    .line 308
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Km;->I:Lcom/google/android/gms/internal/ads/Sl;

    .line 309
    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_a

    .line 314
    .line 315
    :pswitch_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Km;->H:Lcom/google/android/gms/internal/ads/Il;

    .line 316
    .line 317
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->J()Ll3/B0;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    .line 323
    .line 324
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_a

    .line 328
    .line 329
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Km;->k()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_a

    .line 336
    .line 337
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 342
    .line 343
    .line 344
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Km;->J:Lcom/google/android/gms/internal/ads/El;

    .line 345
    .line 346
    if-eqz p2, :cond_c

    .line 347
    .line 348
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/El;->e(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    :cond_c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    .line 353
    .line 354
    goto/16 :goto_a

    .line 355
    .line 356
    :pswitch_d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Km;->H:Lcom/google/android/gms/internal/ads/Il;

    .line 357
    .line 358
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->a()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    goto/16 :goto_a

    .line 369
    .line 370
    :pswitch_e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Km;->H:Lcom/google/android/gms/internal/ads/Il;

    .line 371
    .line 372
    :try_start_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->H()Lr/m;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Il;->I()Lr/m;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    iget v2, p2, Lr/m;->I:I

    .line 381
    .line 382
    iget v3, p1, Lr/m;->I:I

    .line 383
    .line 384
    add-int/2addr v2, v3

    .line 385
    new-array v2, v2, [Ljava/lang/String;

    .line 386
    .line 387
    const/4 v3, 0x0

    .line 388
    const/4 v4, 0x0

    .line 389
    :goto_6
    iget v5, p2, Lr/m;->I:I

    .line 390
    .line 391
    if-ge v3, v5, :cond_d

    .line 392
    .line 393
    invoke-virtual {p2, v3}, Lr/m;->f(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    check-cast v5, Ljava/lang/String;

    .line 398
    .line 399
    aput-object v5, v2, v4

    .line 400
    .line 401
    add-int/lit8 v4, v4, 0x1

    .line 402
    .line 403
    add-int/lit8 v3, v3, 0x1

    .line 404
    .line 405
    goto :goto_6

    .line 406
    :catch_2
    move-exception p1

    .line 407
    goto :goto_8

    .line 408
    :cond_d
    :goto_7
    iget p2, p1, Lr/m;->I:I

    .line 409
    .line 410
    if-ge v0, p2, :cond_e

    .line 411
    .line 412
    invoke-virtual {p1, v0}, Lr/m;->f(I)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object p2

    .line 416
    check-cast p2, Ljava/lang/String;

    .line 417
    .line 418
    aput-object p2, v2, v4

    .line 419
    .line 420
    add-int/lit8 v4, v4, 0x1

    .line 421
    .line 422
    add-int/lit8 v0, v0, 0x1

    .line 423
    .line 424
    goto :goto_7

    .line 425
    :cond_e
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 426
    .line 427
    .line 428
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    .line 429
    goto :goto_9

    .line 430
    :goto_8
    sget-object p2, Lk3/l;->A:Lk3/l;

    .line 431
    .line 432
    iget-object p2, p2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 433
    .line 434
    const-string v0, "InternalNativeCustomTemplateAdShim.getAvailableAssetNames"

    .line 435
    .line 436
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    .line 438
    .line 439
    new-instance p1, Ljava/util/ArrayList;

    .line 440
    .line 441
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .line 443
    .line 444
    :goto_9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 448
    .line 449
    .line 450
    goto :goto_a

    .line 451
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 456
    .line 457
    .line 458
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Km;->H:Lcom/google/android/gms/internal/ads/Il;

    .line 459
    .line 460
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Il;->H()Lr/m;

    .line 461
    .line 462
    .line 463
    move-result-object p2

    .line 464
    invoke-virtual {p2, p1}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    check-cast p1, Lcom/google/android/gms/internal/ads/T8;

    .line 469
    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    .line 472
    .line 473
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 474
    .line 475
    .line 476
    goto :goto_a

    .line 477
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 482
    .line 483
    .line 484
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Km;->H:Lcom/google/android/gms/internal/ads/Il;

    .line 485
    .line 486
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Il;->I()Lr/m;

    .line 487
    .line 488
    .line 489
    move-result-object p2

    .line 490
    invoke-virtual {p2, p1}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    check-cast p1, Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    .line 498
    .line 499
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    :goto_a
    const/4 v0, 0x1

    .line 503
    :goto_b
    return v0

    .line 504
    nop

    .line 505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public final zzh()LR3/a;
    .locals 2

    .line 1
    new-instance v0, LR3/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Km;->G:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Km;->H:Lcom/google/android/gms/internal/ads/Il;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Il;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
