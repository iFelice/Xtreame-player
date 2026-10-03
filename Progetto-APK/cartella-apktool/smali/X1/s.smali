.class public final LX1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public G:LX1/q;

.field public H:Landroid/view/ViewGroup;


# virtual methods
.method public final onPreDraw()Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LX1/s;->H:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, LX1/t;->b:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v3, v0, LX1/s;->H:Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v8, 0x1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    return v8

    .line 27
    :cond_0
    invoke-static {}, LX1/t;->a()Lr/f;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v3}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    new-instance v2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3, v2}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_1
    const/4 v5, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-lez v5, :cond_1

    .line 54
    .line 55
    new-instance v5, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    iget-object v9, v0, LX1/s;->G:LX1/q;

    .line 61
    .line 62
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v2, LX1/g;

    .line 66
    .line 67
    invoke-direct {v2, v8, v0, v1}, LX1/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v9, v2}, LX1/q;->a(LX1/p;)V

    .line 71
    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v9, v3, v1}, LX1/q;->h(Landroid/view/ViewGroup;Z)V

    .line 75
    .line 76
    .line 77
    if-eqz v5, :cond_3

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, LX1/q;

    .line 94
    .line 95
    invoke-virtual {v5, v3}, LX1/q;->y(Landroid/view/ViewGroup;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v2, v9, LX1/q;->Q:Ljava/util/ArrayList;

    .line 105
    .line 106
    new-instance v2, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v2, v9, LX1/q;->R:Ljava/util/ArrayList;

    .line 112
    .line 113
    iget-object v2, v9, LX1/q;->M:Lm2/i;

    .line 114
    .line 115
    iget-object v5, v9, LX1/q;->N:Lm2/i;

    .line 116
    .line 117
    new-instance v6, Lr/f;

    .line 118
    .line 119
    iget-object v7, v2, Lm2/i;->H:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v7, Lr/f;

    .line 122
    .line 123
    invoke-direct {v6, v7}, Lr/m;-><init>(Lr/m;)V

    .line 124
    .line 125
    .line 126
    new-instance v7, Lr/f;

    .line 127
    .line 128
    iget-object v10, v5, Lm2/i;->H:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v10, Lr/f;

    .line 131
    .line 132
    invoke-direct {v7, v10}, Lr/m;-><init>(Lr/m;)V

    .line 133
    .line 134
    .line 135
    const/4 v10, 0x0

    .line 136
    :goto_2
    iget-object v11, v9, LX1/q;->P:[I

    .line 137
    .line 138
    array-length v12, v11

    .line 139
    if-ge v10, v12, :cond_f

    .line 140
    .line 141
    aget v11, v11, v10

    .line 142
    .line 143
    if-eq v11, v8, :cond_c

    .line 144
    .line 145
    const/4 v12, 0x2

    .line 146
    if-eq v11, v12, :cond_a

    .line 147
    .line 148
    const/4 v12, 0x3

    .line 149
    if-eq v11, v12, :cond_8

    .line 150
    .line 151
    const/4 v12, 0x4

    .line 152
    if-eq v11, v12, :cond_5

    .line 153
    .line 154
    :cond_4
    move-object v4, v5

    .line 155
    goto/16 :goto_8

    .line 156
    .line 157
    :cond_5
    iget-object v11, v2, Lm2/i;->J:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v11, Lr/j;

    .line 160
    .line 161
    iget-object v12, v5, Lm2/i;->J:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v12, Lr/j;

    .line 164
    .line 165
    invoke-virtual {v11}, Lr/j;->h()I

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    const/4 v14, 0x0

    .line 170
    :goto_3
    if-ge v14, v13, :cond_4

    .line 171
    .line 172
    invoke-virtual {v11, v14}, Lr/j;->i(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v15

    .line 176
    check-cast v15, Landroid/view/View;

    .line 177
    .line 178
    if-eqz v15, :cond_6

    .line 179
    .line 180
    invoke-virtual {v9, v15}, LX1/q;->t(Landroid/view/View;)Z

    .line 181
    .line 182
    .line 183
    move-result v16

    .line 184
    if-eqz v16, :cond_6

    .line 185
    .line 186
    move-object/from16 v17, v5

    .line 187
    .line 188
    invoke-virtual {v11, v14}, Lr/j;->f(I)J

    .line 189
    .line 190
    .line 191
    move-result-wide v4

    .line 192
    invoke-virtual {v12, v4, v5}, Lr/j;->d(J)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    check-cast v4, Landroid/view/View;

    .line 197
    .line 198
    if-eqz v4, :cond_7

    .line 199
    .line 200
    invoke-virtual {v9, v4}, LX1/q;->t(Landroid/view/View;)Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-eqz v5, :cond_7

    .line 205
    .line 206
    invoke-virtual {v6, v15}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    check-cast v5, LX1/x;

    .line 211
    .line 212
    invoke-virtual {v7, v4}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v18

    .line 216
    move-object/from16 v1, v18

    .line 217
    .line 218
    check-cast v1, LX1/x;

    .line 219
    .line 220
    if-eqz v5, :cond_7

    .line 221
    .line 222
    if-eqz v1, :cond_7

    .line 223
    .line 224
    iget-object v8, v9, LX1/q;->Q:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    iget-object v5, v9, LX1/q;->R:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6, v15}, Lr/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7, v4}, Lr/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_6
    move-object/from16 v17, v5

    .line 242
    .line 243
    :cond_7
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 244
    .line 245
    move-object/from16 v5, v17

    .line 246
    .line 247
    const/4 v1, 0x0

    .line 248
    const/4 v8, 0x1

    .line 249
    goto :goto_3

    .line 250
    :cond_8
    move-object/from16 v17, v5

    .line 251
    .line 252
    iget-object v1, v2, Lm2/i;->I:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v1, Landroid/util/SparseArray;

    .line 255
    .line 256
    move-object/from16 v4, v17

    .line 257
    .line 258
    iget-object v5, v4, Lm2/i;->I:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v5, Landroid/util/SparseArray;

    .line 261
    .line 262
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    const/4 v11, 0x0

    .line 267
    :goto_5
    if-ge v11, v8, :cond_e

    .line 268
    .line 269
    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    check-cast v12, Landroid/view/View;

    .line 274
    .line 275
    if-eqz v12, :cond_9

    .line 276
    .line 277
    invoke-virtual {v9, v12}, LX1/q;->t(Landroid/view/View;)Z

    .line 278
    .line 279
    .line 280
    move-result v13

    .line 281
    if-eqz v13, :cond_9

    .line 282
    .line 283
    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->keyAt(I)I

    .line 284
    .line 285
    .line 286
    move-result v13

    .line 287
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v13

    .line 291
    check-cast v13, Landroid/view/View;

    .line 292
    .line 293
    if-eqz v13, :cond_9

    .line 294
    .line 295
    invoke-virtual {v9, v13}, LX1/q;->t(Landroid/view/View;)Z

    .line 296
    .line 297
    .line 298
    move-result v14

    .line 299
    if-eqz v14, :cond_9

    .line 300
    .line 301
    invoke-virtual {v6, v12}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v14

    .line 305
    check-cast v14, LX1/x;

    .line 306
    .line 307
    invoke-virtual {v7, v13}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v15

    .line 311
    check-cast v15, LX1/x;

    .line 312
    .line 313
    if-eqz v14, :cond_9

    .line 314
    .line 315
    if-eqz v15, :cond_9

    .line 316
    .line 317
    iget-object v0, v9, LX1/q;->Q:Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    iget-object v0, v9, LX1/q;->R:Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6, v12}, Lr/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v7, v13}, Lr/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 334
    .line 335
    move-object/from16 v0, p0

    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_a
    move-object v4, v5

    .line 339
    iget-object v0, v2, Lm2/i;->K:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v0, Lr/f;

    .line 342
    .line 343
    iget-object v1, v4, Lm2/i;->K:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v1, Lr/f;

    .line 346
    .line 347
    iget v5, v0, Lr/m;->I:I

    .line 348
    .line 349
    const/4 v8, 0x0

    .line 350
    :goto_6
    if-ge v8, v5, :cond_e

    .line 351
    .line 352
    invoke-virtual {v0, v8}, Lr/m;->j(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v11

    .line 356
    check-cast v11, Landroid/view/View;

    .line 357
    .line 358
    if-eqz v11, :cond_b

    .line 359
    .line 360
    invoke-virtual {v9, v11}, LX1/q;->t(Landroid/view/View;)Z

    .line 361
    .line 362
    .line 363
    move-result v12

    .line 364
    if-eqz v12, :cond_b

    .line 365
    .line 366
    invoke-virtual {v0, v8}, Lr/m;->f(I)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v12

    .line 370
    invoke-virtual {v1, v12}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v12

    .line 374
    check-cast v12, Landroid/view/View;

    .line 375
    .line 376
    if-eqz v12, :cond_b

    .line 377
    .line 378
    invoke-virtual {v9, v12}, LX1/q;->t(Landroid/view/View;)Z

    .line 379
    .line 380
    .line 381
    move-result v13

    .line 382
    if-eqz v13, :cond_b

    .line 383
    .line 384
    invoke-virtual {v6, v11}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v13

    .line 388
    check-cast v13, LX1/x;

    .line 389
    .line 390
    invoke-virtual {v7, v12}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v14

    .line 394
    check-cast v14, LX1/x;

    .line 395
    .line 396
    if-eqz v13, :cond_b

    .line 397
    .line 398
    if-eqz v14, :cond_b

    .line 399
    .line 400
    iget-object v15, v9, LX1/q;->Q:Ljava/util/ArrayList;

    .line 401
    .line 402
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    iget-object v13, v9, LX1/q;->R:Ljava/util/ArrayList;

    .line 406
    .line 407
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    invoke-virtual {v6, v11}, Lr/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v7, v12}, Lr/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 417
    .line 418
    goto :goto_6

    .line 419
    :cond_c
    move-object v4, v5

    .line 420
    iget v0, v6, Lr/m;->I:I

    .line 421
    .line 422
    const/4 v1, 0x1

    .line 423
    sub-int/2addr v0, v1

    .line 424
    :goto_7
    if-ltz v0, :cond_e

    .line 425
    .line 426
    invoke-virtual {v6, v0}, Lr/m;->f(I)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    check-cast v1, Landroid/view/View;

    .line 431
    .line 432
    if-eqz v1, :cond_d

    .line 433
    .line 434
    invoke-virtual {v9, v1}, LX1/q;->t(Landroid/view/View;)Z

    .line 435
    .line 436
    .line 437
    move-result v5

    .line 438
    if-eqz v5, :cond_d

    .line 439
    .line 440
    invoke-virtual {v7, v1}, Lr/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    check-cast v1, LX1/x;

    .line 445
    .line 446
    if-eqz v1, :cond_d

    .line 447
    .line 448
    iget-object v5, v1, LX1/x;->b:Landroid/view/View;

    .line 449
    .line 450
    if-eqz v5, :cond_d

    .line 451
    .line 452
    invoke-virtual {v9, v5}, LX1/q;->t(Landroid/view/View;)Z

    .line 453
    .line 454
    .line 455
    move-result v5

    .line 456
    if-eqz v5, :cond_d

    .line 457
    .line 458
    invoke-virtual {v6, v0}, Lr/m;->h(I)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    check-cast v5, LX1/x;

    .line 463
    .line 464
    iget-object v8, v9, LX1/q;->Q:Ljava/util/ArrayList;

    .line 465
    .line 466
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    iget-object v5, v9, LX1/q;->R:Ljava/util/ArrayList;

    .line 470
    .line 471
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    :cond_d
    add-int/lit8 v0, v0, -0x1

    .line 475
    .line 476
    goto :goto_7

    .line 477
    :cond_e
    :goto_8
    add-int/lit8 v10, v10, 0x1

    .line 478
    .line 479
    move-object/from16 v0, p0

    .line 480
    .line 481
    move-object v5, v4

    .line 482
    const/4 v1, 0x0

    .line 483
    const/4 v8, 0x1

    .line 484
    goto/16 :goto_2

    .line 485
    .line 486
    :cond_f
    const/4 v0, 0x0

    .line 487
    :goto_9
    iget v1, v6, Lr/m;->I:I

    .line 488
    .line 489
    if-ge v0, v1, :cond_11

    .line 490
    .line 491
    invoke-virtual {v6, v0}, Lr/m;->j(I)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    check-cast v1, LX1/x;

    .line 496
    .line 497
    iget-object v2, v1, LX1/x;->b:Landroid/view/View;

    .line 498
    .line 499
    invoke-virtual {v9, v2}, LX1/q;->t(Landroid/view/View;)Z

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    if-eqz v2, :cond_10

    .line 504
    .line 505
    iget-object v2, v9, LX1/q;->Q:Ljava/util/ArrayList;

    .line 506
    .line 507
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    iget-object v1, v9, LX1/q;->R:Ljava/util/ArrayList;

    .line 511
    .line 512
    const/4 v2, 0x0

    .line 513
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 517
    .line 518
    goto :goto_9

    .line 519
    :cond_11
    const/4 v1, 0x0

    .line 520
    :goto_a
    iget v0, v7, Lr/m;->I:I

    .line 521
    .line 522
    if-ge v1, v0, :cond_13

    .line 523
    .line 524
    invoke-virtual {v7, v1}, Lr/m;->j(I)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    check-cast v0, LX1/x;

    .line 529
    .line 530
    iget-object v2, v0, LX1/x;->b:Landroid/view/View;

    .line 531
    .line 532
    invoke-virtual {v9, v2}, LX1/q;->t(Landroid/view/View;)Z

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    if-eqz v2, :cond_12

    .line 537
    .line 538
    iget-object v2, v9, LX1/q;->R:Ljava/util/ArrayList;

    .line 539
    .line 540
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    iget-object v0, v9, LX1/q;->Q:Ljava/util/ArrayList;

    .line 544
    .line 545
    const/4 v2, 0x0

    .line 546
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    goto :goto_b

    .line 550
    :cond_12
    const/4 v2, 0x0

    .line 551
    :goto_b
    add-int/lit8 v1, v1, 0x1

    .line 552
    .line 553
    goto :goto_a

    .line 554
    :cond_13
    invoke-static {}, LX1/q;->p()Lr/f;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    iget v1, v0, Lr/m;->I:I

    .line 559
    .line 560
    sget-object v2, LX1/z;->a:LX1/B;

    .line 561
    .line 562
    invoke-virtual {v3}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    const/4 v4, 0x1

    .line 567
    sub-int/2addr v1, v4

    .line 568
    :goto_c
    if-ltz v1, :cond_18

    .line 569
    .line 570
    invoke-virtual {v0, v1}, Lr/m;->f(I)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v4

    .line 574
    check-cast v4, Landroid/animation/Animator;

    .line 575
    .line 576
    if-eqz v4, :cond_17

    .line 577
    .line 578
    invoke-virtual {v0, v4}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v5

    .line 582
    check-cast v5, LX1/o;

    .line 583
    .line 584
    if-eqz v5, :cond_17

    .line 585
    .line 586
    iget-object v6, v5, LX1/o;->a:Landroid/view/View;

    .line 587
    .line 588
    if-eqz v6, :cond_17

    .line 589
    .line 590
    iget-object v7, v5, LX1/o;->d:LX1/G;

    .line 591
    .line 592
    instance-of v8, v7, LX1/F;

    .line 593
    .line 594
    if-eqz v8, :cond_17

    .line 595
    .line 596
    check-cast v7, LX1/F;

    .line 597
    .line 598
    iget-object v7, v7, LX1/F;->a:Landroid/view/WindowId;

    .line 599
    .line 600
    invoke-virtual {v7, v2}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v7

    .line 604
    if-eqz v7, :cond_17

    .line 605
    .line 606
    const/4 v7, 0x1

    .line 607
    invoke-virtual {v9, v6, v7}, LX1/q;->r(Landroid/view/View;Z)LX1/x;

    .line 608
    .line 609
    .line 610
    move-result-object v8

    .line 611
    invoke-virtual {v9, v6, v7}, LX1/q;->o(Landroid/view/View;Z)LX1/x;

    .line 612
    .line 613
    .line 614
    move-result-object v6

    .line 615
    if-nez v8, :cond_14

    .line 616
    .line 617
    if-eqz v6, :cond_17

    .line 618
    .line 619
    :cond_14
    iget-object v7, v5, LX1/o;->e:LX1/q;

    .line 620
    .line 621
    iget-object v5, v5, LX1/o;->c:LX1/x;

    .line 622
    .line 623
    invoke-virtual {v7, v5, v6}, LX1/q;->s(LX1/x;LX1/x;)Z

    .line 624
    .line 625
    .line 626
    move-result v5

    .line 627
    if-eqz v5, :cond_17

    .line 628
    .line 629
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    if-nez v5, :cond_16

    .line 634
    .line 635
    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    .line 636
    .line 637
    .line 638
    move-result v5

    .line 639
    if-eqz v5, :cond_15

    .line 640
    .line 641
    goto :goto_d

    .line 642
    :cond_15
    invoke-virtual {v0, v4}, Lr/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    goto :goto_e

    .line 646
    :cond_16
    :goto_d
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 647
    .line 648
    .line 649
    :cond_17
    :goto_e
    add-int/lit8 v1, v1, -0x1

    .line 650
    .line 651
    goto :goto_c

    .line 652
    :cond_18
    iget-object v4, v9, LX1/q;->M:Lm2/i;

    .line 653
    .line 654
    iget-object v5, v9, LX1/q;->N:Lm2/i;

    .line 655
    .line 656
    iget-object v6, v9, LX1/q;->Q:Ljava/util/ArrayList;

    .line 657
    .line 658
    iget-object v7, v9, LX1/q;->R:Ljava/util/ArrayList;

    .line 659
    .line 660
    move-object v2, v9

    .line 661
    invoke-virtual/range {v2 .. v7}, LX1/q;->m(Landroid/view/ViewGroup;Lm2/i;Lm2/i;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v9}, LX1/q;->z()V

    .line 665
    .line 666
    .line 667
    const/4 v0, 0x1

    .line 668
    return v0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, LX1/s;->H:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, LX1/t;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v0, p0, LX1/s;->H:Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-static {}, LX1/t;->a()Lr/f;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-lez v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, LX1/q;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, LX1/q;->y(Landroid/view/ViewGroup;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, LX1/s;->G:LX1/q;

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1, v0}, LX1/q;->i(Z)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
