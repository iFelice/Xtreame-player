.class public final Ln2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final I:Ljava/lang/String;


# instance fields
.field public final G:Le2/s;

.field public final H:Lm2/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "EnqueueRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Ld2/n;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ln2/e;->I:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Le2/s;)V
    .locals 2

    .line 1
    new-instance v0, Lm2/l;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lm2/l;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Ln2/e;->G:Le2/s;

    .line 11
    .line 12
    iput-object v0, p0, Ln2/e;->H:Lm2/l;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Ln2/e;->H:Lm2/l;

    .line 4
    .line 5
    iget-object v0, v1, Ln2/e;->G:Le2/s;

    .line 6
    .line 7
    const-string v3, "WorkContinuation has cycles ("

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Le2/s;->M:Le2/y;

    .line 13
    .line 14
    :try_start_1
    new-instance v5, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v5}, Le2/s;->G0(Le2/s;Ljava/util/HashSet;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_1d

    .line 24
    .line 25
    iget-object v3, v4, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 26
    .line 27
    invoke-virtual {v3}, LP1/x;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    .line 28
    .line 29
    .line 30
    :try_start_2
    invoke-static {v0}, Le2/s;->H0(Le2/s;)Ljava/util/HashSet;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const/4 v6, 0x0

    .line 35
    new-array v7, v6, [Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, [Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    iget-object v9, v4, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 48
    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    array-length v11, v5

    .line 52
    if-lez v11, :cond_0

    .line 53
    .line 54
    const/4 v11, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v11, 0x0

    .line 57
    :goto_0
    const/4 v12, 0x6

    .line 58
    const/4 v13, 0x4

    .line 59
    if-eqz v11, :cond_6

    .line 60
    .line 61
    array-length v14, v5

    .line 62
    const/4 v15, 0x0

    .line 63
    const/16 v16, 0x1

    .line 64
    .line 65
    const/16 v17, 0x0

    .line 66
    .line 67
    const/16 v18, 0x0

    .line 68
    .line 69
    :goto_1
    if-ge v15, v14, :cond_7

    .line 70
    .line 71
    aget-object v6, v5, v15

    .line 72
    .line 73
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->u()Lm2/s;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    invoke-virtual {v10, v6}, Lm2/s;->h(Ljava/lang/String;)Lm2/q;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    if-nez v10, :cond_2

    .line 82
    .line 83
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v8, "Prerequisite "

    .line 90
    .line 91
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v6, " doesn\'t exist; not enqueuing"

    .line 98
    .line 99
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    sget-object v7, Ln2/e;->I:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v5, v7, v6}, Ld2/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    move-object/from16 v20, v2

    .line 112
    .line 113
    :cond_1
    :goto_2
    const/4 v1, 0x1

    .line 114
    const/4 v6, 0x0

    .line 115
    goto/16 :goto_11

    .line 116
    .line 117
    :cond_2
    iget v6, v10, Lm2/q;->b:I

    .line 118
    .line 119
    const/4 v10, 0x3

    .line 120
    if-ne v6, v10, :cond_3

    .line 121
    .line 122
    const/4 v10, 0x1

    .line 123
    goto :goto_3

    .line 124
    :cond_3
    const/4 v10, 0x0

    .line 125
    :goto_3
    and-int v16, v16, v10

    .line 126
    .line 127
    if-ne v6, v13, :cond_4

    .line 128
    .line 129
    const/16 v18, 0x1

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_4
    if-ne v6, v12, :cond_5

    .line 133
    .line 134
    const/16 v17, 0x1

    .line 135
    .line 136
    :cond_5
    :goto_4
    add-int/lit8 v15, v15, 0x1

    .line 137
    .line 138
    const/4 v6, 0x0

    .line 139
    goto :goto_1

    .line 140
    :cond_6
    const/16 v16, 0x1

    .line 141
    .line 142
    const/16 v17, 0x0

    .line 143
    .line 144
    const/16 v18, 0x0

    .line 145
    .line 146
    :cond_7
    const/4 v6, 0x0

    .line 147
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    .line 151
    const/4 v14, 0x1

    .line 152
    xor-int/2addr v10, v14

    .line 153
    if-eqz v10, :cond_e

    .line 154
    .line 155
    if-nez v11, :cond_e

    .line 156
    .line 157
    :try_start_3
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->u()Lm2/s;

    .line 158
    .line 159
    .line 160
    move-result-object v15

    .line 161
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    const-string v12, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 165
    .line 166
    invoke-static {v14, v12}, LP1/z;->N(ILjava/lang/String;)LP1/z;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    invoke-virtual {v12, v14}, LP1/z;->J(I)V

    .line 171
    .line 172
    .line 173
    iget-object v14, v15, Lm2/s;->a:LP1/x;

    .line 174
    .line 175
    invoke-virtual {v14}, LP1/x;->b()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v14, v12, v6}, LP1/x;->l(LT1/h;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 179
    .line 180
    .line 181
    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 182
    :try_start_4
    new-instance v15, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    invoke-direct {v15, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    .line 190
    .line 191
    :goto_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_9

    .line 196
    .line 197
    const/4 v6, 0x0

    .line 198
    invoke-interface {v14, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 199
    .line 200
    .line 201
    move-result v19

    .line 202
    if-eqz v19, :cond_8

    .line 203
    .line 204
    const/4 v6, 0x0

    .line 205
    :goto_6
    const/4 v13, 0x1

    .line 206
    goto :goto_7

    .line 207
    :cond_8
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v19

    .line 211
    move-object/from16 v6, v19

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :goto_7
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 215
    .line 216
    .line 217
    move-result v20

    .line 218
    invoke-static/range {v20 .. v20}, LS3/e;->g(I)I

    .line 219
    .line 220
    .line 221
    move-result v13

    .line 222
    new-instance v1, Lm2/p;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 223
    .line 224
    move-object/from16 v20, v2

    .line 225
    .line 226
    :try_start_5
    const-string v2, "id"

    .line 227
    .line 228
    invoke-static {v6, v2}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 232
    .line 233
    .line 234
    iput-object v6, v1, Lm2/p;->a:Ljava/lang/String;

    .line 235
    .line 236
    iput v13, v1, Lm2/p;->b:I

    .line 237
    .line 238
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 239
    .line 240
    .line 241
    move-object/from16 v1, p0

    .line 242
    .line 243
    move-object/from16 v2, v20

    .line 244
    .line 245
    const/4 v13, 0x4

    .line 246
    goto :goto_5

    .line 247
    :catchall_0
    move-exception v0

    .line 248
    goto/16 :goto_a

    .line 249
    .line 250
    :catchall_1
    move-exception v0

    .line 251
    move-object/from16 v20, v2

    .line 252
    .line 253
    goto/16 :goto_a

    .line 254
    .line 255
    :cond_9
    move-object/from16 v20, v2

    .line 256
    .line 257
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v12}, LP1/z;->O()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-nez v1, :cond_f

    .line 268
    .line 269
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-eqz v2, :cond_b

    .line 278
    .line 279
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    check-cast v2, Lm2/p;

    .line 284
    .line 285
    iget v2, v2, Lm2/p;->b:I

    .line 286
    .line 287
    const/4 v6, 0x1

    .line 288
    if-eq v2, v6, :cond_1

    .line 289
    .line 290
    const/4 v6, 0x2

    .line 291
    if-ne v2, v6, :cond_a

    .line 292
    .line 293
    goto/16 :goto_2

    .line 294
    .line 295
    :cond_b
    new-instance v1, Ln2/c;

    .line 296
    .line 297
    invoke-direct {v1, v4}, Ln2/c;-><init>(Le2/y;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Ln2/d;->run()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->u()Lm2/s;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v6

    .line 315
    if-eqz v6, :cond_d

    .line 316
    .line 317
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    check-cast v6, Lm2/p;

    .line 322
    .line 323
    iget-object v6, v6, Lm2/p;->a:Ljava/lang/String;

    .line 324
    .line 325
    iget-object v12, v1, Lm2/s;->a:LP1/x;

    .line 326
    .line 327
    invoke-virtual {v12}, LP1/x;->b()V

    .line 328
    .line 329
    .line 330
    iget-object v13, v1, Lm2/s;->c:Lm2/r;

    .line 331
    .line 332
    invoke-virtual {v13}, Lk/d;->c()LT1/i;

    .line 333
    .line 334
    .line 335
    move-result-object v14

    .line 336
    if-nez v6, :cond_c

    .line 337
    .line 338
    const/4 v15, 0x1

    .line 339
    invoke-interface {v14, v15}, LT1/g;->J(I)V

    .line 340
    .line 341
    .line 342
    goto :goto_9

    .line 343
    :cond_c
    const/4 v15, 0x1

    .line 344
    invoke-interface {v14, v15, v6}, LT1/g;->g(ILjava/lang/String;)V

    .line 345
    .line 346
    .line 347
    :goto_9
    invoke-virtual {v12}, LP1/x;->c()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    .line 348
    .line 349
    .line 350
    :try_start_7
    invoke-interface {v14}, LT1/i;->l()I

    .line 351
    .line 352
    .line 353
    invoke-virtual {v12}, LP1/x;->n()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 354
    .line 355
    .line 356
    :try_start_8
    invoke-virtual {v12}, LP1/x;->j()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v13, v14}, Lk/d;->m(LT1/i;)V

    .line 360
    .line 361
    .line 362
    goto :goto_8

    .line 363
    :catchall_2
    move-exception v0

    .line 364
    invoke-virtual {v12}, LP1/x;->j()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v13, v14}, Lk/d;->m(LT1/i;)V

    .line 368
    .line 369
    .line 370
    throw v0

    .line 371
    :cond_d
    const/4 v1, 0x1

    .line 372
    goto :goto_b

    .line 373
    :goto_a
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v12}, LP1/z;->O()V

    .line 377
    .line 378
    .line 379
    throw v0

    .line 380
    :catchall_3
    move-exception v0

    .line 381
    move-object/from16 v20, v2

    .line 382
    .line 383
    goto/16 :goto_14

    .line 384
    .line 385
    :cond_e
    move-object/from16 v20, v2

    .line 386
    .line 387
    :cond_f
    const/4 v1, 0x0

    .line 388
    :goto_b
    iget-object v2, v0, Le2/s;->N:Ljava/util/List;

    .line 389
    .line 390
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    move v14, v1

    .line 395
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-eqz v1, :cond_1b

    .line 400
    .line 401
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    check-cast v1, Ld2/x;

    .line 406
    .line 407
    iget-object v6, v1, Ld2/x;->b:Lm2/q;

    .line 408
    .line 409
    if-eqz v11, :cond_12

    .line 410
    .line 411
    if-nez v16, :cond_12

    .line 412
    .line 413
    if-eqz v18, :cond_10

    .line 414
    .line 415
    const/4 v12, 0x4

    .line 416
    iput v12, v6, Lm2/q;->b:I

    .line 417
    .line 418
    const/4 v13, 0x6

    .line 419
    goto :goto_d

    .line 420
    :cond_10
    const/4 v12, 0x4

    .line 421
    if-eqz v17, :cond_11

    .line 422
    .line 423
    const/4 v13, 0x6

    .line 424
    iput v13, v6, Lm2/q;->b:I

    .line 425
    .line 426
    goto :goto_d

    .line 427
    :cond_11
    const/4 v13, 0x6

    .line 428
    const/4 v15, 0x5

    .line 429
    iput v15, v6, Lm2/q;->b:I

    .line 430
    .line 431
    goto :goto_d

    .line 432
    :cond_12
    const/4 v12, 0x4

    .line 433
    const/4 v13, 0x6

    .line 434
    iput-wide v7, v6, Lm2/q;->n:J

    .line 435
    .line 436
    :goto_d
    iget v15, v6, Lm2/q;->b:I

    .line 437
    .line 438
    const/4 v12, 0x1

    .line 439
    if-ne v15, v12, :cond_13

    .line 440
    .line 441
    const/4 v14, 0x1

    .line 442
    :cond_13
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->u()Lm2/s;

    .line 443
    .line 444
    .line 445
    move-result-object v12

    .line 446
    iget-object v15, v4, Le2/y;->e:Ljava/util/List;

    .line 447
    .line 448
    const-string v13, "schedulers"

    .line 449
    .line 450
    invoke-static {v15, v13}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 454
    .line 455
    move-object/from16 v21, v2

    .line 456
    .line 457
    const/16 v2, 0x17

    .line 458
    .line 459
    if-gt v2, v13, :cond_14

    .line 460
    .line 461
    const/16 v2, 0x1a

    .line 462
    .line 463
    if-ge v13, v2, :cond_14

    .line 464
    .line 465
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/H1;->z(Lm2/q;)Lm2/q;

    .line 466
    .line 467
    .line 468
    move-result-object v6

    .line 469
    goto :goto_e

    .line 470
    :cond_14
    const/16 v2, 0x16

    .line 471
    .line 472
    if-gt v13, v2, :cond_17

    .line 473
    .line 474
    const-string v2, "androidx.work.impl.background.gcm.GcmScheduler"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 475
    .line 476
    :try_start_9
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    .line 481
    .line 482
    .line 483
    move-result v13

    .line 484
    if-eqz v13, :cond_15

    .line 485
    .line 486
    goto :goto_e

    .line 487
    :cond_15
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 488
    .line 489
    .line 490
    move-result-object v13

    .line 491
    :cond_16
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 492
    .line 493
    .line 494
    move-result v15

    .line 495
    if-eqz v15, :cond_17

    .line 496
    .line 497
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v15

    .line 501
    check-cast v15, Le2/p;

    .line 502
    .line 503
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    move-result-object v15

    .line 507
    invoke-virtual {v2, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 508
    .line 509
    .line 510
    move-result v15
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 511
    if-eqz v15, :cond_16

    .line 512
    .line 513
    :try_start_a
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/H1;->z(Lm2/q;)Lm2/q;

    .line 514
    .line 515
    .line 516
    move-result-object v6

    .line 517
    :catch_0
    :cond_17
    :goto_e
    iget-object v2, v12, Lm2/s;->a:LP1/x;

    .line 518
    .line 519
    invoke-virtual {v2}, LP1/x;->b()V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v2}, LP1/x;->c()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 523
    .line 524
    .line 525
    :try_start_b
    iget-object v12, v12, Lm2/s;->b:Lm2/b;

    .line 526
    .line 527
    invoke-virtual {v12, v6}, LP1/e;->u(Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v2}, LP1/x;->n()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 531
    .line 532
    .line 533
    :try_start_c
    invoke-virtual {v2}, LP1/x;->j()V

    .line 534
    .line 535
    .line 536
    const-string v2, "id.toString()"

    .line 537
    .line 538
    iget-object v6, v1, Ld2/x;->a:Ljava/util/UUID;

    .line 539
    .line 540
    if-eqz v11, :cond_18

    .line 541
    .line 542
    array-length v12, v5

    .line 543
    const/4 v13, 0x0

    .line 544
    :goto_f
    if-ge v13, v12, :cond_18

    .line 545
    .line 546
    aget-object v15, v5, v13

    .line 547
    .line 548
    move-object/from16 v22, v5

    .line 549
    .line 550
    new-instance v5, Lm2/a;

    .line 551
    .line 552
    move-wide/from16 v23, v7

    .line 553
    .line 554
    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v7

    .line 558
    invoke-static {v7, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    invoke-direct {v5, v7, v15}, Lm2/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->p()Lm2/c;

    .line 565
    .line 566
    .line 567
    move-result-object v7

    .line 568
    iget-object v8, v7, Lm2/c;->H:Ljava/lang/Object;

    .line 569
    .line 570
    check-cast v8, LP1/x;

    .line 571
    .line 572
    invoke-virtual {v8}, LP1/x;->b()V

    .line 573
    .line 574
    .line 575
    iget-object v8, v7, Lm2/c;->H:Ljava/lang/Object;

    .line 576
    .line 577
    check-cast v8, LP1/x;

    .line 578
    .line 579
    invoke-virtual {v8}, LP1/x;->c()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 580
    .line 581
    .line 582
    :try_start_d
    iget-object v8, v7, Lm2/c;->I:Ljava/lang/Object;

    .line 583
    .line 584
    check-cast v8, LP1/e;

    .line 585
    .line 586
    invoke-virtual {v8, v5}, LP1/e;->u(Ljava/lang/Object;)V

    .line 587
    .line 588
    .line 589
    iget-object v5, v7, Lm2/c;->H:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v5, LP1/x;

    .line 592
    .line 593
    invoke-virtual {v5}, LP1/x;->n()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 594
    .line 595
    .line 596
    :try_start_e
    iget-object v5, v7, Lm2/c;->H:Ljava/lang/Object;

    .line 597
    .line 598
    check-cast v5, LP1/x;

    .line 599
    .line 600
    invoke-virtual {v5}, LP1/x;->j()V

    .line 601
    .line 602
    .line 603
    add-int/lit8 v13, v13, 0x1

    .line 604
    .line 605
    move-object/from16 v5, v22

    .line 606
    .line 607
    move-wide/from16 v7, v23

    .line 608
    .line 609
    goto :goto_f

    .line 610
    :catchall_4
    move-exception v0

    .line 611
    iget-object v1, v7, Lm2/c;->H:Ljava/lang/Object;

    .line 612
    .line 613
    check-cast v1, LP1/x;

    .line 614
    .line 615
    invoke-virtual {v1}, LP1/x;->j()V

    .line 616
    .line 617
    .line 618
    throw v0

    .line 619
    :cond_18
    move-object/from16 v22, v5

    .line 620
    .line 621
    move-wide/from16 v23, v7

    .line 622
    .line 623
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->v()Lm2/u;

    .line 624
    .line 625
    .line 626
    move-result-object v5

    .line 627
    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v7

    .line 631
    invoke-static {v7, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 635
    .line 636
    .line 637
    iget-object v1, v1, Ld2/x;->c:Ljava/util/Set;

    .line 638
    .line 639
    const-string v8, "tags"

    .line 640
    .line 641
    invoke-static {v1, v8}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 649
    .line 650
    .line 651
    move-result v8

    .line 652
    if-eqz v8, :cond_19

    .line 653
    .line 654
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v8

    .line 658
    check-cast v8, Ljava/lang/String;

    .line 659
    .line 660
    new-instance v12, Lm2/t;

    .line 661
    .line 662
    invoke-direct {v12, v8, v7}, Lm2/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    iget-object v8, v5, Lm2/u;->H:Ljava/lang/Object;

    .line 666
    .line 667
    check-cast v8, LP1/x;

    .line 668
    .line 669
    invoke-virtual {v8}, LP1/x;->b()V

    .line 670
    .line 671
    .line 672
    iget-object v8, v5, Lm2/u;->H:Ljava/lang/Object;

    .line 673
    .line 674
    check-cast v8, LP1/x;

    .line 675
    .line 676
    invoke-virtual {v8}, LP1/x;->c()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 677
    .line 678
    .line 679
    :try_start_f
    iget-object v8, v5, Lm2/u;->I:Ljava/lang/Object;

    .line 680
    .line 681
    check-cast v8, LP1/e;

    .line 682
    .line 683
    invoke-virtual {v8, v12}, LP1/e;->u(Ljava/lang/Object;)V

    .line 684
    .line 685
    .line 686
    iget-object v8, v5, Lm2/u;->H:Ljava/lang/Object;

    .line 687
    .line 688
    check-cast v8, LP1/x;

    .line 689
    .line 690
    invoke-virtual {v8}, LP1/x;->n()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 691
    .line 692
    .line 693
    :try_start_10
    iget-object v8, v5, Lm2/u;->H:Ljava/lang/Object;

    .line 694
    .line 695
    check-cast v8, LP1/x;

    .line 696
    .line 697
    invoke-virtual {v8}, LP1/x;->j()V

    .line 698
    .line 699
    .line 700
    goto :goto_10

    .line 701
    :catchall_5
    move-exception v0

    .line 702
    iget-object v1, v5, Lm2/u;->H:Ljava/lang/Object;

    .line 703
    .line 704
    check-cast v1, LP1/x;

    .line 705
    .line 706
    invoke-virtual {v1}, LP1/x;->j()V

    .line 707
    .line 708
    .line 709
    throw v0

    .line 710
    :cond_19
    if-nez v10, :cond_1a

    .line 711
    .line 712
    move-object/from16 v2, v21

    .line 713
    .line 714
    move-object/from16 v5, v22

    .line 715
    .line 716
    move-wide/from16 v7, v23

    .line 717
    .line 718
    goto/16 :goto_c

    .line 719
    .line 720
    :cond_1a
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->s()Lm2/l;

    .line 721
    .line 722
    .line 723
    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    invoke-static {v0, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    const-string v0, "name"

    .line 731
    .line 732
    const/4 v1, 0x0

    .line 733
    invoke-static {v1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    throw v1

    .line 737
    :catchall_6
    move-exception v0

    .line 738
    invoke-virtual {v2}, LP1/x;->j()V

    .line 739
    .line 740
    .line 741
    throw v0

    .line 742
    :cond_1b
    move v6, v14

    .line 743
    const/4 v1, 0x1

    .line 744
    :goto_11
    iput-boolean v1, v0, Le2/s;->Q:Z

    .line 745
    .line 746
    invoke-virtual {v3}, LP1/x;->n()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 747
    .line 748
    .line 749
    :try_start_11
    invoke-virtual {v3}, LP1/x;->j()V

    .line 750
    .line 751
    .line 752
    if-eqz v6, :cond_1c

    .line 753
    .line 754
    iget-object v0, v4, Le2/y;->a:Landroid/content/Context;

    .line 755
    .line 756
    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    .line 757
    .line 758
    invoke-static {v0, v2, v1}, Ln2/m;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 759
    .line 760
    .line 761
    iget-object v0, v4, Le2/y;->b:Ld2/b;

    .line 762
    .line 763
    iget-object v1, v4, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 764
    .line 765
    iget-object v2, v4, Le2/y;->e:Ljava/util/List;

    .line 766
    .line 767
    invoke-static {v0, v1, v2}, Le2/q;->a(Ld2/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 768
    .line 769
    .line 770
    goto :goto_13

    .line 771
    :goto_12
    move-object/from16 v1, v20

    .line 772
    .line 773
    goto :goto_16

    .line 774
    :catchall_7
    move-exception v0

    .line 775
    goto :goto_12

    .line 776
    :cond_1c
    :goto_13
    sget-object v0, Ld2/t;->A:Ld2/s;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 777
    .line 778
    move-object/from16 v1, v20

    .line 779
    .line 780
    :try_start_12
    invoke-virtual {v1, v0}, Lm2/l;->m(LS3/e;)V

    .line 781
    .line 782
    .line 783
    goto :goto_17

    .line 784
    :catchall_8
    move-exception v0

    .line 785
    goto :goto_16

    .line 786
    :catchall_9
    move-exception v0

    .line 787
    :goto_14
    move-object/from16 v1, v20

    .line 788
    .line 789
    goto :goto_15

    .line 790
    :catchall_a
    move-exception v0

    .line 791
    move-object v1, v2

    .line 792
    :goto_15
    invoke-virtual {v3}, LP1/x;->j()V

    .line 793
    .line 794
    .line 795
    throw v0

    .line 796
    :catchall_b
    move-exception v0

    .line 797
    move-object v1, v2

    .line 798
    goto :goto_16

    .line 799
    :cond_1d
    move-object v1, v2

    .line 800
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 801
    .line 802
    new-instance v4, Ljava/lang/StringBuilder;

    .line 803
    .line 804
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    const-string v0, ")"

    .line 811
    .line 812
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 823
    :goto_16
    new-instance v2, Ld2/q;

    .line 824
    .line 825
    invoke-direct {v2, v0}, Ld2/q;-><init>(Ljava/lang/Throwable;)V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v1, v2}, Lm2/l;->m(LS3/e;)V

    .line 829
    .line 830
    .line 831
    :goto_17
    return-void
.end method
