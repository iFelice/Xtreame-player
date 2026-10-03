.class public final Lcom/google/android/gms/internal/ads/lx;
.super Lcom/google/android/gms/internal/ads/tx;
.source "SourceFile"


# instance fields
.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/cb;Ll3/T0;Ll3/O;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/mx;LP3/a;I)V
    .locals 0

    .line 1
    iput p10, p0, Lcom/google/android/gms/internal/ads/lx;->n:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/internal/ads/tx;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/cb;Ll3/T0;Ll3/O;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/mx;LP3/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/pC;
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/lx;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tx;->e:Ll3/T0;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tx;->b:Landroid/content/Context;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/pC;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, LR3/b;

    .line 16
    .line 17
    invoke-direct {v3, v2}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, v1, Ll3/T0;->G:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/tx;->a:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 23
    .line 24
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/tx;->d:Lcom/google/android/gms/internal/ads/cb;

    .line 25
    .line 26
    iget v6, p0, Lcom/google/android/gms/internal/ads/tx;->c:I

    .line 27
    .line 28
    invoke-virtual {v4, v3, v2, v5, v6}, Lcom/google/android/gms/ads/internal/ClientApi;->e0(LR3/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cb;I)Lcom/google/android/gms/internal/ads/qd;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Lcom/google/android/gms/internal/ads/vx;

    .line 33
    .line 34
    move-object v4, v2

    .line 35
    check-cast v4, Lcom/google/android/gms/internal/ads/Lv;

    .line 36
    .line 37
    invoke-direct {v3, p0, v0, v4}, Lcom/google/android/gms/internal/ads/vx;-><init>(Lcom/google/android/gms/internal/ads/lx;Lcom/google/android/gms/internal/ads/pC;Lcom/google/android/gms/internal/ads/Lv;)V

    .line 38
    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    :try_start_0
    iget-object v1, v1, Ll3/T0;->I:Ll3/b1;

    .line 43
    .line 44
    check-cast v2, Lcom/google/android/gms/internal/ads/Lv;

    .line 45
    .line 46
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/Lv;->A1(Ll3/b1;Lcom/google/android/gms/internal/ads/xd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    const-string v1, "Failed to load rewarded ad."

    .line 51
    .line 52
    invoke-static {v1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lcom/google/android/gms/internal/ads/jx;

    .line 56
    .line 57
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/jx;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pC;->g(Ljava/lang/Throwable;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/jx;

    .line 65
    .line 66
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/jx;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pC;->g(Ljava/lang/Throwable;)Z

    .line 70
    .line 71
    .line 72
    :goto_0
    return-object v0

    .line 73
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/pC;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v4, LR3/b;

    .line 79
    .line 80
    invoke-direct {v4, v2}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    new-instance v5, Ll3/d1;

    .line 84
    .line 85
    invoke-direct {v5}, Ll3/d1;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v6, v1, Ll3/T0;->G:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/tx;->d:Lcom/google/android/gms/internal/ads/cb;

    .line 91
    .line 92
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tx;->a:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 93
    .line 94
    iget v8, p0, Lcom/google/android/gms/internal/ads/tx;->c:I

    .line 95
    .line 96
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/ads/internal/ClientApi;->Z1(LR3/a;Ll3/d1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cb;I)Ll3/J;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-eqz v2, :cond_1

    .line 101
    .line 102
    :try_start_1
    iget-object v1, v1, Ll3/T0;->I:Ll3/b1;

    .line 103
    .line 104
    new-instance v3, Lcom/google/android/gms/internal/ads/nx;

    .line 105
    .line 106
    move-object v4, v2

    .line 107
    check-cast v4, Lcom/google/android/gms/internal/ads/ks;

    .line 108
    .line 109
    invoke-direct {v3, p0, v0, v4}, Lcom/google/android/gms/internal/ads/nx;-><init>(Lcom/google/android/gms/internal/ads/lx;Lcom/google/android/gms/internal/ads/pC;Lcom/google/android/gms/internal/ads/ks;)V

    .line 110
    .line 111
    .line 112
    check-cast v2, Lcom/google/android/gms/internal/ads/ks;

    .line 113
    .line 114
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/ks;->S2(Ll3/b1;Ll3/z;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catch_1
    move-exception v1

    .line 119
    const-string v2, "Failed to load interstitial ad."

    .line 120
    .line 121
    invoke-static {v2, v1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    new-instance v1, Lcom/google/android/gms/internal/ads/jx;

    .line 125
    .line 126
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/jx;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pC;->g(Ljava/lang/Throwable;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/jx;

    .line 134
    .line 135
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/jx;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pC;->g(Ljava/lang/Throwable;)Z

    .line 139
    .line 140
    .line 141
    :goto_1
    return-object v0

    .line 142
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/pC;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 145
    .line 146
    .line 147
    new-instance v4, LR3/b;

    .line 148
    .line 149
    invoke-direct {v4, v2}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-static {}, Ll3/d1;->i()Ll3/d1;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    iget-object v6, v1, Ll3/T0;->G:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tx;->a:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 159
    .line 160
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/tx;->d:Lcom/google/android/gms/internal/ads/cb;

    .line 161
    .line 162
    iget v8, p0, Lcom/google/android/gms/internal/ads/tx;->c:I

    .line 163
    .line 164
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/ads/internal/ClientApi;->Y2(LR3/a;Ll3/d1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cb;I)Ll3/J;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    if-eqz v2, :cond_2

    .line 169
    .line 170
    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/ads/kx;

    .line 171
    .line 172
    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/ads/kx;-><init>(Lcom/google/android/gms/internal/ads/lx;Lcom/google/android/gms/internal/ads/pC;Ll3/T0;)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v2, v3}, Ll3/J;->k2(Lcom/google/android/gms/internal/ads/f6;)V

    .line 176
    .line 177
    .line 178
    iget-object v1, v1, Ll3/T0;->I:Ll3/b1;

    .line 179
    .line 180
    invoke-interface {v2, v1}, Ll3/J;->h3(Ll3/b1;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :catch_2
    move-exception v1

    .line 185
    const-string v2, "Failed to load app open ad."

    .line 186
    .line 187
    invoke-static {v2, v1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    new-instance v1, Lcom/google/android/gms/internal/ads/jx;

    .line 191
    .line 192
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/jx;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pC;->g(Ljava/lang/Throwable;)Z

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/jx;

    .line 200
    .line 201
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/jx;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pC;->g(Ljava/lang/Throwable;)Z

    .line 205
    .line 206
    .line 207
    :goto_2
    return-object v0

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
