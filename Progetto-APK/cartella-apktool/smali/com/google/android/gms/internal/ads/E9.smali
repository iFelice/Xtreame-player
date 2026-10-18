.class public final Lcom/google/android/gms/internal/ads/E9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/N9;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/E9;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/E9;->H:Ljava/lang/Object;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 5

    .line 1
    const-string v0, "transparentBackground"

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 4
    .line 5
    const-string v1, "1"

    .line 6
    .line 7
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "blur"

    .line 16
    .line 17
    const-string v2, "1"

    .line 18
    .line 19
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    :try_start_0
    const-string v3, "blurRadius"

    .line 29
    .line 30
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    const-string v3, "blurRadius"

    .line 37
    .line 38
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 45
    .line 46
    .line 47
    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p2

    .line 50
    const-string v3, "Fail to parse float"

    .line 51
    .line 52
    invoke-static {v3, p2}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/E9;->H:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p2, Lcom/google/android/gms/internal/ads/P9;

    .line 58
    .line 59
    monitor-enter p2

    .line 60
    :try_start_1
    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/P9;->a:Z

    .line 61
    .line 62
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/P9;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    monitor-exit p2

    .line 69
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/E9;->H:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p2, Lcom/google/android/gms/internal/ads/P9;

    .line 72
    .line 73
    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/ads/P9;->b(FZ)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Ef;->x0(Z)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    monitor-exit p2

    .line 82
    throw p1
.end method

.method private final b(Ljava/util/Map;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->F8:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_0
    const-string v0, "action"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "adUnitId"

    .line 30
    .line 31
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    const-string v2, "redirectUrl"

    .line 38
    .line 39
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_a

    .line 50
    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_a

    .line 56
    .line 57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_a

    .line 62
    .line 63
    const-string v3, "format"

    .line 64
    .line 65
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Ljava/lang/String;

    .line 70
    .line 71
    const-string v3, "load"

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_9

    .line 78
    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_1

    .line 84
    .line 85
    goto/16 :goto_7

    .line 86
    .line 87
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/E9;->H:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lcom/google/android/gms/internal/ads/xo;

    .line 90
    .line 91
    monitor-enter v0

    .line 92
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    const/4 v4, 0x3

    .line 97
    const/4 v5, 0x4

    .line 98
    const/4 v6, 0x5

    .line 99
    const/4 v7, 0x2

    .line 100
    const/4 v8, 0x0

    .line 101
    const/4 v9, 0x1

    .line 102
    sparse-switch v3, :sswitch_data_0

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :sswitch_0
    const-string v3, "BANNER"

    .line 107
    .line 108
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_2

    .line 113
    .line 114
    const/4 p1, 0x1

    .line 115
    goto :goto_1

    .line 116
    :catchall_0
    move-exception p1

    .line 117
    goto/16 :goto_6

    .line 118
    .line 119
    :sswitch_1
    const-string v3, "REWARDED_INTERSTITIAL"

    .line 120
    .line 121
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_2

    .line 126
    .line 127
    const/4 p1, 0x5

    .line 128
    goto :goto_1

    .line 129
    :sswitch_2
    const-string v3, "REWARDED"

    .line 130
    .line 131
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_2

    .line 136
    .line 137
    const/4 p1, 0x4

    .line 138
    goto :goto_1

    .line 139
    :sswitch_3
    const-string v3, "APP_OPEN_AD"

    .line 140
    .line 141
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_2

    .line 146
    .line 147
    const/4 p1, 0x0

    .line 148
    goto :goto_1

    .line 149
    :sswitch_4
    const-string v3, "INTERSTITIAL"

    .line 150
    .line 151
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_2

    .line 156
    .line 157
    const/4 p1, 0x2

    .line 158
    goto :goto_1

    .line 159
    :sswitch_5
    const-string v3, "NATIVE"

    .line 160
    .line 161
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    if-eqz p1, :cond_2

    .line 166
    .line 167
    const/4 p1, 0x3

    .line 168
    goto :goto_1

    .line 169
    :cond_2
    :goto_0
    const/4 p1, -0x1

    .line 170
    :goto_1
    if-eqz p1, :cond_8

    .line 171
    .line 172
    if-eq p1, v9, :cond_7

    .line 173
    .line 174
    if-eq p1, v7, :cond_6

    .line 175
    .line 176
    if-eq p1, v4, :cond_5

    .line 177
    .line 178
    if-eq p1, v5, :cond_4

    .line 179
    .line 180
    if-eq p1, v6, :cond_3

    .line 181
    .line 182
    monitor-exit v0

    .line 183
    goto/16 :goto_5

    .line 184
    .line 185
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo;->B3()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {}, Lcom/google/android/gms/internal/ads/xo;->C3()Lf3/f;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    new-instance v4, Lcom/google/android/gms/internal/ads/to;

    .line 194
    .line 195
    invoke-direct {v4, v0, v1, v2, v7}, Lcom/google/android/gms/internal/ads/to;-><init>(Lcom/google/android/gms/internal/ads/xo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/Ed;->a(Landroid/content/Context;Ljava/lang/String;Lf3/f;Lcom/google/android/gms/internal/ads/to;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    .line 200
    .line 201
    monitor-exit v0

    .line 202
    goto/16 :goto_5

    .line 203
    .line 204
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo;->B3()Landroid/content/Context;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-static {}, Lcom/google/android/gms/internal/ads/xo;->C3()Lf3/f;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    new-instance v4, Lcom/google/android/gms/internal/ads/to;

    .line 213
    .line 214
    invoke-direct {v4, v0, v1, v2, v9}, Lcom/google/android/gms/internal/ads/to;-><init>(Lcom/google/android/gms/internal/ads/xo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    .line 216
    .line 217
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zd;->a(Landroid/content/Context;Ljava/lang/String;Lf3/f;Lcom/google/android/gms/internal/ads/to;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    .line 219
    .line 220
    monitor-exit v0

    .line 221
    goto/16 :goto_5

    .line 222
    .line 223
    :cond_5
    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo;->B3()Landroid/content/Context;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    const-string v3, "context cannot be null"

    .line 228
    .line 229
    invoke-static {p1, v3}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    sget-object v3, Ll3/p;->f:Ll3/p;

    .line 233
    .line 234
    iget-object v3, v3, Ll3/p;->b:Ll3/n;

    .line 235
    .line 236
    new-instance v4, Lcom/google/android/gms/internal/ads/ab;

    .line 237
    .line 238
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/ab;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    new-instance v5, Ll3/k;

    .line 245
    .line 246
    invoke-direct {v5, v3, p1, v1, v4}, Ll3/k;-><init>(Ll3/n;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ab;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5, p1, v8}, Ll3/o;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    check-cast v3, Ll3/F;

    .line 254
    .line 255
    new-instance v4, La3/b;

    .line 256
    .line 257
    const/16 v5, 0x16

    .line 258
    .line 259
    invoke-direct {v4, v0, v1, v2, v5}, La3/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    .line 261
    .line 262
    :try_start_4
    new-instance v1, Lcom/google/android/gms/internal/ads/bc;

    .line 263
    .line 264
    invoke-direct {v1, v4, v8}, Lcom/google/android/gms/internal/ads/bc;-><init>(Ljava/lang/Object;I)V

    .line 265
    .line 266
    .line 267
    invoke-interface {v3, v1}, Ll3/F;->e1(Lcom/google/android/gms/internal/ads/v9;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :catch_0
    move-exception v1

    .line 272
    :try_start_5
    const-string v4, "Failed to add google native ad listener"

    .line 273
    .line 274
    invoke-static {v4, v1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    .line 276
    .line 277
    :goto_2
    new-instance v1, Lcom/google/ads/mediation/d;

    .line 278
    .line 279
    invoke-direct {v1, v0, v2}, Lcom/google/ads/mediation/d;-><init>(Lcom/google/android/gms/internal/ads/xo;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 280
    .line 281
    .line 282
    :try_start_6
    new-instance v2, Ll3/W0;

    .line 283
    .line 284
    invoke-direct {v2, v1}, Ll3/W0;-><init>(Lf3/b;)V

    .line 285
    .line 286
    .line 287
    invoke-interface {v3, v2}, Ll3/F;->J1(Ll3/w;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 288
    .line 289
    .line 290
    goto :goto_3

    .line 291
    :catch_1
    move-exception v1

    .line 292
    :try_start_7
    const-string v2, "Failed to set AdListener."

    .line 293
    .line 294
    invoke-static {v2, v1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 295
    .line 296
    .line 297
    :goto_3
    :try_start_8
    new-instance v1, Lf3/d;

    .line 298
    .line 299
    invoke-interface {v3}, Ll3/F;->zze()Ll3/C;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-direct {v1, p1, v2}, Lf3/d;-><init>(Landroid/content/Context;Ll3/C;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 304
    .line 305
    .line 306
    goto :goto_4

    .line 307
    :catch_2
    move-exception v1

    .line 308
    :try_start_9
    const-string v2, "Failed to build AdLoader."

    .line 309
    .line 310
    invoke-static {v2, v1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    .line 312
    .line 313
    new-instance v1, Ll3/O0;

    .line 314
    .line 315
    invoke-direct {v1}, Ll3/E;-><init>()V

    .line 316
    .line 317
    .line 318
    new-instance v2, Lf3/d;

    .line 319
    .line 320
    new-instance v3, Ll3/N0;

    .line 321
    .line 322
    invoke-direct {v3, v1}, Ll3/N0;-><init>(Ll3/O0;)V

    .line 323
    .line 324
    .line 325
    invoke-direct {v2, p1, v3}, Lf3/d;-><init>(Landroid/content/Context;Ll3/C;)V

    .line 326
    .line 327
    .line 328
    move-object v1, v2

    .line 329
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/xo;->C3()Lf3/f;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {v1, p1}, Lf3/d;->a(Lf3/f;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 334
    .line 335
    .line 336
    monitor-exit v0

    .line 337
    goto :goto_5

    .line 338
    :cond_6
    :try_start_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo;->B3()Landroid/content/Context;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    invoke-static {}, Lcom/google/android/gms/internal/ads/xo;->C3()Lf3/f;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    new-instance v4, Lcom/google/android/gms/internal/ads/vo;

    .line 347
    .line 348
    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/vo;-><init>(Lcom/google/android/gms/internal/ads/xo;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-static {p1, v1, v3, v4}, Lq3/a;->a(Landroid/content/Context;Ljava/lang/String;Lf3/f;Lq3/b;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 352
    .line 353
    .line 354
    monitor-exit v0

    .line 355
    goto :goto_5

    .line 356
    :cond_7
    :try_start_b
    new-instance p1, Lcom/google/android/gms/ads/AdView;

    .line 357
    .line 358
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo;->B3()Landroid/content/Context;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    invoke-direct {p1, v3}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 363
    .line 364
    .line 365
    sget-object v3, Lf3/g;->h:Lf3/g;

    .line 366
    .line 367
    invoke-virtual {p1, v3}, Lf3/i;->setAdSize(Lf3/g;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1, v1}, Lf3/i;->setAdUnitId(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    new-instance v3, Lcom/google/android/gms/internal/ads/uo;

    .line 374
    .line 375
    invoke-direct {v3, v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/uo;-><init>(Lcom/google/android/gms/internal/ads/xo;Ljava/lang/String;Lcom/google/android/gms/ads/AdView;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1, v3}, Lf3/i;->setAdListener(Lf3/b;)V

    .line 379
    .line 380
    .line 381
    invoke-static {}, Lcom/google/android/gms/internal/ads/xo;->C3()Lf3/f;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-virtual {p1, v1}, Lf3/i;->b(Lf3/f;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 386
    .line 387
    .line 388
    monitor-exit v0

    .line 389
    goto :goto_5

    .line 390
    :cond_8
    :try_start_c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo;->B3()Landroid/content/Context;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    invoke-static {}, Lcom/google/android/gms/internal/ads/xo;->C3()Lf3/f;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    new-instance v4, Lcom/google/android/gms/internal/ads/to;

    .line 399
    .line 400
    invoke-direct {v4, v0, v1, v2, v8}, Lcom/google/android/gms/internal/ads/to;-><init>(Lcom/google/android/gms/internal/ads/xo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 401
    .line 402
    .line 403
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/Z5;->a(Landroid/content/Context;Ljava/lang/String;Lf3/f;Lcom/google/android/gms/internal/ads/to;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 404
    .line 405
    .line 406
    monitor-exit v0

    .line 407
    :goto_5
    return-void

    .line 408
    :goto_6
    monitor-exit v0

    .line 409
    throw p1

    .line 410
    :cond_9
    :goto_7
    const-string p1, "show"

    .line 411
    .line 412
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result p1

    .line 416
    if-eqz p1, :cond_a

    .line 417
    .line 418
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/E9;->H:Ljava/lang/Object;

    .line 419
    .line 420
    check-cast p1, Lcom/google/android/gms/internal/ads/xo;

    .line 421
    .line 422
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/xo;->A3(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    :cond_a
    :goto_8
    return-void

    .line 426
    nop

    .line 427
    :sswitch_data_0
    .sparse-switch
        -0x772abbe9 -> :sswitch_5
        -0x51d5b0d4 -> :sswitch_4
        -0x1987ba06 -> :sswitch_3
        0x205e3c0e -> :sswitch_2
        0x6e8e03bd -> :sswitch_1
        0x7458732c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/E9;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/E9;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/bm;

    .line 10
    .line 11
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 12
    .line 13
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/bm;->b:Lcom/google/android/gms/internal/ads/Tm;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Tm;->b(Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    const-string p1, "height"

    .line 24
    .line 25
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/E9;->H:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p2, Lcom/google/android/gms/internal/ads/Sf;

    .line 44
    .line 45
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/E9;->H:Ljava/lang/Object;

    .line 47
    .line 48
    move-object v1, v0

    .line 49
    check-cast v1, Lcom/google/android/gms/internal/ads/Sf;

    .line 50
    .line 51
    iget v2, v1, Lcom/google/android/gms/internal/ads/Sf;->q0:I

    .line 52
    .line 53
    if-eq v2, p1, :cond_0

    .line 54
    .line 55
    iput p1, v1, Lcom/google/android/gms/internal/ads/Sf;->q0:I

    .line 56
    .line 57
    check-cast v0, Lcom/google/android/gms/internal/ads/Sf;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    :goto_0
    monitor-exit p2

    .line 66
    goto :goto_2

    .line 67
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    :catch_0
    move-exception p1

    .line 70
    const-string p2, "Exception occurred while getting webview content height"

    .line 71
    .line 72
    invoke-static {p2, p1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_2
    return-void

    .line 76
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/Oe;

    .line 77
    .line 78
    const-string p1, "action"

    .line 79
    .line 80
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Ljava/lang/String;

    .line 85
    .line 86
    if-nez p1, :cond_2

    .line 87
    .line 88
    const-string p1, "Action missing from video GMSG."

    .line 89
    .line 90
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_2
    const-string v0, "src"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Ljava/lang/String;

    .line 107
    .line 108
    if-nez p1, :cond_3

    .line 109
    .line 110
    const-string p1, "src missing from video GMSG."

    .line 111
    .line 112
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/E9;->H:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p2, Ljava/util/function/Consumer;

    .line 119
    .line 120
    invoke-static {p2, p1}, Lc4/J0;->x(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_3
    return-void

    .line 124
    :pswitch_2
    const-string p1, "text"

    .line 125
    .line 126
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_7

    .line 131
    .line 132
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Ljava/lang/CharSequence;

    .line 137
    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_5
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-string v1, "Opening Share Sheet with text: "

    .line 156
    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v0, Landroid/content/Intent;

    .line 165
    .line 166
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v1, "android.intent.action.SEND"

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    const-string v1, "text/plain"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    check-cast p1, Ljava/lang/String;

    .line 184
    .line 185
    const-string v1, "android.intent.extra.TEXT"

    .line 186
    .line 187
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    const-string p1, "title"

    .line 191
    .line 192
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_6

    .line 197
    .line 198
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Ljava/lang/String;

    .line 203
    .line 204
    const-string p2, "android.intent.extra.TITLE"

    .line 205
    .line 206
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    .line 208
    .line 209
    :cond_6
    :try_start_3
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 210
    .line 211
    iget-object p1, p1, Lk3/l;->c:Lo3/O;

    .line 212
    .line 213
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/E9;->H:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast p1, Landroid/content/Context;

    .line 216
    .line 217
    invoke-static {p1, v0}, Lo3/O;->p(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :catch_1
    move-exception p1

    .line 222
    const-string p2, "Failed to open Share Sheet"

    .line 223
    .line 224
    invoke-static {p2, p1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    sget-object p2, Lk3/l;->A:Lk3/l;

    .line 228
    .line 229
    iget-object p2, p2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 230
    .line 231
    const-string v0, "ShareSheetGmsgHandler.onGmsg"

    .line 232
    .line 233
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    :cond_7
    :goto_4
    return-void

    .line 237
    :pswitch_3
    const-string p1, "action"

    .line 238
    .line 239
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    check-cast p1, Ljava/lang/String;

    .line 244
    .line 245
    const-string v0, "grant"

    .line 246
    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/E9;->H:Ljava/lang/Object;

    .line 252
    .line 253
    if-eqz v0, :cond_9

    .line 254
    .line 255
    :try_start_4
    const-string p1, "amount"

    .line 256
    .line 257
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    check-cast p1, Ljava/lang/String;

    .line 262
    .line 263
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    const-string v0, "type"

    .line 268
    .line 269
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    check-cast p2, Ljava/lang/String;

    .line 274
    .line 275
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-nez v0, :cond_8

    .line 280
    .line 281
    new-instance v0, Lcom/google/android/gms/internal/ads/ld;

    .line 282
    .line 283
    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/ads/ld;-><init>(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 284
    .line 285
    .line 286
    move-object v1, v0

    .line 287
    goto :goto_5

    .line 288
    :catch_2
    move-exception p1

    .line 289
    const-string p2, "Unable to parse reward amount."

    .line 290
    .line 291
    invoke-static {p2, p1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .line 293
    .line 294
    :cond_8
    :goto_5
    check-cast v2, Lcom/google/android/gms/internal/ads/X9;

    .line 295
    .line 296
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/X9;->G(Lcom/google/android/gms/internal/ads/ld;)V

    .line 297
    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_9
    const-string p2, "video_start"

    .line 301
    .line 302
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result p2

    .line 306
    if-eqz p2, :cond_a

    .line 307
    .line 308
    check-cast v2, Lcom/google/android/gms/internal/ads/X9;

    .line 309
    .line 310
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/X9;->zzc()V

    .line 311
    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_a
    const-string p2, "video_complete"

    .line 315
    .line 316
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-eqz p1, :cond_b

    .line 321
    .line 322
    check-cast v2, Lcom/google/android/gms/internal/ads/X9;

    .line 323
    .line 324
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/X9;->zzb()V

    .line 325
    .line 326
    .line 327
    :cond_b
    :goto_6
    return-void

    .line 328
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/E9;->b(Ljava/util/Map;)V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/E9;->a(Ljava/lang/Object;Ljava/util/Map;)V

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    :pswitch_6
    const-string p1, "name"

    .line 337
    .line 338
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    check-cast p1, Ljava/lang/String;

    .line 343
    .line 344
    if-nez p1, :cond_c

    .line 345
    .line 346
    const-string p1, "App event with no name parameter."

    .line 347
    .line 348
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    goto :goto_7

    .line 352
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/E9;->H:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v0, Lcom/google/android/gms/internal/ads/G9;

    .line 355
    .line 356
    const-string v1, "info"

    .line 357
    .line 358
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    check-cast p2, Ljava/lang/String;

    .line 363
    .line 364
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/G9;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    :goto_7
    return-void

    .line 368
    :pswitch_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/E9;->H:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast p1, Lcom/google/android/gms/internal/ads/F9;

    .line 371
    .line 372
    if-nez p1, :cond_d

    .line 373
    .line 374
    goto :goto_9

    .line 375
    :cond_d
    const-string v0, "name"

    .line 376
    .line 377
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    check-cast v0, Ljava/lang/String;

    .line 382
    .line 383
    if-nez v0, :cond_e

    .line 384
    .line 385
    const-string v0, "Ad metadata with no name parameter."

    .line 386
    .line 387
    invoke-static {v0}, Lp3/h;->f(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    const-string v0, ""

    .line 391
    .line 392
    :cond_e
    const-string v2, "info"

    .line 393
    .line 394
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-eqz v3, :cond_f

    .line 399
    .line 400
    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    .line 401
    .line 402
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object p2

    .line 406
    check-cast p2, Ljava/lang/String;

    .line 407
    .line 408
    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-static {v3}, LQ3/b;->A(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 412
    .line 413
    .line 414
    move-result-object v1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 415
    goto :goto_8

    .line 416
    :catch_3
    move-exception p2

    .line 417
    const-string v2, "Failed to convert ad metadata to JSON."

    .line 418
    .line 419
    invoke-static {v2, p2}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 420
    .line 421
    .line 422
    :cond_f
    :goto_8
    if-nez v1, :cond_10

    .line 423
    .line 424
    const-string p1, "Failed to convert ad metadata to Bundle."

    .line 425
    .line 426
    invoke-static {p1}, Lp3/h;->d(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    goto :goto_9

    .line 430
    :cond_10
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/F9;->o(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 431
    .line 432
    .line 433
    :goto_9
    return-void

    .line 434
    nop

    .line 435
    :pswitch_data_0
    .packed-switch 0x0
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
