.class public final Lcom/google/android/gms/internal/cast/j;
.super LE1/q;
.source "SourceFile"


# static fields
.field public static final b:LH3/b;


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "MediaRouterCallback"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, LH3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/j;->b:LH3/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/cast/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/j;->a:Lcom/google/android/gms/internal/cast/i;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(LE1/F;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/j;->a:Lcom/google/android/gms/internal/cast/i;

    .line 3
    .line 4
    iget-object v2, p1, LE1/F;->c:Ljava/lang/String;

    .line 5
    .line 6
    iget-object p1, p1, LE1/F;->r:Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/cast/u;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p1

    .line 23
    const-class v1, Lcom/google/android/gms/internal/cast/i;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x2

    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    .line 32
    const-string v3, "onRouteAdded"

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    aput-object v3, v2, v4

    .line 36
    .line 37
    aput-object v1, v2, v0

    .line 38
    .line 39
    const-string v0, "Unable to call %s on %s."

    .line 40
    .line 41
    sget-object v1, Lcom/google/android/gms/internal/cast/j;->b:LH3/b;

    .line 42
    .line 43
    invoke-virtual {v1, p1, v0, v2}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final b(LE1/F;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/j;->a:Lcom/google/android/gms/internal/cast/i;

    .line 3
    .line 4
    iget-object v2, p1, LE1/F;->c:Ljava/lang/String;

    .line 5
    .line 6
    iget-object p1, p1, LE1/F;->r:Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/cast/u;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p1

    .line 23
    const-class v1, Lcom/google/android/gms/internal/cast/i;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    .line 31
    const-string v2, "onRouteChanged"

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    aput-object v2, v0, v3

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    aput-object v1, v0, v2

    .line 38
    .line 39
    const-string v1, "Unable to call %s on %s."

    .line 40
    .line 41
    sget-object v2, Lcom/google/android/gms/internal/cast/j;->b:LH3/b;

    .line 42
    .line 43
    invoke-virtual {v2, p1, v1, v0}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final c(LE1/F;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/j;->a:Lcom/google/android/gms/internal/cast/i;

    .line 2
    .line 3
    iget-object v1, p1, LE1/F;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p1, LE1/F;->r:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/cast/u;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x3

    .line 18
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p1

    .line 23
    const-class v0, Lcom/google/android/gms/internal/cast/i;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x2

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    .line 32
    const-string v2, "onRouteRemoved"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    aput-object v2, v1, v3

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    aput-object v0, v1, v2

    .line 39
    .line 40
    const-string v0, "Unable to call %s on %s."

    .line 41
    .line 42
    sget-object v2, Lcom/google/android/gms/internal/cast/j;->b:LH3/b;

    .line 43
    .line 44
    invoke-virtual {v2, p1, v0, v1}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final d(LE1/H;LE1/F;I)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "__cast_nearby__"

    .line 5
    .line 6
    const-string v4, "-groupRoute"

    .line 7
    .line 8
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/j;->a:Lcom/google/android/gms/internal/cast/i;

    .line 9
    .line 10
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    iget-object v6, p2, LE1/F;->c:Ljava/lang/String;

    .line 15
    .line 16
    new-array v7, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    aput-object p3, v7, v0

    .line 19
    .line 20
    aput-object v6, v7, v2

    .line 21
    .line 22
    sget-object p3, Lcom/google/android/gms/internal/cast/j;->b:LH3/b;

    .line 23
    .line 24
    iget-object v8, p3, LH3/b;->a:Ljava/lang/String;

    .line 25
    .line 26
    const-string v9, "onRouteSelected with reason = %d, routeId = %s"

    .line 27
    .line 28
    invoke-virtual {p3, v9, v7}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget v7, p2, LE1/F;->k:I

    .line 36
    .line 37
    if-eq v7, v2, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    if-eqz v6, :cond_7

    .line 41
    .line 42
    :try_start_0
    invoke-virtual {v6, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-nez v7, :cond_1

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_1
    iget-object v7, p2, LE1/F;->r:Landroid/os/Bundle;

    .line 51
    .line 52
    invoke-static {v7}, Lcom/google/android/gms/cast/CastDevice;->i(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    if-nez v7, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-object v7, v7, Lcom/google/android/gms/cast/CastDevice;->G:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    const/16 v9, 0x10

    .line 66
    .line 67
    if-eqz v8, :cond_3

    .line 68
    .line 69
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {}, LE1/H;->b()V

    .line 77
    .line 78
    .line 79
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iget-object p1, p1, LE1/A;->h:Ljava/util/ArrayList;

    .line 91
    .line 92
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_7

    .line 101
    .line 102
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    check-cast v8, LE1/F;

    .line 107
    .line 108
    iget-object v10, v8, LE1/F;->c:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v10, :cond_5

    .line 111
    .line 112
    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    if-nez v11, :cond_5

    .line 117
    .line 118
    iget-object v8, v8, LE1/F;->r:Landroid/os/Bundle;

    .line 119
    .line 120
    invoke-static {v8}, Lcom/google/android/gms/cast/CastDevice;->i(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    if-eqz v8, :cond_5

    .line 125
    .line 126
    iget-object v8, v8, Lcom/google/android/gms/cast/CastDevice;->G:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    if-eqz v11, :cond_6

    .line 133
    .line 134
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    :cond_6
    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-eqz v8, :cond_5

    .line 143
    .line 144
    const-string p1, "routeId is changed from %s to %s"

    .line 145
    .line 146
    new-array v3, v1, [Ljava/lang/Object;

    .line 147
    .line 148
    aput-object v6, v3, v0

    .line 149
    .line 150
    aput-object v10, v3, v2

    .line 151
    .line 152
    invoke-virtual {p3, p1, v3}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catch_0
    move-exception p1

    .line 157
    goto :goto_3

    .line 158
    :cond_7
    :goto_1
    move-object v10, v6

    .line 159
    :goto_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const/4 v3, 0x7

    .line 164
    invoke-virtual {v5, v3, p1}, Lcom/google/android/gms/internal/ads/y5;->v0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 173
    .line 174
    .line 175
    const p1, 0xd230980

    .line 176
    .line 177
    .line 178
    if-lt v3, p1, :cond_8

    .line 179
    .line 180
    iget-object p1, p2, LE1/F;->r:Landroid/os/Bundle;

    .line 181
    .line 182
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/u;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 193
    .line 194
    .line 195
    const/16 p1, 0x8

    .line 196
    .line 197
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_8
    iget-object p1, p2, LE1/F;->r:Landroid/os/Bundle;

    .line 202
    .line 203
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/u;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 211
    .line 212
    .line 213
    const/4 p1, 0x4

    .line 214
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :goto_3
    const-class p2, Lcom/google/android/gms/internal/cast/i;

    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    new-array v1, v1, [Ljava/lang/Object;

    .line 225
    .line 226
    const-string v3, "onRouteSelected"

    .line 227
    .line 228
    aput-object v3, v1, v0

    .line 229
    .line 230
    aput-object p2, v1, v2

    .line 231
    .line 232
    const-string p2, "Unable to call %s on %s."

    .line 233
    .line 234
    invoke-virtual {p3, p1, p2, v1}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    return-void
.end method

.method public final e(LE1/F;I)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    iget-object v4, p1, LE1/F;->c:Ljava/lang/String;

    .line 9
    .line 10
    new-array v5, v0, [Ljava/lang/Object;

    .line 11
    .line 12
    aput-object v3, v5, v2

    .line 13
    .line 14
    aput-object v4, v5, v1

    .line 15
    .line 16
    sget-object v3, Lcom/google/android/gms/internal/cast/j;->b:LH3/b;

    .line 17
    .line 18
    iget-object v6, v3, LH3/b;->a:Ljava/lang/String;

    .line 19
    .line 20
    const-string v7, "onRouteUnselected with reason = %d, routeId = %s"

    .line 21
    .line 22
    invoke-virtual {v3, v7, v5}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget v5, p1, LE1/F;->k:I

    .line 30
    .line 31
    if-eq v5, v1, :cond_0

    .line 32
    .line 33
    new-array p1, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    const-string p2, "skip route unselection for non-cast route"

    .line 36
    .line 37
    invoke-virtual {v3, p2, p1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/j;->a:Lcom/google/android/gms/internal/cast/i;

    .line 42
    .line 43
    iget-object p1, p1, LE1/F;->r:Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v6, p1}, Lcom/google/android/gms/internal/cast/u;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x6

    .line 59
    invoke-virtual {v5, p1, v6}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catch_0
    move-exception p1

    .line 64
    const-class p2, Lcom/google/android/gms/internal/cast/i;

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    .line 72
    const-string v4, "onRouteUnselected"

    .line 73
    .line 74
    aput-object v4, v0, v2

    .line 75
    .line 76
    aput-object p2, v0, v1

    .line 77
    .line 78
    const-string p2, "Unable to call %s on %s."

    .line 79
    .line 80
    invoke-virtual {v3, p1, p2, v0}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
