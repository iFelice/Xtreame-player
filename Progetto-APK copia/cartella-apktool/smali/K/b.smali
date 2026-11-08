.class public final synthetic LK/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic G:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LK/b;->G:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, LK/b;->G:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 10
    .line 11
    check-cast p2, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getIsTestCampaign()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getIsTestCampaign()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getIsTestCampaign()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getIsTestCampaign()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getPriority()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->getValue()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getPriority()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->getValue()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    :goto_0
    return v1

    .line 61
    :pswitch_1
    check-cast p1, LD1/J;

    .line 62
    .line 63
    check-cast p2, LD1/J;

    .line 64
    .line 65
    iget v0, p2, LD1/J;->a:I

    .line 66
    .line 67
    iget v1, p1, LD1/J;->a:I

    .line 68
    .line 69
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    iget-object v0, p2, LD1/J;->c:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v1, p1, LD1/J;->c:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iget-object p2, p2, LD1/J;->d:Ljava/lang/String;

    .line 88
    .line 89
    iget-object p1, p1, LD1/J;->d:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    :goto_1
    return v0

    .line 96
    :pswitch_2
    check-cast p1, LD1/J;

    .line 97
    .line 98
    check-cast p2, LD1/J;

    .line 99
    .line 100
    iget v0, p2, LD1/J;->b:I

    .line 101
    .line 102
    iget v1, p1, LD1/J;->b:I

    .line 103
    .line 104
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    iget-object v0, p1, LD1/J;->c:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v1, p2, LD1/J;->c:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    iget-object p1, p1, LD1/J;->d:Ljava/lang/String;

    .line 123
    .line 124
    iget-object p2, p2, LD1/J;->d:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    :goto_2
    return v0

    .line 131
    :pswitch_3
    check-cast p1, Lz1/c;

    .line 132
    .line 133
    check-cast p2, Lz1/c;

    .line 134
    .line 135
    iget-wide v0, p1, Lz1/c;->b:J

    .line 136
    .line 137
    iget-wide p1, p2, Lz1/c;->b:J

    .line 138
    .line 139
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    return p1

    .line 144
    :pswitch_4
    check-cast p1, Lz1/d;

    .line 145
    .line 146
    check-cast p2, Lz1/d;

    .line 147
    .line 148
    iget-object p1, p1, Lz1/d;->a:Lz1/e;

    .line 149
    .line 150
    iget p1, p1, Lz1/e;->b:I

    .line 151
    .line 152
    iget-object p2, p2, Lz1/d;->a:Lz1/e;

    .line 153
    .line 154
    iget p2, p2, Lz1/e;->b:I

    .line 155
    .line 156
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    return p1

    .line 161
    :pswitch_5
    check-cast p1, Lr1/d;

    .line 162
    .line 163
    check-cast p2, Lr1/d;

    .line 164
    .line 165
    iget p2, p2, Lr1/d;->b:I

    .line 166
    .line 167
    iget p1, p1, Lr1/d;->b:I

    .line 168
    .line 169
    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    return p1

    .line 174
    :pswitch_6
    check-cast p1, LS0/q;

    .line 175
    .line 176
    check-cast p2, LS0/q;

    .line 177
    .line 178
    iget p1, p1, LS0/q;->c:F

    .line 179
    .line 180
    iget p2, p2, LS0/q;->c:F

    .line 181
    .line 182
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    return p1

    .line 187
    :pswitch_7
    check-cast p1, LS0/q;

    .line 188
    .line 189
    check-cast p2, LS0/q;

    .line 190
    .line 191
    iget p1, p1, LS0/q;->a:I

    .line 192
    .line 193
    iget p2, p2, LS0/q;->a:I

    .line 194
    .line 195
    sub-int/2addr p1, p2

    .line 196
    return p1

    .line 197
    :pswitch_8
    check-cast p1, LR0/p;

    .line 198
    .line 199
    check-cast p2, LR0/p;

    .line 200
    .line 201
    invoke-static {p1, p2}, LR0/p;->c(LR0/p;LR0/p;)I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    return p1

    .line 206
    :pswitch_9
    check-cast p1, LR0/p;

    .line 207
    .line 208
    check-cast p2, LR0/p;

    .line 209
    .line 210
    invoke-static {p1, p2}, LR0/p;->c(LR0/p;LR0/p;)I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    return p1

    .line 215
    :pswitch_a
    check-cast p1, LR0/p;

    .line 216
    .line 217
    check-cast p2, LR0/p;

    .line 218
    .line 219
    invoke-static {p1, p2}, LR0/p;->c(LR0/p;LR0/p;)I

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    return p1

    .line 224
    :pswitch_b
    check-cast p1, LR0/p;

    .line 225
    .line 226
    check-cast p2, LR0/p;

    .line 227
    .line 228
    invoke-static {p1, p2}, LR0/p;->d(LR0/p;LR0/p;)I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    return p1

    .line 233
    :pswitch_c
    check-cast p1, LR0/p;

    .line 234
    .line 235
    check-cast p2, LR0/p;

    .line 236
    .line 237
    invoke-static {p1, p2}, LR0/p;->d(LR0/p;LR0/p;)I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    return p1

    .line 242
    :pswitch_d
    check-cast p1, LR0/p;

    .line 243
    .line 244
    check-cast p2, LR0/p;

    .line 245
    .line 246
    invoke-static {p1, p2}, LR0/p;->d(LR0/p;LR0/p;)I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    return p1

    .line 251
    :pswitch_e
    check-cast p1, Ljava/util/List;

    .line 252
    .line 253
    check-cast p2, Ljava/util/List;

    .line 254
    .line 255
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    check-cast p1, LR0/m;

    .line 260
    .line 261
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    check-cast p2, LR0/m;

    .line 266
    .line 267
    invoke-virtual {p1, p2}, LR0/m;->c(LR0/m;)I

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    return p1

    .line 272
    :pswitch_f
    check-cast p1, Ljava/util/List;

    .line 273
    .line 274
    check-cast p2, Ljava/util/List;

    .line 275
    .line 276
    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    check-cast p1, LR0/g;

    .line 281
    .line 282
    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    check-cast p2, LR0/g;

    .line 287
    .line 288
    invoke-virtual {p1, p2}, LR0/g;->c(LR0/g;)I

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    return p1

    .line 293
    :pswitch_10
    check-cast p1, Ljava/util/List;

    .line 294
    .line 295
    check-cast p2, Ljava/util/List;

    .line 296
    .line 297
    new-instance v0, LK/b;

    .line 298
    .line 299
    const/16 v1, 0x9

    .line 300
    .line 301
    invoke-direct {v0, v1}, LK/b;-><init>(I)V

    .line 302
    .line 303
    .line 304
    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    check-cast v0, LR0/p;

    .line 309
    .line 310
    new-instance v1, LK/b;

    .line 311
    .line 312
    const/16 v2, 0xa

    .line 313
    .line 314
    invoke-direct {v1, v2}, LK/b;-><init>(I)V

    .line 315
    .line 316
    .line 317
    invoke-static {p2, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    check-cast v1, LR0/p;

    .line 322
    .line 323
    new-instance v2, LK/b;

    .line 324
    .line 325
    const/16 v3, 0xb

    .line 326
    .line 327
    invoke-direct {v2, v3}, LK/b;-><init>(I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v0, v1}, LK/b;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    invoke-static {v0}, Lz4/v;->f(I)Lz4/x;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    invoke-virtual {v0, v1, v2}, Lz4/x;->a(II)Lz4/x;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    new-instance v1, LK/b;

    .line 351
    .line 352
    const/16 v2, 0xc

    .line 353
    .line 354
    invoke-direct {v1, v2}, LK/b;-><init>(I)V

    .line 355
    .line 356
    .line 357
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    check-cast p1, LR0/p;

    .line 362
    .line 363
    new-instance v1, LK/b;

    .line 364
    .line 365
    const/16 v2, 0xd

    .line 366
    .line 367
    invoke-direct {v1, v2}, LK/b;-><init>(I)V

    .line 368
    .line 369
    .line 370
    invoke-static {p2, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object p2

    .line 374
    check-cast p2, LR0/p;

    .line 375
    .line 376
    new-instance v1, LK/b;

    .line 377
    .line 378
    const/16 v2, 0xe

    .line 379
    .line 380
    invoke-direct {v1, v2}, LK/b;-><init>(I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, p1, p2, v1}, Lz4/x;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lz4/x;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    invoke-virtual {p1}, Lz4/x;->e()I

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    return p1

    .line 392
    :pswitch_11
    check-cast p1, Ljava/util/List;

    .line 393
    .line 394
    check-cast p2, Ljava/util/List;

    .line 395
    .line 396
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    check-cast p1, LR0/h;

    .line 401
    .line 402
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object p2

    .line 406
    check-cast p2, LR0/h;

    .line 407
    .line 408
    iget p1, p1, LR0/h;->L:I

    .line 409
    .line 410
    iget p2, p2, LR0/h;->L:I

    .line 411
    .line 412
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 413
    .line 414
    .line 415
    move-result p1

    .line 416
    return p1

    .line 417
    :pswitch_12
    check-cast p1, Ljava/lang/Integer;

    .line 418
    .line 419
    check-cast p2, Ljava/lang/Integer;

    .line 420
    .line 421
    sget-object v0, LR0/q;->k:Lz4/c0;

    .line 422
    .line 423
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-ne v0, v1, :cond_6

    .line 428
    .line 429
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 430
    .line 431
    .line 432
    move-result p1

    .line 433
    if-ne p1, v1, :cond_8

    .line 434
    .line 435
    const/4 v1, 0x0

    .line 436
    goto :goto_3

    .line 437
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    if-ne v0, v1, :cond_7

    .line 442
    .line 443
    const/4 v1, 0x1

    .line 444
    goto :goto_3

    .line 445
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 446
    .line 447
    .line 448
    move-result p1

    .line 449
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 450
    .line 451
    .line 452
    move-result p2

    .line 453
    sub-int v1, p1, p2

    .line 454
    .line 455
    :cond_8
    :goto_3
    return v1

    .line 456
    :pswitch_13
    check-cast p1, Lm0/t;

    .line 457
    .line 458
    check-cast p2, Lm0/t;

    .line 459
    .line 460
    iget p2, p2, Lm0/t;->j:I

    .line 461
    .line 462
    iget p1, p1, Lm0/t;->j:I

    .line 463
    .line 464
    sub-int/2addr p2, p1

    .line 465
    return p2

    .line 466
    :pswitch_14
    check-cast p1, LI0/d;

    .line 467
    .line 468
    check-cast p2, LI0/d;

    .line 469
    .line 470
    iget-object p1, p1, LI0/d;->a:Ljava/lang/String;

    .line 471
    .line 472
    iget-object p2, p2, LI0/d;->a:Ljava/lang/String;

    .line 473
    .line 474
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 475
    .line 476
    .line 477
    move-result p1

    .line 478
    return p1

    .line 479
    :pswitch_15
    check-cast p1, LF0/b;

    .line 480
    .line 481
    check-cast p2, LF0/b;

    .line 482
    .line 483
    iget v0, p1, LF0/b;->c:I

    .line 484
    .line 485
    iget v1, p2, LF0/b;->c:I

    .line 486
    .line 487
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-eqz v0, :cond_9

    .line 492
    .line 493
    goto :goto_4

    .line 494
    :cond_9
    iget-object p1, p1, LF0/b;->b:Ljava/lang/String;

    .line 495
    .line 496
    iget-object p2, p2, LF0/b;->b:Ljava/lang/String;

    .line 497
    .line 498
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    :goto_4
    return v0

    .line 503
    :pswitch_16
    check-cast p1, [B

    .line 504
    .line 505
    check-cast p2, [B

    .line 506
    .line 507
    array-length v0, p1

    .line 508
    array-length v1, p2

    .line 509
    if-eq v0, v1, :cond_a

    .line 510
    .line 511
    array-length p1, p1

    .line 512
    array-length p2, p2

    .line 513
    sub-int v3, p1, p2

    .line 514
    .line 515
    goto :goto_6

    .line 516
    :cond_a
    const/4 v0, 0x0

    .line 517
    :goto_5
    array-length v1, p1

    .line 518
    if-ge v0, v1, :cond_c

    .line 519
    .line 520
    aget-byte v1, p1, v0

    .line 521
    .line 522
    aget-byte v2, p2, v0

    .line 523
    .line 524
    if-eq v1, v2, :cond_b

    .line 525
    .line 526
    sub-int v3, v1, v2

    .line 527
    .line 528
    goto :goto_6

    .line 529
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 530
    .line 531
    goto :goto_5

    .line 532
    :cond_c
    :goto_6
    return v3

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
