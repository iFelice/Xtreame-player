.class public final Lc0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Z

.field public final synthetic I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lc0/a;->G:I

    .line 5
    .line 6
    iput-object p2, p0, Lc0/a;->I:Ljava/lang/Object;

    .line 7
    .line 8
    iput-boolean p3, p0, Lc0/a;->H:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lc0/a;->G:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lc0/a;->H:Z

    .line 9
    .line 10
    iget-object v1, p0, Lc0/a;->I:Ljava/lang/Object;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast v1, LZ5/z;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    throw v0

    .line 21
    :cond_0
    check-cast v1, LZ5/z;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    throw v0

    .line 28
    :pswitch_0
    iget-object v0, p0, Lc0/a;->I:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, LZ5/u;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    throw v0

    .line 37
    :pswitch_1
    iget-object v0, p0, Lc0/a;->I:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, LZ5/u;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    throw v0

    .line 46
    :pswitch_2
    iget-object v0, p0, Lc0/a;->I:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lc4/K0;

    .line 49
    .line 50
    iget-object v3, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Lc4/l0;

    .line 53
    .line 54
    invoke-virtual {v3}, Lc4/l0;->f()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    iget-object v5, v3, Lc4/l0;->h0:Ljava/lang/Boolean;

    .line 59
    .line 60
    if-eqz v5, :cond_1

    .line 61
    .line 62
    iget-object v5, v3, Lc4/l0;->h0:Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_1

    .line 69
    .line 70
    const/4 v5, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v5, 0x0

    .line 73
    :goto_0
    iget-boolean v6, p0, Lc0/a;->H:Z

    .line 74
    .line 75
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    iput-object v7, v3, Lc4/l0;->h0:Ljava/lang/Boolean;

    .line 80
    .line 81
    if-ne v5, v6, :cond_2

    .line 82
    .line 83
    iget-object v5, v3, Lc4/l0;->O:Lc4/T;

    .line 84
    .line 85
    invoke-static {v5}, Lc4/l0;->k(Lc4/s0;)V

    .line 86
    .line 87
    .line 88
    iget-object v5, v5, Lc4/T;->T:Lc4/Q;

    .line 89
    .line 90
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    const-string v8, "Default data collection state already set to"

    .line 95
    .line 96
    invoke-virtual {v5, v7, v8}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {v3}, Lc4/l0;->f()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eq v5, v4, :cond_4

    .line 104
    .line 105
    invoke-virtual {v3}, Lc4/l0;->f()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    iget-object v7, v3, Lc4/l0;->h0:Ljava/lang/Boolean;

    .line 110
    .line 111
    if-eqz v7, :cond_3

    .line 112
    .line 113
    iget-object v7, v3, Lc4/l0;->h0:Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-eqz v7, :cond_3

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    const/4 v1, 0x0

    .line 123
    :goto_1
    if-eq v5, v1, :cond_5

    .line 124
    .line 125
    :cond_4
    iget-object v1, v3, Lc4/l0;->O:Lc4/T;

    .line 126
    .line 127
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v1, Lc4/T;->Q:Lc4/Q;

    .line 131
    .line 132
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    const-string v4, "Default data collection is different than actual status"

    .line 141
    .line 142
    invoke-virtual {v1, v2, v3, v4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_5
    invoke-virtual {v0}, Lc4/K0;->L()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_3
    iget-object v0, p0, Lc0/a;->I:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v0, Lc4/X;

    .line 152
    .line 153
    iget-object v0, v0, Lc4/X;->a:Lc4/A1;

    .line 154
    .line 155
    invoke-virtual {v0}, Lc4/A1;->C()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_4
    iget-object v0, p0, Lc0/a;->I:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v0, Lcom/google/android/gms/internal/ads/oL;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 167
    .line 168
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oL;->I:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Lcom/google/android/gms/internal/ads/PL;

    .line 171
    .line 172
    check-cast v0, Lcom/google/android/gms/internal/ads/sK;

    .line 173
    .line 174
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sK;->G:Lcom/google/android/gms/internal/ads/vK;

    .line 175
    .line 176
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/vK;->K:Z

    .line 177
    .line 178
    iget-boolean v2, p0, Lc0/a;->H:Z

    .line 179
    .line 180
    if-ne v1, v2, :cond_6

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/vK;->K:Z

    .line 184
    .line 185
    new-instance v1, LG/c;

    .line 186
    .line 187
    const/4 v3, 0x6

    .line 188
    invoke-direct {v1, v2, v3}, LG/c;-><init>(ZI)V

    .line 189
    .line 190
    .line 191
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    .line 192
    .line 193
    const/16 v2, 0x17

    .line 194
    .line 195
    invoke-virtual {v0, v2, v1}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Lx/e;->o()V

    .line 199
    .line 200
    .line 201
    :goto_2
    return-void

    .line 202
    :pswitch_5
    iget-object v0, p0, Lc0/a;->I:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v0, Lcom/google/android/gms/internal/ads/El;

    .line 205
    .line 206
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/El;->u:Lcom/google/android/gms/internal/ads/dm;

    .line 207
    .line 208
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dm;->zzf()Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/El;->u:Lcom/google/android/gms/internal/ads/dm;

    .line 213
    .line 214
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dm;->zzl()Ljava/util/Map;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/El;->u:Lcom/google/android/gms/internal/ads/dm;

    .line 219
    .line 220
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dm;->zzm()Ljava/util/Map;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/El;->q()Landroid/widget/ImageView$ScaleType;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 229
    .line 230
    iget-boolean v7, p0, Lc0/a;->H:Z

    .line 231
    .line 232
    const/4 v9, 0x0

    .line 233
    const/4 v3, 0x0

    .line 234
    invoke-interface/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/Ll;->l(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;I)V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :pswitch_6
    iget-object v0, p0, Lc0/a;->I:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v0, Lcom/google/android/gms/internal/ads/Tb;

    .line 241
    .line 242
    iget-boolean v1, p0, Lc0/a;->H:Z

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Tb;->r(Z)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :pswitch_7
    iget-object v0, p0, Lc0/a;->I:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v0, Lv3/x;

    .line 251
    .line 252
    iget-boolean v1, p0, Lc0/a;->H:Z

    .line 253
    .line 254
    invoke-virtual {v0, v1, v2}, Lv3/x;->e(ZZ)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :pswitch_8
    iget-object v0, p0, Lc0/a;->I:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v0, Lk3/f;

    .line 261
    .line 262
    iget-boolean v1, p0, Lc0/a;->H:Z

    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 268
    .line 269
    .line 270
    move-result-wide v2

    .line 271
    :try_start_0
    iget-object v4, v0, Lk3/f;->R:Lp3/a;

    .line 272
    .line 273
    iget-object v4, v4, Lp3/a;->G:Ljava/lang/String;

    .line 274
    .line 275
    iget-object v5, v0, Lk3/f;->P:Landroid/content/Context;

    .line 276
    .line 277
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    if-nez v6, :cond_7

    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_7
    move-object v5, v6

    .line 285
    :goto_3
    iget-boolean v6, v0, Lk3/f;->S:Z

    .line 286
    .line 287
    invoke-static {v4, v5, v1, v6}, Lcom/google/android/gms/internal/ads/C4;->f(Ljava/lang/String;Landroid/content/Context;ZZ)Lcom/google/android/gms/internal/ads/C4;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/C4;->j()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .line 293
    .line 294
    goto :goto_4

    .line 295
    :catch_0
    move-exception v1

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 297
    .line 298
    .line 299
    move-result-wide v4

    .line 300
    sub-long/2addr v4, v2

    .line 301
    iget-object v0, v0, Lk3/f;->N:Lcom/google/android/gms/internal/ads/cy;

    .line 302
    .line 303
    const/16 v2, 0x7eb

    .line 304
    .line 305
    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/google/android/gms/internal/ads/cy;->b(IJLjava/lang/Exception;)V

    .line 306
    .line 307
    .line 308
    :goto_4
    return-void

    .line 309
    :pswitch_9
    iget-object v0, p0, Lc0/a;->I:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v0, LJ2/s;

    .line 312
    .line 313
    iget-object v0, v0, LJ2/s;->H:LJ2/a;

    .line 314
    .line 315
    iget-boolean v1, p0, Lc0/a;->H:Z

    .line 316
    .line 317
    invoke-interface {v0, v1}, LJ2/a;->a(Z)V

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :pswitch_a
    iget-object v0, p0, Lc0/a;->I:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v0, Lk2/h;

    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    invoke-static {}, LP2/o;->a()V

    .line 329
    .line 330
    .line 331
    iget-object v0, v0, Lk2/h;->b:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v0, LB0/c;

    .line 334
    .line 335
    iget-boolean v1, v0, LB0/c;->G:Z

    .line 336
    .line 337
    iget-boolean v2, p0, Lc0/a;->H:Z

    .line 338
    .line 339
    iput-boolean v2, v0, LB0/c;->G:Z

    .line 340
    .line 341
    if-eq v1, v2, :cond_8

    .line 342
    .line 343
    iget-object v0, v0, LB0/c;->H:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v0, LJ2/a;

    .line 346
    .line 347
    invoke-interface {v0, v2}, LJ2/a;->a(Z)V

    .line 348
    .line 349
    .line 350
    :cond_8
    return-void

    .line 351
    :pswitch_b
    iget-object v0, p0, Lc0/a;->I:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v0, Landroidx/leanback/widget/picker/DatePicker;

    .line 354
    .line 355
    iget v3, v0, Landroidx/leanback/widget/picker/DatePicker;->e0:I

    .line 356
    .line 357
    iget v4, v0, Landroidx/leanback/widget/picker/DatePicker;->d0:I

    .line 358
    .line 359
    iget v5, v0, Landroidx/leanback/widget/picker/DatePicker;->f0:I

    .line 360
    .line 361
    filled-new-array {v3, v4, v5}, [I

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    const/4 v4, 0x2

    .line 366
    const/4 v5, 0x1

    .line 367
    const/4 v6, 0x1

    .line 368
    :goto_5
    if-ltz v4, :cond_14

    .line 369
    .line 370
    aget v7, v3, v4

    .line 371
    .line 372
    if-gez v7, :cond_9

    .line 373
    .line 374
    goto/16 :goto_e

    .line 375
    .line 376
    :cond_9
    sget-object v8, Landroidx/leanback/widget/picker/DatePicker;->m0:[I

    .line 377
    .line 378
    aget v8, v8, v4

    .line 379
    .line 380
    iget-object v9, v0, Lc0/e;->J:Ljava/util/ArrayList;

    .line 381
    .line 382
    if-nez v9, :cond_a

    .line 383
    .line 384
    const/4 v7, 0x0

    .line 385
    goto :goto_6

    .line 386
    :cond_a
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v7

    .line 390
    check-cast v7, Lc0/f;

    .line 391
    .line 392
    :goto_6
    if-eqz v5, :cond_c

    .line 393
    .line 394
    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->i0:Ljava/util/Calendar;

    .line 395
    .line 396
    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    .line 397
    .line 398
    .line 399
    move-result v9

    .line 400
    iget v10, v7, Lc0/f;->b:I

    .line 401
    .line 402
    if-eq v9, v10, :cond_b

    .line 403
    .line 404
    iput v9, v7, Lc0/f;->b:I

    .line 405
    .line 406
    :goto_7
    const/4 v9, 0x1

    .line 407
    goto :goto_8

    .line 408
    :cond_b
    const/4 v9, 0x0

    .line 409
    goto :goto_8

    .line 410
    :cond_c
    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->k0:Ljava/util/Calendar;

    .line 411
    .line 412
    invoke-virtual {v9, v8}, Ljava/util/Calendar;->getActualMinimum(I)I

    .line 413
    .line 414
    .line 415
    move-result v9

    .line 416
    iget v10, v7, Lc0/f;->b:I

    .line 417
    .line 418
    if-eq v9, v10, :cond_b

    .line 419
    .line 420
    iput v9, v7, Lc0/f;->b:I

    .line 421
    .line 422
    goto :goto_7

    .line 423
    :goto_8
    if-eqz v6, :cond_e

    .line 424
    .line 425
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->j0:Ljava/util/Calendar;

    .line 426
    .line 427
    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    .line 428
    .line 429
    .line 430
    move-result v10

    .line 431
    iget v11, v7, Lc0/f;->c:I

    .line 432
    .line 433
    if-eq v10, v11, :cond_d

    .line 434
    .line 435
    iput v10, v7, Lc0/f;->c:I

    .line 436
    .line 437
    :goto_9
    const/4 v10, 0x1

    .line 438
    goto :goto_a

    .line 439
    :cond_d
    const/4 v10, 0x0

    .line 440
    :goto_a
    or-int/2addr v9, v10

    .line 441
    goto :goto_b

    .line 442
    :cond_e
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->k0:Ljava/util/Calendar;

    .line 443
    .line 444
    invoke-virtual {v10, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 445
    .line 446
    .line 447
    move-result v10

    .line 448
    iget v11, v7, Lc0/f;->c:I

    .line 449
    .line 450
    if-eq v10, v11, :cond_d

    .line 451
    .line 452
    iput v10, v7, Lc0/f;->c:I

    .line 453
    .line 454
    goto :goto_9

    .line 455
    :goto_b
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->k0:Ljava/util/Calendar;

    .line 456
    .line 457
    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    .line 458
    .line 459
    .line 460
    move-result v10

    .line 461
    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->i0:Ljava/util/Calendar;

    .line 462
    .line 463
    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    .line 464
    .line 465
    .line 466
    move-result v11

    .line 467
    if-ne v10, v11, :cond_f

    .line 468
    .line 469
    const/4 v10, 0x1

    .line 470
    goto :goto_c

    .line 471
    :cond_f
    const/4 v10, 0x0

    .line 472
    :goto_c
    and-int/2addr v5, v10

    .line 473
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->k0:Ljava/util/Calendar;

    .line 474
    .line 475
    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    .line 476
    .line 477
    .line 478
    move-result v10

    .line 479
    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->j0:Ljava/util/Calendar;

    .line 480
    .line 481
    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    .line 482
    .line 483
    .line 484
    move-result v11

    .line 485
    if-ne v10, v11, :cond_10

    .line 486
    .line 487
    const/4 v10, 0x1

    .line 488
    goto :goto_d

    .line 489
    :cond_10
    const/4 v10, 0x0

    .line 490
    :goto_d
    and-int/2addr v6, v10

    .line 491
    if-eqz v9, :cond_11

    .line 492
    .line 493
    aget v9, v3, v4

    .line 494
    .line 495
    invoke-virtual {v0, v9, v7}, Lc0/e;->a(ILc0/f;)V

    .line 496
    .line 497
    .line 498
    :cond_11
    aget v7, v3, v4

    .line 499
    .line 500
    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->k0:Ljava/util/Calendar;

    .line 501
    .line 502
    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    .line 503
    .line 504
    .line 505
    move-result v8

    .line 506
    iget-object v9, v0, Lc0/e;->J:Ljava/util/ArrayList;

    .line 507
    .line 508
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v9

    .line 512
    check-cast v9, Lc0/f;

    .line 513
    .line 514
    iget v10, v9, Lc0/f;->a:I

    .line 515
    .line 516
    if-eq v10, v8, :cond_13

    .line 517
    .line 518
    iput v8, v9, Lc0/f;->a:I

    .line 519
    .line 520
    iget-object v9, v0, Lc0/e;->I:Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v9

    .line 526
    check-cast v9, Landroidx/leanback/widget/VerticalGridView;

    .line 527
    .line 528
    if-eqz v9, :cond_13

    .line 529
    .line 530
    iget-object v10, v0, Lc0/e;->J:Ljava/util/ArrayList;

    .line 531
    .line 532
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v7

    .line 536
    check-cast v7, Lc0/f;

    .line 537
    .line 538
    iget v7, v7, Lc0/f;->b:I

    .line 539
    .line 540
    sub-int/2addr v8, v7

    .line 541
    iget-boolean v7, p0, Lc0/a;->H:Z

    .line 542
    .line 543
    if-eqz v7, :cond_12

    .line 544
    .line 545
    invoke-virtual {v9, v8}, Landroidx/leanback/widget/f;->setSelectedPositionSmooth(I)V

    .line 546
    .line 547
    .line 548
    goto :goto_e

    .line 549
    :cond_12
    invoke-virtual {v9, v8}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    .line 550
    .line 551
    .line 552
    :cond_13
    :goto_e
    add-int/lit8 v4, v4, -0x1

    .line 553
    .line 554
    goto/16 :goto_5

    .line 555
    .line 556
    :cond_14
    return-void

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method
