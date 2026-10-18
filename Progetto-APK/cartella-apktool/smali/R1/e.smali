.class public final LR1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V
    .locals 1

    .line 1
    const-string v0, "foreignKeys"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LR1/e;->a:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, p0, LR1/e;->b:Ljava/util/Map;

    .line 12
    .line 13
    iput-object p3, p0, LR1/e;->c:Ljava/util/Set;

    .line 14
    .line 15
    iput-object p4, p0, LR1/e;->d:Ljava/util/Set;

    .line 16
    .line 17
    return-void
.end method

.method public static final a(LU1/c;Ljava/lang/String;)LR1/e;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "seq"

    .line 6
    .line 7
    const-string v3, "id"

    .line 8
    .line 9
    const-string v4, "type"

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v6, "PRAGMA table_info(`"

    .line 14
    .line 15
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v6, "`)"

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v0, v5}, LU1/c;->E(Ljava/lang/String;)Landroid/database/Cursor;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->getColumnCount()I

    .line 35
    .line 36
    .line 37
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const/4 v8, 0x0

    .line 39
    const-string v9, "name"

    .line 40
    .line 41
    if-gtz v7, :cond_0

    .line 42
    .line 43
    :try_start_1
    sget-object v4, Lu6/r;->G:Lu6/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    invoke-static {v5, v8}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    goto :goto_3

    .line 49
    :goto_0
    move-object v1, v0

    .line 50
    goto/16 :goto_17

    .line 51
    .line 52
    :cond_0
    :try_start_2
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    const-string v13, "notnull"

    .line 61
    .line 62
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v13

    .line 66
    const-string v14, "pk"

    .line 67
    .line 68
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v14

    .line 72
    const-string v15, "dflt_value"

    .line 73
    .line 74
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v15

    .line 78
    new-instance v11, Lv6/f;

    .line 79
    .line 80
    invoke-direct {v11}, Lv6/f;-><init>()V

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 84
    .line 85
    .line 86
    move-result v16

    .line 87
    if-eqz v16, :cond_2

    .line 88
    .line 89
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 98
    .line 99
    .line 100
    move-result v17

    .line 101
    if-eqz v17, :cond_1

    .line 102
    .line 103
    const/16 v23, 0x1

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_1
    const/16 v23, 0x0

    .line 107
    .line 108
    :goto_2
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 109
    .line 110
    .line 111
    move-result v18

    .line 112
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v22

    .line 116
    invoke-static {v10, v9}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    move/from16 v24, v7

    .line 120
    .line 121
    new-instance v7, LR1/a;

    .line 122
    .line 123
    invoke-static {v8, v4}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const/16 v19, 0x2

    .line 127
    .line 128
    move-object/from16 v17, v7

    .line 129
    .line 130
    move-object/from16 v20, v10

    .line 131
    .line 132
    move-object/from16 v21, v8

    .line 133
    .line 134
    invoke-direct/range {v17 .. v23}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v11, v10, v7}, Lv6/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move/from16 v7, v24

    .line 141
    .line 142
    const/4 v8, 0x0

    .line 143
    goto :goto_1

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {v11}, Lv6/f;->b()Lv6/f;

    .line 147
    .line 148
    .line 149
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    const/4 v7, 0x0

    .line 151
    invoke-static {v5, v7}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v7, "PRAGMA foreign_key_list(`"

    .line 157
    .line 158
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v0, v5}, LU1/c;->E(Ljava/lang/String;)Landroid/database/Cursor;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    :try_start_3
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    const-string v10, "table"

    .line 184
    .line 185
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    const-string v11, "on_delete"

    .line 190
    .line 191
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    const-string v12, "on_update"

    .line 196
    .line 197
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result v12

    .line 201
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    const-string v13, "from"

    .line 210
    .line 211
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v13

    .line 215
    const-string v14, "to"

    .line 216
    .line 217
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    move-result v14

    .line 221
    new-instance v15, Lv6/c;

    .line 222
    .line 223
    move-object/from16 v17, v4

    .line 224
    .line 225
    const/16 v4, 0xa

    .line 226
    .line 227
    invoke-direct {v15, v4}, Lv6/c;-><init>(I)V

    .line 228
    .line 229
    .line 230
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-eqz v4, :cond_3

    .line 235
    .line 236
    new-instance v4, LR1/c;

    .line 237
    .line 238
    move-object/from16 v18, v9

    .line 239
    .line 240
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 241
    .line 242
    .line 243
    move-result v9

    .line 244
    move/from16 v19, v3

    .line 245
    .line 246
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    move/from16 v20, v2

    .line 251
    .line 252
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    move/from16 v21, v13

    .line 257
    .line 258
    const-string v13, "cursor.getString(fromColumnIndex)"

    .line 259
    .line 260
    invoke-static {v2, v13}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v13

    .line 267
    move/from16 v22, v14

    .line 268
    .line 269
    const-string v14, "cursor.getString(toColumnIndex)"

    .line 270
    .line 271
    invoke-static {v13, v14}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-direct {v4, v9, v3, v2, v13}, LR1/c;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v15, v4}, Lv6/c;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-object/from16 v9, v18

    .line 281
    .line 282
    move/from16 v3, v19

    .line 283
    .line 284
    move/from16 v2, v20

    .line 285
    .line 286
    move/from16 v13, v21

    .line 287
    .line 288
    move/from16 v14, v22

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_3
    move-object/from16 v18, v9

    .line 292
    .line 293
    invoke-virtual {v15}, Lv6/c;->o()V

    .line 294
    .line 295
    .line 296
    const/4 v2, 0x1

    .line 297
    iput-boolean v2, v15, Lv6/c;->I:Z

    .line 298
    .line 299
    iget v2, v15, Lv6/c;->H:I

    .line 300
    .line 301
    if-lez v2, :cond_4

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_4
    sget-object v15, Lv6/c;->J:Lv6/c;

    .line 305
    .line 306
    :goto_5
    const-string v2, "<this>"

    .line 307
    .line 308
    invoke-static {v15, v2}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v15}, Lv6/c;->b()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    const/4 v3, 0x1

    .line 316
    if-gt v2, v3, :cond_5

    .line 317
    .line 318
    invoke-static {v15}, Lu6/o;->C(Ljava/lang/Iterable;)Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    move-object v3, v2

    .line 323
    const/4 v2, 0x0

    .line 324
    goto :goto_6

    .line 325
    :cond_5
    const/4 v2, 0x0

    .line 326
    new-array v3, v2, [Ljava/lang/Comparable;

    .line 327
    .line 328
    invoke-virtual {v15, v3}, Lv6/c;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    move-object v4, v3

    .line 333
    check-cast v4, [Ljava/lang/Comparable;

    .line 334
    .line 335
    array-length v9, v4

    .line 336
    const/4 v13, 0x1

    .line 337
    if-le v9, v13, :cond_6

    .line 338
    .line 339
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    :cond_6
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    const-string v4, "asList(...)"

    .line 347
    .line 348
    invoke-static {v3, v4}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    :goto_6
    const/4 v4, -0x1

    .line 352
    invoke-interface {v5, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 353
    .line 354
    .line 355
    new-instance v9, Lv6/i;

    .line 356
    .line 357
    invoke-direct {v9}, Lv6/i;-><init>()V

    .line 358
    .line 359
    .line 360
    :goto_7
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 361
    .line 362
    .line 363
    move-result v13

    .line 364
    if-eqz v13, :cond_b

    .line 365
    .line 366
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 367
    .line 368
    .line 369
    move-result v13

    .line 370
    if-eqz v13, :cond_7

    .line 371
    .line 372
    goto :goto_7

    .line 373
    :cond_7
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 374
    .line 375
    .line 376
    move-result v13

    .line 377
    new-instance v14, Ljava/util/ArrayList;

    .line 378
    .line 379
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .line 381
    .line 382
    new-instance v15, Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .line 386
    .line 387
    new-instance v2, Ljava/util/ArrayList;

    .line 388
    .line 389
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .line 391
    .line 392
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 393
    .line 394
    .line 395
    move-result-object v19

    .line 396
    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 397
    .line 398
    .line 399
    move-result v20

    .line 400
    if-eqz v20, :cond_9

    .line 401
    .line 402
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    move-object/from16 v21, v3

    .line 407
    .line 408
    move-object v3, v4

    .line 409
    check-cast v3, LR1/c;

    .line 410
    .line 411
    iget v3, v3, LR1/c;->G:I

    .line 412
    .line 413
    if-ne v3, v13, :cond_8

    .line 414
    .line 415
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    :cond_8
    move-object/from16 v3, v21

    .line 419
    .line 420
    const/4 v4, -0x1

    .line 421
    goto :goto_8

    .line 422
    :catchall_1
    move-exception v0

    .line 423
    move-object v1, v0

    .line 424
    goto/16 :goto_16

    .line 425
    .line 426
    :cond_9
    move-object/from16 v21, v3

    .line 427
    .line 428
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    if-eqz v3, :cond_a

    .line 437
    .line 438
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    check-cast v3, LR1/c;

    .line 443
    .line 444
    iget-object v4, v3, LR1/c;->I:Ljava/lang/String;

    .line 445
    .line 446
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    iget-object v3, v3, LR1/c;->J:Ljava/lang/String;

    .line 450
    .line 451
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    goto :goto_9

    .line 455
    :cond_a
    new-instance v2, LR1/b;

    .line 456
    .line 457
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    const-string v4, "cursor.getString(tableColumnIndex)"

    .line 462
    .line 463
    invoke-static {v3, v4}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    const-string v13, "cursor.getString(onDeleteColumnIndex)"

    .line 471
    .line 472
    invoke-static {v4, v13}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v13

    .line 479
    move/from16 v19, v7

    .line 480
    .line 481
    const-string v7, "cursor.getString(onUpdateColumnIndex)"

    .line 482
    .line 483
    invoke-static {v13, v7}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    move-object/from16 v24, v2

    .line 487
    .line 488
    move-object/from16 v25, v3

    .line 489
    .line 490
    move-object/from16 v26, v4

    .line 491
    .line 492
    move-object/from16 v27, v13

    .line 493
    .line 494
    move-object/from16 v28, v14

    .line 495
    .line 496
    move-object/from16 v29, v15

    .line 497
    .line 498
    invoke-direct/range {v24 .. v29}, LR1/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v9, v2}, Lv6/i;->add(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move/from16 v7, v19

    .line 505
    .line 506
    move-object/from16 v3, v21

    .line 507
    .line 508
    const/4 v2, 0x0

    .line 509
    const/4 v4, -0x1

    .line 510
    goto/16 :goto_7

    .line 511
    .line 512
    :cond_b
    invoke-static {v9}, Ly4/k;->j(Lv6/i;)Lv6/i;

    .line 513
    .line 514
    .line 515
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 516
    const/4 v3, 0x0

    .line 517
    invoke-static {v5, v3}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 518
    .line 519
    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    const-string v4, "PRAGMA index_list(`"

    .line 523
    .line 524
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    invoke-virtual {v0, v3}, LU1/c;->E(Ljava/lang/String;)Landroid/database/Cursor;

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    move-object/from16 v4, v18

    .line 542
    .line 543
    :try_start_4
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 544
    .line 545
    .line 546
    move-result v5

    .line 547
    const-string v7, "origin"

    .line 548
    .line 549
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 550
    .line 551
    .line 552
    move-result v7

    .line 553
    const-string v8, "unique"

    .line 554
    .line 555
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 556
    .line 557
    .line 558
    move-result v8

    .line 559
    const/4 v9, -0x1

    .line 560
    if-eq v5, v9, :cond_c

    .line 561
    .line 562
    if-eq v7, v9, :cond_c

    .line 563
    .line 564
    if-ne v8, v9, :cond_d

    .line 565
    .line 566
    :cond_c
    const/4 v0, 0x0

    .line 567
    goto/16 :goto_13

    .line 568
    .line 569
    :cond_d
    new-instance v9, Lv6/i;

    .line 570
    .line 571
    invoke-direct {v9}, Lv6/i;-><init>()V

    .line 572
    .line 573
    .line 574
    :goto_a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 575
    .line 576
    .line 577
    move-result v10

    .line 578
    if-eqz v10, :cond_16

    .line 579
    .line 580
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v10

    .line 584
    const-string v11, "c"

    .line 585
    .line 586
    invoke-static {v11, v10}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v10

    .line 590
    if-nez v10, :cond_e

    .line 591
    .line 592
    goto :goto_a

    .line 593
    :cond_e
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v10

    .line 597
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 598
    .line 599
    .line 600
    move-result v11

    .line 601
    const/4 v12, 0x1

    .line 602
    if-ne v11, v12, :cond_f

    .line 603
    .line 604
    const/4 v11, 0x1

    .line 605
    goto :goto_b

    .line 606
    :cond_f
    const/4 v11, 0x0

    .line 607
    :goto_b
    invoke-static {v10, v4}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    new-instance v13, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    const-string v14, "PRAGMA index_xinfo(`"

    .line 613
    .line 614
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v13

    .line 627
    invoke-virtual {v0, v13}, LU1/c;->E(Ljava/lang/String;)Landroid/database/Cursor;

    .line 628
    .line 629
    .line 630
    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 631
    :try_start_5
    const-string v14, "seqno"

    .line 632
    .line 633
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 634
    .line 635
    .line 636
    move-result v14

    .line 637
    const-string v15, "cid"

    .line 638
    .line 639
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 640
    .line 641
    .line 642
    move-result v15

    .line 643
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 644
    .line 645
    .line 646
    move-result v12

    .line 647
    const-string v0, "desc"

    .line 648
    .line 649
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 650
    .line 651
    .line 652
    move-result v0

    .line 653
    move-object/from16 v18, v4

    .line 654
    .line 655
    const/4 v4, -0x1

    .line 656
    if-eq v14, v4, :cond_10

    .line 657
    .line 658
    if-eq v15, v4, :cond_10

    .line 659
    .line 660
    if-eq v12, v4, :cond_10

    .line 661
    .line 662
    if-ne v0, v4, :cond_11

    .line 663
    .line 664
    :cond_10
    move/from16 v19, v5

    .line 665
    .line 666
    move-object/from16 v22, v6

    .line 667
    .line 668
    move/from16 v23, v7

    .line 669
    .line 670
    move/from16 v25, v8

    .line 671
    .line 672
    const/4 v0, 0x0

    .line 673
    goto/16 :goto_f

    .line 674
    .line 675
    :cond_11
    new-instance v4, Ljava/util/TreeMap;

    .line 676
    .line 677
    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 678
    .line 679
    .line 680
    move/from16 v19, v5

    .line 681
    .line 682
    new-instance v5, Ljava/util/TreeMap;

    .line 683
    .line 684
    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 685
    .line 686
    .line 687
    :goto_c
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 688
    .line 689
    .line 690
    move-result v21

    .line 691
    if-eqz v21, :cond_14

    .line 692
    .line 693
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 694
    .line 695
    .line 696
    move-result v21

    .line 697
    if-gez v21, :cond_12

    .line 698
    .line 699
    goto :goto_c

    .line 700
    :cond_12
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 701
    .line 702
    .line 703
    move-result v21

    .line 704
    move-object/from16 v22, v6

    .line 705
    .line 706
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v6

    .line 710
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 711
    .line 712
    .line 713
    move-result v23

    .line 714
    if-lez v23, :cond_13

    .line 715
    .line 716
    const-string v23, "DESC"

    .line 717
    .line 718
    :goto_d
    move/from16 v24, v0

    .line 719
    .line 720
    move-object/from16 v0, v23

    .line 721
    .line 722
    move/from16 v23, v7

    .line 723
    .line 724
    goto :goto_e

    .line 725
    :catchall_2
    move-exception v0

    .line 726
    move-object v1, v0

    .line 727
    goto/16 :goto_11

    .line 728
    .line 729
    :cond_13
    const-string v23, "ASC"

    .line 730
    .line 731
    goto :goto_d

    .line 732
    :goto_e
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 733
    .line 734
    .line 735
    move-result-object v7

    .line 736
    move/from16 v25, v8

    .line 737
    .line 738
    const-string v8, "columnName"

    .line 739
    .line 740
    invoke-static {v6, v8}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v4, v7, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 747
    .line 748
    .line 749
    move-result-object v6

    .line 750
    invoke-virtual {v5, v6, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-object/from16 v6, v22

    .line 754
    .line 755
    move/from16 v7, v23

    .line 756
    .line 757
    move/from16 v0, v24

    .line 758
    .line 759
    move/from16 v8, v25

    .line 760
    .line 761
    goto :goto_c

    .line 762
    :cond_14
    move-object/from16 v22, v6

    .line 763
    .line 764
    move/from16 v23, v7

    .line 765
    .line 766
    move/from16 v25, v8

    .line 767
    .line 768
    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    const-string v4, "columnsMap.values"

    .line 773
    .line 774
    invoke-static {v0, v4}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    check-cast v0, Ljava/lang/Iterable;

    .line 778
    .line 779
    invoke-static {v0}, Lu6/o;->C(Ljava/lang/Iterable;)Ljava/util/List;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    invoke-virtual {v5}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 784
    .line 785
    .line 786
    move-result-object v4

    .line 787
    const-string v5, "ordersMap.values"

    .line 788
    .line 789
    invoke-static {v4, v5}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    check-cast v4, Ljava/lang/Iterable;

    .line 793
    .line 794
    invoke-static {v4}, Lu6/o;->C(Ljava/lang/Iterable;)Ljava/util/List;

    .line 795
    .line 796
    .line 797
    move-result-object v4

    .line 798
    new-instance v5, LR1/d;

    .line 799
    .line 800
    invoke-direct {v5, v10, v11, v0, v4}, LR1/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 801
    .line 802
    .line 803
    const/4 v0, 0x0

    .line 804
    :try_start_6
    invoke-static {v13, v0}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 805
    .line 806
    .line 807
    const/4 v0, 0x0

    .line 808
    goto :goto_10

    .line 809
    :goto_f
    invoke-static {v13, v0}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 810
    .line 811
    .line 812
    move-object v5, v0

    .line 813
    :goto_10
    if-nez v5, :cond_15

    .line 814
    .line 815
    invoke-static {v3, v0}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 816
    .line 817
    .line 818
    const/4 v8, 0x0

    .line 819
    goto :goto_14

    .line 820
    :cond_15
    :try_start_7
    invoke-virtual {v9, v5}, Lv6/i;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 821
    .line 822
    .line 823
    move-object/from16 v0, p0

    .line 824
    .line 825
    move-object/from16 v4, v18

    .line 826
    .line 827
    move/from16 v5, v19

    .line 828
    .line 829
    move-object/from16 v6, v22

    .line 830
    .line 831
    move/from16 v7, v23

    .line 832
    .line 833
    move/from16 v8, v25

    .line 834
    .line 835
    goto/16 :goto_a

    .line 836
    .line 837
    :catchall_3
    move-exception v0

    .line 838
    move-object v1, v0

    .line 839
    goto :goto_15

    .line 840
    :goto_11
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 841
    :catchall_4
    move-exception v0

    .line 842
    move-object v2, v0

    .line 843
    :try_start_9
    invoke-static {v13, v1}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 844
    .line 845
    .line 846
    throw v2

    .line 847
    :cond_16
    invoke-static {v9}, Ly4/k;->j(Lv6/i;)Lv6/i;

    .line 848
    .line 849
    .line 850
    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 851
    const/4 v4, 0x0

    .line 852
    invoke-static {v3, v4}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 853
    .line 854
    .line 855
    :goto_12
    move-object v8, v0

    .line 856
    goto :goto_14

    .line 857
    :goto_13
    invoke-static {v3, v0}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 858
    .line 859
    .line 860
    goto :goto_12

    .line 861
    :goto_14
    new-instance v0, LR1/e;

    .line 862
    .line 863
    move-object/from16 v4, v17

    .line 864
    .line 865
    invoke-direct {v0, v1, v4, v2, v8}, LR1/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 866
    .line 867
    .line 868
    return-object v0

    .line 869
    :goto_15
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 870
    :catchall_5
    move-exception v0

    .line 871
    move-object v2, v0

    .line 872
    invoke-static {v3, v1}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 873
    .line 874
    .line 875
    throw v2

    .line 876
    :goto_16
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 877
    :catchall_6
    move-exception v0

    .line 878
    move-object v2, v0

    .line 879
    invoke-static {v5, v1}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 880
    .line 881
    .line 882
    throw v2

    .line 883
    :goto_17
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 884
    :catchall_7
    move-exception v0

    .line 885
    move-object v2, v0

    .line 886
    invoke-static {v5, v1}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 887
    .line 888
    .line 889
    throw v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, LR1/e;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, LR1/e;

    .line 12
    .line 13
    iget-object v1, p1, LR1/e;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p0, LR1/e;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v3, v1}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, LR1/e;->b:Ljava/util/Map;

    .line 25
    .line 26
    iget-object v3, p1, LR1/e;->b:Ljava/util/Map;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, LR1/e;->c:Ljava/util/Set;

    .line 36
    .line 37
    iget-object v3, p1, LR1/e;->c:Ljava/util/Set;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, LR1/e;->d:Ljava/util/Set;

    .line 47
    .line 48
    if-eqz v1, :cond_6

    .line 49
    .line 50
    iget-object p1, p1, LR1/e;->d:Ljava/util/Set;

    .line 51
    .line 52
    if-nez p1, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    invoke-static {v1, p1}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    :cond_6
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, LR1/e;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, LR1/e;->b:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, LR1/e;->c:Ljava/util/Set;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TableInfo{name=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, LR1/e;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', columns="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, LR1/e;->b:Ljava/util/Map;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", foreignKeys="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, LR1/e;->c:Ljava/util/Set;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", indices="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, LR1/e;->d:Ljava/util/Set;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x7d

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method
