.class public final Lf/h;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(LE1/U;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lf/h;->a:I

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/h;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/DialogInterface;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lf/h;->a:I

    .line 5
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/h;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget v0, p0, Lf/h;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lf/h;->b:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, LE1/U;

    .line 14
    .line 15
    if-eqz v0, :cond_15

    .line 16
    .line 17
    iget v2, p1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 20
    .line 21
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 22
    .line 23
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v6, v0, LE1/U;->h:Landroid/util/SparseArray;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    iget-object v8, v0, LE1/U;->i:LE1/a0;

    .line 33
    .line 34
    const/4 v9, 0x0

    .line 35
    packed-switch v2, :pswitch_data_1

    .line 36
    .line 37
    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :pswitch_0
    iget-object p1, v8, LE1/a0;->n:LE1/U;

    .line 41
    .line 42
    if-ne p1, v0, :cond_13

    .line 43
    .line 44
    iget-object p1, v8, LE1/a0;->k:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, LE1/V;

    .line 61
    .line 62
    invoke-interface {v1}, LE1/V;->a()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-ne v2, v4, :cond_0

    .line 67
    .line 68
    move-object v7, v1

    .line 69
    :cond_1
    iget-object v0, v8, LE1/a0;->p:LC0/d;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    instance-of v1, v7, LE1/m;

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    move-object v1, v7

    .line 78
    check-cast v1, LE1/m;

    .line 79
    .line 80
    iget-object v0, v0, LC0/d;->H:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, LE1/e0;

    .line 83
    .line 84
    iget-object v0, v0, LE1/e0;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, LE1/d0;

    .line 87
    .line 88
    check-cast v0, LE1/A;

    .line 89
    .line 90
    iget-object v2, v0, LE1/A;->u:LE1/m;

    .line 91
    .line 92
    if-ne v2, v1, :cond_2

    .line 93
    .line 94
    invoke-virtual {v0}, LE1/A;->c()LE1/F;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const/4 v2, 0x2

    .line 99
    invoke-virtual {v0, v1, v2}, LE1/A;->k(LE1/F;I)V

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    invoke-interface {v7}, LE1/V;->b()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, LE1/a0;->m()V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_6

    .line 112
    .line 113
    :pswitch_1
    if-eqz v5, :cond_3

    .line 114
    .line 115
    instance-of p1, v5, Landroid/os/Bundle;

    .line 116
    .line 117
    if-eqz p1, :cond_13

    .line 118
    .line 119
    :cond_3
    check-cast v5, Landroid/os/Bundle;

    .line 120
    .line 121
    iget p1, v0, LE1/U;->f:I

    .line 122
    .line 123
    if-eqz p1, :cond_13

    .line 124
    .line 125
    const-string p1, "groupRoute"

    .line 126
    .line 127
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Landroid/os/Bundle;

    .line 132
    .line 133
    if-eqz p1, :cond_4

    .line 134
    .line 135
    new-instance v2, LE1/h;

    .line 136
    .line 137
    invoke-direct {v2, p1}, LE1/h;-><init>(Landroid/os/Bundle;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_4
    move-object v2, v7

    .line 142
    :goto_0
    const-string p1, "dynamicRoutes"

    .line 143
    .line 144
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-instance v3, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-eqz v5, :cond_7

    .line 162
    .line 163
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    check-cast v5, Landroid/os/Bundle;

    .line 168
    .line 169
    if-nez v5, :cond_5

    .line 170
    .line 171
    move-object v5, v7

    .line 172
    goto :goto_3

    .line 173
    :cond_5
    const-string v6, "mrDescriptor"

    .line 174
    .line 175
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    if-eqz v6, :cond_6

    .line 180
    .line 181
    new-instance v10, LE1/h;

    .line 182
    .line 183
    invoke-direct {v10, v6}, LE1/h;-><init>(Landroid/os/Bundle;)V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_6
    move-object v10, v7

    .line 188
    :goto_2
    const-string v6, "selectionState"

    .line 189
    .line 190
    invoke-virtual {v5, v6, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    const-string v11, "isUnselectable"

    .line 195
    .line 196
    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 197
    .line 198
    .line 199
    const-string v11, "isGroupable"

    .line 200
    .line 201
    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 202
    .line 203
    .line 204
    const-string v11, "isTransferable"

    .line 205
    .line 206
    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 207
    .line 208
    .line 209
    new-instance v5, LE1/k;

    .line 210
    .line 211
    invoke-direct {v5, v10, v6}, LE1/k;-><init>(LE1/h;I)V

    .line 212
    .line 213
    .line 214
    :goto_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_7
    iget-object p1, v8, LE1/a0;->n:LE1/U;

    .line 219
    .line 220
    if-ne p1, v0, :cond_15

    .line 221
    .line 222
    iget-object p1, v8, LE1/a0;->k:Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_9

    .line 233
    .line 234
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    check-cast v0, LE1/V;

    .line 239
    .line 240
    invoke-interface {v0}, LE1/V;->a()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-ne v1, v4, :cond_8

    .line 245
    .line 246
    move-object v7, v0

    .line 247
    :cond_9
    instance-of p1, v7, LE1/Y;

    .line 248
    .line 249
    if-eqz p1, :cond_15

    .line 250
    .line 251
    check-cast v7, LE1/Y;

    .line 252
    .line 253
    invoke-virtual {v7, v2, v3}, LE1/l;->j(LE1/h;Ljava/util/ArrayList;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_7

    .line 257
    .line 258
    :pswitch_2
    instance-of p1, v5, Landroid/os/Bundle;

    .line 259
    .line 260
    if-eqz p1, :cond_b

    .line 261
    .line 262
    check-cast v5, Landroid/os/Bundle;

    .line 263
    .line 264
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    check-cast p1, LE1/X;

    .line 269
    .line 270
    if-eqz v5, :cond_a

    .line 271
    .line 272
    const-string v0, "routeId"

    .line 273
    .line 274
    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_a

    .line 279
    .line 280
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, v5}, LE1/X;->b(Landroid/os/Bundle;)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_6

    .line 287
    .line 288
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    const-string p1, "DynamicGroupRouteController is created without valid route id."

    .line 292
    .line 293
    invoke-static {p1, v5}, LE1/X;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_6

    .line 297
    .line 298
    :cond_b
    const-string p1, "MediaRouteProviderProxy"

    .line 299
    .line 300
    const-string v0, "No further information on the dynamic group controller"

    .line 301
    .line 302
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    goto/16 :goto_6

    .line 306
    .line 307
    :pswitch_3
    if-eqz v5, :cond_c

    .line 308
    .line 309
    instance-of p1, v5, Landroid/os/Bundle;

    .line 310
    .line 311
    if-eqz p1, :cond_13

    .line 312
    .line 313
    :cond_c
    check-cast v5, Landroid/os/Bundle;

    .line 314
    .line 315
    iget p1, v0, LE1/U;->f:I

    .line 316
    .line 317
    if-eqz p1, :cond_13

    .line 318
    .line 319
    invoke-static {v5}, LE1/o;->a(Landroid/os/Bundle;)LE1/o;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    iget-object v1, v8, LE1/a0;->n:LE1/U;

    .line 324
    .line 325
    if-ne v1, v0, :cond_15

    .line 326
    .line 327
    invoke-virtual {v8, p1}, LE1/n;->g(LE1/o;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_7

    .line 331
    .line 332
    :pswitch_4
    if-eqz v5, :cond_d

    .line 333
    .line 334
    instance-of v0, v5, Landroid/os/Bundle;

    .line 335
    .line 336
    if-eqz v0, :cond_13

    .line 337
    .line 338
    :cond_d
    if-nez p1, :cond_e

    .line 339
    .line 340
    goto :goto_4

    .line 341
    :cond_e
    const-string v0, "error"

    .line 342
    .line 343
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    :goto_4
    check-cast v5, Landroid/os/Bundle;

    .line 348
    .line 349
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    check-cast p1, LE1/X;

    .line 354
    .line 355
    if-eqz p1, :cond_13

    .line 356
    .line 357
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 358
    .line 359
    .line 360
    invoke-static {v7, v5}, LE1/X;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_7

    .line 364
    .line 365
    :pswitch_5
    if-eqz v5, :cond_f

    .line 366
    .line 367
    instance-of p1, v5, Landroid/os/Bundle;

    .line 368
    .line 369
    if-eqz p1, :cond_13

    .line 370
    .line 371
    :cond_f
    check-cast v5, Landroid/os/Bundle;

    .line 372
    .line 373
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    check-cast p1, LE1/X;

    .line 378
    .line 379
    if-eqz p1, :cond_13

    .line 380
    .line 381
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1, v5}, LE1/X;->b(Landroid/os/Bundle;)V

    .line 385
    .line 386
    .line 387
    goto/16 :goto_7

    .line 388
    .line 389
    :pswitch_6
    if-eqz v5, :cond_10

    .line 390
    .line 391
    instance-of p1, v5, Landroid/os/Bundle;

    .line 392
    .line 393
    if-eqz p1, :cond_13

    .line 394
    .line 395
    :cond_10
    check-cast v5, Landroid/os/Bundle;

    .line 396
    .line 397
    iget p1, v0, LE1/U;->f:I

    .line 398
    .line 399
    if-nez p1, :cond_13

    .line 400
    .line 401
    iget p1, v0, LE1/U;->g:I

    .line 402
    .line 403
    if-ne v3, p1, :cond_13

    .line 404
    .line 405
    if-lt v4, v1, :cond_13

    .line 406
    .line 407
    iput v9, v0, LE1/U;->g:I

    .line 408
    .line 409
    iput v4, v0, LE1/U;->f:I

    .line 410
    .line 411
    invoke-static {v5}, LE1/o;->a(Landroid/os/Bundle;)LE1/o;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    iget-object v2, v8, LE1/a0;->n:LE1/U;

    .line 416
    .line 417
    if-ne v2, v0, :cond_11

    .line 418
    .line 419
    invoke-virtual {v8, p1}, LE1/n;->g(LE1/o;)V

    .line 420
    .line 421
    .line 422
    :cond_11
    iget-object p1, v8, LE1/a0;->n:LE1/U;

    .line 423
    .line 424
    if-ne p1, v0, :cond_15

    .line 425
    .line 426
    iput-boolean v1, v8, LE1/a0;->o:Z

    .line 427
    .line 428
    iget-object p1, v8, LE1/a0;->k:Ljava/util/ArrayList;

    .line 429
    .line 430
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    :goto_5
    if-ge v9, v0, :cond_12

    .line 435
    .line 436
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    check-cast v1, LE1/V;

    .line 441
    .line 442
    iget-object v2, v8, LE1/a0;->n:LE1/U;

    .line 443
    .line 444
    invoke-interface {v1, v2}, LE1/V;->c(LE1/U;)V

    .line 445
    .line 446
    .line 447
    add-int/lit8 v9, v9, 0x1

    .line 448
    .line 449
    goto :goto_5

    .line 450
    :cond_12
    iget-object p1, v8, LE1/n;->e:LE1/i;

    .line 451
    .line 452
    if-eqz p1, :cond_15

    .line 453
    .line 454
    iget-object v0, v8, LE1/a0;->n:LE1/U;

    .line 455
    .line 456
    iget v2, v0, LE1/U;->d:I

    .line 457
    .line 458
    add-int/lit8 v1, v2, 0x1

    .line 459
    .line 460
    iput v1, v0, LE1/U;->d:I

    .line 461
    .line 462
    const/4 v3, 0x0

    .line 463
    const/4 v5, 0x0

    .line 464
    const/16 v1, 0xa

    .line 465
    .line 466
    iget-object v4, p1, LE1/i;->a:Landroid/os/Bundle;

    .line 467
    .line 468
    invoke-virtual/range {v0 .. v5}, LE1/U;->b(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 469
    .line 470
    .line 471
    goto :goto_7

    .line 472
    :cond_13
    :goto_6
    sget p1, LE1/a0;->q:I

    .line 473
    .line 474
    goto :goto_7

    .line 475
    :pswitch_7
    iget p1, v0, LE1/U;->g:I

    .line 476
    .line 477
    if-ne v3, p1, :cond_14

    .line 478
    .line 479
    iput v9, v0, LE1/U;->g:I

    .line 480
    .line 481
    iget-object p1, v8, LE1/a0;->n:LE1/U;

    .line 482
    .line 483
    if-ne p1, v0, :cond_14

    .line 484
    .line 485
    invoke-virtual {v8}, LE1/a0;->l()V

    .line 486
    .line 487
    .line 488
    :cond_14
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    check-cast p1, LE1/X;

    .line 493
    .line 494
    if-eqz p1, :cond_15

    .line 495
    .line 496
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 497
    .line 498
    .line 499
    invoke-static {v7, v7}, LE1/X;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 500
    .line 501
    .line 502
    :cond_15
    :goto_7
    :pswitch_8
    return-void

    .line 503
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->what:I

    .line 504
    .line 505
    const/4 v2, -0x3

    .line 506
    if-eq v0, v2, :cond_17

    .line 507
    .line 508
    const/4 v2, -0x2

    .line 509
    if-eq v0, v2, :cond_17

    .line 510
    .line 511
    const/4 v2, -0x1

    .line 512
    if-eq v0, v2, :cond_17

    .line 513
    .line 514
    if-eq v0, v1, :cond_16

    .line 515
    .line 516
    goto :goto_8

    .line 517
    :cond_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 518
    .line 519
    check-cast p1, Landroid/content/DialogInterface;

    .line 520
    .line 521
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 522
    .line 523
    .line 524
    goto :goto_8

    .line 525
    :cond_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 526
    .line 527
    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    .line 528
    .line 529
    iget-object v1, p0, Lf/h;->b:Ljava/lang/ref/WeakReference;

    .line 530
    .line 531
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    check-cast v1, Landroid/content/DialogInterface;

    .line 536
    .line 537
    iget p1, p1, Landroid/os/Message;->what:I

    .line 538
    .line 539
    invoke-interface {v0, v1, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 540
    .line 541
    .line 542
    :goto_8
    return-void

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch

    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
