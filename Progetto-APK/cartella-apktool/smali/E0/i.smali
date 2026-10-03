.class public final LE0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/h;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LE0/j;I)V
    .locals 1

    .line 1
    iput p2, p0, LE0/i;->G:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, LE0/i;-><init>(Ljava/lang/Object;I)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1, v0}, LE0/i;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LE0/i;->G:I

    iput-object p1, p0, LE0/i;->H:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(LS0/p;JJ)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    move-wide/from16 v4, p4

    .line 8
    .line 9
    iget v6, v1, LE0/i;->G:I

    .line 10
    .line 11
    const/4 v7, 0x1

    .line 12
    packed-switch v6, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object v6, v1, LE0/i;->H:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v6, LE0/j;

    .line 18
    .line 19
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v9, LO0/p;

    .line 23
    .line 24
    iget-wide v10, v0, LS0/p;->G:J

    .line 25
    .line 26
    iget-object v8, v0, LS0/p;->J:Ls0/M;

    .line 27
    .line 28
    iget-object v10, v8, Ls0/M;->c:Landroid/net/Uri;

    .line 29
    .line 30
    iget-object v8, v8, Ls0/M;->d:Ljava/util/Map;

    .line 31
    .line 32
    invoke-direct {v9, v8, v4, v5}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 33
    .line 34
    .line 35
    iget-object v4, v6, LE0/j;->m:LU4/b;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v8, v6, LE0/j;->q:LO0/D;

    .line 41
    .line 42
    iget v10, v0, LS0/p;->I:I

    .line 43
    .line 44
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const/4 v11, -0x1

    .line 55
    const/4 v12, 0x0

    .line 56
    const/4 v13, 0x0

    .line 57
    const/4 v14, 0x0

    .line 58
    invoke-virtual/range {v8 .. v18}, LO0/D;->d(LO0/p;IILm0/t;ILjava/lang/Object;JJ)V

    .line 59
    .line 60
    .line 61
    iget-object v0, v0, LS0/p;->L:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Ljava/lang/Long;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    sub-long/2addr v4, v2

    .line 70
    iput-wide v4, v6, LE0/j;->L:J

    .line 71
    .line 72
    invoke-virtual {v6, v7}, LE0/j;->x(Z)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_0
    iget-object v6, v1, LE0/i;->H:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v6, LE0/j;

    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v9, LO0/p;

    .line 84
    .line 85
    iget-wide v10, v0, LS0/p;->G:J

    .line 86
    .line 87
    iget-object v8, v0, LS0/p;->J:Ls0/M;

    .line 88
    .line 89
    iget-object v10, v8, Ls0/M;->c:Landroid/net/Uri;

    .line 90
    .line 91
    iget-object v8, v8, Ls0/M;->d:Ljava/util/Map;

    .line 92
    .line 93
    invoke-direct {v9, v8, v4, v5}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 94
    .line 95
    .line 96
    iget-object v8, v6, LE0/j;->m:LU4/b;

    .line 97
    .line 98
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    iget-object v8, v6, LE0/j;->q:LO0/D;

    .line 102
    .line 103
    iget v10, v0, LS0/p;->I:I

    .line 104
    .line 105
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    const/4 v11, -0x1

    .line 116
    const/4 v12, 0x0

    .line 117
    const/4 v13, 0x0

    .line 118
    const/4 v14, 0x0

    .line 119
    invoke-virtual/range {v8 .. v18}, LO0/D;->d(LO0/p;IILm0/t;ILjava/lang/Object;JJ)V

    .line 120
    .line 121
    .line 122
    iget-object v8, v0, LS0/p;->L:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v8, LF0/c;

    .line 125
    .line 126
    iget-object v9, v6, LE0/j;->H:LF0/c;

    .line 127
    .line 128
    const/4 v10, 0x0

    .line 129
    if-nez v9, :cond_0

    .line 130
    .line 131
    const/4 v9, 0x0

    .line 132
    goto :goto_0

    .line 133
    :cond_0
    iget-object v9, v9, LF0/c;->m:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    :goto_0
    invoke-virtual {v8, v10}, LF0/c;->b(I)LF0/h;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    iget-wide v11, v11, LF0/h;->b:J

    .line 144
    .line 145
    const/4 v13, 0x0

    .line 146
    :goto_1
    if-ge v13, v9, :cond_1

    .line 147
    .line 148
    iget-object v14, v6, LE0/j;->H:LF0/c;

    .line 149
    .line 150
    invoke-virtual {v14, v13}, LF0/c;->b(I)LF0/h;

    .line 151
    .line 152
    .line 153
    move-result-object v14

    .line 154
    iget-wide v14, v14, LF0/h;->b:J

    .line 155
    .line 156
    cmp-long v16, v14, v11

    .line 157
    .line 158
    if-gez v16, :cond_1

    .line 159
    .line 160
    add-int/lit8 v13, v13, 0x1

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_1
    iget-boolean v11, v8, LF0/c;->d:Z

    .line 164
    .line 165
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    if-eqz v11, :cond_5

    .line 171
    .line 172
    sub-int/2addr v9, v13

    .line 173
    iget-object v11, v8, LF0/c;->m:Ljava/util/List;

    .line 174
    .line 175
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    if-le v9, v11, :cond_2

    .line 180
    .line 181
    const-string v2, "DashMediaSource"

    .line 182
    .line 183
    const-string v3, "Loaded out of sync manifest"

    .line 184
    .line 185
    invoke-static {v2, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_2
    iget-wide v11, v6, LE0/j;->N:J

    .line 190
    .line 191
    cmp-long v9, v11, v14

    .line 192
    .line 193
    if-eqz v9, :cond_4

    .line 194
    .line 195
    iget-wide v14, v8, LF0/c;->h:J

    .line 196
    .line 197
    const-wide/16 v18, 0x3e8

    .line 198
    .line 199
    mul-long v14, v14, v18

    .line 200
    .line 201
    cmp-long v9, v14, v11

    .line 202
    .line 203
    if-gtz v9, :cond_4

    .line 204
    .line 205
    const-string v2, "DashMediaSource"

    .line 206
    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v4, "Loaded stale dynamic manifest: "

    .line 210
    .line 211
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-wide v4, v8, LF0/c;->h:J

    .line 215
    .line 216
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v4, ", "

    .line 220
    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget-wide v4, v6, LE0/j;->N:J

    .line 225
    .line 226
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-static {v2, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :goto_2
    iget v2, v6, LE0/j;->M:I

    .line 237
    .line 238
    add-int/lit8 v3, v2, 0x1

    .line 239
    .line 240
    iput v3, v6, LE0/j;->M:I

    .line 241
    .line 242
    iget-object v3, v6, LE0/j;->m:LU4/b;

    .line 243
    .line 244
    iget v0, v0, LS0/p;->I:I

    .line 245
    .line 246
    invoke-virtual {v3, v0}, LU4/b;->Y(I)I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-ge v2, v0, :cond_3

    .line 251
    .line 252
    iget v0, v6, LE0/j;->M:I

    .line 253
    .line 254
    sub-int/2addr v0, v7

    .line 255
    mul-int/lit16 v0, v0, 0x3e8

    .line 256
    .line 257
    const/16 v2, 0x1388

    .line 258
    .line 259
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    int-to-long v2, v0

    .line 264
    iget-object v0, v6, LE0/j;->D:Landroid/os/Handler;

    .line 265
    .line 266
    iget-object v4, v6, LE0/j;->v:LE0/e;

    .line 267
    .line 268
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    .line 270
    .line 271
    goto/16 :goto_a

    .line 272
    .line 273
    :cond_3
    new-instance v0, LI0/u;

    .line 274
    .line 275
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 276
    .line 277
    .line 278
    iput-object v0, v6, LE0/j;->C:LI0/u;

    .line 279
    .line 280
    goto/16 :goto_a

    .line 281
    .line 282
    :cond_4
    iput v10, v6, LE0/j;->M:I

    .line 283
    .line 284
    :cond_5
    iput-object v8, v6, LE0/j;->H:LF0/c;

    .line 285
    .line 286
    iget-boolean v9, v6, LE0/j;->I:Z

    .line 287
    .line 288
    iget-boolean v8, v8, LF0/c;->d:Z

    .line 289
    .line 290
    and-int/2addr v8, v9

    .line 291
    iput-boolean v8, v6, LE0/j;->I:Z

    .line 292
    .line 293
    sub-long v4, v2, v4

    .line 294
    .line 295
    iput-wide v4, v6, LE0/j;->J:J

    .line 296
    .line 297
    iput-wide v2, v6, LE0/j;->K:J

    .line 298
    .line 299
    iget v2, v6, LE0/j;->O:I

    .line 300
    .line 301
    add-int/2addr v2, v13

    .line 302
    iput v2, v6, LE0/j;->O:I

    .line 303
    .line 304
    iget-object v2, v6, LE0/j;->t:Ljava/lang/Object;

    .line 305
    .line 306
    monitor-enter v2

    .line 307
    :try_start_0
    iget-object v3, v0, LS0/p;->H:Ls0/m;

    .line 308
    .line 309
    iget-object v3, v3, Ls0/m;->a:Landroid/net/Uri;

    .line 310
    .line 311
    iget-object v4, v6, LE0/j;->F:Landroid/net/Uri;

    .line 312
    .line 313
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-nez v3, :cond_6

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_6
    iget-object v3, v6, LE0/j;->H:LF0/c;

    .line 321
    .line 322
    iget-object v3, v3, LF0/c;->k:Landroid/net/Uri;

    .line 323
    .line 324
    if-eqz v3, :cond_7

    .line 325
    .line 326
    goto :goto_4

    .line 327
    :cond_7
    iget-object v0, v0, LS0/p;->J:Ls0/M;

    .line 328
    .line 329
    iget-object v0, v0, Ls0/M;->c:Landroid/net/Uri;

    .line 330
    .line 331
    const-string v3, "CMCD"

    .line 332
    .line 333
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    if-eqz v4, :cond_a

    .line 338
    .line 339
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 355
    .line 356
    .line 357
    move-result v8

    .line 358
    if-eqz v8, :cond_9

    .line 359
    .line 360
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v8

    .line 364
    check-cast v8, Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v9

    .line 370
    if-nez v9, :cond_8

    .line 371
    .line 372
    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    .line 373
    .line 374
    .line 375
    move-result-object v9

    .line 376
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 377
    .line 378
    .line 379
    move-result-object v9

    .line 380
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 381
    .line 382
    .line 383
    move-result v10

    .line 384
    if-eqz v10, :cond_8

    .line 385
    .line 386
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v10

    .line 390
    check-cast v10, Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {v4, v8, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 393
    .line 394
    .line 395
    goto :goto_3

    .line 396
    :cond_9
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    :cond_a
    move-object v3, v0

    .line 401
    :goto_4
    iput-object v3, v6, LE0/j;->F:Landroid/net/Uri;

    .line 402
    .line 403
    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    iget-object v0, v6, LE0/j;->H:LF0/c;

    .line 405
    .line 406
    iget-boolean v2, v0, LF0/c;->d:Z

    .line 407
    .line 408
    if-eqz v2, :cond_14

    .line 409
    .line 410
    iget-wide v2, v6, LE0/j;->L:J

    .line 411
    .line 412
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    cmp-long v8, v2, v4

    .line 418
    .line 419
    if-nez v8, :cond_14

    .line 420
    .line 421
    iget-object v0, v0, LF0/c;->i:LF0/v;

    .line 422
    .line 423
    if-eqz v0, :cond_13

    .line 424
    .line 425
    iget-object v2, v0, LF0/v;->b:Ljava/lang/String;

    .line 426
    .line 427
    const-string v3, "urn:mpeg:dash:utc:direct:2014"

    .line 428
    .line 429
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    if-nez v3, :cond_12

    .line 434
    .line 435
    const-string v3, "urn:mpeg:dash:utc:direct:2012"

    .line 436
    .line 437
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-eqz v3, :cond_b

    .line 442
    .line 443
    goto :goto_9

    .line 444
    :cond_b
    const-string v3, "urn:mpeg:dash:utc:http-iso:2014"

    .line 445
    .line 446
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    if-nez v3, :cond_11

    .line 451
    .line 452
    const-string v3, "urn:mpeg:dash:utc:http-iso:2012"

    .line 453
    .line 454
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    if-eqz v3, :cond_c

    .line 459
    .line 460
    goto :goto_8

    .line 461
    :cond_c
    const-string v3, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 462
    .line 463
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v3

    .line 467
    if-nez v3, :cond_10

    .line 468
    .line 469
    const-string v3, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 470
    .line 471
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v3

    .line 475
    if-eqz v3, :cond_d

    .line 476
    .line 477
    goto :goto_7

    .line 478
    :cond_d
    const-string v0, "urn:mpeg:dash:utc:ntp:2014"

    .line 479
    .line 480
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    if-nez v0, :cond_f

    .line 485
    .line 486
    const-string v0, "urn:mpeg:dash:utc:ntp:2012"

    .line 487
    .line 488
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-eqz v0, :cond_e

    .line 493
    .line 494
    goto :goto_6

    .line 495
    :cond_e
    new-instance v0, Ljava/io/IOException;

    .line 496
    .line 497
    const-string v2, "Unsupported UTC timing scheme"

    .line 498
    .line 499
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v6, v0}, LE0/j;->w(Ljava/io/IOException;)V

    .line 503
    .line 504
    .line 505
    goto :goto_a

    .line 506
    :cond_f
    :goto_6
    invoke-virtual {v6}, LE0/j;->u()V

    .line 507
    .line 508
    .line 509
    goto :goto_a

    .line 510
    :cond_10
    :goto_7
    new-instance v2, LU4/b;

    .line 511
    .line 512
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v6, v0, v2}, LE0/j;->y(LF0/v;LS0/o;)V

    .line 516
    .line 517
    .line 518
    goto :goto_a

    .line 519
    :cond_11
    :goto_8
    new-instance v2, LE0/h;

    .line 520
    .line 521
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v6, v0, v2}, LE0/j;->y(LF0/v;LS0/o;)V

    .line 525
    .line 526
    .line 527
    goto :goto_a

    .line 528
    :cond_12
    :goto_9
    :try_start_1
    iget-object v0, v0, LF0/v;->c:Ljava/lang/String;

    .line 529
    .line 530
    invoke-static {v0}, Lp0/M;->U(Ljava/lang/String;)J

    .line 531
    .line 532
    .line 533
    move-result-wide v2

    .line 534
    iget-wide v4, v6, LE0/j;->K:J

    .line 535
    .line 536
    sub-long/2addr v2, v4

    .line 537
    iput-wide v2, v6, LE0/j;->L:J

    .line 538
    .line 539
    invoke-virtual {v6, v7}, LE0/j;->x(Z)V
    :try_end_1
    .catch Lm0/P; {:try_start_1 .. :try_end_1} :catch_0

    .line 540
    .line 541
    .line 542
    goto :goto_a

    .line 543
    :catch_0
    move-exception v0

    .line 544
    invoke-virtual {v6, v0}, LE0/j;->w(Ljava/io/IOException;)V

    .line 545
    .line 546
    .line 547
    goto :goto_a

    .line 548
    :cond_13
    invoke-virtual {v6}, LE0/j;->u()V

    .line 549
    .line 550
    .line 551
    goto :goto_a

    .line 552
    :cond_14
    invoke-virtual {v6, v7}, LE0/j;->x(Z)V

    .line 553
    .line 554
    .line 555
    :goto_a
    return-void

    .line 556
    :catchall_0
    move-exception v0

    .line 557
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 558
    throw v0

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(LS0/p;JJLjava/io/IOException;I)LS0/g;
    .locals 4

    .line 1
    iget p2, p0, LE0/i;->G:I

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    iget-object v0, p0, LE0/i;->H:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch p2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v0, LE0/j;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p2, LO0/p;

    .line 15
    .line 16
    iget-wide v1, p1, LS0/p;->G:J

    .line 17
    .line 18
    iget-object p7, p1, LS0/p;->J:Ls0/M;

    .line 19
    .line 20
    iget-object v1, p7, Ls0/M;->c:Landroid/net/Uri;

    .line 21
    .line 22
    iget-object p7, p7, Ls0/M;->d:Ljava/util/Map;

    .line 23
    .line 24
    invoke-direct {p2, p7, p4, p5}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 25
    .line 26
    .line 27
    iget-object p4, v0, LE0/j;->q:LO0/D;

    .line 28
    .line 29
    iget p1, p1, LS0/p;->I:I

    .line 30
    .line 31
    invoke-virtual {p4, p2, p1, p6, p3}, LO0/D;->f(LO0/p;ILjava/io/IOException;Z)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v0, LE0/j;->m:LU4/b;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p6}, LE0/j;->w(Ljava/io/IOException;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, LS0/m;->K:LS0/g;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_0
    check-cast v0, LE0/j;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance p2, LO0/p;

    .line 51
    .line 52
    iget-wide v1, p1, LS0/p;->G:J

    .line 53
    .line 54
    iget-object v1, p1, LS0/p;->J:Ls0/M;

    .line 55
    .line 56
    iget-object v2, v1, Ls0/M;->c:Landroid/net/Uri;

    .line 57
    .line 58
    iget-object v1, v1, Ls0/M;->d:Ljava/util/Map;

    .line 59
    .line 60
    invoke-direct {p2, v1, p4, p5}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 61
    .line 62
    .line 63
    iget-object p4, v0, LE0/j;->m:LU4/b;

    .line 64
    .line 65
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    instance-of p4, p6, Lm0/P;

    .line 69
    .line 70
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    if-nez p4, :cond_2

    .line 76
    .line 77
    instance-of p4, p6, Ljava/io/FileNotFoundException;

    .line 78
    .line 79
    if-nez p4, :cond_2

    .line 80
    .line 81
    instance-of p4, p6, Ls0/w;

    .line 82
    .line 83
    if-nez p4, :cond_2

    .line 84
    .line 85
    instance-of p4, p6, LS0/l;

    .line 86
    .line 87
    if-nez p4, :cond_2

    .line 88
    .line 89
    sget p4, Ls0/j;->H:I

    .line 90
    .line 91
    move-object p4, p6

    .line 92
    :goto_0
    if-eqz p4, :cond_1

    .line 93
    .line 94
    instance-of p5, p4, Ls0/j;

    .line 95
    .line 96
    if-eqz p5, :cond_0

    .line 97
    .line 98
    move-object p5, p4

    .line 99
    check-cast p5, Ls0/j;

    .line 100
    .line 101
    iget p5, p5, Ls0/j;->G:I

    .line 102
    .line 103
    const/16 v3, 0x7d8

    .line 104
    .line 105
    if-ne p5, v3, :cond_0

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 109
    .line 110
    .line 111
    move-result-object p4

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    sub-int/2addr p7, p3

    .line 114
    mul-int/lit16 p7, p7, 0x3e8

    .line 115
    .line 116
    const/16 p4, 0x1388

    .line 117
    .line 118
    invoke-static {p7, p4}, Ljava/lang/Math;->min(II)I

    .line 119
    .line 120
    .line 121
    move-result p4

    .line 122
    int-to-long p4, p4

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    :goto_1
    move-wide p4, v1

    .line 125
    :goto_2
    cmp-long p7, p4, v1

    .line 126
    .line 127
    if-nez p7, :cond_3

    .line 128
    .line 129
    sget-object p4, LS0/m;->L:LS0/g;

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_3
    const/4 p7, 0x0

    .line 133
    invoke-static {p4, p5, p7}, LS0/m;->c(JZ)LS0/g;

    .line 134
    .line 135
    .line 136
    move-result-object p4

    .line 137
    :goto_3
    invoke-virtual {p4}, LS0/g;->a()Z

    .line 138
    .line 139
    .line 140
    move-result p5

    .line 141
    xor-int/2addr p3, p5

    .line 142
    iget-object p5, v0, LE0/j;->q:LO0/D;

    .line 143
    .line 144
    iget p1, p1, LS0/p;->I:I

    .line 145
    .line 146
    invoke-virtual {p5, p2, p1, p6, p3}, LO0/D;->f(LO0/p;ILjava/io/IOException;Z)V

    .line 147
    .line 148
    .line 149
    return-object p4

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(LS0/j;JJZ)V
    .locals 9

    .line 1
    iget-object p6, p0, LE0/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    iget v0, p0, LE0/i;->G:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    move-object v2, p1

    .line 10
    check-cast v2, LS0/p;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_1

    .line 13
    .line 14
    .line 15
    move-object v1, p6

    .line 16
    check-cast v1, LE0/j;

    .line 17
    .line 18
    move-wide v3, p2

    .line 19
    move-wide v5, p4

    .line 20
    invoke-virtual/range {v1 .. v6}, LE0/j;->v(LS0/p;JJ)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_1
    move-object v1, p6

    .line 25
    check-cast v1, LE0/j;

    .line 26
    .line 27
    move-wide v3, p2

    .line 28
    move-wide v5, p4

    .line 29
    invoke-virtual/range {v1 .. v6}, LE0/j;->v(LS0/p;JJ)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :pswitch_2
    move-object v4, p1

    .line 34
    check-cast v4, LS0/p;

    .line 35
    .line 36
    packed-switch v0, :pswitch_data_2

    .line 37
    .line 38
    .line 39
    move-object v3, p6

    .line 40
    check-cast v3, LE0/j;

    .line 41
    .line 42
    move-wide v5, p2

    .line 43
    move-wide v7, p4

    .line 44
    invoke-virtual/range {v3 .. v8}, LE0/j;->v(LS0/p;JJ)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :pswitch_3
    move-object v3, p6

    .line 49
    check-cast v3, LE0/j;

    .line 50
    .line 51
    move-wide v5, p2

    .line 52
    move-wide v7, p4

    .line 53
    invoke-virtual/range {v3 .. v8}, LE0/j;->v(LS0/p;JJ)V

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public final n(LS0/j;JJLjava/io/IOException;I)LS0/g;
    .locals 8

    .line 1
    iget v0, p0, LE0/i;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LE0/i;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, LT0/b;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    check-cast p1, LE0/f;

    .line 13
    .line 14
    iget-object p1, p1, LE0/f;->G:LE0/j;

    .line 15
    .line 16
    invoke-virtual {p1, p6}, LE0/j;->w(Ljava/io/IOException;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p1, LS0/m;->K:LS0/g;

    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_0
    move-object v1, p1

    .line 23
    check-cast v1, LS0/p;

    .line 24
    .line 25
    move-object v0, p0

    .line 26
    move-wide v2, p2

    .line 27
    move-wide v4, p4

    .line 28
    move-object v6, p6

    .line 29
    move v7, p7

    .line 30
    invoke-virtual/range {v0 .. v7}, LE0/i;->b(LS0/p;JJLjava/io/IOException;I)LS0/g;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :pswitch_1
    move-object v1, p1

    .line 36
    check-cast v1, LS0/p;

    .line 37
    .line 38
    move-object v0, p0

    .line 39
    move-wide v2, p2

    .line 40
    move-wide v4, p4

    .line 41
    move-object v6, p6

    .line 42
    move v7, p7

    .line 43
    invoke-virtual/range {v0 .. v7}, LE0/i;->b(LS0/p;JJLjava/io/IOException;I)LS0/g;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(LS0/j;JJ)V
    .locals 8

    .line 1
    iget v0, p0, LE0/i;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LE0/i;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, LT0/b;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    sget-object p2, LT0/c;->b:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter p2

    .line 15
    :try_start_0
    sget-boolean p3, LT0/c;->c:Z

    .line 16
    .line 17
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-nez p3, :cond_0

    .line 19
    .line 20
    new-instance p2, Ljava/io/IOException;

    .line 21
    .line 22
    new-instance p3, Ljava/util/ConcurrentModificationException;

    .line 23
    .line 24
    invoke-direct {p3}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, LE0/f;

    .line 31
    .line 32
    iget-object p1, p1, LE0/f;->G:LE0/j;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, LE0/j;->w(Ljava/io/IOException;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    check-cast p1, LE0/f;

    .line 39
    .line 40
    invoke-virtual {p1}, LE0/f;->a()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p1

    .line 47
    :cond_1
    :goto_0
    return-void

    .line 48
    :pswitch_0
    move-object v1, p1

    .line 49
    check-cast v1, LS0/p;

    .line 50
    .line 51
    move-object v0, p0

    .line 52
    move-wide v2, p2

    .line 53
    move-wide v4, p4

    .line 54
    invoke-virtual/range {v0 .. v5}, LE0/i;->a(LS0/p;JJ)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_1
    move-object v3, p1

    .line 59
    check-cast v3, LS0/p;

    .line 60
    .line 61
    move-object v2, p0

    .line 62
    move-wide v4, p2

    .line 63
    move-wide v6, p4

    .line 64
    invoke-virtual/range {v2 .. v7}, LE0/i;->a(LS0/p;JJ)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final p(LS0/j;JJI)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, LE0/i;->G:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :pswitch_0
    move-object/from16 v1, p1

    .line 9
    .line 10
    check-cast v1, LS0/p;

    .line 11
    .line 12
    iget-object v2, v0, LE0/i;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, LE0/j;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    if-nez p6, :cond_0

    .line 20
    .line 21
    new-instance v9, LO0/p;

    .line 22
    .line 23
    iget-wide v4, v1, LS0/p;->G:J

    .line 24
    .line 25
    iget-object v6, v1, LS0/p;->H:Ls0/m;

    .line 26
    .line 27
    move-object v3, v9

    .line 28
    move-wide/from16 v7, p2

    .line 29
    .line 30
    invoke-direct/range {v3 .. v8}, LO0/p;-><init>(JLs0/m;J)V

    .line 31
    .line 32
    .line 33
    move-object v4, v9

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v3, LO0/p;

    .line 36
    .line 37
    iget-wide v4, v1, LS0/p;->G:J

    .line 38
    .line 39
    iget-object v4, v1, LS0/p;->J:Ls0/M;

    .line 40
    .line 41
    iget-object v5, v4, Ls0/M;->c:Landroid/net/Uri;

    .line 42
    .line 43
    iget-object v4, v4, Ls0/M;->d:Ljava/util/Map;

    .line 44
    .line 45
    move-wide/from16 v5, p4

    .line 46
    .line 47
    invoke-direct {v3, v4, v5, v6}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 48
    .line 49
    .line 50
    move-object v4, v3

    .line 51
    :goto_0
    iget v5, v1, LS0/p;->I:I

    .line 52
    .line 53
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    iget-object v3, v2, LE0/j;->q:LO0/D;

    .line 64
    .line 65
    const/4 v6, -0x1

    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v8, 0x0

    .line 68
    const/4 v9, 0x0

    .line 69
    move/from16 v14, p6

    .line 70
    .line 71
    invoke-virtual/range {v3 .. v14}, LO0/D;->g(LO0/p;IILm0/t;ILjava/lang/Object;JJI)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
