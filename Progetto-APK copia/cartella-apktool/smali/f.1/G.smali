.class public final Lf/G;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final synthetic c:I


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lf/G;->a:I

    iput-object p2, p0, Lf/G;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LD0/f;)V
    .locals 1

    .line 2
    const/4 v0, 0x3

    iput v0, p0, Lf/G;->a:I

    .line 3
    invoke-direct {p0, p1, v0}, Lf/G;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Lc4/l0;)V
    .locals 1

    .line 4
    const/16 v0, 0xf

    iput v0, p0, Lf/G;->a:I

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lf/G;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 6
    iput p2, p0, Lf/G;->a:I

    iput-object p1, p0, Lf/G;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lp0/C;)V
    .locals 1

    .line 7
    const/4 v0, 0x1

    iput v0, p0, Lf/G;->a:I

    .line 8
    invoke-direct {p0, p1, v0}, Lf/G;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lu5/g;)V
    .locals 1

    .line 9
    const/16 v0, 0x10

    iput v0, p0, Lf/G;->a:I

    .line 10
    invoke-direct {p0, p1, v0}, Lf/G;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    iget v0, p0, Lf/G;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x7

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, -0x1

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    const-string p1, "FirstReceiver"

    .line 17
    .line 18
    invoke-static {p1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "SeriesActivity_finish_alert"

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lf/G;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lpe/hf/black20/SeriesActivity;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_0
    iget-object p1, p0, Lf/G;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, LU0/r;

    .line 49
    .line 50
    const/16 v1, 0x13

    .line 51
    .line 52
    invoke-direct {v0, v1, p0, p2}, LU0/r;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void

    .line 59
    :pswitch_1
    const-string p1, "FirstReceiver"

    .line 60
    .line 61
    invoke-static {p1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p2, "finish_alert_login"

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    iget-object p1, p0, Lf/G;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p1, Lpe/hf/black20/LoginActivity;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void

    .line 84
    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    const-string p1, "plugged"

    .line 97
    .line 98
    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-gtz p1, :cond_3

    .line 103
    .line 104
    const/4 v8, 0x1

    .line 105
    :cond_3
    iget-object p1, p0, Lf/G;->b:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p1, Lu5/g;

    .line 108
    .line 109
    iget-object p1, p1, Lu5/g;->d:Landroid/os/Handler;

    .line 110
    .line 111
    new-instance p2, LB0/M0;

    .line 112
    .line 113
    invoke-direct {p2, v3, p0, v8}, LB0/M0;-><init>(ILjava/lang/Object;Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    .line 118
    .line 119
    :cond_4
    return-void

    .line 120
    :pswitch_3
    iget-object p1, p0, Lf/G;->b:Ljava/lang/Object;

    .line 121
    .line 122
    if-nez p2, :cond_5

    .line 123
    .line 124
    check-cast p1, Lc4/l0;

    .line 125
    .line 126
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 127
    .line 128
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 129
    .line 130
    .line 131
    const-string p2, "App receiver called with null intent"

    .line 132
    .line 133
    iget-object p1, p1, Lc4/T;->O:Lc4/Q;

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_1

    .line 139
    .line 140
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-nez p2, :cond_6

    .line 145
    .line 146
    check-cast p1, Lc4/l0;

    .line 147
    .line 148
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 149
    .line 150
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 151
    .line 152
    .line 153
    const-string p2, "App receiver called with null action"

    .line 154
    .line 155
    iget-object p1, p1, Lc4/T;->O:Lc4/Q;

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_6
    const-string v0, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    .line 162
    .line 163
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_9

    .line 168
    .line 169
    const-string v0, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    .line 170
    .line 171
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    if-nez p2, :cond_7

    .line 176
    .line 177
    check-cast p1, Lc4/l0;

    .line 178
    .line 179
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 180
    .line 181
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 182
    .line 183
    .line 184
    const-string p2, "App receiver called with unknown action"

    .line 185
    .line 186
    iget-object p1, p1, Lc4/T;->O:Lc4/Q;

    .line 187
    .line 188
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_7
    check-cast p1, Lc4/l0;

    .line 193
    .line 194
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i4;->b()V

    .line 195
    .line 196
    .line 197
    iget-object p2, p1, Lc4/l0;->M:Lc4/h;

    .line 198
    .line 199
    sget-object v0, Lc4/E;->X0:Lc4/D;

    .line 200
    .line 201
    invoke-virtual {p2, v6, v0}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    if-nez p2, :cond_8

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_8
    iget-object p2, p1, Lc4/l0;->O:Lc4/T;

    .line 209
    .line 210
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 211
    .line 212
    .line 213
    const-string v0, "App receiver notified triggers are available"

    .line 214
    .line 215
    iget-object p2, p2, Lc4/T;->T:Lc4/Q;

    .line 216
    .line 217
    invoke-virtual {p2, v0}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object p2, p1, Lc4/l0;->P:Lc4/j0;

    .line 221
    .line 222
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 223
    .line 224
    .line 225
    new-instance v0, Lcom/google/android/gms/internal/cast/X;

    .line 226
    .line 227
    invoke-direct {v0, p1, v5}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, v0}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_9
    check-cast p1, Lc4/l0;

    .line 235
    .line 236
    iget-object p2, p1, Lc4/l0;->M:Lc4/h;

    .line 237
    .line 238
    sget-object v0, Lc4/E;->S0:Lc4/D;

    .line 239
    .line 240
    invoke-virtual {p2, v6, v0}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    if-eqz p2, :cond_a

    .line 245
    .line 246
    iget-object p2, p1, Lc4/l0;->O:Lc4/T;

    .line 247
    .line 248
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 249
    .line 250
    .line 251
    const-string v0, "[sgtm] App Receiver notified batches are available"

    .line 252
    .line 253
    iget-object p2, p2, Lc4/T;->T:Lc4/Q;

    .line 254
    .line 255
    invoke-virtual {p2, v0}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object p1, p1, Lc4/l0;->P:Lc4/j0;

    .line 259
    .line 260
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 261
    .line 262
    .line 263
    new-instance p2, Lcom/google/android/gms/internal/cast/X;

    .line 264
    .line 265
    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, p2}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 269
    .line 270
    .line 271
    :cond_a
    :goto_1
    return-void

    .line 272
    :pswitch_4
    iget-object p1, p0, Lf/G;->b:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast p1, Lcom/google/android/gms/internal/pal/F1;

    .line 275
    .line 276
    sget-object p2, Lcom/google/android/gms/internal/pal/F1;->S:Landroid/os/Handler;

    .line 277
    .line 278
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/F1;->c()V

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-nez v0, :cond_b

    .line 287
    .line 288
    iget-object v0, p0, Lf/G;->b:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v0, Lcom/google/android/gms/internal/ads/GL;

    .line 291
    .line 292
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/GL;->h:Lcom/google/android/gms/internal/ads/bH;

    .line 293
    .line 294
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/GL;->g:Lcom/google/android/gms/internal/ads/IL;

    .line 295
    .line 296
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/EL;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/bH;Lcom/google/android/gms/internal/ads/IL;)Lcom/google/android/gms/internal/ads/EL;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/GL;->b(Lcom/google/android/gms/internal/ads/EL;)V

    .line 301
    .line 302
    .line 303
    :cond_b
    return-void

    .line 304
    :pswitch_6
    const-string p2, "connectivity"

    .line 305
    .line 306
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    check-cast p2, Landroid/net/ConnectivityManager;

    .line 311
    .line 312
    const/4 v0, 0x5

    .line 313
    if-nez p2, :cond_d

    .line 314
    .line 315
    :cond_c
    :goto_2
    const/4 v1, 0x0

    .line 316
    goto :goto_3

    .line 317
    :cond_d
    :try_start_0
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 318
    .line 319
    .line 320
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    if-eqz p2, :cond_e

    .line 322
    .line 323
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    if-nez v6, :cond_f

    .line 328
    .line 329
    :cond_e
    const/4 v1, 0x1

    .line 330
    goto :goto_3

    .line 331
    :cond_f
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    const/16 v7, 0x9

    .line 336
    .line 337
    const/4 v10, 0x6

    .line 338
    if-eqz v6, :cond_12

    .line 339
    .line 340
    if-eq v6, v9, :cond_13

    .line 341
    .line 342
    if-eq v6, v3, :cond_12

    .line 343
    .line 344
    if-eq v6, v0, :cond_12

    .line 345
    .line 346
    if-eq v6, v10, :cond_11

    .line 347
    .line 348
    if-eq v6, v7, :cond_10

    .line 349
    .line 350
    const/16 v1, 0x8

    .line 351
    .line 352
    goto :goto_3

    .line 353
    :cond_10
    const/4 v1, 0x7

    .line 354
    goto :goto_3

    .line 355
    :cond_11
    :pswitch_7
    const/4 v1, 0x5

    .line 356
    goto :goto_3

    .line 357
    :cond_12
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 358
    .line 359
    .line 360
    move-result p2

    .line 361
    packed-switch p2, :pswitch_data_1

    .line 362
    .line 363
    .line 364
    :pswitch_8
    const/4 v1, 0x6

    .line 365
    goto :goto_3

    .line 366
    :pswitch_9
    sget p2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 367
    .line 368
    const/16 v1, 0x1d

    .line 369
    .line 370
    if-lt p2, v1, :cond_c

    .line 371
    .line 372
    const/16 v1, 0x9

    .line 373
    .line 374
    goto :goto_3

    .line 375
    :pswitch_a
    const/4 v1, 0x4

    .line 376
    goto :goto_3

    .line 377
    :pswitch_b
    const/4 v1, 0x3

    .line 378
    goto :goto_3

    .line 379
    :catch_0
    nop

    .line 380
    goto :goto_2

    .line 381
    :cond_13
    :goto_3
    :pswitch_c
    sget p2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 382
    .line 383
    iget-object v2, p0, Lf/G;->b:Ljava/lang/Object;

    .line 384
    .line 385
    const/16 v3, 0x1f

    .line 386
    .line 387
    if-lt p2, v3, :cond_14

    .line 388
    .line 389
    if-ne v1, v0, :cond_14

    .line 390
    .line 391
    check-cast v2, Lcom/google/android/gms/internal/ads/Kq;

    .line 392
    .line 393
    :try_start_1
    const-string p2, "phone"

    .line 394
    .line 395
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object p2

    .line 399
    check-cast p2, Landroid/telephony/TelephonyManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 400
    .line 401
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    :try_start_2
    new-instance v1, Lp0/A;

    .line 405
    .line 406
    invoke-direct {v1, v2, v9}, Lp0/A;-><init>(Ljava/lang/Object;I)V

    .line 407
    .line 408
    .line 409
    invoke-static {p1}, LN/d0;->n(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    invoke-static {p2, p1, v1}, LN/f;->o(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Lp0/A;)V

    .line 414
    .line 415
    .line 416
    invoke-static {p2, v1}, LN/f;->p(Landroid/telephony/TelephonyManager;Lp0/A;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 417
    .line 418
    .line 419
    goto :goto_4

    .line 420
    :catch_1
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/Kq;->f(Lcom/google/android/gms/internal/ads/Kq;I)V

    .line 421
    .line 422
    .line 423
    goto :goto_4

    .line 424
    :cond_14
    check-cast v2, Lcom/google/android/gms/internal/ads/Kq;

    .line 425
    .line 426
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Kq;->f(Lcom/google/android/gms/internal/ads/Kq;I)V

    .line 427
    .line 428
    .line 429
    :goto_4
    return-void

    .line 430
    :pswitch_d
    iget-object p1, p0, Lf/G;->b:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast p1, Lcom/google/android/gms/internal/ads/H5;

    .line 433
    .line 434
    sget p2, Lcom/google/android/gms/internal/ads/H5;->V:I

    .line 435
    .line 436
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/H5;->c(I)V

    .line 437
    .line 438
    .line 439
    return-void

    .line 440
    :pswitch_e
    iget-object p1, p0, Lf/G;->b:Ljava/lang/Object;

    .line 441
    .line 442
    check-cast p1, Lcom/google/android/gms/internal/ads/Z4;

    .line 443
    .line 444
    sget-object p2, Lcom/google/android/gms/internal/ads/Z4;->S:Landroid/os/Handler;

    .line 445
    .line 446
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Z4;->c()V

    .line 447
    .line 448
    .line 449
    return-void

    .line 450
    :pswitch_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 455
    .line 456
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result p1

    .line 460
    iget-object v0, p0, Lf/G;->b:Ljava/lang/Object;

    .line 461
    .line 462
    if-eqz p1, :cond_15

    .line 463
    .line 464
    check-cast v0, Lo3/O;

    .line 465
    .line 466
    iput-boolean v9, v0, Lo3/O;->e:Z

    .line 467
    .line 468
    goto :goto_5

    .line 469
    :cond_15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 474
    .line 475
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result p1

    .line 479
    if-eqz p1, :cond_16

    .line 480
    .line 481
    check-cast v0, Lo3/O;

    .line 482
    .line 483
    iput-boolean v8, v0, Lo3/O;->e:Z

    .line 484
    .line 485
    :cond_16
    :goto_5
    return-void

    .line 486
    :pswitch_10
    iget-object v0, p0, Lf/G;->b:Ljava/lang/Object;

    .line 487
    .line 488
    check-cast v0, Lo3/G;

    .line 489
    .line 490
    monitor-enter v0

    .line 491
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    .line 492
    .line 493
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .line 495
    .line 496
    iget-object v2, v0, Lo3/G;->e:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast v2, Ljava/util/Map;

    .line 499
    .line 500
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    :cond_17
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    if-eqz v3, :cond_18

    .line 513
    .line 514
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    check-cast v3, Ljava/util/Map$Entry;

    .line 519
    .line 520
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    check-cast v4, Landroid/content/IntentFilter;

    .line 525
    .line 526
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    if-eqz v4, :cond_17

    .line 535
    .line 536
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    check-cast v3, Landroid/content/BroadcastReceiver;

    .line 541
    .line 542
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    goto :goto_6

    .line 546
    :catchall_0
    move-exception p1

    .line 547
    goto :goto_8

    .line 548
    :cond_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 549
    .line 550
    .line 551
    move-result v2

    .line 552
    :goto_7
    if-ge v8, v2, :cond_19

    .line 553
    .line 554
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    check-cast v3, Landroid/content/BroadcastReceiver;

    .line 559
    .line 560
    invoke-virtual {v3, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 561
    .line 562
    .line 563
    add-int/lit8 v8, v8, 0x1

    .line 564
    .line 565
    goto :goto_7

    .line 566
    :cond_19
    monitor-exit v0

    .line 567
    return-void

    .line 568
    :goto_8
    monitor-exit v0

    .line 569
    throw p1

    .line 570
    :pswitch_11
    iget-object p1, p0, Lf/G;->b:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast p1, LJ2/s;

    .line 573
    .line 574
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    new-instance p2, LJ2/r;

    .line 578
    .line 579
    invoke-direct {p2, p1, v1}, LJ2/r;-><init>(LJ2/s;I)V

    .line 580
    .line 581
    .line 582
    sget-object p1, LJ2/s;->M:Ljava/util/concurrent/Executor;

    .line 583
    .line 584
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 585
    .line 586
    .line 587
    return-void

    .line 588
    :pswitch_12
    const-string v0, "context"

    .line 589
    .line 590
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    const-string p1, "intent"

    .line 594
    .line 595
    invoke-static {p2, p1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    iget-object p1, p0, Lf/G;->b:Ljava/lang/Object;

    .line 599
    .line 600
    check-cast p1, Lk2/d;

    .line 601
    .line 602
    invoke-virtual {p1, p2}, Lk2/d;->g(Landroid/content/Intent;)V

    .line 603
    .line 604
    .line 605
    return-void

    .line 606
    :pswitch_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object p1

    .line 610
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 611
    .line 612
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result p1

    .line 616
    if-eqz p1, :cond_1b

    .line 617
    .line 618
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 619
    .line 620
    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 621
    .line 622
    .line 623
    move-result p1

    .line 624
    if-ne p1, v4, :cond_1b

    .line 625
    .line 626
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 627
    .line 628
    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 629
    .line 630
    .line 631
    move-result p1

    .line 632
    if-gez p1, :cond_1a

    .line 633
    .line 634
    goto :goto_9

    .line 635
    :cond_1a
    iget-object p1, p0, Lf/G;->b:Ljava/lang/Object;

    .line 636
    .line 637
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 638
    .line 639
    .line 640
    throw v6

    .line 641
    :cond_1b
    :goto_9
    return-void

    .line 642
    :pswitch_14
    iget-object p1, p0, Lf/G;->b:Ljava/lang/Object;

    .line 643
    .line 644
    check-cast p1, LE1/e0;

    .line 645
    .line 646
    invoke-virtual {p1}, LE1/e0;->a()V

    .line 647
    .line 648
    .line 649
    return-void

    .line 650
    :pswitch_15
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    .line 651
    .line 652
    .line 653
    move-result v0

    .line 654
    if-nez v0, :cond_1c

    .line 655
    .line 656
    iget-object v0, p0, Lf/G;->b:Ljava/lang/Object;

    .line 657
    .line 658
    check-cast v0, LD0/f;

    .line 659
    .line 660
    iget-object v1, v0, LD0/f;->i:Lm0/d;

    .line 661
    .line 662
    iget-object v2, v0, LD0/f;->h:Lf/S;

    .line 663
    .line 664
    invoke-static {p1, p2, v1, v2}, LD0/d;->b(Landroid/content/Context;Landroid/content/Intent;Lm0/d;Lf/S;)LD0/d;

    .line 665
    .line 666
    .line 667
    move-result-object p1

    .line 668
    invoke-virtual {v0, p1}, LD0/f;->a(LD0/d;)V

    .line 669
    .line 670
    .line 671
    :cond_1c
    return-void

    .line 672
    :pswitch_16
    iget-object p1, p0, Lf/G;->b:Ljava/lang/Object;

    .line 673
    .line 674
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 675
    .line 676
    .line 677
    throw v6

    .line 678
    :pswitch_17
    iget-object p2, p0, Lf/G;->b:Ljava/lang/Object;

    .line 679
    .line 680
    check-cast p2, Lp0/C;

    .line 681
    .line 682
    iget-object p2, p2, Lp0/C;->I:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast p2, Ljava/util/concurrent/Executor;

    .line 685
    .line 686
    new-instance v0, Lf/t;

    .line 687
    .line 688
    invoke-direct {v0, v5, p0, p1}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 689
    .line 690
    .line 691
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 692
    .line 693
    .line 694
    return-void

    .line 695
    :pswitch_18
    iget-object p1, p0, Lf/G;->b:Ljava/lang/Object;

    .line 696
    .line 697
    check-cast p1, Lf/H;

    .line 698
    .line 699
    invoke-virtual {p1}, Lf/H;->h()V

    .line 700
    .line 701
    .line 702
    return-void

    .line 703
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
