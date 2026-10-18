.class public Lcom/google/android/gms/cast/framework/ReconnectionService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final H:LH3/b;


# instance fields
.field public G:LD3/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "ReconnectionService"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, LH3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/cast/framework/ReconnectionService;->H:LH3/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->G:LD3/v;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    check-cast v0, LD3/t;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/cast/u;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x3

    .line 16
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/y5;->v0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    const-class v0, LD3/v;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x2

    .line 36
    new-array v2, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v3, "onBind"

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    aput-object v3, v2, v4

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    aput-object v0, v2, v3

    .line 45
    .line 46
    const-string v0, "Unable to call %s on %s."

    .line 47
    .line 48
    sget-object v3, Lcom/google/android/gms/cast/framework/ReconnectionService;->H:LH3/b;

    .line 49
    .line 50
    invoke-virtual {v3, p1, v0, v2}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-object v1
.end method

.method public final onCreate()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "getWrappedThis"

    .line 5
    .line 6
    const-string v4, "Unable to call %s on %s."

    .line 7
    .line 8
    invoke-static {p0}, LD3/a;->a(Landroid/content/Context;)LD3/a;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v6, "Must be called from the main thread."

    .line 16
    .line 17
    invoke-static {v6}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v7, v5, LD3/a;->b:LD3/g;

    .line 21
    .line 22
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    :try_start_0
    iget-object v7, v7, LD3/g;->a:LD3/z;

    .line 27
    .line 28
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    const/4 v10, 0x7

    .line 33
    invoke-virtual {v7, v10, v9}, Lcom/google/android/gms/internal/ads/y5;->v0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    invoke-static {v9}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v7

    .line 50
    const-class v9, LD3/z;

    .line 51
    .line 52
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    new-array v10, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object v3, v10, v0

    .line 59
    .line 60
    aput-object v9, v10, v2

    .line 61
    .line 62
    sget-object v9, LD3/g;->c:LH3/b;

    .line 63
    .line 64
    invoke-virtual {v9, v7, v4, v10}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    move-object v9, v8

    .line 68
    :goto_0
    invoke-static {v6}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v5, v5, LD3/a;->c:LD3/k;

    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    :try_start_1
    iget-object v5, v5, LD3/k;->a:LD3/s;

    .line 77
    .line 78
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const/4 v7, 0x5

    .line 83
    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/internal/ads/y5;->v0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-static {v6}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_1
    move-exception v5

    .line 100
    const-class v6, LD3/s;

    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    new-array v7, v1, [Ljava/lang/Object;

    .line 107
    .line 108
    aput-object v3, v7, v0

    .line 109
    .line 110
    aput-object v6, v7, v2

    .line 111
    .line 112
    sget-object v3, LD3/k;->b:LH3/b;

    .line 113
    .line 114
    invoke-virtual {v3, v5, v4, v7}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    move-object v6, v8

    .line 118
    :goto_1
    sget-object v3, Lcom/google/android/gms/internal/cast/d;->a:LH3/b;

    .line 119
    .line 120
    if-eqz v9, :cond_1

    .line 121
    .line 122
    if-nez v6, :cond_0

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v3}, Lcom/google/android/gms/internal/cast/d;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/cast/f;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    new-instance v5, LR3/b;

    .line 134
    .line 135
    invoke-direct {v5, p0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v5, v9, v6}, Lcom/google/android/gms/internal/cast/f;->A3(LR3/b;LR3/a;LR3/a;)LD3/v;

    .line 139
    .line 140
    .line 141
    move-result-object v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch LD3/d; {:try_start_2 .. :try_end_2} :catch_2

    .line 142
    goto :goto_3

    .line 143
    :catch_2
    move-exception v3

    .line 144
    goto :goto_2

    .line 145
    :catch_3
    move-exception v3

    .line 146
    :goto_2
    const-class v5, Lcom/google/android/gms/internal/cast/f;

    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    new-array v6, v1, [Ljava/lang/Object;

    .line 153
    .line 154
    const-string v7, "newReconnectionServiceImpl"

    .line 155
    .line 156
    aput-object v7, v6, v0

    .line 157
    .line 158
    aput-object v5, v6, v2

    .line 159
    .line 160
    sget-object v5, Lcom/google/android/gms/internal/cast/d;->a:LH3/b;

    .line 161
    .line 162
    invoke-virtual {v5, v3, v4, v6}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_1
    :goto_3
    iput-object v8, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->G:LD3/v;

    .line 166
    .line 167
    if-eqz v8, :cond_2

    .line 168
    .line 169
    :try_start_3
    check-cast v8, LD3/t;

    .line 170
    .line 171
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v8, v2, v3}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :catch_4
    move-exception v3

    .line 180
    const-class v5, LD3/v;

    .line 181
    .line 182
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    new-array v1, v1, [Ljava/lang/Object;

    .line 187
    .line 188
    const-string v6, "onCreate"

    .line 189
    .line 190
    aput-object v6, v1, v0

    .line 191
    .line 192
    aput-object v5, v1, v2

    .line 193
    .line 194
    sget-object v0, Lcom/google/android/gms/cast/framework/ReconnectionService;->H:LH3/b;

    .line 195
    .line 196
    invoke-virtual {v0, v3, v4, v1}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :goto_4
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 200
    .line 201
    .line 202
    :cond_2
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->G:LD3/v;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    check-cast v0, LD3/t;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    const-class v1, LD3/v;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x2

    .line 24
    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string v3, "onDestroy"

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput-object v3, v2, v4

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    aput-object v1, v2, v3

    .line 33
    .line 34
    const-string v1, "Unable to call %s on %s."

    .line 35
    .line 36
    sget-object v3, Lcom/google/android/gms/cast/framework/ReconnectionService;->H:LH3/b;

    .line 37
    .line 38
    invoke-virtual {v3, v0, v1, v2}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->G:LD3/v;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    check-cast v0, LD3/t;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/cast/u;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/y5;->v0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return p2

    .line 33
    :catch_0
    move-exception p1

    .line 34
    const-class p2, LD3/v;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-array p3, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    const-string v0, "onStartCommand"

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    aput-object v0, p3, v2

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    aput-object p2, p3, v0

    .line 49
    .line 50
    const-string p2, "Unable to call %s on %s."

    .line 51
    .line 52
    sget-object v0, Lcom/google/android/gms/cast/framework/ReconnectionService;->H:LH3/b;

    .line 53
    .line 54
    invoke-virtual {v0, p1, p2, p3}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return v1
.end method
