.class public final Lc4/F0;
.super Lc4/p;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lc4/K0;


# direct methods
.method public synthetic constructor <init>(Lc4/K0;Lc4/l0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lc4/F0;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lc4/F0;->f:Lc4/K0;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lc4/p;-><init>(Lc4/t0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lc4/F0;->e:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, v1, Lc4/F0;->f:Lc4/K0;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v4, v0

    .line 14
    check-cast v4, Lc4/l0;

    .line 15
    .line 16
    iget-object v0, v4, Lc4/l0;->P:Lc4/j0;

    .line 17
    .line 18
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 22
    .line 23
    .line 24
    iget-object v6, v4, Lc4/l0;->X:Lc4/N0;

    .line 25
    .line 26
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Lc4/l0;->n()Lc4/L;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lc4/L;->t()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    const-string v0, "google_analytics_adid_collection_enabled"

    .line 41
    .line 42
    iget-object v5, v4, Lc4/l0;->M:Lc4/h;

    .line 43
    .line 44
    invoke-virtual {v5, v0}, Lc4/h;->z(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v5, 0x0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 61
    :goto_1
    iget-object v8, v4, Lc4/l0;->O:Lc4/T;

    .line 62
    .line 63
    if-eqz v0, :cond_15

    .line 64
    .line 65
    iget-object v9, v4, Lc4/l0;->N:Lc4/Z;

    .line 66
    .line 67
    invoke-static {v9}, Lc4/l0;->i(Lc4/s0;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v9}, Lc1/d;->m()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v9}, Lc4/Z;->u()Lc4/x0;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget-object v10, Lc4/w0;->H:Lc4/w0;

    .line 78
    .line 79
    invoke-virtual {v0, v10}, Lc4/x0;->k(Lc4/w0;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const-string v10, ""

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    iget-object v0, v9, Lc1/d;->G:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lc4/l0;

    .line 90
    .line 91
    iget-object v11, v0, Lc4/l0;->T:LP3/b;

    .line 92
    .line 93
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 97
    .line 98
    .line 99
    move-result-wide v11

    .line 100
    iget-object v13, v9, Lc4/Z;->O:Ljava/lang/String;

    .line 101
    .line 102
    if-eqz v13, :cond_3

    .line 103
    .line 104
    iget-wide v14, v9, Lc4/Z;->Q:J

    .line 105
    .line 106
    cmp-long v16, v11, v14

    .line 107
    .line 108
    if-ltz v16, :cond_2

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_2
    new-instance v0, Landroid/util/Pair;

    .line 112
    .line 113
    iget-boolean v10, v9, Lc4/Z;->P:Z

    .line 114
    .line 115
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    invoke-direct {v0, v13, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :goto_2
    move-object v10, v0

    .line 123
    goto :goto_7

    .line 124
    :cond_3
    :goto_3
    sget-object v13, Lc4/E;->b:Lc4/D;

    .line 125
    .line 126
    iget-object v14, v0, Lc4/l0;->M:Lc4/h;

    .line 127
    .line 128
    invoke-virtual {v14, v7, v13}, Lc4/h;->w(Ljava/lang/String;Lc4/D;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v13

    .line 132
    add-long/2addr v13, v11

    .line 133
    iput-wide v13, v9, Lc4/Z;->Q:J

    .line 134
    .line 135
    :try_start_0
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 136
    .line 137
    invoke-static {v0}, Lj3/b;->a(Landroid/content/Context;)Lj3/a;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iput-object v10, v9, Lc4/Z;->O:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v11, v0, Lj3/a;->a:Ljava/lang/String;

    .line 144
    .line 145
    if-eqz v11, :cond_4

    .line 146
    .line 147
    iput-object v11, v9, Lc4/Z;->O:Ljava/lang/String;

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :catch_0
    move-exception v0

    .line 151
    goto :goto_5

    .line 152
    :cond_4
    :goto_4
    iget-boolean v0, v0, Lj3/a;->b:Z

    .line 153
    .line 154
    iput-boolean v0, v9, Lc4/Z;->P:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :goto_5
    iget-object v11, v9, Lc1/d;->G:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v11, Lc4/l0;

    .line 160
    .line 161
    iget-object v11, v11, Lc4/l0;->O:Lc4/T;

    .line 162
    .line 163
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 164
    .line 165
    .line 166
    const-string v12, "Unable to get advertising id"

    .line 167
    .line 168
    iget-object v11, v11, Lc4/T;->S:Lc4/Q;

    .line 169
    .line 170
    invoke-virtual {v11, v0, v12}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iput-object v10, v9, Lc4/Z;->O:Ljava/lang/String;

    .line 174
    .line 175
    :goto_6
    new-instance v0, Landroid/util/Pair;

    .line 176
    .line 177
    iget-object v10, v9, Lc4/Z;->O:Ljava/lang/String;

    .line 178
    .line 179
    iget-boolean v11, v9, Lc4/Z;->P:Z

    .line 180
    .line 181
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    invoke-direct {v0, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_5
    new-instance v0, Landroid/util/Pair;

    .line 190
    .line 191
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 192
    .line 193
    invoke-direct {v0, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :goto_7
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v0, Ljava/lang/Boolean;

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_14

    .line 206
    .line 207
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v0, Ljava/lang/CharSequence;

    .line 210
    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_6

    .line 216
    .line 217
    goto/16 :goto_12

    .line 218
    .line 219
    :cond_6
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6}, Lc4/s0;->o()V

    .line 223
    .line 224
    .line 225
    iget-object v0, v6, Lc1/d;->G:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v0, Lc4/l0;

    .line 228
    .line 229
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 230
    .line 231
    const-string v11, "connectivity"

    .line 232
    .line 233
    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 238
    .line 239
    const/4 v11, 0x0

    .line 240
    if-eqz v0, :cond_7

    .line 241
    .line 242
    :try_start_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 243
    .line 244
    .line 245
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    goto :goto_8

    .line 247
    :catch_1
    nop

    .line 248
    :cond_7
    move-object v0, v11

    .line 249
    :goto_8
    if-eqz v0, :cond_13

    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_13

    .line 256
    .line 257
    new-instance v12, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4}, Lc4/l0;->r()Lc4/d1;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Lc4/B;->n()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Lc4/d1;->A()Z

    .line 273
    .line 274
    .line 275
    move-result v13

    .line 276
    if-nez v13, :cond_8

    .line 277
    .line 278
    goto :goto_9

    .line 279
    :cond_8
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v0, Lc4/l0;

    .line 282
    .line 283
    iget-object v0, v0, Lc4/l0;->R:Lc4/I1;

    .line 284
    .line 285
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Lc4/I1;->v0()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    const v13, 0x392d8

    .line 293
    .line 294
    .line 295
    if-lt v0, v13, :cond_f

    .line 296
    .line 297
    :goto_9
    iget-object v0, v4, Lc4/l0;->V:Lc4/K0;

    .line 298
    .line 299
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 300
    .line 301
    .line 302
    iget-object v13, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v13, Lc4/l0;

    .line 305
    .line 306
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v13}, Lc4/l0;->r()Lc4/d1;

    .line 310
    .line 311
    .line 312
    move-result-object v13

    .line 313
    invoke-virtual {v13}, Lc4/z;->m()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v13}, Lc4/B;->n()V

    .line 317
    .line 318
    .line 319
    iget-object v0, v13, Lc4/d1;->J:Lc4/G;

    .line 320
    .line 321
    if-nez v0, :cond_9

    .line 322
    .line 323
    invoke-virtual {v13}, Lc4/d1;->q()V

    .line 324
    .line 325
    .line 326
    iget-object v0, v13, Lc1/d;->G:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v0, Lc4/l0;

    .line 329
    .line 330
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 331
    .line 332
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 333
    .line 334
    .line 335
    const-string v13, "Failed to get consents; not connected to service yet."

    .line 336
    .line 337
    iget-object v0, v0, Lc4/T;->S:Lc4/Q;

    .line 338
    .line 339
    invoke-virtual {v0, v13}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :goto_a
    move-object v0, v11

    .line 343
    goto :goto_b

    .line 344
    :cond_9
    invoke-virtual {v13, v5}, Lc4/d1;->B(Z)Lc4/J1;

    .line 345
    .line 346
    .line 347
    move-result-object v14

    .line 348
    :try_start_2
    invoke-interface {v0, v14}, Lc4/G;->Y0(Lc4/J1;)Lc4/j;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v13}, Lc4/d1;->D()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 353
    .line 354
    .line 355
    goto :goto_b

    .line 356
    :catch_2
    move-exception v0

    .line 357
    iget-object v13, v13, Lc1/d;->G:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v13, Lc4/l0;

    .line 360
    .line 361
    iget-object v13, v13, Lc4/l0;->O:Lc4/T;

    .line 362
    .line 363
    invoke-static {v13}, Lc4/l0;->k(Lc4/s0;)V

    .line 364
    .line 365
    .line 366
    const-string v14, "Failed to get consents; remote exception"

    .line 367
    .line 368
    iget-object v13, v13, Lc4/T;->L:Lc4/Q;

    .line 369
    .line 370
    invoke-virtual {v13, v0, v14}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    goto :goto_a

    .line 374
    :goto_b
    if-eqz v0, :cond_a

    .line 375
    .line 376
    iget-object v0, v0, Lc4/j;->G:Landroid/os/Bundle;

    .line 377
    .line 378
    goto :goto_c

    .line 379
    :cond_a
    move-object v0, v11

    .line 380
    :goto_c
    if-nez v0, :cond_d

    .line 381
    .line 382
    iget v0, v4, Lc4/l0;->k0:I

    .line 383
    .line 384
    add-int/lit8 v6, v0, 0x1

    .line 385
    .line 386
    iput v6, v4, Lc4/l0;->k0:I

    .line 387
    .line 388
    const/16 v6, 0xa

    .line 389
    .line 390
    if-ge v0, v6, :cond_b

    .line 391
    .line 392
    goto :goto_d

    .line 393
    :cond_b
    const/4 v2, 0x0

    .line 394
    :goto_d
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 395
    .line 396
    .line 397
    new-instance v5, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    const-string v7, "Failed to retrieve DMA consent from the service, "

    .line 400
    .line 401
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    if-ge v0, v6, :cond_c

    .line 405
    .line 406
    const-string v0, "Retrying."

    .line 407
    .line 408
    goto :goto_e

    .line 409
    :cond_c
    const-string v0, "Skipping."

    .line 410
    .line 411
    :goto_e
    const-string v6, " retryCount"

    .line 412
    .line 413
    invoke-static {v5, v0, v6}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    iget v4, v4, Lc4/l0;->k0:I

    .line 418
    .line 419
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    iget-object v5, v8, Lc4/T;->S:Lc4/Q;

    .line 424
    .line 425
    invoke-virtual {v5, v4, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    if-eqz v2, :cond_16

    .line 429
    .line 430
    iget-object v0, v3, Lc4/K0;->Z:Lc4/F0;

    .line 431
    .line 432
    const-wide/16 v2, 0x7d0

    .line 433
    .line 434
    invoke-virtual {v0, v2, v3}, Lc4/p;->c(J)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_13

    .line 438
    .line 439
    :cond_d
    const/16 v3, 0x64

    .line 440
    .line 441
    invoke-static {v3, v0}, Lc4/x0;->d(ILandroid/os/Bundle;)Lc4/x0;

    .line 442
    .line 443
    .line 444
    move-result-object v13

    .line 445
    const-string v14, "&gcs="

    .line 446
    .line 447
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v13}, Lc4/x0;->i()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v13

    .line 454
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-static {v3, v0}, Lc4/q;->a(ILandroid/os/Bundle;)Lc4/q;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    const-string v13, "&dma="

    .line 462
    .line 463
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 467
    .line 468
    iget-object v14, v3, Lc4/q;->c:Ljava/lang/Boolean;

    .line 469
    .line 470
    invoke-static {v14, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v13

    .line 474
    xor-int/2addr v13, v2

    .line 475
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    iget-object v3, v3, Lc4/q;->d:Ljava/lang/String;

    .line 479
    .line 480
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 481
    .line 482
    .line 483
    move-result v13

    .line 484
    if-nez v13, :cond_e

    .line 485
    .line 486
    const-string v13, "&dma_cps="

    .line 487
    .line 488
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    :cond_e
    invoke-static {v0}, Lc4/q;->d(Landroid/os/Bundle;)Ljava/lang/Boolean;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 499
    .line 500
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    xor-int/2addr v0, v2

    .line 505
    const-string v2, "&npa="

    .line 506
    .line 507
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 514
    .line 515
    .line 516
    const-string v0, "Consent query parameters to Bow"

    .line 517
    .line 518
    iget-object v2, v8, Lc4/T;->T:Lc4/Q;

    .line 519
    .line 520
    invoke-virtual {v2, v12, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    :cond_f
    iget-object v2, v4, Lc4/l0;->R:Lc4/I1;

    .line 524
    .line 525
    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v4}, Lc4/l0;->n()Lc4/L;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 533
    .line 534
    check-cast v0, Lc4/l0;

    .line 535
    .line 536
    iget-object v0, v0, Lc4/l0;->M:Lc4/h;

    .line 537
    .line 538
    invoke-virtual {v0}, Lc4/h;->u()J

    .line 539
    .line 540
    .line 541
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 542
    .line 543
    check-cast v0, Ljava/lang/String;

    .line 544
    .line 545
    iget-object v3, v9, Lc4/Z;->b0:LE1/I;

    .line 546
    .line 547
    invoke-virtual {v3}, LE1/I;->a()J

    .line 548
    .line 549
    .line 550
    move-result-wide v8

    .line 551
    const-wide/16 v13, -0x1

    .line 552
    .line 553
    add-long/2addr v8, v13

    .line 554
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    const-string v10, "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version="

    .line 559
    .line 560
    const-string v12, "v119002."

    .line 561
    .line 562
    :try_start_3
    invoke-static {v0}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    invoke-static {v7}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v2}, Lc4/I1;->v0()I

    .line 569
    .line 570
    .line 571
    move-result v13

    .line 572
    new-instance v14, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v12

    .line 584
    new-instance v13, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    const-string v10, "&rdid="

    .line 593
    .line 594
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    const-string v0, "&bundleid="

    .line 601
    .line 602
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    const-string v0, "&retry="

    .line 609
    .line 610
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    iget-object v8, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 621
    .line 622
    check-cast v8, Lc4/l0;

    .line 623
    .line 624
    iget-object v8, v8, Lc4/l0;->M:Lc4/h;

    .line 625
    .line 626
    const-string v9, "debug.deferred.deeplink"

    .line 627
    .line 628
    invoke-virtual {v8, v9}, Lc4/h;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v8

    .line 632
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    move-result v8

    .line 636
    if-eqz v8, :cond_10

    .line 637
    .line 638
    const-string v8, "&ddl_test=1"

    .line 639
    .line 640
    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    goto :goto_f

    .line 645
    :catch_3
    move-exception v0

    .line 646
    goto :goto_10

    .line 647
    :catch_4
    move-exception v0

    .line 648
    goto :goto_10

    .line 649
    :cond_10
    :goto_f
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 650
    .line 651
    .line 652
    move-result v8

    .line 653
    if-nez v8, :cond_12

    .line 654
    .line 655
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    .line 656
    .line 657
    .line 658
    move-result v5

    .line 659
    const/16 v8, 0x26

    .line 660
    .line 661
    if-eq v5, v8, :cond_11

    .line 662
    .line 663
    const-string v5, "&"

    .line 664
    .line 665
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    :cond_11
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    :cond_12
    new-instance v3, Ljava/net/URL;

    .line 674
    .line 675
    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 676
    .line 677
    .line 678
    move-object v8, v3

    .line 679
    goto :goto_11

    .line 680
    :goto_10
    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 681
    .line 682
    check-cast v2, Lc4/l0;

    .line 683
    .line 684
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 685
    .line 686
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 694
    .line 695
    const-string v3, "Failed to create BOW URL for Deferred Deep Link. exception"

    .line 696
    .line 697
    invoke-virtual {v2, v0, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    move-object v8, v11

    .line 701
    :goto_11
    if-eqz v8, :cond_16

    .line 702
    .line 703
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 704
    .line 705
    .line 706
    new-instance v11, Lc4/k0;

    .line 707
    .line 708
    invoke-direct {v11, v4}, Lc4/k0;-><init>(Lc4/l0;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v6}, Lc4/s0;->o()V

    .line 712
    .line 713
    .line 714
    iget-object v0, v6, Lc1/d;->G:Ljava/lang/Object;

    .line 715
    .line 716
    check-cast v0, Lc4/l0;

    .line 717
    .line 718
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 719
    .line 720
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 721
    .line 722
    .line 723
    new-instance v2, Lc4/V;

    .line 724
    .line 725
    const/4 v9, 0x0

    .line 726
    const/4 v10, 0x0

    .line 727
    move-object v5, v2

    .line 728
    invoke-direct/range {v5 .. v11}, Lc4/V;-><init>(Lc4/N0;Ljava/lang/String;Ljava/net/URL;[BLjava/util/HashMap;Lc4/M0;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v0, v2}, Lc4/j0;->w(Lc4/V;)V

    .line 732
    .line 733
    .line 734
    goto :goto_13

    .line 735
    :cond_13
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 736
    .line 737
    .line 738
    const-string v0, "Network is not available for Deferred Deep Link request. Skipping"

    .line 739
    .line 740
    iget-object v2, v8, Lc4/T;->O:Lc4/Q;

    .line 741
    .line 742
    invoke-virtual {v2, v0}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    goto :goto_13

    .line 746
    :cond_14
    :goto_12
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 747
    .line 748
    .line 749
    const-string v0, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    .line 750
    .line 751
    iget-object v2, v8, Lc4/T;->T:Lc4/Q;

    .line 752
    .line 753
    invoke-virtual {v2, v0}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    goto :goto_13

    .line 757
    :cond_15
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 758
    .line 759
    .line 760
    const-string v0, "ADID collection is disabled from Manifest. Skipping"

    .line 761
    .line 762
    iget-object v2, v8, Lc4/T;->T:Lc4/Q;

    .line 763
    .line 764
    invoke-virtual {v2, v0}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    :cond_16
    :goto_13
    return-void

    .line 768
    :pswitch_0
    invoke-virtual {v3}, Lc4/K0;->w()V

    .line 769
    .line 770
    .line 771
    return-void

    .line 772
    :pswitch_1
    invoke-virtual {v3}, Lc4/K0;->B()V

    .line 773
    .line 774
    .line 775
    return-void

    .line 776
    :pswitch_2
    new-instance v0, Ljava/lang/Thread;

    .line 777
    .line 778
    iget-object v3, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 779
    .line 780
    check-cast v3, Lc4/l0;

    .line 781
    .line 782
    iget-object v3, v3, Lc4/l0;->V:Lc4/K0;

    .line 783
    .line 784
    invoke-static {v3}, Lc4/l0;->j(Lc4/B;)V

    .line 785
    .line 786
    .line 787
    new-instance v4, Lc4/E0;

    .line 788
    .line 789
    invoke-direct {v4, v3, v2}, Lc4/E0;-><init>(Lc4/K0;I)V

    .line 790
    .line 791
    .line 792
    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 796
    .line 797
    .line 798
    return-void

    .line 799
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
