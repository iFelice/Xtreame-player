.class public final synthetic Lf/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lf/t;->G:I

    .line 5
    .line 6
    iput-object p2, p0, Lf/t;->H:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lf/t;->I:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lf/t;->G:I

    .line 4
    .line 5
    const-string v2, "$violation"

    .line 6
    .line 7
    const-string v3, "audio"

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    :pswitch_0
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lm2/l;

    .line 19
    .line 20
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lm0/w0;

    .line 23
    .line 24
    iget-object v0, v0, Lm2/l;->I:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, LU0/d;

    .line 27
    .line 28
    iget-object v0, v0, LU0/d;->M:LU0/O;

    .line 29
    .line 30
    invoke-interface {v0, v2}, LU0/O;->g(Lm0/w0;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, LO0/L;

    .line 37
    .line 38
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, LW0/F;

    .line 41
    .line 42
    sget-object v3, LO0/L;->x0:Ljava/util/Map;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, LO0/L;->E(LW0/F;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lp0/j;

    .line 51
    .line 52
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, LO0/E;

    .line 55
    .line 56
    invoke-interface {v0, v2}, Lp0/j;->accept(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_3
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, LI0/b;

    .line 63
    .line 64
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Landroid/net/Uri;

    .line 67
    .line 68
    iput-boolean v7, v0, LI0/b;->O:Z

    .line 69
    .line 70
    invoke-virtual {v0, v2}, LI0/b;->e(Landroid/net/Uri;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_4
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, LH0/t;

    .line 77
    .line 78
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v2, LH0/l;

    .line 81
    .line 82
    iget-object v0, v0, LH0/t;->I:LD0/U;

    .line 83
    .line 84
    iget-object v2, v2, LH0/l;->S:Landroid/net/Uri;

    .line 85
    .line 86
    iget-object v0, v0, LD0/U;->H:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, LH0/n;

    .line 89
    .line 90
    iget-object v0, v0, LH0/n;->H:LI0/w;

    .line 91
    .line 92
    check-cast v0, LI0/c;

    .line 93
    .line 94
    iget-object v0, v0, LI0/c;->J:Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, LI0/b;

    .line 101
    .line 102
    invoke-virtual {v0, v6}, LI0/b;->d(Z)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_5
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, LG0/h;

    .line 109
    .line 110
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v2, Lm0/t;

    .line 113
    .line 114
    iget-object v3, v0, LG0/h;->J:LG0/i;

    .line 115
    .line 116
    iget v4, v3, LG0/i;->U:I

    .line 117
    .line 118
    if-eqz v4, :cond_1

    .line 119
    .line 120
    iget-boolean v4, v0, LG0/h;->I:Z

    .line 121
    .line 122
    if-eqz v4, :cond_0

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    iget-object v4, v3, LG0/i;->Y:Landroid/os/Looper;

    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object v5, v0, LG0/h;->G:LG0/o;

    .line 131
    .line 132
    invoke-virtual {v3, v4, v5, v2, v7}, LG0/i;->a(Landroid/os/Looper;LG0/o;Lm0/t;Z)LG0/l;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iput-object v2, v0, LG0/h;->H:LG0/l;

    .line 137
    .line 138
    iget-object v2, v3, LG0/i;->S:Ljava/util/Set;

    .line 139
    .line 140
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    :cond_1
    :goto_0
    return-void

    .line 144
    :pswitch_6
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v0, LD0/n;

    .line 147
    .line 148
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v2, Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    sget-object v3, Lp0/M;->a:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v0, v0, LD0/n;->b:LD0/o;

    .line 158
    .line 159
    check-cast v0, LB0/L;

    .line 160
    .line 161
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 162
    .line 163
    iget-object v0, v0, LB0/O;->X:LC0/a;

    .line 164
    .line 165
    check-cast v0, LC0/A;

    .line 166
    .line 167
    invoke-virtual {v0}, LC0/A;->T()LC0/b;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    new-instance v4, LC0/s;

    .line 172
    .line 173
    invoke-direct {v4, v3, v2, v7}, LC0/s;-><init>(LC0/b;Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    const/16 v2, 0x3f4

    .line 177
    .line 178
    invoke-virtual {v0, v3, v2, v4}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :pswitch_7
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v0, LC0/F;

    .line 185
    .line 186
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v2, Landroid/media/metrics/PlaybackStateEvent;

    .line 189
    .line 190
    iget-object v0, v0, LC0/F;->d:Landroid/media/metrics/PlaybackSession;

    .line 191
    .line 192
    invoke-static {v0, v2}, LC0/D;->m(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackStateEvent;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :pswitch_8
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v0, LC0/F;

    .line 199
    .line 200
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v2, Landroid/media/metrics/PlaybackMetrics;

    .line 203
    .line 204
    iget-object v0, v0, LC0/F;->d:Landroid/media/metrics/PlaybackSession;

    .line 205
    .line 206
    invoke-static {v0, v2}, LC0/D;->l(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackMetrics;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :pswitch_9
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v0, LC0/F;

    .line 213
    .line 214
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v2, Landroid/media/metrics/PlaybackErrorEvent;

    .line 217
    .line 218
    iget-object v0, v0, LC0/F;->d:Landroid/media/metrics/PlaybackSession;

    .line 219
    .line 220
    invoke-static {v0, v2}, LC0/D;->k(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :pswitch_a
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v0, LC0/F;

    .line 227
    .line 228
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v2, Landroid/media/metrics/NetworkEvent;

    .line 231
    .line 232
    iget-object v0, v0, LC0/F;->d:Landroid/media/metrics/PlaybackSession;

    .line 233
    .line 234
    invoke-static {v0, v2}, LC0/D;->j(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/NetworkEvent;)V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :pswitch_b
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v0, LC0/F;

    .line 241
    .line 242
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v2, Landroid/media/metrics/TrackChangeEvent;

    .line 245
    .line 246
    iget-object v0, v0, LC0/F;->d:Landroid/media/metrics/PlaybackSession;

    .line 247
    .line 248
    invoke-static {v0, v2}, LC0/D;->n(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/TrackChangeEvent;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :pswitch_c
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v0, LB0/X;

    .line 255
    .line 256
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v2, LB0/z0;

    .line 259
    .line 260
    sget v3, LB0/X;->M0:I

    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    :try_start_0
    monitor-enter v2

    .line 266
    monitor-exit v2
    :try_end_0
    .catch LB0/w; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :try_start_1
    iget-object v0, v2, LB0/z0;->a:LB0/y0;

    .line 268
    .line 269
    iget v3, v2, LB0/z0;->c:I

    .line 270
    .line 271
    iget-object v4, v2, LB0/z0;->d:Ljava/lang/Object;

    .line 272
    .line 273
    invoke-interface {v0, v3, v4}, LB0/y0;->handleMessage(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    .line 275
    .line 276
    :try_start_2
    invoke-virtual {v2, v6}, LB0/z0;->a(Z)V

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :catchall_0
    move-exception v0

    .line 281
    invoke-virtual {v2, v6}, LB0/z0;->a(Z)V

    .line 282
    .line 283
    .line 284
    throw v0
    :try_end_2
    .catch LB0/w; {:try_start_2 .. :try_end_2} :catch_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    const-string v2, "ExoPlayerImplInternal"

    .line 287
    .line 288
    const-string v3, "Unexpected error delivering message on external thread."

    .line 289
    .line 290
    invoke-static {v2, v3, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    .line 292
    .line 293
    new-instance v2, Ljava/lang/RuntimeException;

    .line 294
    .line 295
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 296
    .line 297
    .line 298
    throw v2

    .line 299
    :pswitch_d
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 300
    .line 301
    move-object v8, v0

    .line 302
    check-cast v8, LB0/O;

    .line 303
    .line 304
    iget-object v0, v1, Lf/t;->I:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v0, LB0/U;

    .line 307
    .line 308
    iget v2, v8, LB0/O;->m0:I

    .line 309
    .line 310
    iget v3, v0, LB0/U;->b:I

    .line 311
    .line 312
    sub-int/2addr v2, v3

    .line 313
    iput v2, v8, LB0/O;->m0:I

    .line 314
    .line 315
    iget-boolean v3, v0, LB0/U;->e:Z

    .line 316
    .line 317
    if-eqz v3, :cond_2

    .line 318
    .line 319
    iget v3, v0, LB0/U;->c:I

    .line 320
    .line 321
    iput v3, v8, LB0/O;->n0:I

    .line 322
    .line 323
    iput-boolean v6, v8, LB0/O;->o0:Z

    .line 324
    .line 325
    :cond_2
    if-nez v2, :cond_c

    .line 326
    .line 327
    iget-object v2, v0, LB0/U;->f:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v2, LB0/v0;

    .line 330
    .line 331
    iget-object v2, v2, LB0/v0;->a:Lm0/f0;

    .line 332
    .line 333
    iget-object v3, v8, LB0/O;->N0:LB0/v0;

    .line 334
    .line 335
    iget-object v3, v3, LB0/v0;->a:Lm0/f0;

    .line 336
    .line 337
    invoke-virtual {v3}, Lm0/f0;->q()Z

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    if-nez v3, :cond_3

    .line 342
    .line 343
    invoke-virtual {v2}, Lm0/f0;->q()Z

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-eqz v3, :cond_3

    .line 348
    .line 349
    const/4 v3, -0x1

    .line 350
    iput v3, v8, LB0/O;->O0:I

    .line 351
    .line 352
    const-wide/16 v3, 0x0

    .line 353
    .line 354
    iput-wide v3, v8, LB0/O;->P0:J

    .line 355
    .line 356
    :cond_3
    invoke-virtual {v2}, Lm0/f0;->q()Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    if-nez v3, :cond_5

    .line 361
    .line 362
    move-object v3, v2

    .line 363
    check-cast v3, LB0/B0;

    .line 364
    .line 365
    iget-object v3, v3, LB0/B0;->h:[Lm0/f0;

    .line 366
    .line 367
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    iget-object v5, v8, LB0/O;->V:Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    if-ne v4, v5, :cond_4

    .line 382
    .line 383
    const/4 v4, 0x1

    .line 384
    goto :goto_1

    .line 385
    :cond_4
    const/4 v4, 0x0

    .line 386
    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 387
    .line 388
    .line 389
    const/4 v4, 0x0

    .line 390
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 391
    .line 392
    .line 393
    move-result v5

    .line 394
    if-ge v4, v5, :cond_5

    .line 395
    .line 396
    iget-object v5, v8, LB0/O;->V:Ljava/util/ArrayList;

    .line 397
    .line 398
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    check-cast v5, LB0/N;

    .line 403
    .line 404
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v9

    .line 408
    check-cast v9, Lm0/f0;

    .line 409
    .line 410
    iput-object v9, v5, LB0/N;->b:Lm0/f0;

    .line 411
    .line 412
    add-int/lit8 v4, v4, 0x1

    .line 413
    .line 414
    goto :goto_2

    .line 415
    :cond_5
    iget-boolean v3, v8, LB0/O;->o0:Z

    .line 416
    .line 417
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    if-eqz v3, :cond_b

    .line 423
    .line 424
    iget-object v3, v0, LB0/U;->f:Ljava/lang/Object;

    .line 425
    .line 426
    check-cast v3, LB0/v0;

    .line 427
    .line 428
    iget-object v3, v3, LB0/v0;->b:LO0/y;

    .line 429
    .line 430
    iget-object v9, v8, LB0/O;->N0:LB0/v0;

    .line 431
    .line 432
    iget-object v9, v9, LB0/v0;->b:LO0/y;

    .line 433
    .line 434
    invoke-virtual {v3, v9}, LO0/y;->equals(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    if-eqz v3, :cond_7

    .line 439
    .line 440
    iget-object v3, v0, LB0/U;->f:Ljava/lang/Object;

    .line 441
    .line 442
    check-cast v3, LB0/v0;

    .line 443
    .line 444
    iget-wide v9, v3, LB0/v0;->d:J

    .line 445
    .line 446
    iget-object v3, v8, LB0/O;->N0:LB0/v0;

    .line 447
    .line 448
    iget-wide v11, v3, LB0/v0;->s:J

    .line 449
    .line 450
    cmp-long v3, v9, v11

    .line 451
    .line 452
    if-eqz v3, :cond_6

    .line 453
    .line 454
    goto :goto_3

    .line 455
    :cond_6
    const/4 v6, 0x0

    .line 456
    :cond_7
    :goto_3
    if-eqz v6, :cond_a

    .line 457
    .line 458
    invoke-virtual {v2}, Lm0/f0;->q()Z

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    if-nez v3, :cond_9

    .line 463
    .line 464
    iget-object v3, v0, LB0/U;->f:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast v3, LB0/v0;

    .line 467
    .line 468
    iget-object v3, v3, LB0/v0;->b:LO0/y;

    .line 469
    .line 470
    invoke-virtual {v3}, LO0/y;->b()Z

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    if-eqz v3, :cond_8

    .line 475
    .line 476
    goto :goto_4

    .line 477
    :cond_8
    iget-object v3, v0, LB0/U;->f:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v3, LB0/v0;

    .line 480
    .line 481
    iget-object v4, v3, LB0/v0;->b:LO0/y;

    .line 482
    .line 483
    iget-wide v9, v3, LB0/v0;->d:J

    .line 484
    .line 485
    iget-object v3, v4, LO0/y;->a:Ljava/lang/Object;

    .line 486
    .line 487
    iget-object v4, v8, LB0/O;->U:Lm0/d0;

    .line 488
    .line 489
    invoke-virtual {v2, v3, v4}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 490
    .line 491
    .line 492
    iget-wide v2, v4, Lm0/d0;->e:J

    .line 493
    .line 494
    add-long/2addr v9, v2

    .line 495
    goto :goto_5

    .line 496
    :cond_9
    :goto_4
    iget-object v2, v0, LB0/U;->f:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast v2, LB0/v0;

    .line 499
    .line 500
    iget-wide v9, v2, LB0/v0;->d:J

    .line 501
    .line 502
    :goto_5
    move v11, v6

    .line 503
    move-wide v13, v9

    .line 504
    goto :goto_6

    .line 505
    :cond_a
    move-wide v13, v4

    .line 506
    move v11, v6

    .line 507
    goto :goto_6

    .line 508
    :cond_b
    move-wide v13, v4

    .line 509
    const/4 v11, 0x0

    .line 510
    :goto_6
    iput-boolean v7, v8, LB0/O;->o0:Z

    .line 511
    .line 512
    iget-object v0, v0, LB0/U;->f:Ljava/lang/Object;

    .line 513
    .line 514
    move-object v9, v0

    .line 515
    check-cast v9, LB0/v0;

    .line 516
    .line 517
    iget v12, v8, LB0/O;->n0:I

    .line 518
    .line 519
    const/4 v10, 0x1

    .line 520
    const/4 v15, -0x1

    .line 521
    const/16 v16, 0x0

    .line 522
    .line 523
    invoke-virtual/range {v8 .. v16}, LB0/O;->a0(LB0/v0;IZIJIZ)V

    .line 524
    .line 525
    .line 526
    :cond_c
    return-void

    .line 527
    :pswitch_e
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 528
    .line 529
    check-cast v0, LB0/v;

    .line 530
    .line 531
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    throw v5

    .line 535
    :pswitch_f
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v0, LU4/b;

    .line 538
    .line 539
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    .line 541
    .line 542
    throw v5

    .line 543
    :pswitch_10
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 544
    .line 545
    move-object v2, v0

    .line 546
    check-cast v2, LA0/h0;

    .line 547
    .line 548
    iget-object v0, v1, Lf/t;->I:Ljava/lang/Object;

    .line 549
    .line 550
    check-cast v0, LA0/g0;

    .line 551
    .line 552
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    .line 554
    .line 555
    :try_start_3
    invoke-interface {v0}, LA0/g0;->run()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 556
    .line 557
    .line 558
    goto :goto_7

    .line 559
    :catch_1
    move-exception v0

    .line 560
    move-object v3, v0

    .line 561
    invoke-virtual {v2, v3}, LA0/h0;->b(Ljava/lang/Exception;)V

    .line 562
    .line 563
    .line 564
    :goto_7
    return-void

    .line 565
    :pswitch_11
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 566
    .line 567
    check-cast v0, Lf6/c;

    .line 568
    .line 569
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast v2, Lm0/o0;

    .line 572
    .line 573
    iget-object v0, v0, Lf6/c;->I:Ljava/lang/Object;

    .line 574
    .line 575
    check-cast v0, LA0/Y;

    .line 576
    .line 577
    iget-object v0, v0, LA0/Y;->d:Lm0/u0;

    .line 578
    .line 579
    check-cast v0, LU0/x;

    .line 580
    .line 581
    iget-object v0, v0, LU0/x;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 582
    .line 583
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 588
    .line 589
    .line 590
    move-result v3

    .line 591
    if-eqz v3, :cond_d

    .line 592
    .line 593
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    check-cast v3, LU0/t;

    .line 598
    .line 599
    check-cast v3, LU0/s;

    .line 600
    .line 601
    iget-object v5, v3, LU0/s;->N:LU0/O;

    .line 602
    .line 603
    iget-object v6, v3, LU0/s;->O:Ljava/util/concurrent/Executor;

    .line 604
    .line 605
    new-instance v7, LB0/h0;

    .line 606
    .line 607
    invoke-direct {v7, v3, v5, v2, v4}, LB0/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 608
    .line 609
    .line 610
    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 611
    .line 612
    .line 613
    goto :goto_8

    .line 614
    :cond_d
    return-void

    .line 615
    :pswitch_12
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 616
    .line 617
    check-cast v0, LA0/D;

    .line 618
    .line 619
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 620
    .line 621
    check-cast v2, Lp0/F;

    .line 622
    .line 623
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    .line 625
    .line 626
    iget v3, v2, Lp0/F;->a:I

    .line 627
    .line 628
    iget-object v0, v0, LA0/D;->j:Lm0/r0;

    .line 629
    .line 630
    check-cast v0, Lf6/c;

    .line 631
    .line 632
    iget-object v4, v0, Lf6/c;->I:Ljava/lang/Object;

    .line 633
    .line 634
    check-cast v4, LA0/Y;

    .line 635
    .line 636
    iget-object v4, v4, LA0/Y;->f:Ljava/util/concurrent/Executor;

    .line 637
    .line 638
    new-instance v5, LA0/V;

    .line 639
    .line 640
    iget v2, v2, Lp0/F;->b:I

    .line 641
    .line 642
    invoke-direct {v5, v0, v3, v2}, LA0/V;-><init>(Lf6/c;II)V

    .line 643
    .line 644
    .line 645
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 646
    .line 647
    .line 648
    return-void

    .line 649
    :pswitch_13
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 650
    .line 651
    check-cast v0, LA0/D;

    .line 652
    .line 653
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 654
    .line 655
    check-cast v2, Lp0/p;

    .line 656
    .line 657
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    .line 659
    .line 660
    invoke-static {v2}, Lm0/o0;->a(Ljava/lang/Exception;)Lm0/o0;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    iget-object v0, v0, LA0/D;->j:Lm0/r0;

    .line 665
    .line 666
    check-cast v0, Lf6/c;

    .line 667
    .line 668
    invoke-virtual {v0, v2}, Lf6/c;->f(Lm0/o0;)V

    .line 669
    .line 670
    .line 671
    return-void

    .line 672
    :pswitch_14
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 673
    .line 674
    check-cast v0, LA0/D;

    .line 675
    .line 676
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 677
    .line 678
    check-cast v2, Ljava/lang/InterruptedException;

    .line 679
    .line 680
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 681
    .line 682
    .line 683
    invoke-static {v2}, Lm0/o0;->a(Ljava/lang/Exception;)Lm0/o0;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    iget-object v0, v0, LA0/D;->j:Lm0/r0;

    .line 688
    .line 689
    check-cast v0, Lf6/c;

    .line 690
    .line 691
    invoke-virtual {v0, v2}, Lf6/c;->f(Lm0/o0;)V

    .line 692
    .line 693
    .line 694
    return-void

    .line 695
    :pswitch_15
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 696
    .line 697
    check-cast v0, LA0/a;

    .line 698
    .line 699
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 700
    .line 701
    check-cast v2, Ljava/lang/Exception;

    .line 702
    .line 703
    iget-object v0, v0, LA0/a;->d:LA0/H;

    .line 704
    .line 705
    invoke-static {v2}, Lm0/o0;->a(Ljava/lang/Exception;)Lm0/o0;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    invoke-interface {v0, v2}, LA0/H;->d(Lm0/o0;)V

    .line 710
    .line 711
    .line 712
    return-void

    .line 713
    :pswitch_16
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 714
    .line 715
    check-cast v0, Lf/G;

    .line 716
    .line 717
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 718
    .line 719
    check-cast v2, Landroid/content/Context;

    .line 720
    .line 721
    iget-object v0, v0, Lf/G;->b:Ljava/lang/Object;

    .line 722
    .line 723
    check-cast v0, Lp0/C;

    .line 724
    .line 725
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 726
    .line 727
    .line 728
    const-string v3, "connectivity"

    .line 729
    .line 730
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v3

    .line 734
    check-cast v3, Landroid/net/ConnectivityManager;

    .line 735
    .line 736
    const/4 v5, 0x5

    .line 737
    if-nez v3, :cond_e

    .line 738
    .line 739
    :goto_9
    const/4 v6, 0x0

    .line 740
    goto :goto_b

    .line 741
    :cond_e
    :try_start_4
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 742
    .line 743
    .line 744
    move-result-object v3
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    .line 745
    if-eqz v3, :cond_15

    .line 746
    .line 747
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 748
    .line 749
    .line 750
    move-result v8

    .line 751
    if-nez v8, :cond_f

    .line 752
    .line 753
    goto :goto_b

    .line 754
    :cond_f
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    .line 755
    .line 756
    .line 757
    move-result v8

    .line 758
    const/4 v9, 0x2

    .line 759
    const/16 v10, 0x9

    .line 760
    .line 761
    const/4 v11, 0x6

    .line 762
    if-eqz v8, :cond_13

    .line 763
    .line 764
    if-eq v8, v6, :cond_12

    .line 765
    .line 766
    if-eq v8, v4, :cond_13

    .line 767
    .line 768
    if-eq v8, v5, :cond_13

    .line 769
    .line 770
    if-eq v8, v11, :cond_11

    .line 771
    .line 772
    if-eq v8, v10, :cond_10

    .line 773
    .line 774
    const/16 v6, 0x8

    .line 775
    .line 776
    goto :goto_b

    .line 777
    :cond_10
    const/4 v6, 0x7

    .line 778
    goto :goto_b

    .line 779
    :cond_11
    const/4 v6, 0x5

    .line 780
    goto :goto_b

    .line 781
    :cond_12
    const/4 v6, 0x2

    .line 782
    goto :goto_b

    .line 783
    :cond_13
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 784
    .line 785
    .line 786
    move-result v3

    .line 787
    packed-switch v3, :pswitch_data_1

    .line 788
    .line 789
    .line 790
    :pswitch_17
    const/4 v4, 0x6

    .line 791
    goto :goto_a

    .line 792
    :pswitch_18
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 793
    .line 794
    const/16 v4, 0x1d

    .line 795
    .line 796
    if-lt v3, v4, :cond_14

    .line 797
    .line 798
    const/16 v4, 0x9

    .line 799
    .line 800
    goto :goto_a

    .line 801
    :cond_14
    const/4 v4, 0x0

    .line 802
    goto :goto_a

    .line 803
    :pswitch_19
    const/4 v4, 0x2

    .line 804
    goto :goto_a

    .line 805
    :pswitch_1a
    const/4 v4, 0x5

    .line 806
    goto :goto_a

    .line 807
    :pswitch_1b
    const/4 v4, 0x3

    .line 808
    :goto_a
    :pswitch_1c
    move v6, v4

    .line 809
    goto :goto_b

    .line 810
    :catch_2
    nop

    .line 811
    goto :goto_9

    .line 812
    :cond_15
    :goto_b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 813
    .line 814
    const/16 v4, 0x1f

    .line 815
    .line 816
    if-lt v3, v4, :cond_16

    .line 817
    .line 818
    if-ne v6, v5, :cond_16

    .line 819
    .line 820
    :try_start_5
    const-string v3, "phone"

    .line 821
    .line 822
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v2

    .line 826
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 827
    .line 828
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 829
    .line 830
    .line 831
    new-instance v3, Lp0/A;

    .line 832
    .line 833
    invoke-direct {v3, v0, v7}, Lp0/A;-><init>(Ljava/lang/Object;I)V

    .line 834
    .line 835
    .line 836
    iget-object v4, v0, Lp0/C;->I:Ljava/lang/Object;

    .line 837
    .line 838
    check-cast v4, Ljava/util/concurrent/Executor;

    .line 839
    .line 840
    invoke-static {v2, v4, v3}, LN/f;->o(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Lp0/A;)V

    .line 841
    .line 842
    .line 843
    invoke-static {v2, v3}, LN/f;->p(Landroid/telephony/TelephonyManager;Lp0/A;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 844
    .line 845
    .line 846
    goto :goto_c

    .line 847
    :catch_3
    invoke-virtual {v0, v5}, Lp0/C;->g(I)V

    .line 848
    .line 849
    .line 850
    goto :goto_c

    .line 851
    :cond_16
    invoke-virtual {v0, v6}, Lp0/C;->g(I)V

    .line 852
    .line 853
    .line 854
    :goto_c
    return-void

    .line 855
    :pswitch_1d
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 856
    .line 857
    check-cast v0, Lp0/C;

    .line 858
    .line 859
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 860
    .line 861
    check-cast v2, Landroid/content/Context;

    .line 862
    .line 863
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 864
    .line 865
    .line 866
    new-instance v3, Landroid/content/IntentFilter;

    .line 867
    .line 868
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 869
    .line 870
    .line 871
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 872
    .line 873
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    new-instance v4, Lf/G;

    .line 877
    .line 878
    invoke-direct {v4, v0}, Lf/G;-><init>(Lp0/C;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 882
    .line 883
    .line 884
    return-void

    .line 885
    :pswitch_1e
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 886
    .line 887
    check-cast v0, Lp0/e;

    .line 888
    .line 889
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 890
    .line 891
    check-cast v2, Ly4/h;

    .line 892
    .line 893
    iget-object v3, v0, Lp0/e;->e:Ljava/lang/Object;

    .line 894
    .line 895
    invoke-interface {v2, v3}, Ly4/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v2

    .line 899
    iput-object v2, v0, Lp0/e;->e:Ljava/lang/Object;

    .line 900
    .line 901
    new-instance v3, Lp0/c;

    .line 902
    .line 903
    invoke-direct {v3, v0, v2, v6}, Lp0/c;-><init>(Lp0/e;Ljava/lang/Object;I)V

    .line 904
    .line 905
    .line 906
    iget-object v0, v0, Lp0/e;->b:Lp0/I;

    .line 907
    .line 908
    iget-object v2, v0, Lp0/I;->a:Landroid/os/Handler;

    .line 909
    .line 910
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 911
    .line 912
    .line 913
    move-result-object v2

    .line 914
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 915
    .line 916
    .line 917
    move-result-object v2

    .line 918
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    .line 919
    .line 920
    .line 921
    move-result v2

    .line 922
    if-nez v2, :cond_17

    .line 923
    .line 924
    goto :goto_d

    .line 925
    :cond_17
    invoke-virtual {v0, v3}, Lp0/I;->c(Ljava/lang/Runnable;)Z

    .line 926
    .line 927
    .line 928
    :goto_d
    return-void

    .line 929
    :pswitch_1f
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 930
    .line 931
    check-cast v0, Landroid/content/Context;

    .line 932
    .line 933
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 934
    .line 935
    check-cast v2, Lp0/i;

    .line 936
    .line 937
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    check-cast v0, Landroid/media/AudioManager;

    .line 942
    .line 943
    sput-object v0, Ln0/c;->a:Landroid/media/AudioManager;

    .line 944
    .line 945
    invoke-virtual {v2}, Lp0/i;->f()Z

    .line 946
    .line 947
    .line 948
    return-void

    .line 949
    :pswitch_20
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 950
    .line 951
    check-cast v0, Ljava/lang/String;

    .line 952
    .line 953
    iget-object v3, v1, Lf/t;->I:Ljava/lang/Object;

    .line 954
    .line 955
    check-cast v3, LZ/g;

    .line 956
    .line 957
    sget-object v4, LZ/c;->a:LZ/b;

    .line 958
    .line 959
    invoke-static {v3, v2}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    new-instance v2, Ljava/lang/StringBuilder;

    .line 963
    .line 964
    const-string v4, "Policy violation with PENALTY_DEATH in "

    .line 965
    .line 966
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    const-string v2, "FragmentStrictMode"

    .line 977
    .line 978
    invoke-static {v2, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    .line 980
    .line 981
    throw v3

    .line 982
    :pswitch_21
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 983
    .line 984
    check-cast v0, Lc/g;

    .line 985
    .line 986
    iget-object v2, v1, Lf/t;->I:Ljava/lang/Object;

    .line 987
    .line 988
    check-cast v2, Landroid/graphics/Typeface;

    .line 989
    .line 990
    invoke-virtual {v0, v2}, Lc/g;->h(Landroid/graphics/Typeface;)V

    .line 991
    .line 992
    .line 993
    return-void

    .line 994
    :pswitch_22
    iget-object v0, v1, Lf/t;->H:Ljava/lang/Object;

    .line 995
    .line 996
    move-object v2, v0

    .line 997
    check-cast v2, Lf/u;

    .line 998
    .line 999
    iget-object v0, v1, Lf/t;->I:Ljava/lang/Object;

    .line 1000
    .line 1001
    check-cast v0, Ljava/lang/Runnable;

    .line 1002
    .line 1003
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1004
    .line 1005
    .line 1006
    :try_start_6
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v2}, Lf/u;->b()V

    .line 1010
    .line 1011
    .line 1012
    return-void

    .line 1013
    :catchall_1
    move-exception v0

    .line 1014
    move-object v3, v0

    .line 1015
    invoke-virtual {v2}, Lf/u;->b()V

    .line 1016
    .line 1017
    .line 1018
    throw v3

    .line 1019
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
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
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1a
        :pswitch_1c
        :pswitch_1c
        :pswitch_17
        :pswitch_1c
        :pswitch_19
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
