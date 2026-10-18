.class public final Lc4/L;
.super Lc4/B;
.source "SourceFile"


# instance fields
.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:I

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:J

.field public final O:J

.field public final P:J

.field public Q:Ljava/util/List;

.field public R:Ljava/lang/String;

.field public S:I

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:J

.field public X:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc4/l0;JJ)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lc4/B;-><init>(Lc4/l0;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lc4/L;->W:J

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lc4/L;->X:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide p2, p0, Lc4/L;->O:J

    .line 12
    .line 13
    iput-wide p4, p0, Lc4/L;->P:J

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final p()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final q()V
    .locals 15

    .line 1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/l0;

    .line 4
    .line 5
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 6
    .line 7
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 8
    .line 9
    .line 10
    iget-wide v2, p0, Lc4/L;->P:J

    .line 11
    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-wide v3, p0, Lc4/L;->O:J

    .line 17
    .line 18
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object v1, v1, Lc4/T;->T:Lc4/Q;

    .line 23
    .line 24
    const-string v4, "sdkVersion bundled with app, dynamiteVersion"

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3, v4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v3, "Unknown"

    .line 40
    .line 41
    const/high16 v4, -0x80000000

    .line 42
    .line 43
    const-string v5, ""

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    const-string v7, "unknown"

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 51
    .line 52
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    const-string v9, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 60
    .line 61
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 62
    .line 63
    invoke-virtual {v0, v8, v9}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    move-object v8, v3

    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_1
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Lc4/l0;

    .line 77
    .line 78
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 79
    .line 80
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    const-string v9, "Error retrieving app installer package name. appId"

    .line 88
    .line 89
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 90
    .line 91
    invoke-virtual {v0, v8, v9}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    if-nez v7, :cond_2

    .line 95
    .line 96
    const-string v0, "manual_install"

    .line 97
    .line 98
    move-object v7, v0

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    const-string v0, "com.android.vending"

    .line 101
    .line 102
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    move-object v7, v5

    .line 109
    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Lc4/l0;

    .line 112
    .line 113
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    .line 125
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 126
    .line 127
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    if-nez v9, :cond_4

    .line 136
    .line 137
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 141
    goto :goto_2

    .line 142
    :cond_4
    move-object v8, v3

    .line 143
    :goto_2
    :try_start_2
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 144
    .line 145
    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :catch_1
    move-object v0, v3

    .line 149
    move-object v3, v8

    .line 150
    goto :goto_3

    .line 151
    :catch_2
    move-object v0, v3

    .line 152
    :goto_3
    iget-object v8, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v8, Lc4/l0;

    .line 155
    .line 156
    iget-object v8, v8, Lc4/l0;->O:Lc4/T;

    .line 157
    .line 158
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    const-string v10, "Error retrieving package info. appId, appName"

    .line 166
    .line 167
    iget-object v8, v8, Lc4/T;->L:Lc4/Q;

    .line 168
    .line 169
    invoke-virtual {v8, v9, v3, v10}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    move-object v8, v3

    .line 173
    move-object v3, v0

    .line 174
    :goto_4
    iput-object v2, p0, Lc4/L;->I:Ljava/lang/String;

    .line 175
    .line 176
    iput-object v7, p0, Lc4/L;->L:Ljava/lang/String;

    .line 177
    .line 178
    iput-object v3, p0, Lc4/L;->J:Ljava/lang/String;

    .line 179
    .line 180
    iput v4, p0, Lc4/L;->K:I

    .line 181
    .line 182
    iput-object v8, p0, Lc4/L;->M:Ljava/lang/String;

    .line 183
    .line 184
    const-wide/16 v3, 0x0

    .line 185
    .line 186
    iput-wide v3, p0, Lc4/L;->N:J

    .line 187
    .line 188
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v0, Lc4/l0;

    .line 191
    .line 192
    iget-object v3, v0, Lc4/l0;->M:Lc4/h;

    .line 193
    .line 194
    iget-object v4, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 195
    .line 196
    sget-object v7, Lc4/E;->q1:Lc4/D;

    .line 197
    .line 198
    const/4 v8, 0x0

    .line 199
    invoke-virtual {v3, v8, v7}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    const/4 v9, 0x1

    .line 204
    if-nez v3, :cond_6

    .line 205
    .line 206
    iget-object v3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v3, Lc4/l0;

    .line 209
    .line 210
    invoke-virtual {v3}, Lc4/l0;->s()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    if-nez v10, :cond_6

    .line 219
    .line 220
    iget-object v10, v3, Lc4/l0;->M:Lc4/h;

    .line 221
    .line 222
    invoke-virtual {v10, v8, v7}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    if-eqz v10, :cond_5

    .line 227
    .line 228
    move-object v3, v8

    .line 229
    goto :goto_5

    .line 230
    :cond_5
    iget-object v3, v3, Lc4/l0;->I:Ljava/lang/String;

    .line 231
    .line 232
    :goto_5
    const-string v10, "am"

    .line 233
    .line 234
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-eqz v3, :cond_6

    .line 239
    .line 240
    const/4 v3, 0x1

    .line 241
    goto :goto_6

    .line 242
    :cond_6
    const/4 v3, 0x0

    .line 243
    :goto_6
    iget-object v10, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v10, Lc4/l0;

    .line 246
    .line 247
    invoke-virtual {v10}, Lc4/l0;->l()I

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    iget-object v12, v10, Lc4/l0;->Y:Ljava/lang/String;

    .line 252
    .line 253
    iget-object v13, v0, Lc4/l0;->O:Lc4/T;

    .line 254
    .line 255
    if-eqz v11, :cond_d

    .line 256
    .line 257
    if-eq v11, v9, :cond_c

    .line 258
    .line 259
    const/4 v9, 0x3

    .line 260
    if-eq v11, v9, :cond_b

    .line 261
    .line 262
    const/4 v9, 0x4

    .line 263
    if-eq v11, v9, :cond_a

    .line 264
    .line 265
    const/4 v9, 0x6

    .line 266
    if-eq v11, v9, :cond_9

    .line 267
    .line 268
    const/4 v9, 0x7

    .line 269
    if-eq v11, v9, :cond_8

    .line 270
    .line 271
    const/16 v9, 0x8

    .line 272
    .line 273
    if-eq v11, v9, :cond_7

    .line 274
    .line 275
    invoke-static {v13}, Lc4/l0;->k(Lc4/s0;)V

    .line 276
    .line 277
    .line 278
    const-string v9, "App measurement disabled"

    .line 279
    .line 280
    iget-object v14, v13, Lc4/T;->R:Lc4/Q;

    .line 281
    .line 282
    invoke-virtual {v14, v9}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-static {v13}, Lc4/l0;->k(Lc4/s0;)V

    .line 286
    .line 287
    .line 288
    const-string v9, "Invalid scion state in identity"

    .line 289
    .line 290
    iget-object v14, v13, Lc4/T;->M:Lc4/Q;

    .line 291
    .line 292
    invoke-virtual {v14, v9}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto :goto_7

    .line 296
    :cond_7
    invoke-static {v13}, Lc4/l0;->k(Lc4/s0;)V

    .line 297
    .line 298
    .line 299
    const-string v9, "App measurement disabled due to denied storage consent"

    .line 300
    .line 301
    iget-object v14, v13, Lc4/T;->R:Lc4/Q;

    .line 302
    .line 303
    invoke-virtual {v14, v9}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    goto :goto_7

    .line 307
    :cond_8
    invoke-static {v13}, Lc4/l0;->k(Lc4/s0;)V

    .line 308
    .line 309
    .line 310
    const-string v9, "App measurement disabled via the global data collection setting"

    .line 311
    .line 312
    iget-object v14, v13, Lc4/T;->R:Lc4/Q;

    .line 313
    .line 314
    invoke-virtual {v14, v9}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_9
    invoke-static {v13}, Lc4/l0;->k(Lc4/s0;)V

    .line 319
    .line 320
    .line 321
    const-string v9, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    .line 322
    .line 323
    iget-object v14, v13, Lc4/T;->Q:Lc4/Q;

    .line 324
    .line 325
    invoke-virtual {v14, v9}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_a
    invoke-static {v13}, Lc4/l0;->k(Lc4/s0;)V

    .line 330
    .line 331
    .line 332
    const-string v9, "App measurement disabled via the manifest"

    .line 333
    .line 334
    iget-object v14, v13, Lc4/T;->R:Lc4/Q;

    .line 335
    .line 336
    invoke-virtual {v14, v9}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    goto :goto_7

    .line 340
    :cond_b
    invoke-static {v13}, Lc4/l0;->k(Lc4/s0;)V

    .line 341
    .line 342
    .line 343
    const-string v9, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    .line 344
    .line 345
    iget-object v14, v13, Lc4/T;->R:Lc4/Q;

    .line 346
    .line 347
    invoke-virtual {v14, v9}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_c
    invoke-static {v13}, Lc4/l0;->k(Lc4/s0;)V

    .line 352
    .line 353
    .line 354
    const-string v9, "App measurement deactivated via the manifest"

    .line 355
    .line 356
    iget-object v14, v13, Lc4/T;->R:Lc4/Q;

    .line 357
    .line 358
    invoke-virtual {v14, v9}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_d
    invoke-static {v13}, Lc4/l0;->k(Lc4/s0;)V

    .line 363
    .line 364
    .line 365
    const-string v9, "App measurement collection enabled"

    .line 366
    .line 367
    iget-object v14, v13, Lc4/T;->T:Lc4/Q;

    .line 368
    .line 369
    invoke-virtual {v14, v9}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    :goto_7
    iput-object v5, p0, Lc4/L;->T:Ljava/lang/String;

    .line 373
    .line 374
    iput-object v5, p0, Lc4/L;->U:Ljava/lang/String;

    .line 375
    .line 376
    if-eqz v3, :cond_e

    .line 377
    .line 378
    invoke-virtual {v10}, Lc4/l0;->s()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    iput-object v3, p0, Lc4/L;->U:Ljava/lang/String;

    .line 383
    .line 384
    :cond_e
    :try_start_3
    invoke-static {v4, v12}, Lcom/google/android/gms/internal/ads/Cw;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 389
    .line 390
    .line 391
    move-result v9

    .line 392
    if-eqz v9, :cond_f

    .line 393
    .line 394
    goto :goto_8

    .line 395
    :cond_f
    move-object v5, v3

    .line 396
    :goto_8
    iput-object v5, p0, Lc4/L;->T:Ljava/lang/String;

    .line 397
    .line 398
    iget-object v0, v0, Lc4/l0;->M:Lc4/h;

    .line 399
    .line 400
    invoke-virtual {v0, v8, v7}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-nez v0, :cond_12

    .line 405
    .line 406
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-nez v0, :cond_12

    .line 411
    .line 412
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    if-nez v3, :cond_10

    .line 421
    .line 422
    goto :goto_9

    .line 423
    :cond_10
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Cw;->K(Landroid/content/Context;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v12

    .line 427
    :goto_9
    const-string v3, "admob_app_id"

    .line 428
    .line 429
    const-string v4, "string"

    .line 430
    .line 431
    invoke-virtual {v0, v3, v4, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .line 433
    .line 434
    move-result v3
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    .line 435
    if-nez v3, :cond_11

    .line 436
    .line 437
    goto :goto_a

    .line 438
    :cond_11
    :try_start_4
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    .line 442
    goto :goto_b

    .line 443
    :catch_3
    :goto_a
    move-object v0, v8

    .line 444
    :goto_b
    :try_start_5
    iput-object v0, p0, Lc4/L;->U:Ljava/lang/String;

    .line 445
    .line 446
    goto :goto_c

    .line 447
    :catch_4
    move-exception v0

    .line 448
    goto :goto_e

    .line 449
    :cond_12
    :goto_c
    if-nez v11, :cond_14

    .line 450
    .line 451
    invoke-static {v13}, Lc4/l0;->k(Lc4/s0;)V

    .line 452
    .line 453
    .line 454
    iget-object v0, v13, Lc4/T;->T:Lc4/Q;

    .line 455
    .line 456
    const-string v3, "App measurement enabled for app package, google app id"

    .line 457
    .line 458
    iget-object v4, p0, Lc4/L;->I:Ljava/lang/String;

    .line 459
    .line 460
    iget-object v5, p0, Lc4/L;->T:Ljava/lang/String;

    .line 461
    .line 462
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    if-eqz v5, :cond_13

    .line 467
    .line 468
    iget-object v5, p0, Lc4/L;->U:Ljava/lang/String;

    .line 469
    .line 470
    goto :goto_d

    .line 471
    :cond_13
    iget-object v5, p0, Lc4/L;->T:Ljava/lang/String;

    .line 472
    .line 473
    :goto_d
    invoke-virtual {v0, v4, v5, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4

    .line 474
    .line 475
    .line 476
    goto :goto_f

    .line 477
    :goto_e
    iget-object v3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v3, Lc4/l0;

    .line 480
    .line 481
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 482
    .line 483
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 484
    .line 485
    .line 486
    invoke-static {v2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    const-string v4, "Fetching Google App Id failed with exception. appId"

    .line 491
    .line 492
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 493
    .line 494
    invoke-virtual {v3, v2, v0, v4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    :cond_14
    :goto_f
    iput-object v8, p0, Lc4/L;->Q:Ljava/util/List;

    .line 498
    .line 499
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 500
    .line 501
    check-cast v0, Lc4/l0;

    .line 502
    .line 503
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    iget-object v2, v0, Lc4/l0;->M:Lc4/h;

    .line 507
    .line 508
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    const-string v3, "analytics.safelisted_events"

    .line 512
    .line 513
    invoke-static {v3}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v2}, Lc4/h;->x()Landroid/os/Bundle;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    if-nez v4, :cond_15

    .line 521
    .line 522
    iget-object v3, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 523
    .line 524
    check-cast v3, Lc4/l0;

    .line 525
    .line 526
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 527
    .line 528
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 529
    .line 530
    .line 531
    const-string v4, "Failed to load metadata: Metadata bundle is null"

    .line 532
    .line 533
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 534
    .line 535
    invoke-virtual {v3, v4}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    :goto_10
    move-object v3, v8

    .line 539
    goto :goto_11

    .line 540
    :cond_15
    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 541
    .line 542
    .line 543
    move-result v5

    .line 544
    if-nez v5, :cond_16

    .line 545
    .line 546
    goto :goto_10

    .line 547
    :cond_16
    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    :goto_11
    if-eqz v3, :cond_18

    .line 556
    .line 557
    :try_start_6
    iget-object v4, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 558
    .line 559
    check-cast v4, Lc4/l0;

    .line 560
    .line 561
    iget-object v4, v4, Lc4/l0;->G:Landroid/content/Context;

    .line 562
    .line 563
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 564
    .line 565
    .line 566
    move-result-object v4

    .line 567
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    if-nez v3, :cond_17

    .line 576
    .line 577
    goto :goto_12

    .line 578
    :cond_17
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 579
    .line 580
    .line 581
    move-result-object v8
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    .line 582
    goto :goto_12

    .line 583
    :catch_5
    move-exception v3

    .line 584
    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 585
    .line 586
    check-cast v2, Lc4/l0;

    .line 587
    .line 588
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 589
    .line 590
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 591
    .line 592
    .line 593
    const-string v4, "Failed to load string array from metadata: resource not found"

    .line 594
    .line 595
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 596
    .line 597
    invoke-virtual {v2, v3, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    :cond_18
    :goto_12
    if-nez v8, :cond_19

    .line 601
    .line 602
    goto :goto_13

    .line 603
    :cond_19
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    if-eqz v2, :cond_1a

    .line 608
    .line 609
    iget-object v2, v0, Lc4/l0;->O:Lc4/T;

    .line 610
    .line 611
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 612
    .line 613
    .line 614
    const-string v3, "Safelisted event list is empty. Ignoring"

    .line 615
    .line 616
    iget-object v2, v2, Lc4/T;->Q:Lc4/Q;

    .line 617
    .line 618
    invoke-virtual {v2, v3}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    goto :goto_14

    .line 622
    :cond_1a
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 623
    .line 624
    .line 625
    move-result-object v2

    .line 626
    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 627
    .line 628
    .line 629
    move-result v3

    .line 630
    if-eqz v3, :cond_1c

    .line 631
    .line 632
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    check-cast v3, Ljava/lang/String;

    .line 637
    .line 638
    iget-object v4, v0, Lc4/l0;->R:Lc4/I1;

    .line 639
    .line 640
    invoke-static {v4}, Lc4/l0;->i(Lc4/s0;)V

    .line 641
    .line 642
    .line 643
    const-string v5, "safelisted event"

    .line 644
    .line 645
    invoke-virtual {v4, v5, v3}, Lc4/I1;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 646
    .line 647
    .line 648
    move-result v3

    .line 649
    if-nez v3, :cond_1b

    .line 650
    .line 651
    goto :goto_14

    .line 652
    :cond_1c
    :goto_13
    iput-object v8, p0, Lc4/L;->Q:Ljava/util/List;

    .line 653
    .line 654
    :goto_14
    if-eqz v1, :cond_1d

    .line 655
    .line 656
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 657
    .line 658
    invoke-static {v0}, LQ3/b;->p(Landroid/content/Context;)Z

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    iput v0, p0, Lc4/L;->S:I

    .line 663
    .line 664
    return-void

    .line 665
    :cond_1d
    iput v6, p0, Lc4/L;->S:I

    .line 666
    .line 667
    return-void
.end method

.method public final r(Ljava/lang/String;)Lc4/J1;
    .locals 50

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lc4/z;->m()V

    .line 4
    .line 5
    .line 6
    new-instance v44, Lc4/J1;

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lc4/L;->t()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual/range {p0 .. p0}, Lc4/L;->u()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual/range {p0 .. p0}, Lc4/B;->n()V

    .line 17
    .line 18
    .line 19
    iget-object v5, v1, Lc4/L;->J:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lc4/B;->n()V

    .line 22
    .line 23
    .line 24
    iget v0, v1, Lc4/L;->K:I

    .line 25
    .line 26
    int-to-long v6, v0

    .line 27
    invoke-virtual/range {p0 .. p0}, Lc4/B;->n()V

    .line 28
    .line 29
    .line 30
    iget-object v0, v1, Lc4/L;->L:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v8, v1, Lc4/L;->L:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lc4/l0;

    .line 40
    .line 41
    iget-object v2, v0, Lc4/l0;->M:Lc4/h;

    .line 42
    .line 43
    invoke-virtual {v2}, Lc4/h;->u()J

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Lc4/B;->n()V

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p0 .. p0}, Lc4/z;->m()V

    .line 50
    .line 51
    .line 52
    iget-wide v9, v1, Lc4/L;->N:J

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    const-wide/16 v11, 0x0

    .line 56
    .line 57
    cmp-long v13, v9, v11

    .line 58
    .line 59
    if-nez v13, :cond_4

    .line 60
    .line 61
    iget-object v9, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v9, Lc4/l0;

    .line 64
    .line 65
    iget-object v9, v9, Lc4/l0;->R:Lc4/I1;

    .line 66
    .line 67
    invoke-static {v9}, Lc4/l0;->i(Lc4/s0;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    invoke-virtual {v9}, Lc1/d;->m()V

    .line 77
    .line 78
    .line 79
    invoke-static {v10}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 83
    .line 84
    .line 85
    move-result-object v13

    .line 86
    invoke-static {}, Lc4/I1;->x()Ljava/security/MessageDigest;

    .line 87
    .line 88
    .line 89
    move-result-object v14

    .line 90
    if-nez v14, :cond_0

    .line 91
    .line 92
    iget-object v0, v9, Lc1/d;->G:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Lc4/l0;

    .line 95
    .line 96
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 97
    .line 98
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 99
    .line 100
    .line 101
    const-string v9, "Could not get MD5 instance"

    .line 102
    .line 103
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 104
    .line 105
    invoke-virtual {v0, v9}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-wide/16 v9, -0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_0
    if-eqz v13, :cond_3

    .line 112
    .line 113
    :try_start_0
    invoke-virtual {v9, v0, v10}, Lc4/I1;->f0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    if-nez v10, :cond_2

    .line 118
    .line 119
    invoke-static {v0}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v10, v9, Lc1/d;->G:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v10, Lc4/l0;

    .line 126
    .line 127
    iget-object v13, v10, Lc4/l0;->G:Landroid/content/Context;

    .line 128
    .line 129
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    const/16 v15, 0x40

    .line 134
    .line 135
    invoke-virtual {v0, v15, v13}, Lcom/google/android/gms/internal/measurement/U1;->c(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 140
    .line 141
    if-eqz v0, :cond_1

    .line 142
    .line 143
    array-length v13, v0

    .line 144
    if-lez v13, :cond_1

    .line 145
    .line 146
    aget-object v0, v0, v2

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v14, v0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0}, Lc4/I1;->x0([B)J

    .line 157
    .line 158
    .line 159
    move-result-wide v15

    .line 160
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    goto :goto_1

    .line 163
    :cond_1
    iget-object v0, v10, Lc4/l0;->O:Lc4/T;

    .line 164
    .line 165
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 169
    .line 170
    const-string v10, "Could not get signatures"

    .line 171
    .line 172
    invoke-virtual {v0, v10}, Lc4/Q;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    const-wide/16 v15, -0x1

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_2
    move-wide v15, v11

    .line 179
    :goto_0
    move-wide v9, v15

    .line 180
    goto :goto_2

    .line 181
    :goto_1
    iget-object v9, v9, Lc1/d;->G:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v9, Lc4/l0;

    .line 184
    .line 185
    iget-object v9, v9, Lc4/l0;->O:Lc4/T;

    .line 186
    .line 187
    invoke-static {v9}, Lc4/l0;->k(Lc4/s0;)V

    .line 188
    .line 189
    .line 190
    const-string v10, "Package name not found"

    .line 191
    .line 192
    iget-object v9, v9, Lc4/T;->L:Lc4/Q;

    .line 193
    .line 194
    invoke-virtual {v9, v0, v10}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_3
    move-wide v9, v11

    .line 198
    :goto_2
    iput-wide v9, v1, Lc4/L;->N:J

    .line 199
    .line 200
    :cond_4
    move-wide v13, v9

    .line 201
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v0, Lc4/l0;

    .line 204
    .line 205
    invoke-virtual {v0}, Lc4/l0;->f()Z

    .line 206
    .line 207
    .line 208
    move-result v15

    .line 209
    iget-object v9, v0, Lc4/l0;->N:Lc4/Z;

    .line 210
    .line 211
    invoke-static {v9}, Lc4/l0;->i(Lc4/s0;)V

    .line 212
    .line 213
    .line 214
    iget-boolean v9, v9, Lc4/Z;->Y:Z

    .line 215
    .line 216
    const/4 v10, 0x1

    .line 217
    xor-int/lit8 v16, v9, 0x1

    .line 218
    .line 219
    invoke-virtual/range {p0 .. p0}, Lc4/z;->m()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Lc4/l0;->f()Z

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    const/4 v11, 0x0

    .line 227
    if-nez v9, :cond_5

    .line 228
    .line 229
    :catch_1
    :goto_3
    move-object v0, v11

    .line 230
    goto/16 :goto_4

    .line 231
    .line 232
    :cond_5
    sget-object v9, Lcom/google/android/gms/internal/measurement/G4;->H:Lcom/google/android/gms/internal/measurement/G4;

    .line 233
    .line 234
    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/G4;->G:Ly4/w;

    .line 235
    .line 236
    iget-object v9, v9, Ly4/w;->G:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v9, Lcom/google/android/gms/internal/measurement/H4;

    .line 239
    .line 240
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    sget-object v9, Lc4/E;->H0:Lc4/D;

    .line 244
    .line 245
    iget-object v12, v0, Lc4/l0;->M:Lc4/h;

    .line 246
    .line 247
    invoke-virtual {v12, v11, v9}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    if-eqz v9, :cond_6

    .line 252
    .line 253
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v0, Lc4/l0;

    .line 256
    .line 257
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 258
    .line 259
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 260
    .line 261
    .line 262
    const-string v9, "Disabled IID for tests."

    .line 263
    .line 264
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 265
    .line 266
    invoke-virtual {v0, v9}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_6
    :try_start_1
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 271
    .line 272
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    const-string v9, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 277
    .line 278
    invoke-virtual {v0, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 282
    if-nez v0, :cond_7

    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_7
    :try_start_2
    const-string v9, "getInstance"

    .line 286
    .line 287
    new-array v12, v10, [Ljava/lang/Class;

    .line 288
    .line 289
    const-class v19, Landroid/content/Context;

    .line 290
    .line 291
    aput-object v19, v12, v2

    .line 292
    .line 293
    invoke-virtual {v0, v9, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    new-array v12, v10, [Ljava/lang/Object;

    .line 298
    .line 299
    iget-object v10, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v10, Lc4/l0;

    .line 302
    .line 303
    iget-object v10, v10, Lc4/l0;->G:Landroid/content/Context;

    .line 304
    .line 305
    aput-object v10, v12, v2

    .line 306
    .line 307
    invoke-virtual {v9, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 311
    if-nez v9, :cond_8

    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_8
    :try_start_3
    const-string v10, "getFirebaseInstanceId"

    .line 315
    .line 316
    new-array v12, v2, [Ljava/lang/Class;

    .line 317
    .line 318
    invoke-virtual {v0, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    new-array v10, v2, [Ljava/lang/Object;

    .line 323
    .line 324
    invoke-virtual {v0, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 329
    .line 330
    goto :goto_4

    .line 331
    :catch_2
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v0, Lc4/l0;

    .line 334
    .line 335
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 336
    .line 337
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 338
    .line 339
    .line 340
    const-string v9, "Failed to retrieve Firebase Instance Id"

    .line 341
    .line 342
    iget-object v0, v0, Lc4/T;->Q:Lc4/Q;

    .line 343
    .line 344
    invoke-virtual {v0, v9}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    goto :goto_3

    .line 348
    :catch_3
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v0, Lc4/l0;

    .line 351
    .line 352
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 353
    .line 354
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 355
    .line 356
    .line 357
    const-string v9, "Failed to obtain Firebase Analytics instance"

    .line 358
    .line 359
    iget-object v0, v0, Lc4/T;->P:Lc4/Q;

    .line 360
    .line 361
    invoke-virtual {v0, v9}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    goto/16 :goto_3

    .line 365
    .line 366
    :goto_4
    iget-object v9, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v9, Lc4/l0;

    .line 369
    .line 370
    iget-object v10, v9, Lc4/l0;->N:Lc4/Z;

    .line 371
    .line 372
    invoke-static {v10}, Lc4/l0;->i(Lc4/s0;)V

    .line 373
    .line 374
    .line 375
    iget-object v10, v10, Lc4/Z;->M:LE1/I;

    .line 376
    .line 377
    invoke-virtual {v10}, LE1/I;->a()J

    .line 378
    .line 379
    .line 380
    move-result-wide v11

    .line 381
    iget-wide v9, v9, Lc4/l0;->m0:J

    .line 382
    .line 383
    const-wide/16 v17, 0x0

    .line 384
    .line 385
    cmp-long v21, v11, v17

    .line 386
    .line 387
    if-nez v21, :cond_9

    .line 388
    .line 389
    :goto_5
    move-wide/from16 v21, v9

    .line 390
    .line 391
    goto :goto_6

    .line 392
    :cond_9
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 393
    .line 394
    .line 395
    move-result-wide v9

    .line 396
    goto :goto_5

    .line 397
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lc4/B;->n()V

    .line 398
    .line 399
    .line 400
    iget v11, v1, Lc4/L;->S:I

    .line 401
    .line 402
    iget-object v9, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v9, Lc4/l0;

    .line 405
    .line 406
    iget-object v10, v9, Lc4/l0;->M:Lc4/h;

    .line 407
    .line 408
    const-string v12, "google_analytics_adid_collection_enabled"

    .line 409
    .line 410
    invoke-virtual {v10, v12}, Lc4/h;->z(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 411
    .line 412
    .line 413
    move-result-object v10

    .line 414
    if-eqz v10, :cond_b

    .line 415
    .line 416
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 417
    .line 418
    .line 419
    move-result v10

    .line 420
    if-eqz v10, :cond_a

    .line 421
    .line 422
    goto :goto_7

    .line 423
    :cond_a
    const/16 v23, 0x0

    .line 424
    .line 425
    goto :goto_8

    .line 426
    :cond_b
    :goto_7
    const/16 v23, 0x1

    .line 427
    .line 428
    :goto_8
    iget-object v10, v9, Lc4/l0;->N:Lc4/Z;

    .line 429
    .line 430
    invoke-static {v10}, Lc4/l0;->i(Lc4/s0;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v10}, Lc1/d;->m()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v10}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 437
    .line 438
    .line 439
    move-result-object v12

    .line 440
    move/from16 v26, v11

    .line 441
    .line 442
    const-string v11, "deferred_analytics_collection"

    .line 443
    .line 444
    invoke-interface {v12, v11, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 445
    .line 446
    .line 447
    move-result v28

    .line 448
    invoke-virtual/range {p0 .. p0}, Lc4/L;->s()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v29

    .line 452
    iget-object v11, v9, Lc4/l0;->M:Lc4/h;

    .line 453
    .line 454
    const-string v12, "google_analytics_default_allow_ad_personalization_signals"

    .line 455
    .line 456
    move-object/from16 v30, v0

    .line 457
    .line 458
    const/4 v2, 0x1

    .line 459
    invoke-virtual {v11, v12, v2}, Lc4/h;->y(Ljava/lang/String;Z)Lc4/u0;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    sget-object v2, Lc4/u0;->K:Lc4/u0;

    .line 464
    .line 465
    if-eq v0, v2, :cond_c

    .line 466
    .line 467
    const/4 v2, 0x1

    .line 468
    goto :goto_9

    .line 469
    :cond_c
    const/4 v2, 0x0

    .line 470
    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    iget-object v2, v1, Lc4/L;->Q:Ljava/util/List;

    .line 475
    .line 476
    invoke-virtual {v10}, Lc4/Z;->u()Lc4/x0;

    .line 477
    .line 478
    .line 479
    move-result-object v25

    .line 480
    invoke-virtual/range {v25 .. v25}, Lc4/x0;->j()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v31

    .line 484
    move-object/from16 v32, v2

    .line 485
    .line 486
    iget-object v2, v1, Lc4/L;->R:Ljava/lang/String;

    .line 487
    .line 488
    move-object/from16 v33, v0

    .line 489
    .line 490
    iget-object v0, v9, Lc4/l0;->R:Lc4/I1;

    .line 491
    .line 492
    if-nez v2, :cond_d

    .line 493
    .line 494
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v0}, Lc4/I1;->u()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    iput-object v2, v1, Lc4/L;->R:Ljava/lang/String;

    .line 502
    .line 503
    :cond_d
    iget-object v2, v1, Lc4/L;->R:Ljava/lang/String;

    .line 504
    .line 505
    invoke-virtual {v10}, Lc4/Z;->u()Lc4/x0;

    .line 506
    .line 507
    .line 508
    move-result-object v10

    .line 509
    move-object/from16 v35, v2

    .line 510
    .line 511
    sget-object v2, Lc4/w0;->I:Lc4/w0;

    .line 512
    .line 513
    invoke-virtual {v10, v2}, Lc4/x0;->k(Lc4/w0;)Z

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    if-nez v2, :cond_e

    .line 518
    .line 519
    move-wide/from16 v36, v13

    .line 520
    .line 521
    const-wide/16 v17, 0x0

    .line 522
    .line 523
    const/16 v38, 0x0

    .line 524
    .line 525
    goto :goto_b

    .line 526
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lc4/z;->m()V

    .line 527
    .line 528
    .line 529
    move-wide/from16 v36, v13

    .line 530
    .line 531
    iget-wide v13, v1, Lc4/L;->W:J

    .line 532
    .line 533
    const-wide/16 v17, 0x0

    .line 534
    .line 535
    cmp-long v2, v13, v17

    .line 536
    .line 537
    if-nez v2, :cond_f

    .line 538
    .line 539
    goto :goto_a

    .line 540
    :cond_f
    iget-object v2, v9, Lc4/l0;->T:LP3/b;

    .line 541
    .line 542
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 543
    .line 544
    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 546
    .line 547
    .line 548
    move-result-wide v9

    .line 549
    iget-wide v13, v1, Lc4/L;->W:J

    .line 550
    .line 551
    sub-long/2addr v9, v13

    .line 552
    iget-object v2, v1, Lc4/L;->V:Ljava/lang/String;

    .line 553
    .line 554
    if-eqz v2, :cond_10

    .line 555
    .line 556
    const-wide/32 v13, 0x5265c00

    .line 557
    .line 558
    .line 559
    cmp-long v2, v9, v13

    .line 560
    .line 561
    if-lez v2, :cond_10

    .line 562
    .line 563
    iget-object v2, v1, Lc4/L;->X:Ljava/lang/String;

    .line 564
    .line 565
    if-nez v2, :cond_10

    .line 566
    .line 567
    invoke-virtual/range {p0 .. p0}, Lc4/L;->w()V

    .line 568
    .line 569
    .line 570
    :cond_10
    :goto_a
    iget-object v2, v1, Lc4/L;->V:Ljava/lang/String;

    .line 571
    .line 572
    if-nez v2, :cond_11

    .line 573
    .line 574
    invoke-virtual/range {p0 .. p0}, Lc4/L;->w()V

    .line 575
    .line 576
    .line 577
    :cond_11
    iget-object v2, v1, Lc4/L;->V:Ljava/lang/String;

    .line 578
    .line 579
    move-object/from16 v38, v2

    .line 580
    .line 581
    :goto_b
    const-string v2, "google_analytics_sgtm_upload_enabled"

    .line 582
    .line 583
    invoke-virtual {v11, v2}, Lc4/h;->z(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    if-nez v2, :cond_12

    .line 588
    .line 589
    const/16 v39, 0x0

    .line 590
    .line 591
    goto :goto_c

    .line 592
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    move/from16 v39, v2

    .line 597
    .line 598
    :goto_c
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual/range {p0 .. p0}, Lc4/L;->t()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    iget-object v9, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 606
    .line 607
    check-cast v9, Lc4/l0;

    .line 608
    .line 609
    iget-object v10, v9, Lc4/l0;->G:Landroid/content/Context;

    .line 610
    .line 611
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 612
    .line 613
    .line 614
    move-result-object v10

    .line 615
    if-nez v10, :cond_13

    .line 616
    .line 617
    move-wide/from16 v40, v17

    .line 618
    .line 619
    const/4 v10, 0x0

    .line 620
    goto :goto_f

    .line 621
    :cond_13
    :try_start_4
    iget-object v9, v9, Lc4/l0;->G:Landroid/content/Context;

    .line 622
    .line 623
    invoke-static {v9}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 624
    .line 625
    .line 626
    move-result-object v9
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 627
    const/4 v10, 0x0

    .line 628
    :try_start_5
    invoke-virtual {v9, v10, v2}, Lcom/google/android/gms/internal/measurement/U1;->b(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 629
    .line 630
    .line 631
    move-result-object v9

    .line 632
    if-eqz v9, :cond_14

    .line 633
    .line 634
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 635
    .line 636
    goto :goto_e

    .line 637
    :cond_14
    :goto_d
    const/4 v0, 0x0

    .line 638
    goto :goto_e

    .line 639
    :catch_4
    const/4 v10, 0x0

    .line 640
    :catch_5
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 641
    .line 642
    check-cast v0, Lc4/l0;

    .line 643
    .line 644
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 645
    .line 646
    .line 647
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 648
    .line 649
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 650
    .line 651
    .line 652
    const-string v9, "PackageManager failed to find running app: app_id"

    .line 653
    .line 654
    iget-object v0, v0, Lc4/T;->R:Lc4/Q;

    .line 655
    .line 656
    invoke-virtual {v0, v2, v9}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    goto :goto_d

    .line 660
    :goto_e
    int-to-long v13, v0

    .line 661
    move-wide/from16 v40, v13

    .line 662
    .line 663
    :goto_f
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 664
    .line 665
    check-cast v0, Lc4/l0;

    .line 666
    .line 667
    iget-object v2, v0, Lc4/l0;->N:Lc4/Z;

    .line 668
    .line 669
    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v2}, Lc4/Z;->u()Lc4/x0;

    .line 673
    .line 674
    .line 675
    move-result-object v2

    .line 676
    iget-object v9, v0, Lc4/l0;->N:Lc4/Z;

    .line 677
    .line 678
    invoke-static {v9}, Lc4/l0;->i(Lc4/s0;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v9}, Lc1/d;->m()V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v9}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 685
    .line 686
    .line 687
    move-result-object v9

    .line 688
    const-string v11, "dma_consent_settings"

    .line 689
    .line 690
    const/4 v13, 0x0

    .line 691
    invoke-interface {v9, v11, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v9

    .line 695
    invoke-static {v9}, Lc4/q;->b(Ljava/lang/String;)Lc4/q;

    .line 696
    .line 697
    .line 698
    move-result-object v9

    .line 699
    iget-object v14, v9, Lc4/q;->b:Ljava/lang/String;

    .line 700
    .line 701
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i4;->b()V

    .line 702
    .line 703
    .line 704
    sget-object v9, Lc4/E;->X0:Lc4/D;

    .line 705
    .line 706
    iget-object v11, v0, Lc4/l0;->M:Lc4/h;

    .line 707
    .line 708
    invoke-virtual {v11, v13, v9}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 709
    .line 710
    .line 711
    move-result v24

    .line 712
    iget-object v0, v0, Lc4/l0;->R:Lc4/I1;

    .line 713
    .line 714
    if-eqz v24, :cond_16

    .line 715
    .line 716
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 720
    .line 721
    .line 722
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 723
    .line 724
    const/16 v10, 0x1e

    .line 725
    .line 726
    if-lt v13, v10, :cond_15

    .line 727
    .line 728
    invoke-static {}, Lb7/Z;->a()I

    .line 729
    .line 730
    .line 731
    move-result v10

    .line 732
    const/4 v13, 0x3

    .line 733
    if-le v10, v13, :cond_15

    .line 734
    .line 735
    invoke-static {}, LE1/a;->v()I

    .line 736
    .line 737
    .line 738
    move-result v10

    .line 739
    goto :goto_10

    .line 740
    :cond_15
    const/4 v10, 0x0

    .line 741
    :goto_10
    move/from16 v42, v10

    .line 742
    .line 743
    goto :goto_11

    .line 744
    :cond_16
    const/16 v42, 0x0

    .line 745
    .line 746
    :goto_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i4;->b()V

    .line 747
    .line 748
    .line 749
    const/4 v10, 0x0

    .line 750
    invoke-virtual {v11, v10, v9}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 751
    .line 752
    .line 753
    move-result v9

    .line 754
    if-eqz v9, :cond_17

    .line 755
    .line 756
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v0}, Lc4/I1;->w0()J

    .line 760
    .line 761
    .line 762
    move-result-wide v9

    .line 763
    move-wide/from16 v45, v9

    .line 764
    .line 765
    goto :goto_12

    .line 766
    :cond_17
    move-wide/from16 v45, v17

    .line 767
    .line 768
    :goto_12
    iget-object v0, v11, Lc4/h;->I:Ljava/lang/String;

    .line 769
    .line 770
    const/4 v9, 0x1

    .line 771
    invoke-virtual {v11, v12, v9}, Lc4/h;->y(Ljava/lang/String;Z)Lc4/u0;

    .line 772
    .line 773
    .line 774
    move-result-object v9

    .line 775
    invoke-static {v9}, Lc4/x0;->a(Lc4/u0;)C

    .line 776
    .line 777
    .line 778
    move-result v9

    .line 779
    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v43

    .line 783
    iget-object v9, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 784
    .line 785
    check-cast v9, Lc4/l0;

    .line 786
    .line 787
    iget-wide v12, v9, Lc4/l0;->m0:J

    .line 788
    .line 789
    sget-object v9, Lc4/E;->S0:Lc4/D;

    .line 790
    .line 791
    const/4 v10, 0x0

    .line 792
    invoke-virtual {v11, v10, v9}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 793
    .line 794
    .line 795
    move-result v9

    .line 796
    if-eqz v9, :cond_18

    .line 797
    .line 798
    iget-object v9, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 799
    .line 800
    check-cast v9, Lc4/l0;

    .line 801
    .line 802
    iget-object v10, v9, Lc4/l0;->d0:Lc4/P0;

    .line 803
    .line 804
    invoke-static {v10}, Lc4/l0;->h(Lc4/z;)V

    .line 805
    .line 806
    .line 807
    iget-object v9, v9, Lc4/l0;->d0:Lc4/P0;

    .line 808
    .line 809
    invoke-virtual {v9}, Lc4/P0;->r()I

    .line 810
    .line 811
    .line 812
    move-result v9

    .line 813
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/uc;->l(I)I

    .line 814
    .line 815
    .line 816
    move-result v9

    .line 817
    move/from16 v47, v9

    .line 818
    .line 819
    goto :goto_13

    .line 820
    :cond_18
    const/16 v47, 0x0

    .line 821
    .line 822
    :goto_13
    iget-wide v9, v1, Lc4/L;->O:J

    .line 823
    .line 824
    move-wide/from16 v24, v9

    .line 825
    .line 826
    iget v2, v2, Lc4/x0;->b:I

    .line 827
    .line 828
    move/from16 v34, v2

    .line 829
    .line 830
    const-wide/32 v9, 0x1d0da

    .line 831
    .line 832
    .line 833
    const/16 v27, 0x0

    .line 834
    .line 835
    move-object/from16 v2, v44

    .line 836
    .line 837
    move-wide/from16 v48, v12

    .line 838
    .line 839
    move/from16 v19, v26

    .line 840
    .line 841
    move-wide/from16 v11, v36

    .line 842
    .line 843
    move-object/from16 v13, p1

    .line 844
    .line 845
    move-object/from16 v36, v14

    .line 846
    .line 847
    move v14, v15

    .line 848
    move/from16 v15, v16

    .line 849
    .line 850
    move-object/from16 v16, v30

    .line 851
    .line 852
    move-wide/from16 v17, v21

    .line 853
    .line 854
    move/from16 v20, v23

    .line 855
    .line 856
    move/from16 v21, v28

    .line 857
    .line 858
    move-object/from16 v22, v29

    .line 859
    .line 860
    move-object/from16 v23, v33

    .line 861
    .line 862
    move-object/from16 v26, v32

    .line 863
    .line 864
    move-object/from16 v28, v31

    .line 865
    .line 866
    move-object/from16 v29, v35

    .line 867
    .line 868
    move-object/from16 v30, v38

    .line 869
    .line 870
    move/from16 v31, v39

    .line 871
    .line 872
    move-wide/from16 v32, v40

    .line 873
    .line 874
    move-object/from16 v35, v36

    .line 875
    .line 876
    move/from16 v36, v42

    .line 877
    .line 878
    move-wide/from16 v37, v45

    .line 879
    .line 880
    move-object/from16 v39, v0

    .line 881
    .line 882
    move-object/from16 v40, v43

    .line 883
    .line 884
    move-wide/from16 v41, v48

    .line 885
    .line 886
    move/from16 v43, v47

    .line 887
    .line 888
    invoke-direct/range {v2 .. v43}, Lc4/J1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    .line 889
    .line 890
    .line 891
    return-object v44
.end method

.method public final s()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lc4/l0;

    .line 7
    .line 8
    iget-object v0, v0, Lc4/l0;->M:Lc4/h;

    .line 9
    .line 10
    sget-object v1, Lc4/E;->q1:Lc4/D;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2, v1}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_0
    iget-object v0, p0, Lc4/L;->U:Ljava/lang/String;

    .line 21
    .line 22
    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc4/L;->I:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lc4/L;->I:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc4/L;->T:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lc4/L;->T:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public final w()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lc4/l0;

    .line 8
    .line 9
    iget-object v2, v1, Lc4/l0;->N:Lc4/Z;

    .line 10
    .line 11
    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lc4/Z;->u()Lc4/x0;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v3, Lc4/w0;->I:Lc4/w0;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Lc4/x0;->k(Lc4/w0;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget-object v3, v1, Lc4/l0;->O:Lc4/T;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "Analytics Storage consent is not granted"

    .line 32
    .line 33
    iget-object v2, v3, Lc4/T;->S:Lc4/Q;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/16 v2, 0x10

    .line 41
    .line 42
    new-array v2, v2, [B

    .line 43
    .line 44
    iget-object v4, v1, Lc4/l0;->R:Lc4/I1;

    .line 45
    .line 46
    invoke-static {v4}, Lc4/l0;->i(Lc4/s0;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lc4/I1;->y()Ljava/security/SecureRandom;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 54
    .line 55
    .line 56
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 57
    .line 58
    new-instance v5, Ljava/math/BigInteger;

    .line 59
    .line 60
    invoke-direct {v5, v0, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 61
    .line 62
    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    aput-object v5, v0, v2

    .line 67
    .line 68
    const-string v2, "%032x"

    .line 69
    .line 70
    invoke-static {v4, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_0
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 75
    .line 76
    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    const-string v2, "null"

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const-string v2, "not null"

    .line 83
    .line 84
    :goto_1
    const-string v4, "Resetting session stitching token to "

    .line 85
    .line 86
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object v3, v3, Lc4/T;->S:Lc4/Q;

    .line 91
    .line 92
    invoke-virtual {v3, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lc4/L;->V:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v0, v1, Lc4/l0;->T:LP3/b;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    iput-wide v0, p0, Lc4/L;->W:J

    .line 107
    .line 108
    return-void
.end method
