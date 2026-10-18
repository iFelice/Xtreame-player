.class public final synthetic Lc4/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lc4/r0;

.field public final synthetic I:Lc4/J1;


# direct methods
.method public synthetic constructor <init>(Lc4/r0;Lc4/J1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lc4/m0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lc4/m0;->H:Lc4/r0;

    .line 7
    .line 8
    iput-object p2, p0, Lc4/m0;->I:Lc4/J1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lc4/m0;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lc4/m0;->I:Lc4/J1;

    .line 4
    .line 5
    iget-object v2, p0, Lc4/m0;->H:Lc4/r0;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lc4/r0;->G:Lc4/A1;

    .line 11
    .line 12
    invoke-virtual {v0}, Lc4/A1;->i()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v2, Lc4/r0;->G:Lc4/A1;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/protobuf/U2;->t(Lc4/A1;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, v1, Lc4/J1;->G:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lc4/A1;->O(Lc4/J1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lc4/A1;->N(Lc4/J1;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object v0, v2, Lc4/r0;->G:Lc4/A1;

    .line 33
    .line 34
    invoke-virtual {v0}, Lc4/A1;->i()V

    .line 35
    .line 36
    .line 37
    const-string v0, "app_id=?"

    .line 38
    .line 39
    iget-object v2, v2, Lc4/r0;->G:Lc4/A1;

    .line 40
    .line 41
    iget-object v3, v2, Lc4/A1;->e0:Ljava/util/ArrayList;

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    new-instance v3, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v3, v2, Lc4/A1;->f0:Ljava/util/ArrayList;

    .line 51
    .line 52
    iget-object v4, v2, Lc4/A1;->e0:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v3, v2, Lc4/A1;->I:Lc4/o;

    .line 58
    .line 59
    invoke-static {v3}, Lc4/A1;->I(Lc4/u1;)V

    .line 60
    .line 61
    .line 62
    iget-object v4, v1, Lc4/J1;->G:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v4}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v4}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Lc1/d;->m()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lc4/u1;->n()V

    .line 74
    .line 75
    .line 76
    :try_start_0
    invoke-virtual {v3}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    filled-new-array {v4}, [Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const-string v7, "apps"

    .line 85
    .line 86
    invoke-virtual {v5, v7, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    const-string v8, "events"

    .line 91
    .line 92
    invoke-virtual {v5, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    add-int/2addr v7, v8

    .line 97
    const-string v8, "events_snapshot"

    .line 98
    .line 99
    invoke-virtual {v5, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    add-int/2addr v7, v8

    .line 104
    const-string v8, "user_attributes"

    .line 105
    .line 106
    invoke-virtual {v5, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    add-int/2addr v7, v8

    .line 111
    const-string v8, "conditional_properties"

    .line 112
    .line 113
    invoke-virtual {v5, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    add-int/2addr v7, v8

    .line 118
    const-string v8, "raw_events"

    .line 119
    .line 120
    invoke-virtual {v5, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    add-int/2addr v7, v8

    .line 125
    const-string v8, "raw_events_metadata"

    .line 126
    .line 127
    invoke-virtual {v5, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    add-int/2addr v7, v8

    .line 132
    const-string v8, "queue"

    .line 133
    .line 134
    invoke-virtual {v5, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    add-int/2addr v7, v8

    .line 139
    const-string v8, "audience_filter_values"

    .line 140
    .line 141
    invoke-virtual {v5, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    add-int/2addr v7, v8

    .line 146
    const-string v8, "main_event_params"

    .line 147
    .line 148
    invoke-virtual {v5, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    add-int/2addr v7, v8

    .line 153
    const-string v8, "default_event_params"

    .line 154
    .line 155
    invoke-virtual {v5, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    add-int/2addr v7, v8

    .line 160
    const-string v8, "trigger_uris"

    .line 161
    .line 162
    invoke-virtual {v5, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    add-int/2addr v7, v8

    .line 167
    const-string v8, "upload_queue"

    .line 168
    .line 169
    invoke-virtual {v5, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    add-int/2addr v7, v0

    .line 174
    if-lez v7, :cond_1

    .line 175
    .line 176
    iget-object v0, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v0, Lc4/l0;

    .line 179
    .line 180
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 181
    .line 182
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 186
    .line 187
    const-string v5, "Reset analytics data. app, records"

    .line 188
    .line 189
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-virtual {v0, v4, v6, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    iget-object v3, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v3, Lc4/l0;

    .line 201
    .line 202
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 203
    .line 204
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v4}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    const-string v5, "Error resetting analytics data. appId, error"

    .line 212
    .line 213
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 214
    .line 215
    invoke-virtual {v3, v4, v0, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_1
    :goto_0
    iget-boolean v0, v1, Lc4/J1;->N:Z

    .line 219
    .line 220
    if-eqz v0, :cond_2

    .line 221
    .line 222
    invoke-virtual {v2, v1}, Lc4/A1;->K(Lc4/J1;)V

    .line 223
    .line 224
    .line 225
    :cond_2
    return-void

    .line 226
    :pswitch_1
    iget-object v0, v2, Lc4/r0;->G:Lc4/A1;

    .line 227
    .line 228
    invoke-virtual {v0}, Lc4/A1;->i()V

    .line 229
    .line 230
    .line 231
    iget-object v0, v2, Lc4/r0;->G:Lc4/A1;

    .line 232
    .line 233
    invoke-static {v0}, Lcom/google/protobuf/U2;->t(Lc4/A1;)V

    .line 234
    .line 235
    .line 236
    iget-object v2, v1, Lc4/J1;->G:Ljava/lang/String;

    .line 237
    .line 238
    invoke-static {v2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Lc4/A1;->b0(Lc4/J1;)Lc4/P;

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :pswitch_2
    iget-object v0, v2, Lc4/r0;->G:Lc4/A1;

    .line 246
    .line 247
    invoke-virtual {v0}, Lc4/A1;->i()V

    .line 248
    .line 249
    .line 250
    iget-object v0, v2, Lc4/r0;->G:Lc4/A1;

    .line 251
    .line 252
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v2}, Lc4/j0;->m()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Lc4/A1;->j()V

    .line 260
    .line 261
    .line 262
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    iget-object v2, v1, Lc4/J1;->G:Ljava/lang/String;

    .line 266
    .line 267
    invoke-static {v2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Lc4/A1;->c0()Lc4/h;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    sget-object v4, Lc4/E;->z0:Lc4/D;

    .line 275
    .line 276
    const/4 v5, 0x0

    .line 277
    invoke-virtual {v3, v5, v4}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    const/4 v4, 0x0

    .line 282
    if-eqz v3, :cond_3

    .line 283
    .line 284
    invoke-virtual {v0}, Lc4/A1;->c()LP3/a;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    check-cast v3, LP3/b;

    .line 289
    .line 290
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 294
    .line 295
    .line 296
    move-result-wide v6

    .line 297
    invoke-virtual {v0}, Lc4/A1;->c0()Lc4/h;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    sget-object v8, Lc4/E;->i0:Lc4/D;

    .line 302
    .line 303
    invoke-virtual {v3, v5, v8}, Lc4/h;->t(Ljava/lang/String;Lc4/D;)I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    invoke-virtual {v0}, Lc4/A1;->c0()Lc4/h;

    .line 308
    .line 309
    .line 310
    sget-object v8, Lc4/E;->e:Lc4/D;

    .line 311
    .line 312
    invoke-virtual {v8, v5}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    check-cast v8, Ljava/lang/Long;

    .line 317
    .line 318
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 319
    .line 320
    .line 321
    move-result-wide v8

    .line 322
    sub-long/2addr v6, v8

    .line 323
    :goto_1
    if-ge v4, v3, :cond_4

    .line 324
    .line 325
    invoke-virtual {v0, v6, v7, v5}, Lc4/A1;->D(JLjava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result v8

    .line 329
    if-eqz v8, :cond_4

    .line 330
    .line 331
    add-int/lit8 v4, v4, 0x1

    .line 332
    .line 333
    goto :goto_1

    .line 334
    :cond_3
    invoke-virtual {v0}, Lc4/A1;->c0()Lc4/h;

    .line 335
    .line 336
    .line 337
    sget-object v3, Lc4/E;->l:Lc4/D;

    .line 338
    .line 339
    invoke-virtual {v3, v5}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    check-cast v3, Ljava/lang/Integer;

    .line 344
    .line 345
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    int-to-long v6, v3

    .line 350
    :goto_2
    int-to-long v8, v4

    .line 351
    cmp-long v3, v8, v6

    .line 352
    .line 353
    if-gez v3, :cond_4

    .line 354
    .line 355
    const-wide/16 v8, 0x0

    .line 356
    .line 357
    invoke-virtual {v0, v8, v9, v2}, Lc4/A1;->D(JLjava/lang/String;)Z

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    if-eqz v3, :cond_4

    .line 362
    .line 363
    add-int/lit8 v4, v4, 0x1

    .line 364
    .line 365
    goto :goto_2

    .line 366
    :cond_4
    invoke-virtual {v0}, Lc4/A1;->c0()Lc4/h;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    sget-object v4, Lc4/E;->A0:Lc4/D;

    .line 371
    .line 372
    invoke-virtual {v3, v5, v4}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    if-eqz v3, :cond_5

    .line 377
    .line 378
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-virtual {v3}, Lc4/j0;->m()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0}, Lc4/A1;->B()V

    .line 386
    .line 387
    .line 388
    :cond_5
    invoke-virtual {v0}, Lc4/A1;->c0()Lc4/h;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    sget-object v4, Lc4/E;->R0:Lc4/D;

    .line 393
    .line 394
    invoke-virtual {v3, v5, v4}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-eqz v3, :cond_7

    .line 399
    .line 400
    iget v1, v1, Lc4/J1;->m0:I

    .line 401
    .line 402
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uc;->c(I)I

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    iget-object v3, v0, Lc4/A1;->P:Lc4/w1;

    .line 407
    .line 408
    invoke-virtual {v3}, Lc1/d;->m()V

    .line 409
    .line 410
    .line 411
    iget-object v4, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast v4, Lc4/l0;

    .line 414
    .line 415
    iget-object v4, v4, Lc4/l0;->M:Lc4/h;

    .line 416
    .line 417
    sget-object v6, Lc4/E;->Q0:Lc4/D;

    .line 418
    .line 419
    invoke-virtual {v4, v5, v6}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    if-eqz v4, :cond_7

    .line 424
    .line 425
    const/4 v4, 0x2

    .line 426
    if-ne v1, v4, :cond_7

    .line 427
    .line 428
    invoke-static {v2}, Lc4/w1;->p(Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    if-eqz v1, :cond_6

    .line 433
    .line 434
    goto :goto_3

    .line 435
    :cond_6
    iget-object v1, v3, Lc4/q1;->H:Lc4/A1;

    .line 436
    .line 437
    iget-object v1, v1, Lc4/A1;->G:Lc4/f0;

    .line 438
    .line 439
    invoke-static {v1}, Lc4/A1;->I(Lc4/u1;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1, v2}, Lc4/f0;->C(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/K0;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    if-eqz v1, :cond_7

    .line 447
    .line 448
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/K0;->J()Z

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    if-eqz v3, :cond_7

    .line 453
    .line 454
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/K0;->x()Lcom/google/android/gms/internal/measurement/P0;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/P0;->u()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-nez v1, :cond_7

    .line 467
    .line 468
    invoke-virtual {v0}, Lc4/A1;->b()Lc4/T;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    const-string v3, "[sgtm] Going background, trigger client side upload. appId"

    .line 473
    .line 474
    iget-object v1, v1, Lc4/T;->T:Lc4/Q;

    .line 475
    .line 476
    invoke-virtual {v1, v2, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v0}, Lc4/A1;->c()LP3/a;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    check-cast v1, LP3/b;

    .line 484
    .line 485
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    .line 487
    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 489
    .line 490
    .line 491
    move-result-wide v3

    .line 492
    invoke-virtual {v0, v3, v4, v2}, Lc4/A1;->U(JLjava/lang/String;)V

    .line 493
    .line 494
    .line 495
    :cond_7
    :goto_3
    return-void

    .line 496
    :pswitch_3
    iget-object v0, v2, Lc4/r0;->G:Lc4/A1;

    .line 497
    .line 498
    invoke-virtual {v0}, Lc4/A1;->i()V

    .line 499
    .line 500
    .line 501
    iget-object v0, v2, Lc4/r0;->G:Lc4/A1;

    .line 502
    .line 503
    invoke-virtual {v0, v1}, Lc4/A1;->K(Lc4/J1;)V

    .line 504
    .line 505
    .line 506
    return-void

    .line 507
    :pswitch_4
    iget-object v0, v2, Lc4/r0;->G:Lc4/A1;

    .line 508
    .line 509
    invoke-virtual {v0}, Lc4/A1;->i()V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v1}, Lc4/A1;->N(Lc4/J1;)V

    .line 513
    .line 514
    .line 515
    return-void

    .line 516
    :pswitch_5
    iget-object v0, v2, Lc4/r0;->G:Lc4/A1;

    .line 517
    .line 518
    invoke-virtual {v0}, Lc4/A1;->i()V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0, v1}, Lc4/A1;->O(Lc4/J1;)V

    .line 522
    .line 523
    .line 524
    return-void

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
