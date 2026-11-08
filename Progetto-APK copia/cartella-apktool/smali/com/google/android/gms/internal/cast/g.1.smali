.class public abstract Lcom/google/android/gms/internal/cast/g;
.super Lcom/google/android/gms/internal/cast/o;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/h;


# virtual methods
.method public final Y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10

    .line 1
    const-string v0, "There is no default route.  The media router has not yet been fully initialized."

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    return v4

    .line 12
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 17
    .line 18
    .line 19
    move-object p2, p0

    .line 20
    check-cast p2, Lcom/google/android/gms/internal/cast/q;

    .line 21
    .line 22
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/q;->H:LE1/H;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    if-ltz p1, :cond_1

    .line 28
    .line 29
    if-gt p1, v1, :cond_1

    .line 30
    .line 31
    invoke-static {}, LE1/H;->b()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2}, LE1/A;->c()LE1/F;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p2}, LE1/A;->f()LE1/F;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eq v1, v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {p2, v0, p1}, LE1/A;->k(LE1/F;I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_11

    .line 55
    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string p2, "Unsupported reason to unselect route"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :pswitch_1
    move-object p1, p0

    .line 65
    check-cast p1, Lcom/google/android/gms/internal/cast/q;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/q;->H:LE1/H;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {}, LE1/H;->b()V

    .line 73
    .line 74
    .line 75
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-nez p1, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-object v3, p1, LE1/A;->s:LE1/F;

    .line 83
    .line 84
    :goto_0
    if-eqz v3, :cond_3

    .line 85
    .line 86
    invoke-static {}, LE1/H;->b()V

    .line 87
    .line 88
    .line 89
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, LE1/A;->f()LE1/F;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p1, p1, LE1/F;->c:Ljava/lang/String;

    .line 98
    .line 99
    iget-object p2, v3, LE1/F;->c:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    const/4 v4, 0x1

    .line 108
    :cond_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    .line 110
    .line 111
    sget p1, Lcom/google/android/gms/internal/cast/u;->a:I

    .line 112
    .line 113
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_11

    .line 117
    .line 118
    :pswitch_2
    move-object p1, p0

    .line 119
    check-cast p1, Lcom/google/android/gms/internal/cast/q;

    .line 120
    .line 121
    iget-object p2, p1, Lcom/google/android/gms/internal/cast/q;->J:Ljava/util/HashMap;

    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_5

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Ljava/util/Set;

    .line 142
    .line 143
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_4

    .line 152
    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, LE1/q;

    .line 158
    .line 159
    iget-object v3, p1, Lcom/google/android/gms/internal/cast/q;->H:LE1/H;

    .line 160
    .line 161
    invoke-virtual {v3, v2}, LE1/H;->e(LE1/q;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_5
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_11

    .line 172
    .line 173
    :pswitch_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    .line 175
    .line 176
    const p1, 0xbdfcb8

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_11

    .line 183
    .line 184
    :pswitch_4
    move-object p1, p0

    .line 185
    check-cast p1, Lcom/google/android/gms/internal/cast/q;

    .line 186
    .line 187
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/q;->H:LE1/H;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-static {}, LE1/H;->b()V

    .line 193
    .line 194
    .line 195
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p1}, LE1/A;->f()LE1/F;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    iget-object p1, p1, LE1/F;->c:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_11

    .line 212
    .line 213
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 218
    .line 219
    .line 220
    move-object p2, p0

    .line 221
    check-cast p2, Lcom/google/android/gms/internal/cast/q;

    .line 222
    .line 223
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/q;->H:LE1/H;

    .line 224
    .line 225
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-static {}, LE1/H;->b()V

    .line 229
    .line 230
    .line 231
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    if-nez p2, :cond_6

    .line 236
    .line 237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    goto :goto_2

    .line 242
    :cond_6
    iget-object p2, p2, LE1/A;->h:Ljava/util/ArrayList;

    .line 243
    .line 244
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_8

    .line 253
    .line 254
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, LE1/F;

    .line 259
    .line 260
    iget-object v1, v0, LE1/F;->c:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_7

    .line 267
    .line 268
    iget-object v3, v0, LE1/F;->r:Landroid/os/Bundle;

    .line 269
    .line 270
    :cond_8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    .line 272
    .line 273
    if-nez v3, :cond_9

    .line 274
    .line 275
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_11

    .line 279
    .line 280
    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_11

    .line 287
    .line 288
    :pswitch_6
    move-object p1, p0

    .line 289
    check-cast p1, Lcom/google/android/gms/internal/cast/q;

    .line 290
    .line 291
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/q;->H:LE1/H;

    .line 292
    .line 293
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    invoke-static {}, LE1/H;->b()V

    .line 297
    .line 298
    .line 299
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iget-object p1, p1, LE1/A;->r:LE1/F;

    .line 304
    .line 305
    if-eqz p1, :cond_a

    .line 306
    .line 307
    invoke-static {}, LE1/H;->b()V

    .line 308
    .line 309
    .line 310
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 311
    .line 312
    .line 313
    move-result-object p2

    .line 314
    invoke-virtual {p2}, LE1/A;->f()LE1/F;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    iget-object p2, p2, LE1/F;->c:Ljava/lang/String;

    .line 319
    .line 320
    iget-object p1, p1, LE1/F;->c:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    .line 328
    .line 329
    sget p2, Lcom/google/android/gms/internal/cast/u;->a:I

    .line 330
    .line 331
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_11

    .line 335
    .line 336
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 337
    .line 338
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw p1

    .line 342
    :pswitch_7
    move-object p1, p0

    .line 343
    check-cast p1, Lcom/google/android/gms/internal/cast/q;

    .line 344
    .line 345
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/q;->H:LE1/H;

    .line 346
    .line 347
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    invoke-static {}, LE1/H;->b()V

    .line 351
    .line 352
    .line 353
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    iget-object p1, p1, LE1/A;->r:LE1/F;

    .line 358
    .line 359
    if-eqz p1, :cond_b

    .line 360
    .line 361
    invoke-static {}, LE1/H;->b()V

    .line 362
    .line 363
    .line 364
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 365
    .line 366
    .line 367
    move-result-object p2

    .line 368
    invoke-virtual {p2, p1, v1}, LE1/A;->k(LE1/F;I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_11

    .line 375
    .line 376
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 377
    .line 378
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw p1

    .line 382
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 387
    .line 388
    .line 389
    move-object p2, p0

    .line 390
    check-cast p2, Lcom/google/android/gms/internal/cast/q;

    .line 391
    .line 392
    new-array v0, v5, [Ljava/lang/Object;

    .line 393
    .line 394
    aput-object p1, v0, v4

    .line 395
    .line 396
    sget-object v2, Lcom/google/android/gms/internal/cast/q;->M:LH3/b;

    .line 397
    .line 398
    const-string v3, "select route with routeId = %s"

    .line 399
    .line 400
    invoke-virtual {v2, v3, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/q;->H:LE1/H;

    .line 404
    .line 405
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    invoke-static {}, LE1/H;->b()V

    .line 409
    .line 410
    .line 411
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 412
    .line 413
    .line 414
    move-result-object p2

    .line 415
    if-nez p2, :cond_c

    .line 416
    .line 417
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 418
    .line 419
    .line 420
    move-result-object p2

    .line 421
    goto :goto_3

    .line 422
    :cond_c
    iget-object p2, p2, LE1/A;->h:Ljava/util/ArrayList;

    .line 423
    .line 424
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 425
    .line 426
    .line 427
    move-result-object p2

    .line 428
    :cond_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    if-eqz v0, :cond_e

    .line 433
    .line 434
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    check-cast v0, LE1/F;

    .line 439
    .line 440
    iget-object v3, v0, LE1/F;->c:Ljava/lang/String;

    .line 441
    .line 442
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    if-eqz v3, :cond_d

    .line 447
    .line 448
    new-array p1, v4, [Ljava/lang/Object;

    .line 449
    .line 450
    const-string p2, "media route is found and selected"

    .line 451
    .line 452
    invoke-virtual {v2, p2, p1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    invoke-static {}, LE1/H;->b()V

    .line 456
    .line 457
    .line 458
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    invoke-virtual {p1, v0, v1}, LE1/A;->k(LE1/F;I)V

    .line 463
    .line 464
    .line 465
    :cond_e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    .line 467
    .line 468
    goto/16 :goto_11

    .line 469
    .line 470
    :pswitch_9
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 471
    .line 472
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    check-cast p1, Landroid/os/Bundle;

    .line 477
    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 483
    .line 484
    .line 485
    move-object p2, p0

    .line 486
    check-cast p2, Lcom/google/android/gms/internal/cast/q;

    .line 487
    .line 488
    if-eqz p1, :cond_f

    .line 489
    .line 490
    new-instance v1, LE1/p;

    .line 491
    .line 492
    invoke-direct {v1, v3, p1}, LE1/p;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 493
    .line 494
    .line 495
    move-object v3, v1

    .line 496
    goto :goto_4

    .line 497
    :cond_f
    sget-object p1, LE1/p;->c:LE1/p;

    .line 498
    .line 499
    :goto_4
    if-nez v3, :cond_10

    .line 500
    .line 501
    goto/16 :goto_9

    .line 502
    .line 503
    :cond_10
    iget-object p1, p2, Lcom/google/android/gms/internal/cast/q;->H:LE1/H;

    .line 504
    .line 505
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 506
    .line 507
    .line 508
    invoke-static {}, LE1/H;->b()V

    .line 509
    .line 510
    .line 511
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v3}, LE1/p;->a()V

    .line 519
    .line 520
    .line 521
    iget-object p2, v3, LE1/p;->b:Ljava/util/List;

    .line 522
    .line 523
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 524
    .line 525
    .line 526
    move-result p2

    .line 527
    if-eqz p2, :cond_11

    .line 528
    .line 529
    goto :goto_9

    .line 530
    :cond_11
    and-int/lit8 p2, v0, 0x2

    .line 531
    .line 532
    if-nez p2, :cond_12

    .line 533
    .line 534
    iget-boolean p2, p1, LE1/A;->o:Z

    .line 535
    .line 536
    if-eqz p2, :cond_12

    .line 537
    .line 538
    :goto_5
    const/4 v4, 0x1

    .line 539
    goto :goto_9

    .line 540
    :cond_12
    iget-object p2, p1, LE1/A;->q:LE1/Q;

    .line 541
    .line 542
    if-eqz p2, :cond_13

    .line 543
    .line 544
    iget-boolean p2, p2, LE1/Q;->b:Z

    .line 545
    .line 546
    if-eqz p2, :cond_13

    .line 547
    .line 548
    invoke-virtual {p1}, LE1/A;->g()Z

    .line 549
    .line 550
    .line 551
    move-result p2

    .line 552
    if-eqz p2, :cond_13

    .line 553
    .line 554
    const/4 p2, 0x1

    .line 555
    goto :goto_6

    .line 556
    :cond_13
    const/4 p2, 0x0

    .line 557
    :goto_6
    iget-object v1, p1, LE1/A;->h:Ljava/util/ArrayList;

    .line 558
    .line 559
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    const/4 v6, 0x0

    .line 564
    :goto_7
    if-ge v6, v2, :cond_17

    .line 565
    .line 566
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v7

    .line 570
    check-cast v7, LE1/F;

    .line 571
    .line 572
    and-int/lit8 v8, v0, 0x1

    .line 573
    .line 574
    if-eqz v8, :cond_14

    .line 575
    .line 576
    invoke-virtual {v7}, LE1/F;->c()Z

    .line 577
    .line 578
    .line 579
    move-result v8

    .line 580
    if-eqz v8, :cond_14

    .line 581
    .line 582
    goto :goto_8

    .line 583
    :cond_14
    if-eqz p2, :cond_15

    .line 584
    .line 585
    invoke-virtual {v7}, LE1/F;->c()Z

    .line 586
    .line 587
    .line 588
    move-result v8

    .line 589
    if-nez v8, :cond_15

    .line 590
    .line 591
    invoke-virtual {v7}, LE1/F;->a()LE1/n;

    .line 592
    .line 593
    .line 594
    move-result-object v8

    .line 595
    iget-object v9, p1, LE1/A;->f:LE1/f;

    .line 596
    .line 597
    if-eq v8, v9, :cond_15

    .line 598
    .line 599
    goto :goto_8

    .line 600
    :cond_15
    invoke-virtual {v7, v3}, LE1/F;->e(LE1/p;)Z

    .line 601
    .line 602
    .line 603
    move-result v7

    .line 604
    if-eqz v7, :cond_16

    .line 605
    .line 606
    goto :goto_5

    .line 607
    :cond_16
    :goto_8
    add-int/2addr v6, v5

    .line 608
    goto :goto_7

    .line 609
    :cond_17
    :goto_9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    .line 611
    .line 612
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    .line 614
    .line 615
    goto/16 :goto_11

    .line 616
    .line 617
    :pswitch_a
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 618
    .line 619
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 620
    .line 621
    .line 622
    move-result-object p1

    .line 623
    check-cast p1, Landroid/os/Bundle;

    .line 624
    .line 625
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 626
    .line 627
    .line 628
    move-object p2, p0

    .line 629
    check-cast p2, Lcom/google/android/gms/internal/cast/q;

    .line 630
    .line 631
    if-eqz p1, :cond_18

    .line 632
    .line 633
    new-instance v0, LE1/p;

    .line 634
    .line 635
    invoke-direct {v0, v3, p1}, LE1/p;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 636
    .line 637
    .line 638
    move-object v3, v0

    .line 639
    goto :goto_a

    .line 640
    :cond_18
    sget-object p1, LE1/p;->c:LE1/p;

    .line 641
    .line 642
    :goto_a
    if-nez v3, :cond_19

    .line 643
    .line 644
    goto :goto_b

    .line 645
    :cond_19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 646
    .line 647
    .line 648
    move-result-object p1

    .line 649
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    if-ne p1, v0, :cond_1a

    .line 654
    .line 655
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/cast/q;->r1(LE1/p;)V

    .line 656
    .line 657
    .line 658
    goto :goto_b

    .line 659
    :cond_1a
    new-instance p1, LX3/d;

    .line 660
    .line 661
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-direct {p1, v0, v5}, LX3/d;-><init>(Landroid/os/Looper;I)V

    .line 666
    .line 667
    .line 668
    new-instance v0, LK3/V;

    .line 669
    .line 670
    invoke-direct {v0, p2, v3, v2}, LK3/V;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 674
    .line 675
    .line 676
    :goto_b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    .line 678
    .line 679
    goto/16 :goto_11

    .line 680
    .line 681
    :pswitch_b
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 682
    .line 683
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 684
    .line 685
    .line 686
    move-result-object p1

    .line 687
    check-cast p1, Landroid/os/Bundle;

    .line 688
    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 694
    .line 695
    .line 696
    move-object p2, p0

    .line 697
    check-cast p2, Lcom/google/android/gms/internal/cast/q;

    .line 698
    .line 699
    if-eqz p1, :cond_1b

    .line 700
    .line 701
    new-instance v1, LE1/p;

    .line 702
    .line 703
    invoke-direct {v1, v3, p1}, LE1/p;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 704
    .line 705
    .line 706
    move-object v3, v1

    .line 707
    goto :goto_c

    .line 708
    :cond_1b
    sget-object p1, LE1/p;->c:LE1/p;

    .line 709
    .line 710
    :goto_c
    if-nez v3, :cond_1c

    .line 711
    .line 712
    goto :goto_d

    .line 713
    :cond_1c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 714
    .line 715
    .line 716
    move-result-object p1

    .line 717
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    if-ne p1, v1, :cond_1d

    .line 722
    .line 723
    invoke-virtual {p2, v3, v0}, Lcom/google/android/gms/internal/cast/q;->v0(LE1/p;I)V

    .line 724
    .line 725
    .line 726
    goto :goto_d

    .line 727
    :cond_1d
    new-instance p1, LX3/d;

    .line 728
    .line 729
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    invoke-direct {p1, v1, v5}, LX3/d;-><init>(Landroid/os/Looper;I)V

    .line 734
    .line 735
    .line 736
    new-instance v1, La/g;

    .line 737
    .line 738
    const/4 v2, 0x7

    .line 739
    invoke-direct {v1, p2, v3, v0, v2}, La/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 743
    .line 744
    .line 745
    :goto_d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    .line 747
    .line 748
    goto :goto_11

    .line 749
    :pswitch_c
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 750
    .line 751
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 752
    .line 753
    .line 754
    move-result-object p1

    .line 755
    check-cast p1, Landroid/os/Bundle;

    .line 756
    .line 757
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    if-nez v0, :cond_1e

    .line 762
    .line 763
    move-object v4, v3

    .line 764
    goto :goto_e

    .line 765
    :cond_1e
    const-string v1, "com.google.android.gms.cast.framework.internal.IMediaRouterCallback"

    .line 766
    .line 767
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 768
    .line 769
    .line 770
    move-result-object v4

    .line 771
    instance-of v6, v4, Lcom/google/android/gms/internal/cast/i;

    .line 772
    .line 773
    if-eqz v6, :cond_1f

    .line 774
    .line 775
    check-cast v4, Lcom/google/android/gms/internal/cast/i;

    .line 776
    .line 777
    goto :goto_e

    .line 778
    :cond_1f
    new-instance v4, Lcom/google/android/gms/internal/cast/i;

    .line 779
    .line 780
    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 781
    .line 782
    .line 783
    :goto_e
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 784
    .line 785
    .line 786
    move-object p2, p0

    .line 787
    check-cast p2, Lcom/google/android/gms/internal/cast/q;

    .line 788
    .line 789
    if-eqz p1, :cond_20

    .line 790
    .line 791
    new-instance v0, LE1/p;

    .line 792
    .line 793
    invoke-direct {v0, v3, p1}, LE1/p;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 794
    .line 795
    .line 796
    move-object v3, v0

    .line 797
    goto :goto_f

    .line 798
    :cond_20
    sget-object p1, LE1/p;->c:LE1/p;

    .line 799
    .line 800
    :goto_f
    if-nez v3, :cond_21

    .line 801
    .line 802
    goto :goto_10

    .line 803
    :cond_21
    iget-object p1, p2, Lcom/google/android/gms/internal/cast/q;->J:Ljava/util/HashMap;

    .line 804
    .line 805
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    move-result p2

    .line 809
    if-nez p2, :cond_22

    .line 810
    .line 811
    new-instance p2, Ljava/util/HashSet;

    .line 812
    .line 813
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 814
    .line 815
    .line 816
    invoke-virtual {p1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    :cond_22
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object p1

    .line 823
    check-cast p1, Ljava/util/Set;

    .line 824
    .line 825
    new-instance p2, Lcom/google/android/gms/internal/cast/j;

    .line 826
    .line 827
    invoke-direct {p2, v4}, Lcom/google/android/gms/internal/cast/j;-><init>(Lcom/google/android/gms/internal/cast/i;)V

    .line 828
    .line 829
    .line 830
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 831
    .line 832
    .line 833
    :goto_10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    .line 835
    .line 836
    :goto_11
    return v5

    .line 837
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
    .end packed-switch
.end method
