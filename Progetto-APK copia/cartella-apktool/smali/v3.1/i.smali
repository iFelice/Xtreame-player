.class public final Lv3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dC;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/sc;

.field public final synthetic I:Z

.field public final synthetic J:Lv3/j;


# direct methods
.method public synthetic constructor <init>(Lv3/j;Lcom/google/android/gms/internal/ads/sc;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lv3/i;->G:I

    .line 5
    .line 6
    iput-object p2, p0, Lv3/i;->H:Lcom/google/android/gms/internal/ads/sc;

    .line 7
    .line 8
    iput-boolean p3, p0, Lv3/i;->I:Z

    .line 9
    .line 10
    iput-object p1, p0, Lv3/i;->J:Lv3/j;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Lv3/i;->G:I

    .line 3
    .line 4
    const-string v2, ""

    .line 5
    .line 6
    iget-object v3, p0, Lv3/i;->H:Lcom/google/android/gms/internal/ads/sc;

    .line 7
    .line 8
    const-string v4, "Internal error: "

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast v3, Lcom/google/android/gms/internal/ads/qc;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-static {v2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast v3, Lcom/google/android/gms/internal/ads/qc;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_1
    move-exception p1

    .line 77
    invoke-static {v2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lv3/i;->G:I

    .line 3
    .line 4
    const-string v2, ""

    .line 5
    .line 6
    const-string v3, "1"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    iget-boolean v5, p0, Lv3/i;->I:Z

    .line 10
    .line 11
    iget-object v6, p0, Lv3/i;->H:Lcom/google/android/gms/internal/ads/sc;

    .line 12
    .line 13
    iget-object v7, p0, Lv3/i;->J:Lv3/j;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast p1, Ljava/util/List;

    .line 19
    .line 20
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    if-eqz v8, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    check-cast v8, Landroid/net/Uri;

    .line 35
    .line 36
    iget-object v9, v7, Lv3/j;->d0:Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v10, v7, Lv3/j;->e0:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-static {v8, v9, v10}, Lv3/j;->F3(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_0

    .line 45
    .line 46
    iget-object v1, v7, Lv3/j;->Z:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 49
    .line 50
    .line 51
    :cond_1
    check-cast v6, Lcom/google/android/gms/internal/ads/qc;

    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v0, v7, Lv3/j;->U:Z

    .line 64
    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    if-eqz v5, :cond_5

    .line 68
    .line 69
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/net/Uri;

    .line 84
    .line 85
    iget-object v1, v7, Lv3/j;->d0:Ljava/util/ArrayList;

    .line 86
    .line 87
    iget-object v5, v7, Lv3/j;->e0:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-static {v0, v1, v5}, Lv3/j;->F3(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    .line 90
    .line 91
    .line 92
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    iget-object v5, v7, Lv3/j;->S:Lcom/google/android/gms/internal/ads/ix;

    .line 94
    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    :try_start_1
    iget-object v1, v7, Lv3/j;->c0:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v0, v1, v3}, Lv3/j;->G3(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v5, v0, v4}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Tw;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_0
    move-exception p1

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->R6:Lcom/google/android/gms/internal/ads/J7;

    .line 114
    .line 115
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 116
    .line 117
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 118
    .line 119
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_3

    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v5, v0, v4}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Tw;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :goto_1
    invoke-static {v2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    return-void

    .line 143
    :pswitch_0
    check-cast p1, Ljava/util/ArrayList;

    .line 144
    .line 145
    :try_start_2
    check-cast v6, Lcom/google/android/gms/internal/ads/qc;

    .line 146
    .line 147
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    .line 155
    .line 156
    .line 157
    iget-boolean v0, v7, Lv3/j;->T:Z

    .line 158
    .line 159
    if-nez v0, :cond_6

    .line 160
    .line 161
    if-eqz v5, :cond_9

    .line 162
    .line 163
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_9

    .line 172
    .line 173
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Landroid/net/Uri;

    .line 178
    .line 179
    iget-object v1, v7, Lv3/j;->f0:Ljava/util/ArrayList;

    .line 180
    .line 181
    iget-object v5, v7, Lv3/j;->g0:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-static {v0, v1, v5}, Lv3/j;->F3(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    .line 184
    .line 185
    .line 186
    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 187
    iget-object v5, v7, Lv3/j;->S:Lcom/google/android/gms/internal/ads/ix;

    .line 188
    .line 189
    if-eqz v1, :cond_8

    .line 190
    .line 191
    :try_start_3
    iget-object v1, v7, Lv3/j;->c0:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {v0, v1, v3}, Lv3/j;->G3(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v5, v0, v4}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Tw;)V

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :catch_1
    move-exception p1

    .line 206
    goto :goto_3

    .line 207
    :cond_8
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->R6:Lcom/google/android/gms/internal/ads/J7;

    .line 208
    .line 209
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 210
    .line 211
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 212
    .line 213
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, Ljava/lang/Boolean;

    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_7

    .line 224
    .line 225
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v5, v0, v4}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Tw;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :goto_3
    invoke-static {v2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    :cond_9
    return-void

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
