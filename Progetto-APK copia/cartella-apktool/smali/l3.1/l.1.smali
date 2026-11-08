.class public final Ll3/l;
.super Ll3/o;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/widget/FrameLayout;

.field public final synthetic c:Landroid/widget/FrameLayout;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ll3/n;


# direct methods
.method public constructor <init>(Ll3/n;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ll3/l;->b:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    iput-object p3, p0, Ll3/l;->c:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    iput-object p4, p0, Ll3/l;->d:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p1, p0, Ll3/l;->e:Ll3/n;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ll3/l;->d:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "native_ad_view_delegate"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ll3/n;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ll3/Q0;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/W8;-><init>()V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final b(Ll3/X;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, LR3/b;

    .line 2
    .line 3
    iget-object v1, p0, Ll3/l;->b:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-direct {v0, v1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, LR3/b;

    .line 9
    .line 10
    iget-object v2, p0, Ll3/l;->c:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    invoke-direct {v1, v2}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0, v1}, Ll3/X;->K0(LR3/a;LR3/a;)Lcom/google/android/gms/internal/ads/X8;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Ll3/l;->d:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Q7;->a(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->W9:Lcom/google/android/gms/internal/ads/J7;

    .line 7
    .line 8
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 9
    .line 10
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v2, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate"

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    const v4, 0xe7f3e20

    .line 26
    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    iget-object v6, p0, Ll3/l;->c:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    iget-object v7, p0, Ll3/l;->b:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    iget-object v8, p0, Ll3/l;->e:Ll3/n;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    :try_start_0
    new-instance v1, LR3/b;

    .line 38
    .line 39
    invoke-direct {v1, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance v9, LR3/b;

    .line 43
    .line 44
    invoke-direct {v9, v7}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v7, LR3/b;

    .line 48
    .line 49
    invoke-direct {v7, v6}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const-string v6, "com.google.android.gms.ads.ChimeraNativeAdViewDelegateCreatorImpl"

    .line 53
    .line 54
    new-instance v10, LF2/G;

    .line 55
    .line 56
    const/16 v11, 0x13

    .line 57
    .line 58
    invoke-direct {v10, v11}, LF2/G;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v6, v10}, Lcom/google/android/gms/internal/measurement/H1;->G(Landroid/content/Context;Ljava/lang/String;Lp3/i;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Lcom/google/android/gms/internal/ads/a9;

    .line 66
    .line 67
    check-cast v6, Lcom/google/android/gms/internal/ads/Y8;

    .line 68
    .line 69
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    invoke-static {v10, v1}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v3, v10}, Lcom/google/android/gms/internal/ads/y5;->n2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 94
    .line 95
    .line 96
    sget v1, Lcom/google/android/gms/internal/ads/W8;->G:I

    .line 97
    .line 98
    if-nez v3, :cond_0

    .line 99
    .line 100
    goto/16 :goto_4

    .line 101
    .line 102
    :cond_0
    invoke-interface {v3, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/X8;

    .line 107
    .line 108
    if-eqz v2, :cond_1

    .line 109
    .line 110
    check-cast v1, Lcom/google/android/gms/internal/ads/X8;

    .line 111
    .line 112
    :goto_0
    move-object v5, v1

    .line 113
    goto/16 :goto_4

    .line 114
    .line 115
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/V8;

    .line 116
    .line 117
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/V8;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lp3/j; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    goto :goto_1

    .line 123
    :catch_1
    move-exception v1

    .line 124
    goto :goto_1

    .line 125
    :catch_2
    move-exception v1

    .line 126
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Bc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Cc;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v0, v8, Ll3/n;->g:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Lcom/google/android/gms/internal/ads/Cc;

    .line 133
    .line 134
    const-string v2, "ClientApiBroker.createNativeAdViewDelegate"

    .line 135
    .line 136
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_2
    iget-object v1, v8, Ll3/n;->d:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v1, Ll3/M0;

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    :try_start_1
    new-instance v8, LR3/b;

    .line 148
    .line 149
    invoke-direct {v8, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    new-instance v9, LR3/b;

    .line 153
    .line 154
    invoke-direct {v9, v7}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    new-instance v7, LR3/b;

    .line 158
    .line 159
    invoke-direct {v7, v6}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v0}, LR3/d;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Lcom/google/android/gms/internal/ads/a9;

    .line 167
    .line 168
    check-cast v0, Lcom/google/android/gms/internal/ads/Y8;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/y5;->n2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    .line 196
    .line 197
    if-nez v1, :cond_3

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_3
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/X8;

    .line 205
    .line 206
    if-eqz v2, :cond_4

    .line 207
    .line 208
    check-cast v0, Lcom/google/android/gms/internal/ads/X8;

    .line 209
    .line 210
    :goto_2
    move-object v5, v0

    .line 211
    goto :goto_4

    .line 212
    :catch_3
    move-exception v0

    .line 213
    goto :goto_3

    .line 214
    :catch_4
    move-exception v0

    .line 215
    goto :goto_3

    .line 216
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/V8;

    .line 217
    .line 218
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/V8;-><init>(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch LR3/c; {:try_start_1 .. :try_end_1} :catch_3

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :goto_3
    const-string v1, "Could not create remote NativeAdViewDelegate."

    .line 223
    .line 224
    invoke-static {v1, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    :goto_4
    return-object v5
.end method
