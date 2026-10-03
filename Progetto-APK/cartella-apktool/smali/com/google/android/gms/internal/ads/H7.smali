.class public final synthetic Lcom/google/android/gms/internal/ads/H7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/H7;->a:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/H7;->a:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/H7;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    return-object v2

    .line 10
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->H:Lcom/google/android/gms/internal/ads/J7;

    .line 16
    .line 17
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 18
    .line 19
    iget-object v4, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 20
    .line 21
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    .line 37
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->I:Lcom/google/android/gms/internal/ads/J7;

    .line 38
    .line 39
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 40
    .line 41
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-lt v4, v3, :cond_0

    .line 52
    .line 53
    const-string v3, ","

    .line 54
    .line 55
    const/4 v4, -0x1

    .line 56
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    array-length v3, v2

    .line 61
    :goto_0
    if-ge v1, v3, :cond_0

    .line 62
    .line 63
    aget-object v4, v2, v1

    .line 64
    .line 65
    invoke-static {v4}, Lo3/H;->a(Ljava/lang/String;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/nt;

    .line 76
    .line 77
    const/4 v2, 0x5

    .line 78
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/nt;-><init>(Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    return-object v1

    .line 82
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/nt;

    .line 83
    .line 84
    new-instance v1, Lorg/json/JSONObject;

    .line 85
    .line 86
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .line 88
    .line 89
    const/4 v2, 0x2

    .line 90
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nt;-><init>(Ljava/lang/Object;I)V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    :pswitch_2
    new-instance v0, Landroid/os/Bundle;

    .line 95
    .line 96
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    .line 104
    .line 105
    .line 106
    move-result-wide v4

    .line 107
    const-string v2, "runtime_free"

    .line 108
    .line 109
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    const-string v2, "runtime_max"

    .line 117
    .line 118
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    .line 122
    .line 123
    .line 124
    move-result-wide v1

    .line 125
    const-string v4, "runtime_total"

    .line 126
    .line 127
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 128
    .line 129
    .line 130
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 131
    .line 132
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 133
    .line 134
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/le;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    const-string v2, "web_view_count"

    .line 141
    .line 142
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    new-instance v1, Lcom/google/android/gms/internal/ads/Bt;

    .line 146
    .line 147
    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/internal/ads/Bt;-><init>(ILandroid/os/Bundle;)V

    .line 148
    .line 149
    .line 150
    return-object v1

    .line 151
    :pswitch_3
    new-instance v0, Lcom/google/android/gms/internal/ads/Qs;

    .line 152
    .line 153
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 154
    .line 155
    iget-object v2, v1, Lk3/l;->m:Lo3/l;

    .line 156
    .line 157
    invoke-virtual {v2}, Lo3/l;->a()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    iget-object v1, v1, Lk3/l;->m:Lo3/l;

    .line 162
    .line 163
    invoke-virtual {v1}, Lo3/l;->i()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/Qs;-><init>(ILjava/lang/String;Z)V

    .line 168
    .line 169
    .line 170
    return-object v0

    .line 171
    :pswitch_4
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 172
    .line 173
    iget-object v4, v0, Lk3/l;->c:Lo3/O;

    .line 174
    .line 175
    iget-object v4, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 176
    .line 177
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v4}, Lo3/L;->x()Lcom/google/android/gms/internal/ads/Q5;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    if-nez v4, :cond_1

    .line 186
    .line 187
    goto/16 :goto_4

    .line 188
    .line 189
    :cond_1
    iget-object v5, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 190
    .line 191
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-virtual {v5}, Lo3/L;->o()Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-eqz v5, :cond_2

    .line 200
    .line 201
    iget-object v5, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 202
    .line 203
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-virtual {v5}, Lo3/L;->p()Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    if-eqz v5, :cond_2

    .line 212
    .line 213
    goto/16 :goto_4

    .line 214
    .line 215
    :cond_2
    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/Q5;->H:Z

    .line 216
    .line 217
    if-eqz v5, :cond_3

    .line 218
    .line 219
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/Q5;->I:Ljava/lang/Object;

    .line 220
    .line 221
    monitor-enter v5

    .line 222
    :try_start_0
    iput-boolean v1, v4, Lcom/google/android/gms/internal/ads/Q5;->H:Z

    .line 223
    .line 224
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/Q5;->I:Ljava/lang/Object;

    .line 225
    .line 226
    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 227
    .line 228
    .line 229
    const-string v6, "ContentFetchThread: wakeup"

    .line 230
    .line 231
    invoke-static {v6}, Lp3/h;->b(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    monitor-exit v5

    .line 235
    goto :goto_1

    .line 236
    :catchall_0
    move-exception v0

    .line 237
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    throw v0

    .line 239
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Q5;->a()Lcom/google/android/gms/internal/ads/M5;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    if-eqz v4, :cond_5

    .line 244
    .line 245
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/M5;->o:Ljava/lang/String;

    .line 246
    .line 247
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/M5;->p:Ljava/lang/String;

    .line 248
    .line 249
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/M5;->q:Ljava/lang/String;

    .line 250
    .line 251
    if-eqz v5, :cond_4

    .line 252
    .line 253
    iget-object v7, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 254
    .line 255
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    invoke-virtual {v7, v5}, Lo3/L;->I(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :cond_4
    if-eqz v4, :cond_6

    .line 263
    .line 264
    iget-object v7, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 265
    .line 266
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    invoke-virtual {v7, v4}, Lo3/L;->J(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_5
    iget-object v4, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 275
    .line 276
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-virtual {v4}, Lo3/L;->z()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    iget-object v4, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 285
    .line 286
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-virtual {v4}, Lo3/L;->A()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    move-object v6, v2

    .line 295
    :cond_6
    :goto_2
    new-instance v7, Landroid/os/Bundle;

    .line 296
    .line 297
    invoke-direct {v7, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 298
    .line 299
    .line 300
    iget-object v3, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 301
    .line 302
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v3}, Lo3/L;->p()Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-nez v3, :cond_8

    .line 311
    .line 312
    if-eqz v4, :cond_7

    .line 313
    .line 314
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    if-nez v3, :cond_7

    .line 319
    .line 320
    const-string v3, "v_fp_vertical"

    .line 321
    .line 322
    invoke-virtual {v7, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    goto :goto_3

    .line 326
    :cond_7
    const-string v3, "v_fp_vertical"

    .line 327
    .line 328
    const-string v4, "no_hash"

    .line 329
    .line 330
    invoke-virtual {v7, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    :cond_8
    :goto_3
    if-eqz v5, :cond_9

    .line 334
    .line 335
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lo3/L;->o()Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-nez v0, :cond_9

    .line 346
    .line 347
    const-string v0, "fingerprint"

    .line 348
    .line 349
    invoke-virtual {v7, v0, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-nez v0, :cond_9

    .line 357
    .line 358
    const-string v0, "v_fp"

    .line 359
    .line 360
    invoke-virtual {v7, v0, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    :cond_9
    invoke-virtual {v7}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-nez v0, :cond_a

    .line 368
    .line 369
    move-object v2, v7

    .line 370
    :cond_a
    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/ads/Bt;

    .line 371
    .line 372
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Bt;-><init>(ILandroid/os/Bundle;)V

    .line 373
    .line 374
    .line 375
    return-object v0

    .line 376
    :pswitch_5
    new-instance v0, Lcom/google/android/gms/internal/ads/ut;

    .line 377
    .line 378
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 379
    .line 380
    iget-object v2, v1, Lk3/l;->j:LP3/b;

    .line 381
    .line 382
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 386
    .line 387
    .line 388
    move-result-wide v2

    .line 389
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 390
    .line 391
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {v1}, Lo3/L;->y()Lcom/google/android/gms/internal/ads/ge;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/ge;->f:J

    .line 400
    .line 401
    sub-long/2addr v2, v4

    .line 402
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ut;-><init>(J)V

    .line 403
    .line 404
    .line 405
    return-object v0

    .line 406
    :pswitch_6
    const-string v0, "mounted"

    .line 407
    .line 408
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    return-object v0

    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
