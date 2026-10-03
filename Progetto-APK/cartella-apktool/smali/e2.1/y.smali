.class public final Le2/y;
.super Ld2/v;
.source "SourceFile"


# static fields
.field public static k:Le2/y;

.field public static l:Le2/y;

.field public static final m:Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ld2/b;

.field public final c:Landroidx/work/impl/WorkDatabase;

.field public final d:Lp2/a;

.field public final e:Ljava/util/List;

.field public final f:Le2/n;

.field public final g:Ln2/i;

.field public h:Z

.field public i:Landroid/content/BroadcastReceiver$PendingResult;

.field public final j:Lm2/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkManagerImpl"

    .line 2
    .line 3
    invoke-static {v0}, Ld2/n;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    sput-object v0, Le2/y;->k:Le2/y;

    .line 8
    .line 9
    sput-object v0, Le2/y;->l:Le2/y;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Le2/y;->m:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ld2/b;Lm2/u;)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    move-object/from16 v9, p3

    .line 6
    .line 7
    const/4 v10, 0x0

    .line 8
    const/4 v11, 0x1

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const v3, 0x7f050008

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v4, v9, Lm2/u;->H:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v4, Ln2/o;

    .line 27
    .line 28
    const-string v5, "context"

    .line 29
    .line 30
    invoke-static {v3, v5}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v6, "queryExecutor"

    .line 34
    .line 35
    invoke-static {v4, v6}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    new-instance v2, LP1/v;

    .line 42
    .line 43
    invoke-direct {v2, v3, v6}, LP1/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-boolean v11, v2, LP1/v;->j:Z

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v2, "androidx.work.workdb"

    .line 50
    .line 51
    invoke-static {v2}, LI6/k;->L0(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    xor-int/2addr v7, v11

    .line 56
    if-eqz v7, :cond_2f

    .line 57
    .line 58
    new-instance v7, LP1/v;

    .line 59
    .line 60
    invoke-direct {v7, v3, v2}, LP1/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Le2/t;

    .line 64
    .line 65
    invoke-direct {v2, v3}, Le2/t;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    iput-object v2, v7, LP1/v;->i:LT1/e;

    .line 69
    .line 70
    move-object v2, v7

    .line 71
    :goto_0
    iput-object v4, v2, LP1/v;->g:Ljava/util/concurrent/Executor;

    .line 72
    .line 73
    sget-object v4, Le2/b;->a:Le2/b;

    .line 74
    .line 75
    iget-object v7, v2, LP1/v;->d:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    new-array v4, v11, [LQ1/a;

    .line 81
    .line 82
    sget-object v12, Le2/g;->c:Le2/g;

    .line 83
    .line 84
    aput-object v12, v4, v10

    .line 85
    .line 86
    invoke-virtual {v2, v4}, LP1/v;->a([LQ1/a;)V

    .line 87
    .line 88
    .line 89
    new-instance v4, Le2/o;

    .line 90
    .line 91
    const/4 v15, 0x2

    .line 92
    const/4 v14, 0x3

    .line 93
    invoke-direct {v4, v3, v15, v14}, Le2/o;-><init>(Landroid/content/Context;II)V

    .line 94
    .line 95
    .line 96
    new-array v12, v11, [LQ1/a;

    .line 97
    .line 98
    aput-object v4, v12, v10

    .line 99
    .line 100
    invoke-virtual {v2, v12}, LP1/v;->a([LQ1/a;)V

    .line 101
    .line 102
    .line 103
    new-array v4, v11, [LQ1/a;

    .line 104
    .line 105
    sget-object v12, Le2/h;->c:Le2/h;

    .line 106
    .line 107
    aput-object v12, v4, v10

    .line 108
    .line 109
    invoke-virtual {v2, v4}, LP1/v;->a([LQ1/a;)V

    .line 110
    .line 111
    .line 112
    new-array v4, v11, [LQ1/a;

    .line 113
    .line 114
    sget-object v12, Le2/i;->c:Le2/i;

    .line 115
    .line 116
    aput-object v12, v4, v10

    .line 117
    .line 118
    invoke-virtual {v2, v4}, LP1/v;->a([LQ1/a;)V

    .line 119
    .line 120
    .line 121
    new-instance v4, Le2/o;

    .line 122
    .line 123
    const/4 v12, 0x5

    .line 124
    const/4 v13, 0x6

    .line 125
    invoke-direct {v4, v3, v12, v13}, Le2/o;-><init>(Landroid/content/Context;II)V

    .line 126
    .line 127
    .line 128
    new-array v12, v11, [LQ1/a;

    .line 129
    .line 130
    aput-object v4, v12, v10

    .line 131
    .line 132
    invoke-virtual {v2, v12}, LP1/v;->a([LQ1/a;)V

    .line 133
    .line 134
    .line 135
    new-array v4, v11, [LQ1/a;

    .line 136
    .line 137
    sget-object v12, Le2/j;->c:Le2/j;

    .line 138
    .line 139
    aput-object v12, v4, v10

    .line 140
    .line 141
    invoke-virtual {v2, v4}, LP1/v;->a([LQ1/a;)V

    .line 142
    .line 143
    .line 144
    new-array v4, v11, [LQ1/a;

    .line 145
    .line 146
    sget-object v12, Le2/k;->c:Le2/k;

    .line 147
    .line 148
    aput-object v12, v4, v10

    .line 149
    .line 150
    invoke-virtual {v2, v4}, LP1/v;->a([LQ1/a;)V

    .line 151
    .line 152
    .line 153
    new-array v4, v11, [LQ1/a;

    .line 154
    .line 155
    sget-object v12, Le2/l;->c:Le2/l;

    .line 156
    .line 157
    aput-object v12, v4, v10

    .line 158
    .line 159
    invoke-virtual {v2, v4}, LP1/v;->a([LQ1/a;)V

    .line 160
    .line 161
    .line 162
    new-instance v4, Le2/o;

    .line 163
    .line 164
    invoke-direct {v4, v3}, Le2/o;-><init>(Landroid/content/Context;)V

    .line 165
    .line 166
    .line 167
    new-array v12, v11, [LQ1/a;

    .line 168
    .line 169
    aput-object v4, v12, v10

    .line 170
    .line 171
    invoke-virtual {v2, v12}, LP1/v;->a([LQ1/a;)V

    .line 172
    .line 173
    .line 174
    new-instance v4, Le2/o;

    .line 175
    .line 176
    const/16 v12, 0xa

    .line 177
    .line 178
    const/16 v13, 0xb

    .line 179
    .line 180
    invoke-direct {v4, v3, v12, v13}, Le2/o;-><init>(Landroid/content/Context;II)V

    .line 181
    .line 182
    .line 183
    new-array v3, v11, [LQ1/a;

    .line 184
    .line 185
    aput-object v4, v3, v10

    .line 186
    .line 187
    invoke-virtual {v2, v3}, LP1/v;->a([LQ1/a;)V

    .line 188
    .line 189
    .line 190
    new-array v3, v11, [LQ1/a;

    .line 191
    .line 192
    sget-object v4, Le2/d;->c:Le2/d;

    .line 193
    .line 194
    aput-object v4, v3, v10

    .line 195
    .line 196
    invoke-virtual {v2, v3}, LP1/v;->a([LQ1/a;)V

    .line 197
    .line 198
    .line 199
    new-array v3, v11, [LQ1/a;

    .line 200
    .line 201
    sget-object v4, Le2/e;->c:Le2/e;

    .line 202
    .line 203
    aput-object v4, v3, v10

    .line 204
    .line 205
    invoke-virtual {v2, v3}, LP1/v;->a([LQ1/a;)V

    .line 206
    .line 207
    .line 208
    new-array v3, v11, [LQ1/a;

    .line 209
    .line 210
    sget-object v4, Le2/f;->c:Le2/f;

    .line 211
    .line 212
    aput-object v4, v3, v10

    .line 213
    .line 214
    invoke-virtual {v2, v3}, LP1/v;->a([LQ1/a;)V

    .line 215
    .line 216
    .line 217
    iput-boolean v10, v2, LP1/v;->l:Z

    .line 218
    .line 219
    iput-boolean v11, v2, LP1/v;->m:Z

    .line 220
    .line 221
    iget-object v3, v2, LP1/v;->g:Ljava/util/concurrent/Executor;

    .line 222
    .line 223
    if-nez v3, :cond_1

    .line 224
    .line 225
    iget-object v4, v2, LP1/v;->h:Ljava/util/concurrent/Executor;

    .line 226
    .line 227
    if-nez v4, :cond_1

    .line 228
    .line 229
    sget-object v3, Lm/b;->e:Lm/a;

    .line 230
    .line 231
    iput-object v3, v2, LP1/v;->h:Ljava/util/concurrent/Executor;

    .line 232
    .line 233
    iput-object v3, v2, LP1/v;->g:Ljava/util/concurrent/Executor;

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_1
    if-eqz v3, :cond_2

    .line 237
    .line 238
    iget-object v4, v2, LP1/v;->h:Ljava/util/concurrent/Executor;

    .line 239
    .line 240
    if-nez v4, :cond_2

    .line 241
    .line 242
    iput-object v3, v2, LP1/v;->h:Ljava/util/concurrent/Executor;

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_2
    if-nez v3, :cond_3

    .line 246
    .line 247
    iget-object v3, v2, LP1/v;->h:Ljava/util/concurrent/Executor;

    .line 248
    .line 249
    iput-object v3, v2, LP1/v;->g:Ljava/util/concurrent/Executor;

    .line 250
    .line 251
    :cond_3
    :goto_1
    iget-object v3, v2, LP1/v;->q:Ljava/util/HashSet;

    .line 252
    .line 253
    iget-object v4, v2, LP1/v;->p:Ljava/util/LinkedHashSet;

    .line 254
    .line 255
    if-eqz v3, :cond_5

    .line 256
    .line 257
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v12

    .line 265
    if-eqz v12, :cond_5

    .line 266
    .line 267
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    check-cast v12, Ljava/lang/Number;

    .line 272
    .line 273
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 274
    .line 275
    .line 276
    move-result v12

    .line 277
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v13

    .line 281
    invoke-interface {v4, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v13

    .line 285
    xor-int/2addr v13, v11

    .line 286
    if-eqz v13, :cond_4

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_4
    const-string v0, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    .line 290
    .line 291
    invoke-static {v0, v12}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw v2

    .line 305
    :cond_5
    iget-object v3, v2, LP1/v;->i:LT1/e;

    .line 306
    .line 307
    if-nez v3, :cond_6

    .line 308
    .line 309
    new-instance v3, LU4/b;

    .line 310
    .line 311
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 312
    .line 313
    .line 314
    :cond_6
    iget-wide v12, v2, LP1/v;->n:J

    .line 315
    .line 316
    const-string v27, "Required value was null."

    .line 317
    .line 318
    const-wide/16 v16, 0x0

    .line 319
    .line 320
    cmp-long v18, v12, v16

    .line 321
    .line 322
    if-lez v18, :cond_8

    .line 323
    .line 324
    iget-object v0, v2, LP1/v;->c:Ljava/lang/String;

    .line 325
    .line 326
    if-eqz v0, :cond_7

    .line 327
    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 329
    .line 330
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v0

    .line 338
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 339
    .line 340
    const-string v2, "Cannot create auto-closing database for an in-memory database."

    .line 341
    .line 342
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw v0

    .line 350
    :cond_8
    new-instance v13, LP1/c;

    .line 351
    .line 352
    iget-boolean v12, v2, LP1/v;->j:Z

    .line 353
    .line 354
    iget v14, v2, LP1/v;->k:I

    .line 355
    .line 356
    if-eqz v14, :cond_2e

    .line 357
    .line 358
    iget-object v15, v2, LP1/v;->a:Landroid/content/Context;

    .line 359
    .line 360
    invoke-static {v15, v5}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    if-eq v14, v11, :cond_9

    .line 364
    .line 365
    move/from16 v19, v14

    .line 366
    .line 367
    goto :goto_3

    .line 368
    :cond_9
    const-string v14, "activity"

    .line 369
    .line 370
    invoke-virtual {v15, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v14

    .line 374
    const-string v6, "null cannot be cast to non-null type android.app.ActivityManager"

    .line 375
    .line 376
    invoke-static {v14, v6}, Lz4/q0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    check-cast v14, Landroid/app/ActivityManager;

    .line 380
    .line 381
    invoke-virtual {v14}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 382
    .line 383
    .line 384
    move-result v6

    .line 385
    if-nez v6, :cond_a

    .line 386
    .line 387
    const/16 v19, 0x3

    .line 388
    .line 389
    goto :goto_3

    .line 390
    :cond_a
    const/16 v19, 0x2

    .line 391
    .line 392
    :goto_3
    iget-object v6, v2, LP1/v;->g:Ljava/util/concurrent/Executor;

    .line 393
    .line 394
    if-eqz v6, :cond_2d

    .line 395
    .line 396
    iget-object v14, v2, LP1/v;->h:Ljava/util/concurrent/Executor;

    .line 397
    .line 398
    if-eqz v14, :cond_2c

    .line 399
    .line 400
    iget-boolean v10, v2, LP1/v;->l:Z

    .line 401
    .line 402
    iget-boolean v0, v2, LP1/v;->m:Z

    .line 403
    .line 404
    iget-object v11, v2, LP1/v;->e:Ljava/util/ArrayList;

    .line 405
    .line 406
    iget-object v1, v2, LP1/v;->f:Ljava/util/ArrayList;

    .line 407
    .line 408
    move-object/from16 v18, v14

    .line 409
    .line 410
    iget-object v14, v2, LP1/v;->c:Ljava/lang/String;

    .line 411
    .line 412
    iget-object v9, v2, LP1/v;->o:Le0/u;

    .line 413
    .line 414
    move/from16 v20, v12

    .line 415
    .line 416
    move-object v12, v13

    .line 417
    move-object v8, v13

    .line 418
    move-object v13, v15

    .line 419
    move-object/from16 v21, v18

    .line 420
    .line 421
    const/4 v15, 0x3

    .line 422
    move-object/from16 v29, v5

    .line 423
    .line 424
    const/4 v5, 0x3

    .line 425
    move-object v15, v3

    .line 426
    move-object/from16 v16, v9

    .line 427
    .line 428
    move-object/from16 v17, v7

    .line 429
    .line 430
    move/from16 v18, v20

    .line 431
    .line 432
    move-object/from16 v20, v6

    .line 433
    .line 434
    move/from16 v22, v10

    .line 435
    .line 436
    move/from16 v23, v0

    .line 437
    .line 438
    move-object/from16 v24, v4

    .line 439
    .line 440
    move-object/from16 v25, v11

    .line 441
    .line 442
    move-object/from16 v26, v1

    .line 443
    .line 444
    invoke-direct/range {v12 .. v26}, LP1/c;-><init>(Landroid/content/Context;Ljava/lang/String;LT1/e;Le0/u;Ljava/util/ArrayList;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLjava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 445
    .line 446
    .line 447
    const-string v0, ".canonicalName"

    .line 448
    .line 449
    const-string v1, "klass"

    .line 450
    .line 451
    iget-object v2, v2, LP1/v;->b:Ljava/lang/Class;

    .line 452
    .line 453
    invoke-static {v2, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-static {v1}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    invoke-static {v3}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    const-string v4, "fullPackage"

    .line 475
    .line 476
    invoke-static {v1, v4}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    if-nez v4, :cond_b

    .line 484
    .line 485
    goto :goto_4

    .line 486
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    const/4 v6, 0x1

    .line 491
    add-int/2addr v4, v6

    .line 492
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    const-string v4, "this as java.lang.String).substring(startIndex)"

    .line 497
    .line 498
    invoke-static {v3, v4}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    :goto_4
    const/16 v4, 0x5f

    .line 502
    .line 503
    const/16 v6, 0x2e

    .line 504
    .line 505
    invoke-static {v3, v6, v4}, LI6/k;->Q0(Ljava/lang/String;CC)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    const-string v4, "_Impl"

    .line 510
    .line 511
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 516
    .line 517
    .line 518
    move-result v4

    .line 519
    if-nez v4, :cond_c

    .line 520
    .line 521
    move-object v1, v3

    .line 522
    goto :goto_5

    .line 523
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    const/4 v6, 0x1

    .line 546
    invoke-static {v1, v6, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    const-string v4, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.Room.getGeneratedImplementation>"

    .line 551
    .line 552
    invoke-static {v1, v4}, Lz4/q0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    check-cast v0, LP1/x;

    .line 560
    .line 561
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0, v8}, LP1/x;->e(LP1/c;)LT1/f;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    iput-object v1, v0, LP1/x;->c:LT1/f;

    .line 569
    .line 570
    invoke-virtual {v0}, LP1/x;->h()Ljava/util/Set;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    new-instance v2, Ljava/util/BitSet;

    .line 575
    .line 576
    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 577
    .line 578
    .line 579
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    iget-object v4, v0, LP1/x;->g:Ljava/util/LinkedHashMap;

    .line 588
    .line 589
    iget-object v6, v8, LP1/c;->o:Ljava/util/List;

    .line 590
    .line 591
    if-eqz v3, :cond_11

    .line 592
    .line 593
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    check-cast v3, Ljava/lang/Class;

    .line 598
    .line 599
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 600
    .line 601
    .line 602
    move-result v7

    .line 603
    const/4 v9, -0x1

    .line 604
    add-int/2addr v7, v9

    .line 605
    if-ltz v7, :cond_f

    .line 606
    .line 607
    :goto_7
    add-int/lit8 v10, v7, -0x1

    .line 608
    .line 609
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v9

    .line 613
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    move-result-object v9

    .line 617
    invoke-virtual {v3, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 618
    .line 619
    .line 620
    move-result v9

    .line 621
    if-eqz v9, :cond_d

    .line 622
    .line 623
    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 624
    .line 625
    .line 626
    goto :goto_9

    .line 627
    :cond_d
    if-gez v10, :cond_e

    .line 628
    .line 629
    goto :goto_8

    .line 630
    :cond_e
    move v7, v10

    .line 631
    const/4 v9, -0x1

    .line 632
    goto :goto_7

    .line 633
    :cond_f
    :goto_8
    const/4 v7, -0x1

    .line 634
    :goto_9
    if-ltz v7, :cond_10

    .line 635
    .line 636
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v6

    .line 640
    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    goto :goto_6

    .line 644
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 645
    .line 646
    const-string v1, "A required auto migration spec ("

    .line 647
    .line 648
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    const-string v1, ") is missing in the database configuration."

    .line 659
    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 668
    .line 669
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    throw v1

    .line 677
    :cond_11
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    const/4 v3, -0x1

    .line 682
    add-int/2addr v1, v3

    .line 683
    if-ltz v1, :cond_14

    .line 684
    .line 685
    :goto_a
    add-int/lit8 v6, v1, -0x1

    .line 686
    .line 687
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    if-eqz v1, :cond_13

    .line 692
    .line 693
    if-gez v6, :cond_12

    .line 694
    .line 695
    goto :goto_b

    .line 696
    :cond_12
    move v1, v6

    .line 697
    const/4 v3, -0x1

    .line 698
    goto :goto_a

    .line 699
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 700
    .line 701
    const-string v1, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    .line 702
    .line 703
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    throw v0

    .line 711
    :cond_14
    :goto_b
    invoke-virtual {v0, v4}, LP1/x;->f(Ljava/util/LinkedHashMap;)Ljava/util/List;

    .line 712
    .line 713
    .line 714
    move-result-object v1

    .line 715
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 716
    .line 717
    .line 718
    move-result-object v1

    .line 719
    :cond_15
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 720
    .line 721
    .line 722
    move-result v2

    .line 723
    if-eqz v2, :cond_18

    .line 724
    .line 725
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v2

    .line 729
    check-cast v2, LQ1/a;

    .line 730
    .line 731
    iget v3, v2, LQ1/a;->a:I

    .line 732
    .line 733
    iget-object v4, v8, LP1/c;->d:Le0/u;

    .line 734
    .line 735
    iget-object v6, v4, Le0/u;->a:Ljava/util/Map;

    .line 736
    .line 737
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 738
    .line 739
    .line 740
    move-result-object v7

    .line 741
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    move-result v7

    .line 745
    if-eqz v7, :cond_17

    .line 746
    .line 747
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 748
    .line 749
    .line 750
    move-result-object v3

    .line 751
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v3

    .line 755
    check-cast v3, Ljava/util/Map;

    .line 756
    .line 757
    if-nez v3, :cond_16

    .line 758
    .line 759
    sget-object v3, Lu6/r;->G:Lu6/r;

    .line 760
    .line 761
    :cond_16
    iget v6, v2, LQ1/a;->b:I

    .line 762
    .line 763
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 764
    .line 765
    .line 766
    move-result-object v6

    .line 767
    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    move-result v3

    .line 771
    if-nez v3, :cond_15

    .line 772
    .line 773
    :cond_17
    const/4 v3, 0x1

    .line 774
    new-array v6, v3, [LQ1/a;

    .line 775
    .line 776
    const/4 v3, 0x0

    .line 777
    aput-object v2, v6, v3

    .line 778
    .line 779
    invoke-virtual {v4, v6}, Le0/u;->b([LQ1/a;)V

    .line 780
    .line 781
    .line 782
    goto :goto_c

    .line 783
    :cond_18
    invoke-virtual {v0}, LP1/x;->g()LT1/f;

    .line 784
    .line 785
    .line 786
    move-result-object v1

    .line 787
    const-class v2, LP1/A;

    .line 788
    .line 789
    invoke-static {v2, v1}, LP1/x;->o(Ljava/lang/Class;LT1/f;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v1

    .line 793
    check-cast v1, LP1/A;

    .line 794
    .line 795
    invoke-virtual {v0}, LP1/x;->g()LT1/f;

    .line 796
    .line 797
    .line 798
    move-result-object v1

    .line 799
    const-class v2, LP1/b;

    .line 800
    .line 801
    invoke-static {v2, v1}, LP1/x;->o(Ljava/lang/Class;LT1/f;)Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v1

    .line 805
    check-cast v1, LP1/b;

    .line 806
    .line 807
    iget-object v13, v0, LP1/x;->d:LP1/l;

    .line 808
    .line 809
    iget v1, v8, LP1/c;->g:I

    .line 810
    .line 811
    if-ne v1, v5, :cond_19

    .line 812
    .line 813
    const/4 v1, 0x1

    .line 814
    goto :goto_d

    .line 815
    :cond_19
    const/4 v1, 0x0

    .line 816
    :goto_d
    invoke-virtual {v0}, LP1/x;->g()LT1/f;

    .line 817
    .line 818
    .line 819
    move-result-object v2

    .line 820
    invoke-interface {v2, v1}, LT1/f;->setWriteAheadLoggingEnabled(Z)V

    .line 821
    .line 822
    .line 823
    iget-object v1, v8, LP1/c;->e:Ljava/util/List;

    .line 824
    .line 825
    iput-object v1, v0, LP1/x;->f:Ljava/util/List;

    .line 826
    .line 827
    iget-object v1, v8, LP1/c;->h:Ljava/util/concurrent/Executor;

    .line 828
    .line 829
    iput-object v1, v0, LP1/x;->b:Ljava/util/concurrent/Executor;

    .line 830
    .line 831
    const-string v1, "executor"

    .line 832
    .line 833
    iget-object v2, v8, LP1/c;->i:Ljava/util/concurrent/Executor;

    .line 834
    .line 835
    invoke-static {v2, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    new-instance v1, Ljava/util/ArrayDeque;

    .line 839
    .line 840
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 841
    .line 842
    .line 843
    iget-boolean v1, v8, LP1/c;->f:Z

    .line 844
    .line 845
    iput-boolean v1, v0, LP1/x;->e:Z

    .line 846
    .line 847
    iget-object v12, v8, LP1/c;->j:Landroid/content/Intent;

    .line 848
    .line 849
    if-eqz v12, :cond_1c

    .line 850
    .line 851
    iget-object v11, v8, LP1/c;->b:Ljava/lang/String;

    .line 852
    .line 853
    if-eqz v11, :cond_1b

    .line 854
    .line 855
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 856
    .line 857
    .line 858
    iget-object v10, v8, LP1/c;->a:Landroid/content/Context;

    .line 859
    .line 860
    move-object/from16 v1, v29

    .line 861
    .line 862
    invoke-static {v10, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    new-instance v9, LP1/q;

    .line 866
    .line 867
    iget-object v1, v13, LP1/l;->a:LP1/x;

    .line 868
    .line 869
    iget-object v14, v1, LP1/x;->b:Ljava/util/concurrent/Executor;

    .line 870
    .line 871
    if-eqz v14, :cond_1a

    .line 872
    .line 873
    invoke-direct/range {v9 .. v14}, LP1/q;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;LP1/l;Ljava/util/concurrent/Executor;)V

    .line 874
    .line 875
    .line 876
    goto :goto_e

    .line 877
    :cond_1a
    const-string v0, "internalQueryExecutor"

    .line 878
    .line 879
    invoke-static {v0}, Lz4/q0;->I(Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    const/4 v1, 0x0

    .line 883
    throw v1

    .line 884
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 885
    .line 886
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v1

    .line 890
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    throw v0

    .line 894
    :cond_1c
    :goto_e
    invoke-virtual {v0}, LP1/x;->i()Ljava/util/Map;

    .line 895
    .line 896
    .line 897
    move-result-object v1

    .line 898
    new-instance v2, Ljava/util/BitSet;

    .line 899
    .line 900
    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 901
    .line 902
    .line 903
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 904
    .line 905
    .line 906
    move-result-object v1

    .line 907
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 908
    .line 909
    .line 910
    move-result-object v1

    .line 911
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 912
    .line 913
    .line 914
    move-result v3

    .line 915
    iget-object v4, v8, LP1/c;->n:Ljava/util/List;

    .line 916
    .line 917
    if-eqz v3, :cond_22

    .line 918
    .line 919
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 920
    .line 921
    .line 922
    move-result-object v3

    .line 923
    check-cast v3, Ljava/util/Map$Entry;

    .line 924
    .line 925
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v6

    .line 929
    check-cast v6, Ljava/lang/Class;

    .line 930
    .line 931
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object v3

    .line 935
    check-cast v3, Ljava/util/List;

    .line 936
    .line 937
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 938
    .line 939
    .line 940
    move-result-object v3

    .line 941
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 942
    .line 943
    .line 944
    move-result v7

    .line 945
    if-eqz v7, :cond_1d

    .line 946
    .line 947
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object v7

    .line 951
    check-cast v7, Ljava/lang/Class;

    .line 952
    .line 953
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 954
    .line 955
    .line 956
    move-result v9

    .line 957
    const/4 v10, -0x1

    .line 958
    add-int/2addr v9, v10

    .line 959
    if-ltz v9, :cond_20

    .line 960
    .line 961
    :goto_10
    add-int/lit8 v11, v9, -0x1

    .line 962
    .line 963
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 964
    .line 965
    .line 966
    move-result-object v10

    .line 967
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 968
    .line 969
    .line 970
    move-result-object v10

    .line 971
    invoke-virtual {v7, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 972
    .line 973
    .line 974
    move-result v10

    .line 975
    if-eqz v10, :cond_1e

    .line 976
    .line 977
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    .line 978
    .line 979
    .line 980
    goto :goto_12

    .line 981
    :cond_1e
    if-gez v11, :cond_1f

    .line 982
    .line 983
    goto :goto_11

    .line 984
    :cond_1f
    move v9, v11

    .line 985
    const/4 v10, -0x1

    .line 986
    goto :goto_10

    .line 987
    :cond_20
    :goto_11
    const/4 v9, -0x1

    .line 988
    :goto_12
    if-ltz v9, :cond_21

    .line 989
    .line 990
    iget-object v10, v0, LP1/x;->k:Ljava/util/LinkedHashMap;

    .line 991
    .line 992
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v9

    .line 996
    invoke-interface {v10, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    goto :goto_f

    .line 1000
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    const-string v1, "A required type converter ("

    .line 1003
    .line 1004
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    .line 1010
    const-string v1, ") for "

    .line 1011
    .line 1012
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v1

    .line 1019
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    .line 1022
    const-string v1, " is missing in the database configuration."

    .line 1023
    .line 1024
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v0

    .line 1031
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1032
    .line 1033
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    throw v1

    .line 1041
    :cond_22
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1042
    .line 1043
    .line 1044
    move-result v1

    .line 1045
    const/4 v3, -0x1

    .line 1046
    add-int/2addr v1, v3

    .line 1047
    if-ltz v1, :cond_25

    .line 1048
    .line 1049
    :goto_13
    add-int/lit8 v6, v1, -0x1

    .line 1050
    .line 1051
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v7

    .line 1055
    if-eqz v7, :cond_24

    .line 1056
    .line 1057
    if-gez v6, :cond_23

    .line 1058
    .line 1059
    goto :goto_14

    .line 1060
    :cond_23
    move v1, v6

    .line 1061
    goto :goto_13

    .line 1062
    :cond_24
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v0

    .line 1066
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1067
    .line 1068
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    const-string v3, "Unexpected type converter "

    .line 1071
    .line 1072
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    .line 1078
    const-string v0, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    .line 1079
    .line 1080
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1088
    .line 1089
    .line 1090
    throw v1

    .line 1091
    :cond_25
    :goto_14
    move-object v1, v0

    .line 1092
    check-cast v1, Landroidx/work/impl/WorkDatabase;

    .line 1093
    .line 1094
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v2

    .line 1101
    new-instance v0, Ld2/n;

    .line 1102
    .line 1103
    move-object/from16 v8, p2

    .line 1104
    .line 1105
    iget v3, v8, Ld2/b;->f:I

    .line 1106
    .line 1107
    invoke-direct {v0, v3}, Ld2/n;-><init>(I)V

    .line 1108
    .line 1109
    .line 1110
    sget-object v3, Ld2/n;->b:Ljava/lang/Object;

    .line 1111
    .line 1112
    monitor-enter v3

    .line 1113
    :try_start_1
    sput-object v0, Ld2/n;->c:Ld2/n;

    .line 1114
    .line 1115
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1116
    new-instance v3, Lm2/o;

    .line 1117
    .line 1118
    const-string v0, "context"

    .line 1119
    .line 1120
    invoke-static {v2, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1121
    .line 1122
    .line 1123
    new-instance v0, Lk2/a;

    .line 1124
    .line 1125
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v4

    .line 1129
    const-string v6, "context.applicationContext"

    .line 1130
    .line 1131
    invoke-static {v4, v6}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    move-object/from16 v9, p3

    .line 1135
    .line 1136
    const/4 v7, 0x0

    .line 1137
    invoke-direct {v0, v4, v9, v7}, Lk2/a;-><init>(Landroid/content/Context;Lm2/u;I)V

    .line 1138
    .line 1139
    .line 1140
    new-instance v4, Lk2/a;

    .line 1141
    .line 1142
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v7

    .line 1146
    invoke-static {v7, v6}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1147
    .line 1148
    .line 1149
    const/4 v10, 0x1

    .line 1150
    invoke-direct {v4, v7, v9, v10}, Lk2/a;-><init>(Landroid/content/Context;Lm2/u;I)V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v7

    .line 1157
    invoke-static {v7, v6}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1158
    .line 1159
    .line 1160
    sget-object v10, Lk2/j;->a:Ljava/lang/String;

    .line 1161
    .line 1162
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1163
    .line 1164
    const/16 v11, 0x18

    .line 1165
    .line 1166
    if-lt v10, v11, :cond_26

    .line 1167
    .line 1168
    new-instance v12, Lk2/i;

    .line 1169
    .line 1170
    invoke-direct {v12, v7, v9}, Lk2/i;-><init>(Landroid/content/Context;Lm2/u;)V

    .line 1171
    .line 1172
    .line 1173
    goto :goto_15

    .line 1174
    :cond_26
    new-instance v12, Lk2/k;

    .line 1175
    .line 1176
    invoke-direct {v12, v7, v9}, Lk2/k;-><init>(Landroid/content/Context;Lm2/u;)V

    .line 1177
    .line 1178
    .line 1179
    :goto_15
    new-instance v7, Lk2/a;

    .line 1180
    .line 1181
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v13

    .line 1185
    invoke-static {v13, v6}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1186
    .line 1187
    .line 1188
    const/4 v6, 0x2

    .line 1189
    invoke-direct {v7, v13, v9, v6}, Lk2/a;-><init>(Landroid/content/Context;Lm2/u;I)V

    .line 1190
    .line 1191
    .line 1192
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1193
    .line 1194
    .line 1195
    iput-object v0, v3, Lm2/o;->G:Ljava/lang/Object;

    .line 1196
    .line 1197
    iput-object v4, v3, Lm2/o;->H:Ljava/lang/Object;

    .line 1198
    .line 1199
    iput-object v12, v3, Lm2/o;->I:Ljava/lang/Object;

    .line 1200
    .line 1201
    iput-object v7, v3, Lm2/o;->J:Ljava/lang/Object;

    .line 1202
    .line 1203
    move-object/from16 v12, p0

    .line 1204
    .line 1205
    iput-object v3, v12, Le2/y;->j:Lm2/o;

    .line 1206
    .line 1207
    new-array v4, v6, [Le2/p;

    .line 1208
    .line 1209
    sget-object v6, Le2/q;->a:Ljava/lang/String;

    .line 1210
    .line 1211
    const/16 v0, 0x17

    .line 1212
    .line 1213
    if-lt v10, v0, :cond_27

    .line 1214
    .line 1215
    new-instance v0, Lh2/c;

    .line 1216
    .line 1217
    invoke-direct {v0, v2, v12}, Lh2/c;-><init>(Landroid/content/Context;Le2/y;)V

    .line 1218
    .line 1219
    .line 1220
    const-class v5, Landroidx/work/impl/background/systemjob/SystemJobService;

    .line 1221
    .line 1222
    const/4 v7, 0x1

    .line 1223
    invoke-static {v2, v5, v7}, Ln2/m;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 1224
    .line 1225
    .line 1226
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v5

    .line 1230
    const-string v10, "Created SystemJobScheduler and enabled SystemJobService"

    .line 1231
    .line 1232
    invoke-virtual {v5, v6, v10}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    .line 1234
    .line 1235
    :goto_16
    const/4 v5, 0x0

    .line 1236
    goto :goto_18

    .line 1237
    :cond_27
    const/4 v7, 0x1

    .line 1238
    :try_start_2
    const-string v0, "androidx.work.impl.background.gcm.GcmScheduler"

    .line 1239
    .line 1240
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    new-array v10, v7, [Ljava/lang/Class;

    .line 1245
    .line 1246
    const-class v13, Landroid/content/Context;

    .line 1247
    .line 1248
    const/4 v14, 0x0

    .line 1249
    aput-object v13, v10, v14

    .line 1250
    .line 1251
    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    new-array v10, v7, [Ljava/lang/Object;

    .line 1256
    .line 1257
    aput-object v2, v10, v14

    .line 1258
    .line 1259
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v0

    .line 1263
    check-cast v0, Le2/p;

    .line 1264
    .line 1265
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v7

    .line 1269
    const-string v10, "Created androidx.work.impl.background.gcm.GcmScheduler"

    .line 1270
    .line 1271
    invoke-virtual {v7, v6, v10}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1272
    .line 1273
    .line 1274
    move-object/from16 v28, v0

    .line 1275
    .line 1276
    goto :goto_17

    .line 1277
    :catchall_0
    move-exception v0

    .line 1278
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v7

    .line 1282
    const-string v10, "Unable to create GCM Scheduler"

    .line 1283
    .line 1284
    iget v7, v7, Ld2/n;->a:I

    .line 1285
    .line 1286
    if-gt v7, v5, :cond_28

    .line 1287
    .line 1288
    invoke-static {v6, v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1289
    .line 1290
    .line 1291
    :cond_28
    const/16 v28, 0x0

    .line 1292
    .line 1293
    :goto_17
    if-nez v28, :cond_29

    .line 1294
    .line 1295
    new-instance v0, Lg2/k;

    .line 1296
    .line 1297
    invoke-direct {v0, v2}, Lg2/k;-><init>(Landroid/content/Context;)V

    .line 1298
    .line 1299
    .line 1300
    const-class v5, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 1301
    .line 1302
    const/4 v7, 0x1

    .line 1303
    invoke-static {v2, v5, v7}, Ln2/m;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 1304
    .line 1305
    .line 1306
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v5

    .line 1310
    const-string v10, "Created SystemAlarmScheduler"

    .line 1311
    .line 1312
    invoke-virtual {v5, v6, v10}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    .line 1314
    .line 1315
    goto :goto_16

    .line 1316
    :cond_29
    const/4 v7, 0x1

    .line 1317
    move-object/from16 v0, v28

    .line 1318
    .line 1319
    goto :goto_16

    .line 1320
    :goto_18
    aput-object v0, v4, v5

    .line 1321
    .line 1322
    new-instance v0, Lf2/b;

    .line 1323
    .line 1324
    invoke-direct {v0, v2, v8, v3, v12}, Lf2/b;-><init>(Landroid/content/Context;Ld2/b;Lm2/o;Le2/y;)V

    .line 1325
    .line 1326
    .line 1327
    aput-object v0, v4, v7

    .line 1328
    .line 1329
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v0

    .line 1333
    new-instance v10, Le2/n;

    .line 1334
    .line 1335
    move-object v2, v10

    .line 1336
    move-object/from16 v3, p1

    .line 1337
    .line 1338
    move-object/from16 v4, p2

    .line 1339
    .line 1340
    move-object/from16 v5, p3

    .line 1341
    .line 1342
    move-object v6, v1

    .line 1343
    move-object v7, v0

    .line 1344
    invoke-direct/range {v2 .. v7}, Le2/n;-><init>(Landroid/content/Context;Ld2/b;Lm2/u;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v2

    .line 1351
    iput-object v2, v12, Le2/y;->a:Landroid/content/Context;

    .line 1352
    .line 1353
    iput-object v8, v12, Le2/y;->b:Ld2/b;

    .line 1354
    .line 1355
    iput-object v9, v12, Le2/y;->d:Lp2/a;

    .line 1356
    .line 1357
    iput-object v1, v12, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 1358
    .line 1359
    iput-object v0, v12, Le2/y;->e:Ljava/util/List;

    .line 1360
    .line 1361
    iput-object v10, v12, Le2/y;->f:Le2/n;

    .line 1362
    .line 1363
    new-instance v0, Ln2/i;

    .line 1364
    .line 1365
    const/4 v3, 0x1

    .line 1366
    invoke-direct {v0, v1, v3}, Ln2/i;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 1367
    .line 1368
    .line 1369
    iput-object v0, v12, Le2/y;->g:Ln2/i;

    .line 1370
    .line 1371
    const/4 v1, 0x0

    .line 1372
    iput-boolean v1, v12, Le2/y;->h:Z

    .line 1373
    .line 1374
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1375
    .line 1376
    if-lt v0, v11, :cond_2b

    .line 1377
    .line 1378
    invoke-static {v2}, Le2/x;->a(Landroid/content/Context;)Z

    .line 1379
    .line 1380
    .line 1381
    move-result v0

    .line 1382
    if-nez v0, :cond_2a

    .line 1383
    .line 1384
    goto :goto_19

    .line 1385
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1386
    .line 1387
    const-string v1, "Cannot initialize WorkManager in direct boot mode"

    .line 1388
    .line 1389
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1390
    .line 1391
    .line 1392
    throw v0

    .line 1393
    :cond_2b
    :goto_19
    iget-object v0, v12, Le2/y;->d:Lp2/a;

    .line 1394
    .line 1395
    new-instance v1, Ln2/f;

    .line 1396
    .line 1397
    invoke-direct {v1, v2, v12}, Ln2/f;-><init>(Landroid/content/Context;Le2/y;)V

    .line 1398
    .line 1399
    .line 1400
    check-cast v0, Lm2/u;

    .line 1401
    .line 1402
    invoke-virtual {v0, v1}, Lm2/u;->m(Ljava/lang/Runnable;)V

    .line 1403
    .line 1404
    .line 1405
    return-void

    .line 1406
    :catchall_1
    move-exception v0

    .line 1407
    move-object/from16 v12, p0

    .line 1408
    .line 1409
    :goto_1a
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1410
    throw v0

    .line 1411
    :catchall_2
    move-exception v0

    .line 1412
    goto :goto_1a

    .line 1413
    :catch_0
    move-object/from16 v12, p0

    .line 1414
    .line 1415
    goto :goto_1b

    .line 1416
    :catch_1
    move-object/from16 v12, p0

    .line 1417
    .line 1418
    goto :goto_1c

    .line 1419
    :catch_2
    move-object/from16 v12, p0

    .line 1420
    .line 1421
    goto :goto_1d

    .line 1422
    :goto_1b
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1423
    .line 1424
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1425
    .line 1426
    const-string v4, "Failed to create an instance of "

    .line 1427
    .line 1428
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v0

    .line 1441
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1442
    .line 1443
    .line 1444
    throw v1

    .line 1445
    :goto_1c
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1446
    .line 1447
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1448
    .line 1449
    const-string v4, "Cannot access the constructor "

    .line 1450
    .line 1451
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1455
    .line 1456
    .line 1457
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v0

    .line 1464
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1465
    .line 1466
    .line 1467
    throw v1

    .line 1468
    :goto_1d
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1469
    .line 1470
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1471
    .line 1472
    const-string v4, "Cannot find implementation for "

    .line 1473
    .line 1474
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v2

    .line 1481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    .line 1483
    .line 1484
    const-string v2, ". "

    .line 1485
    .line 1486
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    .line 1488
    .line 1489
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    .line 1491
    .line 1492
    const-string v2, " does not exist"

    .line 1493
    .line 1494
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    .line 1496
    .line 1497
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v1

    .line 1501
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1502
    .line 1503
    .line 1504
    throw v0

    .line 1505
    :cond_2c
    move-object v12, v1

    .line 1506
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1507
    .line 1508
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v1

    .line 1512
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1513
    .line 1514
    .line 1515
    throw v0

    .line 1516
    :cond_2d
    move-object v12, v1

    .line 1517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1518
    .line 1519
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v1

    .line 1523
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1524
    .line 1525
    .line 1526
    throw v0

    .line 1527
    :cond_2e
    move-object v12, v1

    .line 1528
    move-object v1, v6

    .line 1529
    throw v1

    .line 1530
    :cond_2f
    move-object v12, v1

    .line 1531
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1532
    .line 1533
    const-string v1, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    .line 1534
    .line 1535
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v1

    .line 1539
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1540
    .line 1541
    .line 1542
    throw v0
.end method

.method public static v()Le2/y;
    .locals 2

    .line 1
    sget-object v0, Le2/y;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Le2/y;->k:Le2/y;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Le2/y;->l:Le2/y;

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object v1

    .line 16
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public static w(Landroid/content/Context;)Le2/y;
    .locals 2

    .line 1
    sget-object v0, Le2/y;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Le2/y;->v()Le2/y;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-object v1

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    .line 20
    .line 21
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method


# virtual methods
.method public final A(Le2/r;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le2/y;->d:Lp2/a;

    .line 2
    .line 3
    new-instance v1, Ln2/p;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Ln2/p;-><init>(Le2/y;Le2/r;Z)V

    .line 7
    .line 8
    .line 9
    check-cast v0, Lm2/u;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lm2/u;->m(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    sget-object v0, Le2/y;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Le2/y;->h:Z

    .line 6
    .line 7
    iget-object v1, p0, Le2/y;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Le2/y;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public final y()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Le2/y;->a:Landroid/content/Context;

    .line 8
    .line 9
    sget-object v1, Lh2/c;->K:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "jobscheduler"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/app/job/JobScheduler;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Lh2/c;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroid/app/job/JobInfo;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-static {v1, v2}, Lh2/c;->b(Landroid/app/job/JobScheduler;I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lm2/s;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, v0, Lm2/s;->a:LP1/x;

    .line 64
    .line 65
    invoke-virtual {v1}, LP1/x;->b()V

    .line 66
    .line 67
    .line 68
    iget-object v0, v0, Lm2/s;->k:Lm2/r;

    .line 69
    .line 70
    invoke-virtual {v0}, Lk/d;->c()LT1/i;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1}, LP1/x;->c()V

    .line 75
    .line 76
    .line 77
    :try_start_0
    invoke-interface {v2}, LT1/i;->l()I

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, LP1/x;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, LP1/x;->j()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lk/d;->m(LT1/i;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Le2/y;->b:Ld2/b;

    .line 90
    .line 91
    iget-object v1, p0, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 92
    .line 93
    iget-object v2, p0, Le2/y;->e:Ljava/util/List;

    .line 94
    .line 95
    invoke-static {v0, v1, v2}, Le2/q;->a(Ld2/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :catchall_0
    move-exception v3

    .line 100
    invoke-virtual {v1}, LP1/x;->j()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Lk/d;->m(LT1/i;)V

    .line 104
    .line 105
    .line 106
    throw v3
.end method

.method public final z(Le2/r;Lm2/u;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le2/y;->d:Lp2/a;

    .line 2
    .line 3
    new-instance v7, LK/a;

    .line 4
    .line 5
    const/4 v5, 0x6

    .line 6
    const/4 v6, 0x0

    .line 7
    move-object v1, v7

    .line 8
    move-object v2, p0

    .line 9
    move-object v3, p1

    .line 10
    move-object v4, p2

    .line 11
    invoke-direct/range {v1 .. v6}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Lm2/u;

    .line 15
    .line 16
    invoke-virtual {v0, v7}, Lm2/u;->m(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
