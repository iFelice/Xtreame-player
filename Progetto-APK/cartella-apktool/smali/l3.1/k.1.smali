.class public final Ll3/k;
.super Ll3/o;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/internal/ads/cb;

.field public final synthetic e:Ll3/n;


# direct methods
.method public constructor <init>(Ll3/n;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ll3/k;->b:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Ll3/k;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Ll3/k;->d:Lcom/google/android/gms/internal/ads/cb;

    .line 9
    .line 10
    iput-object p1, p0, Ll3/k;->e:Ll3/n;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ll3/k;->b:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "native_ad"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ll3/n;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ll3/O0;

    .line 9
    .line 10
    invoke-direct {v0}, Ll3/E;-><init>()V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final b(Ll3/X;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, LR3/b;

    .line 2
    .line 3
    iget-object v1, p0, Ll3/k;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const v1, 0xe7f3e20

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Ll3/k;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Ll3/k;->d:Lcom/google/android/gms/internal/ads/cb;

    .line 14
    .line 15
    invoke-interface {p1, v0, v2, v3, v1}, Ll3/X;->M2(LR3/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cb;I)Ll3/F;

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
    iget-object v0, p0, Ll3/k;->b:Landroid/content/Context;

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
    const/4 v2, 0x1

    .line 23
    const v3, 0xe7f3e20

    .line 24
    .line 25
    .line 26
    const-string v4, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    .line 27
    .line 28
    iget-object v5, p0, Ll3/k;->d:Lcom/google/android/gms/internal/ads/cb;

    .line 29
    .line 30
    iget-object v6, p0, Ll3/k;->c:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v7, p0, Ll3/k;->e:Ll3/n;

    .line 33
    .line 34
    const/4 v8, 0x0

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
    const-string v9, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl"

    .line 43
    .line 44
    new-instance v10, LF2/G;

    .line 45
    .line 46
    const/16 v11, 0x12

    .line 47
    .line 48
    invoke-direct {v10, v11}, LF2/G;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v9, v10}, Lcom/google/android/gms/internal/measurement/H1;->G(Landroid/content/Context;Ljava/lang/String;Lp3/i;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    check-cast v9, Ll3/G;

    .line 56
    .line 57
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    invoke-static {v10, v1}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v10, v5}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v9, v2, v10}, Lcom/google/android/gms/internal/ads/y5;->n2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 82
    .line 83
    .line 84
    if-nez v2, :cond_0

    .line 85
    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_0
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    instance-of v3, v1, Ll3/F;

    .line 93
    .line 94
    if-eqz v3, :cond_1

    .line 95
    .line 96
    check-cast v1, Ll3/F;

    .line 97
    .line 98
    :goto_0
    move-object v8, v1

    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :catch_0
    move-exception v1

    .line 102
    goto :goto_1

    .line 103
    :catch_1
    move-exception v1

    .line 104
    goto :goto_1

    .line 105
    :catch_2
    move-exception v1

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    new-instance v1, Ll3/D;

    .line 108
    .line 109
    invoke-direct {v1, v2}, Ll3/D;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lp3/j; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Bc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Cc;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, v7, Ll3/n;->g:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Lcom/google/android/gms/internal/ads/Cc;

    .line 120
    .line 121
    const-string v2, "ClientApiBroker.createAdLoaderBuilder"

    .line 122
    .line 123
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_2
    iget-object v1, v7, Ll3/n;->b:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v1, Ll3/M0;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    :try_start_1
    new-instance v7, LR3/b;

    .line 135
    .line 136
    invoke-direct {v7, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v0}, LR3/d;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Ll3/G;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/y5;->n2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    .line 171
    .line 172
    if-nez v1, :cond_3

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_3
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    instance-of v2, v0, Ll3/F;

    .line 180
    .line 181
    if-eqz v2, :cond_4

    .line 182
    .line 183
    check-cast v0, Ll3/F;

    .line 184
    .line 185
    :goto_2
    move-object v8, v0

    .line 186
    goto :goto_4

    .line 187
    :catch_3
    move-exception v0

    .line 188
    goto :goto_3

    .line 189
    :catch_4
    move-exception v0

    .line 190
    goto :goto_3

    .line 191
    :cond_4
    new-instance v0, Ll3/D;

    .line 192
    .line 193
    invoke-direct {v0, v1}, Ll3/D;-><init>(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch LR3/c; {:try_start_1 .. :try_end_1} :catch_3

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :goto_3
    const-string v1, "Could not create remote builder for AdLoader."

    .line 198
    .line 199
    invoke-static {v1, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .line 201
    .line 202
    :goto_4
    return-object v8
.end method
