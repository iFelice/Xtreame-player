.class public final Lcom/google/android/gms/internal/ads/bc;
.super Lcom/google/android/gms/internal/ads/u9;
.source "SourceFile"


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/ads/bc;->G:I

    .line 2
    .line 3
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener"

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bc;->H:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final o3(Lcom/google/android/gms/internal/ads/B9;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/bc;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bc;->H:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/Yu;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Yu;-><init>(Lcom/google/android/gms/internal/ads/B9;)V

    .line 11
    .line 12
    .line 13
    check-cast v1, Lcom/google/ads/mediation/d;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/google/ads/mediation/a;

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v3, p1, Lcom/google/ads/mediation/a;->l:Landroid/os/Bundle;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    :try_start_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Yu;->H:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v4, Lcom/google/android/gms/internal/ads/B9;

    .line 36
    .line 37
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/B9;->zzq()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v4

    .line 43
    invoke-static {v2, v4}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    move-object v4, v3

    .line 47
    :goto_0
    iput-object v4, p1, Lcom/google/ads/mediation/a;->a:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Yu;->I:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v4, Ljava/util/List;

    .line 52
    .line 53
    iput-object v4, p1, Lcom/google/ads/mediation/a;->b:Ljava/util/List;

    .line 54
    .line 55
    :try_start_1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Yu;->H:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v4, Lcom/google/android/gms/internal/ads/B9;

    .line 58
    .line 59
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/B9;->zzo()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    goto :goto_1

    .line 64
    :catch_1
    move-exception v4

    .line 65
    invoke-static {v2, v4}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    move-object v4, v3

    .line 69
    :goto_1
    iput-object v4, p1, Lcom/google/ads/mediation/a;->c:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Yu;->J:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v4, Lcom/google/android/gms/internal/ads/U8;

    .line 74
    .line 75
    iput-object v4, p1, Lcom/google/ads/mediation/a;->d:Lcom/google/android/gms/internal/ads/U8;

    .line 76
    .line 77
    :try_start_2
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Yu;->H:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v4, Lcom/google/android/gms/internal/ads/B9;

    .line 80
    .line 81
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/B9;->zzp()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 85
    goto :goto_2

    .line 86
    :catch_2
    move-exception v4

    .line 87
    invoke-static {v2, v4}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    move-object v4, v3

    .line 91
    :goto_2
    iput-object v4, p1, Lcom/google/ads/mediation/a;->e:Ljava/lang/String;

    .line 92
    .line 93
    :try_start_3
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Yu;->H:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v4, Lcom/google/android/gms/internal/ads/B9;

    .line 96
    .line 97
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/B9;->zzn()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 101
    goto :goto_3

    .line 102
    :catch_3
    move-exception v4

    .line 103
    invoke-static {v2, v4}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    move-object v4, v3

    .line 107
    :goto_3
    iput-object v4, p1, Lcom/google/ads/mediation/a;->f:Ljava/lang/String;

    .line 108
    .line 109
    :try_start_4
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Yu;->H:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v4, Lcom/google/android/gms/internal/ads/B9;

    .line 112
    .line 113
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/B9;->zze()D

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 118
    .line 119
    cmpl-double v8, v4, v6

    .line 120
    .line 121
    if-nez v8, :cond_0

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 125
    .line 126
    .line 127
    move-result-object v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 128
    goto :goto_5

    .line 129
    :catch_4
    move-exception v4

    .line 130
    invoke-static {v2, v4}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    :goto_4
    move-object v4, v3

    .line 134
    :goto_5
    iput-object v4, p1, Lcom/google/ads/mediation/a;->g:Ljava/lang/Double;

    .line 135
    .line 136
    :try_start_5
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Yu;->H:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v4, Lcom/google/android/gms/internal/ads/B9;

    .line 139
    .line 140
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/B9;->e()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 144
    goto :goto_6

    .line 145
    :catch_5
    move-exception v4

    .line 146
    invoke-static {v2, v4}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    move-object v4, v3

    .line 150
    :goto_6
    iput-object v4, p1, Lcom/google/ads/mediation/a;->h:Ljava/lang/String;

    .line 151
    .line 152
    :try_start_6
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Yu;->H:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v4, Lcom/google/android/gms/internal/ads/B9;

    .line 155
    .line 156
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/B9;->zzs()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 160
    goto :goto_7

    .line 161
    :catch_6
    move-exception v4

    .line 162
    invoke-static {v2, v4}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    move-object v4, v3

    .line 166
    :goto_7
    iput-object v4, p1, Lcom/google/ads/mediation/a;->i:Ljava/lang/String;

    .line 167
    .line 168
    :try_start_7
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Yu;->H:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v4, Lcom/google/android/gms/internal/ads/B9;

    .line 171
    .line 172
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/B9;->zzl()LR3/a;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    if-eqz v4, :cond_1

    .line 177
    .line 178
    invoke-static {v4}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 182
    goto :goto_8

    .line 183
    :catch_7
    move-exception v4

    .line 184
    invoke-static {v2, v4}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    :cond_1
    :goto_8
    iput-object v3, p1, Lcom/google/ads/mediation/a;->k:Ljava/lang/Object;

    .line 188
    .line 189
    const/4 v2, 0x1

    .line 190
    iput-boolean v2, p1, Lcom/google/ads/mediation/a;->m:Z

    .line 191
    .line 192
    iput-boolean v2, p1, Lcom/google/ads/mediation/a;->n:Z

    .line 193
    .line 194
    :try_start_8
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Yu;->H:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v3, Lcom/google/android/gms/internal/ads/B9;

    .line 197
    .line 198
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/B9;->zzh()Ll3/B0;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    if-eqz v3, :cond_2

    .line 203
    .line 204
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Yu;->K:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v3, La3/b;

    .line 207
    .line 208
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Yu;->H:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v4, Lcom/google/android/gms/internal/ads/B9;

    .line 211
    .line 212
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/B9;->zzh()Ll3/B0;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-virtual {v3, v4}, La3/b;->r(Ll3/B0;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    .line 217
    .line 218
    .line 219
    goto :goto_9

    .line 220
    :catch_8
    move-exception v3

    .line 221
    const-string v4, "Exception occurred while getting video controller"

    .line 222
    .line 223
    invoke-static {v4, v3}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    :cond_2
    :goto_9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yu;->K:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v0, La3/b;

    .line 229
    .line 230
    iput-object v0, p1, Lcom/google/ads/mediation/a;->j:La3/b;

    .line 231
    .line 232
    iget-object v0, v1, Lcom/google/ads/mediation/d;->I:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v0, Lr3/l;

    .line 235
    .line 236
    iget-object v1, v1, Lcom/google/ads/mediation/d;->H:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v1, Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 239
    .line 240
    check-cast v0, La3/b;

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    const-string v3, "#008 Must be called on the main UI thread."

    .line 246
    .line 247
    invoke-static {v3}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    const-string v3, "Adapter called onAdLoaded."

    .line 251
    .line 252
    invoke-static {v3}, Lp3/h;->b(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iput-object p1, v0, La3/b;->I:Ljava/lang/Object;

    .line 256
    .line 257
    instance-of p1, v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 258
    .line 259
    if-eqz p1, :cond_3

    .line 260
    .line 261
    goto :goto_a

    .line 262
    :cond_3
    new-instance p1, La3/b;

    .line 263
    .line 264
    invoke-direct {p1, v2}, La3/b;-><init>(I)V

    .line 265
    .line 266
    .line 267
    new-instance v1, Lcom/google/android/gms/internal/ads/qb;

    .line 268
    .line 269
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/qb;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v1}, La3/b;->r(Ll3/B0;)V

    .line 273
    .line 274
    .line 275
    :goto_a
    :try_start_9
    iget-object p1, v0, La3/b;->H:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast p1, Lcom/google/android/gms/internal/ads/hb;

    .line 278
    .line 279
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/hb;->k()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    .line 280
    .line 281
    .line 282
    goto :goto_b

    .line 283
    :catch_9
    move-exception p1

    .line 284
    const-string v0, "#007 Could not call remote method."

    .line 285
    .line 286
    invoke-static {v0, p1}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 287
    .line 288
    .line 289
    :goto_b
    return-void

    .line 290
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Zb;

    .line 291
    .line 292
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Zb;-><init>(Lcom/google/android/gms/internal/ads/B9;)V

    .line 293
    .line 294
    .line 295
    check-cast v1, La3/b;

    .line 296
    .line 297
    iget-object p1, v1, La3/b;->H:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast p1, Lcom/google/android/gms/internal/ads/xo;

    .line 300
    .line 301
    iget-object v2, v1, La3/b;->I:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v2, Ljava/lang/String;

    .line 304
    .line 305
    iget-object v1, v1, La3/b;->J:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v1, Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/xo;->z3(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
