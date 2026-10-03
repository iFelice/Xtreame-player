.class public final synthetic LO0/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/j;
.implements LR0/n;
.implements Lc3/b;
.implements Lb3/h;
.implements Lg4/f;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, LO0/A;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LO0/A;->H:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, LO0/A;->I:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, LO0/A;->J:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, LO0/A;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LO0/D;

    .line 4
    .line 5
    iget-object v1, p0, LO0/A;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LO0/y;

    .line 8
    .line 9
    iget-object v2, p0, LO0/A;->J:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, LO0/u;

    .line 12
    .line 13
    check-cast p1, LO0/E;

    .line 14
    .line 15
    iget v0, v0, LO0/D;->a:I

    .line 16
    .line 17
    invoke-interface {p1, v0, v1, v2}, LO0/E;->r(ILO0/y;LO0/u;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, LX2/c;->J:LX2/c;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const-string v4, "PRAGMA page_size"

    .line 11
    .line 12
    const-string v5, "PRAGMA page_count"

    .line 13
    .line 14
    iget v6, v1, LO0/A;->G:I

    .line 15
    .line 16
    const-string v7, "bytes"

    .line 17
    .line 18
    const/4 v9, 0x5

    .line 19
    const/4 v10, 0x4

    .line 20
    const/4 v11, 0x3

    .line 21
    const/4 v12, 0x2

    .line 22
    iget-object v14, v1, LO0/A;->J:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v15, v1, LO0/A;->I:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v13, v1, LO0/A;->H:Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    check-cast v13, Lb3/j;

    .line 30
    .line 31
    packed-switch v6, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    check-cast v15, Ljava/util/Map;

    .line 35
    .line 36
    check-cast v14, Lm2/i;

    .line 37
    .line 38
    move-object/from16 v3, p1

    .line 39
    .line 40
    check-cast v3, Landroid/database/Cursor;

    .line 41
    .line 42
    sget-object v6, Lb3/j;->L:LR2/b;

    .line 43
    .line 44
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_8

    .line 52
    .line 53
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    sget-object v16, LX2/c;->H:LX2/c;

    .line 62
    .line 63
    if-nez v7, :cond_0

    .line 64
    .line 65
    :goto_1
    move-object/from16 v7, v16

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_0
    if-ne v7, v8, :cond_1

    .line 69
    .line 70
    sget-object v16, LX2/c;->I:LX2/c;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    if-ne v7, v12, :cond_2

    .line 74
    .line 75
    move-object v7, v0

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    if-ne v7, v11, :cond_3

    .line 78
    .line 79
    sget-object v16, LX2/c;->K:LX2/c;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    if-ne v7, v10, :cond_4

    .line 83
    .line 84
    sget-object v16, LX2/c;->L:LX2/c;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    if-ne v7, v9, :cond_5

    .line 88
    .line 89
    sget-object v16, LX2/c;->M:LX2/c;

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    const/4 v9, 0x6

    .line 93
    if-ne v7, v9, :cond_6

    .line 94
    .line 95
    sget-object v16, LX2/c;->N:LX2/c;

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    const-string v9, "SQLiteEventStore"

    .line 103
    .line 104
    const-string v10, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    .line 105
    .line 106
    invoke-static {v7, v9, v10}, LE3/f;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :goto_2
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 111
    .line 112
    .line 113
    move-result-wide v9

    .line 114
    invoke-interface {v15, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v16

    .line 118
    if-nez v16, :cond_7

    .line 119
    .line 120
    new-instance v12, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-interface {v15, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    :cond_7
    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    check-cast v6, Ljava/util/List;

    .line 133
    .line 134
    new-instance v12, LX2/d;

    .line 135
    .line 136
    invoke-direct {v12, v9, v10, v7}, LX2/d;-><init>(JLX2/c;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    const/4 v9, 0x5

    .line 143
    const/4 v10, 0x4

    .line 144
    const/4 v12, 0x2

    .line 145
    goto :goto_0

    .line 146
    :cond_8
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_9

    .line 159
    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    check-cast v3, Ljava/util/Map$Entry;

    .line 165
    .line 166
    sget v6, LX2/e;->c:I

    .line 167
    .line 168
    new-instance v6, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    check-cast v6, Ljava/lang/String;

    .line 178
    .line 179
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Ljava/util/List;

    .line 184
    .line 185
    new-instance v7, LX2/e;

    .line 186
    .line 187
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-direct {v7, v6, v3}, LX2/e;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 192
    .line 193
    .line 194
    iget-object v3, v14, Lm2/i;->I:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v3, Ljava/util/List;

    .line 197
    .line 198
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_9
    iget-object v0, v13, Lb3/j;->H:Ld3/a;

    .line 203
    .line 204
    check-cast v0, Ld3/c;

    .line 205
    .line 206
    invoke-virtual {v0}, Ld3/c;->a()J

    .line 207
    .line 208
    .line 209
    move-result-wide v6

    .line 210
    invoke-virtual {v13}, Lb3/j;->k()Landroid/database/sqlite/SQLiteDatabase;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 215
    .line 216
    .line 217
    :try_start_0
    new-array v0, v2, [Ljava/lang/String;

    .line 218
    .line 219
    const-string v8, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    .line 220
    .line 221
    invoke-virtual {v3, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 222
    .line 223
    .line 224
    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 226
    .line 227
    .line 228
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 229
    .line 230
    .line 231
    move-result-wide v9

    .line 232
    new-instance v0, LX2/g;

    .line 233
    .line 234
    invoke-direct {v0, v9, v10, v6, v7}, LX2/g;-><init>(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 235
    .line 236
    .line 237
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 244
    .line 245
    .line 246
    iput-object v0, v14, Lm2/i;->H:Ljava/lang/Object;

    .line 247
    .line 248
    invoke-virtual {v13}, Lb3/j;->k()Landroid/database/sqlite/SQLiteDatabase;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 257
    .line 258
    .line 259
    move-result-wide v2

    .line 260
    invoke-virtual {v13}, Lb3/j;->k()Landroid/database/sqlite/SQLiteDatabase;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 269
    .line 270
    .line 271
    move-result-wide v4

    .line 272
    mul-long v4, v4, v2

    .line 273
    .line 274
    sget-object v0, Lb3/a;->f:Lb3/a;

    .line 275
    .line 276
    new-instance v2, LX2/f;

    .line 277
    .line 278
    iget-wide v6, v0, Lb3/a;->a:J

    .line 279
    .line 280
    invoke-direct {v2, v4, v5, v6, v7}, LX2/f;-><init>(JJ)V

    .line 281
    .line 282
    .line 283
    new-instance v0, LX2/b;

    .line 284
    .line 285
    invoke-direct {v0, v2}, LX2/b;-><init>(LX2/f;)V

    .line 286
    .line 287
    .line 288
    iput-object v0, v14, Lm2/i;->J:Ljava/lang/Object;

    .line 289
    .line 290
    iget-object v0, v13, Lb3/j;->K:Ls6/a;

    .line 291
    .line 292
    invoke-interface {v0}, Ls6/a;->get()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    check-cast v0, Ljava/lang/String;

    .line 297
    .line 298
    iput-object v0, v14, Lm2/i;->K:Ljava/lang/Object;

    .line 299
    .line 300
    new-instance v0, LX2/a;

    .line 301
    .line 302
    iget-object v2, v14, Lm2/i;->H:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v2, LX2/g;

    .line 305
    .line 306
    iget-object v3, v14, Lm2/i;->I:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v3, Ljava/util/List;

    .line 309
    .line 310
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    iget-object v4, v14, Lm2/i;->J:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v4, LX2/b;

    .line 317
    .line 318
    iget-object v5, v14, Lm2/i;->K:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v5, Ljava/lang/String;

    .line 321
    .line 322
    invoke-direct {v0, v2, v3, v4, v5}, LX2/a;-><init>(LX2/g;Ljava/util/List;LX2/b;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    return-object v0

    .line 326
    :catchall_0
    move-exception v0

    .line 327
    goto :goto_4

    .line 328
    :catchall_1
    move-exception v0

    .line 329
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 330
    .line 331
    .line 332
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    :goto_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 334
    .line 335
    .line 336
    throw v0

    .line 337
    :pswitch_0
    check-cast v15, Ljava/util/List;

    .line 338
    .line 339
    check-cast v14, LU2/i;

    .line 340
    .line 341
    move-object/from16 v0, p1

    .line 342
    .line 343
    check-cast v0, Landroid/database/Cursor;

    .line 344
    .line 345
    sget-object v3, Lb3/j;->L:LR2/b;

    .line 346
    .line 347
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    if-eqz v3, :cond_10

    .line 355
    .line 356
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 357
    .line 358
    .line 359
    move-result-wide v3

    .line 360
    const/4 v5, 0x7

    .line 361
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    if-eqz v5, :cond_a

    .line 366
    .line 367
    const/4 v5, 0x1

    .line 368
    goto :goto_6

    .line 369
    :cond_a
    const/4 v5, 0x0

    .line 370
    :goto_6
    new-instance v6, Ll/x;

    .line 371
    .line 372
    invoke-direct {v6, v11}, Ll/x;-><init>(I)V

    .line 373
    .line 374
    .line 375
    new-instance v9, Ljava/util/HashMap;

    .line 376
    .line 377
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 378
    .line 379
    .line 380
    iput-object v9, v6, Ll/x;->L:Ljava/lang/Object;

    .line 381
    .line 382
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v9

    .line 386
    if-eqz v9, :cond_f

    .line 387
    .line 388
    iput-object v9, v6, Ll/x;->G:Ljava/lang/Object;

    .line 389
    .line 390
    const/4 v9, 0x2

    .line 391
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 392
    .line 393
    .line 394
    move-result-wide v17

    .line 395
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    iput-object v9, v6, Ll/x;->J:Ljava/lang/Object;

    .line 400
    .line 401
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 402
    .line 403
    .line 404
    move-result-wide v9

    .line 405
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 406
    .line 407
    .line 408
    move-result-object v9

    .line 409
    iput-object v9, v6, Ll/x;->K:Ljava/lang/Object;

    .line 410
    .line 411
    if-eqz v5, :cond_c

    .line 412
    .line 413
    new-instance v5, LU2/l;

    .line 414
    .line 415
    const/4 v9, 0x4

    .line 416
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    if-nez v10, :cond_b

    .line 421
    .line 422
    sget-object v9, Lb3/j;->L:LR2/b;

    .line 423
    .line 424
    :goto_7
    const/4 v10, 0x5

    .line 425
    goto :goto_8

    .line 426
    :cond_b
    new-instance v9, LR2/b;

    .line 427
    .line 428
    invoke-direct {v9, v10}, LR2/b;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    goto :goto_7

    .line 432
    :goto_8
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 433
    .line 434
    .line 435
    move-result-object v12

    .line 436
    invoke-direct {v5, v9, v12}, LU2/l;-><init>(LR2/b;[B)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v6, v5}, Ll/x;->m(LU2/l;)V

    .line 440
    .line 441
    .line 442
    :goto_9
    const/4 v5, 0x6

    .line 443
    goto :goto_b

    .line 444
    :cond_c
    const/4 v10, 0x5

    .line 445
    new-instance v5, LU2/l;

    .line 446
    .line 447
    const/4 v9, 0x4

    .line 448
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v12

    .line 452
    if-nez v12, :cond_d

    .line 453
    .line 454
    sget-object v12, Lb3/j;->L:LR2/b;

    .line 455
    .line 456
    goto :goto_a

    .line 457
    :cond_d
    new-instance v8, LR2/b;

    .line 458
    .line 459
    invoke-direct {v8, v12}, LR2/b;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    move-object v12, v8

    .line 463
    :goto_a
    invoke-virtual {v13}, Lb3/j;->k()Landroid/database/sqlite/SQLiteDatabase;

    .line 464
    .line 465
    .line 466
    move-result-object v17

    .line 467
    filled-new-array {v7}, [Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v19

    .line 471
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v8

    .line 475
    filled-new-array {v8}, [Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v21

    .line 479
    const-string v20, "event_id = ?"

    .line 480
    .line 481
    const/16 v22, 0x0

    .line 482
    .line 483
    const-string v18, "event_payloads"

    .line 484
    .line 485
    const/16 v23, 0x0

    .line 486
    .line 487
    const-string v24, "sequence_num"

    .line 488
    .line 489
    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 490
    .line 491
    .line 492
    move-result-object v8

    .line 493
    new-instance v9, LC0/i;

    .line 494
    .line 495
    const/16 v10, 0x14

    .line 496
    .line 497
    invoke-direct {v9, v10}, LC0/i;-><init>(I)V

    .line 498
    .line 499
    .line 500
    invoke-static {v8, v9}, Lb3/j;->c0(Landroid/database/Cursor;Lb3/h;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v8

    .line 504
    check-cast v8, [B

    .line 505
    .line 506
    invoke-direct {v5, v12, v8}, LU2/l;-><init>(LR2/b;[B)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v6, v5}, Ll/x;->m(LU2/l;)V

    .line 510
    .line 511
    .line 512
    goto :goto_9

    .line 513
    :goto_b
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 514
    .line 515
    .line 516
    move-result v8

    .line 517
    if-nez v8, :cond_e

    .line 518
    .line 519
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 520
    .line 521
    .line 522
    move-result v8

    .line 523
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 524
    .line 525
    .line 526
    move-result-object v8

    .line 527
    iput-object v8, v6, Ll/x;->H:Ljava/lang/Object;

    .line 528
    .line 529
    :cond_e
    invoke-virtual {v6}, Ll/x;->e()LU2/h;

    .line 530
    .line 531
    .line 532
    move-result-object v6

    .line 533
    new-instance v8, Lb3/b;

    .line 534
    .line 535
    invoke-direct {v8, v3, v4, v14, v6}, Lb3/b;-><init>(JLU2/i;LU2/h;)V

    .line 536
    .line 537
    .line 538
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    const/4 v8, 0x1

    .line 542
    goto/16 :goto_5

    .line 543
    .line 544
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    .line 545
    .line 546
    const-string v2, "Null transportName"

    .line 547
    .line 548
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    throw v0

    .line 552
    :cond_10
    const/4 v0, 0x0

    .line 553
    return-object v0

    .line 554
    :pswitch_1
    check-cast v15, Ljava/lang/String;

    .line 555
    .line 556
    check-cast v14, Ljava/lang/String;

    .line 557
    .line 558
    move-object/from16 v0, p1

    .line 559
    .line 560
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 561
    .line 562
    sget-object v2, Lb3/j;->L:LR2/b;

    .line 563
    .line 564
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 572
    .line 573
    .line 574
    const/4 v2, 0x0

    .line 575
    invoke-virtual {v0, v14, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    new-instance v4, Lb3/g;

    .line 580
    .line 581
    const/4 v5, 0x2

    .line 582
    invoke-direct {v4, v13, v5}, Lb3/g;-><init>(Lb3/j;I)V

    .line 583
    .line 584
    .line 585
    invoke-static {v3, v4}, Lb3/j;->c0(Landroid/database/Cursor;Lb3/h;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    const-string v3, "DELETE FROM events WHERE num_attempts >= 16"

    .line 589
    .line 590
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 595
    .line 596
    .line 597
    return-object v2

    .line 598
    :pswitch_2
    check-cast v15, LU2/h;

    .line 599
    .line 600
    check-cast v14, LU2/i;

    .line 601
    .line 602
    move-object/from16 v6, p1

    .line 603
    .line 604
    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    .line 605
    .line 606
    sget-object v8, Lb3/j;->L:LR2/b;

    .line 607
    .line 608
    invoke-virtual {v13}, Lb3/j;->k()Landroid/database/sqlite/SQLiteDatabase;

    .line 609
    .line 610
    .line 611
    move-result-object v8

    .line 612
    invoke-virtual {v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 613
    .line 614
    .line 615
    move-result-object v5

    .line 616
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 617
    .line 618
    .line 619
    move-result-wide v8

    .line 620
    invoke-virtual {v13}, Lb3/j;->k()Landroid/database/sqlite/SQLiteDatabase;

    .line 621
    .line 622
    .line 623
    move-result-object v5

    .line 624
    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 625
    .line 626
    .line 627
    move-result-object v4

    .line 628
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 629
    .line 630
    .line 631
    move-result-wide v4

    .line 632
    mul-long v4, v4, v8

    .line 633
    .line 634
    iget-object v8, v13, Lb3/j;->J:Lb3/a;

    .line 635
    .line 636
    iget-wide v9, v8, Lb3/a;->a:J

    .line 637
    .line 638
    cmp-long v11, v4, v9

    .line 639
    .line 640
    if-ltz v11, :cond_11

    .line 641
    .line 642
    iget-object v2, v15, LU2/h;->a:Ljava/lang/String;

    .line 643
    .line 644
    new-instance v3, LC0/o;

    .line 645
    .line 646
    const-wide/16 v4, 0x1

    .line 647
    .line 648
    invoke-direct {v3, v2, v4, v5, v0}, LC0/o;-><init>(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v13, v3}, Lb3/j;->N(Lb3/h;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    const-wide/16 v2, -0x1

    .line 655
    .line 656
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    goto/16 :goto_11

    .line 661
    .line 662
    :cond_11
    invoke-static {v6, v14}, Lb3/j;->E(Landroid/database/sqlite/SQLiteDatabase;LU2/i;)Ljava/lang/Long;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    if-eqz v0, :cond_12

    .line 667
    .line 668
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 669
    .line 670
    .line 671
    move-result-wide v4

    .line 672
    goto :goto_c

    .line 673
    :cond_12
    new-instance v0, Landroid/content/ContentValues;

    .line 674
    .line 675
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 676
    .line 677
    .line 678
    const-string v4, "backend_name"

    .line 679
    .line 680
    iget-object v5, v14, LU2/i;->a:Ljava/lang/String;

    .line 681
    .line 682
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    iget-object v4, v14, LU2/i;->c:LR2/c;

    .line 686
    .line 687
    invoke-static {v4}, Le3/a;->a(LR2/c;)I

    .line 688
    .line 689
    .line 690
    move-result v4

    .line 691
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 692
    .line 693
    .line 694
    move-result-object v4

    .line 695
    const-string v5, "priority"

    .line 696
    .line 697
    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    .line 699
    .line 700
    const-string v4, "next_request_ms"

    .line 701
    .line 702
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    .line 704
    .line 705
    iget-object v4, v14, LU2/i;->b:[B

    .line 706
    .line 707
    if-eqz v4, :cond_13

    .line 708
    .line 709
    invoke-static {v4, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v4

    .line 713
    const-string v5, "extras"

    .line 714
    .line 715
    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    :cond_13
    const-string v4, "transport_contexts"

    .line 719
    .line 720
    const/4 v5, 0x0

    .line 721
    invoke-virtual {v6, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 722
    .line 723
    .line 724
    move-result-wide v9

    .line 725
    move-wide v4, v9

    .line 726
    :goto_c
    iget-object v0, v15, LU2/h;->c:LU2/l;

    .line 727
    .line 728
    iget-object v0, v0, LU2/l;->b:[B

    .line 729
    .line 730
    array-length v9, v0

    .line 731
    iget v8, v8, Lb3/a;->e:I

    .line 732
    .line 733
    if-gt v9, v8, :cond_14

    .line 734
    .line 735
    const/4 v9, 0x1

    .line 736
    goto :goto_d

    .line 737
    :cond_14
    const/4 v9, 0x0

    .line 738
    :goto_d
    new-instance v10, Landroid/content/ContentValues;

    .line 739
    .line 740
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 741
    .line 742
    .line 743
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 744
    .line 745
    .line 746
    move-result-object v4

    .line 747
    const-string v5, "context_id"

    .line 748
    .line 749
    invoke-virtual {v10, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 750
    .line 751
    .line 752
    const-string v4, "transport_name"

    .line 753
    .line 754
    iget-object v5, v15, LU2/h;->a:Ljava/lang/String;

    .line 755
    .line 756
    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    iget-wide v4, v15, LU2/h;->d:J

    .line 760
    .line 761
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 762
    .line 763
    .line 764
    move-result-object v4

    .line 765
    const-string v5, "timestamp_ms"

    .line 766
    .line 767
    invoke-virtual {v10, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 768
    .line 769
    .line 770
    iget-wide v4, v15, LU2/h;->e:J

    .line 771
    .line 772
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 773
    .line 774
    .line 775
    move-result-object v4

    .line 776
    const-string v5, "uptime_ms"

    .line 777
    .line 778
    invoke-virtual {v10, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 779
    .line 780
    .line 781
    iget-object v4, v15, LU2/h;->c:LU2/l;

    .line 782
    .line 783
    iget-object v4, v4, LU2/l;->a:LR2/b;

    .line 784
    .line 785
    iget-object v4, v4, LR2/b;->a:Ljava/lang/String;

    .line 786
    .line 787
    const-string v5, "payload_encoding"

    .line 788
    .line 789
    invoke-virtual {v10, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    const-string v4, "code"

    .line 793
    .line 794
    iget-object v5, v15, LU2/h;->b:Ljava/lang/Integer;

    .line 795
    .line 796
    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 797
    .line 798
    .line 799
    const-string v4, "num_attempts"

    .line 800
    .line 801
    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 802
    .line 803
    .line 804
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 805
    .line 806
    .line 807
    move-result-object v3

    .line 808
    const-string v4, "inline"

    .line 809
    .line 810
    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 811
    .line 812
    .line 813
    if-eqz v9, :cond_15

    .line 814
    .line 815
    move-object v2, v0

    .line 816
    goto :goto_e

    .line 817
    :cond_15
    new-array v2, v2, [B

    .line 818
    .line 819
    :goto_e
    const-string v3, "payload"

    .line 820
    .line 821
    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 822
    .line 823
    .line 824
    const-string v2, "events"

    .line 825
    .line 826
    const/4 v3, 0x0

    .line 827
    invoke-virtual {v6, v2, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 828
    .line 829
    .line 830
    move-result-wide v4

    .line 831
    const-string v2, "event_id"

    .line 832
    .line 833
    if-nez v9, :cond_16

    .line 834
    .line 835
    array-length v3, v0

    .line 836
    int-to-double v9, v3

    .line 837
    int-to-double v11, v8

    .line 838
    div-double/2addr v9, v11

    .line 839
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 840
    .line 841
    .line 842
    move-result-wide v9

    .line 843
    double-to-int v3, v9

    .line 844
    const/4 v9, 0x1

    .line 845
    :goto_f
    if-gt v9, v3, :cond_16

    .line 846
    .line 847
    add-int/lit8 v10, v9, -0x1

    .line 848
    .line 849
    mul-int v10, v10, v8

    .line 850
    .line 851
    mul-int v11, v9, v8

    .line 852
    .line 853
    array-length v12, v0

    .line 854
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 855
    .line 856
    .line 857
    move-result v11

    .line 858
    invoke-static {v0, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 859
    .line 860
    .line 861
    move-result-object v10

    .line 862
    new-instance v11, Landroid/content/ContentValues;

    .line 863
    .line 864
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 865
    .line 866
    .line 867
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 868
    .line 869
    .line 870
    move-result-object v12

    .line 871
    invoke-virtual {v11, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 872
    .line 873
    .line 874
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 875
    .line 876
    .line 877
    move-result-object v12

    .line 878
    const-string v13, "sequence_num"

    .line 879
    .line 880
    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v11, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 884
    .line 885
    .line 886
    const-string v10, "event_payloads"

    .line 887
    .line 888
    const/4 v12, 0x0

    .line 889
    invoke-virtual {v6, v10, v12, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 890
    .line 891
    .line 892
    add-int/lit8 v9, v9, 0x1

    .line 893
    .line 894
    goto :goto_f

    .line 895
    :cond_16
    iget-object v0, v15, LU2/h;->f:Ljava/util/Map;

    .line 896
    .line 897
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 910
    .line 911
    .line 912
    move-result v3

    .line 913
    if-eqz v3, :cond_17

    .line 914
    .line 915
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object v3

    .line 919
    check-cast v3, Ljava/util/Map$Entry;

    .line 920
    .line 921
    new-instance v7, Landroid/content/ContentValues;

    .line 922
    .line 923
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 924
    .line 925
    .line 926
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 927
    .line 928
    .line 929
    move-result-object v8

    .line 930
    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 931
    .line 932
    .line 933
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    move-result-object v8

    .line 937
    check-cast v8, Ljava/lang/String;

    .line 938
    .line 939
    const-string v9, "name"

    .line 940
    .line 941
    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    .line 943
    .line 944
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    move-result-object v3

    .line 948
    check-cast v3, Ljava/lang/String;

    .line 949
    .line 950
    const-string v8, "value"

    .line 951
    .line 952
    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    const-string v3, "event_metadata"

    .line 956
    .line 957
    const/4 v8, 0x0

    .line 958
    invoke-virtual {v6, v3, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 959
    .line 960
    .line 961
    goto :goto_10

    .line 962
    :cond_17
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    :goto_11
    return-object v0

    .line 967
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(ILm0/g0;[I)Lz4/d0;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LO0/A;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, LR0/k;

    .line 6
    .line 7
    iget-object v2, v0, LO0/A;->I:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v10, v2

    .line 10
    check-cast v10, Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, v0, LO0/A;->J:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v11, v2

    .line 15
    check-cast v11, Ljava/lang/String;

    .line 16
    .line 17
    sget-object v2, LR0/q;->k:Lz4/c0;

    .line 18
    .line 19
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 20
    .line 21
    .line 22
    move-result-object v12

    .line 23
    const/4 v2, 0x0

    .line 24
    move-object/from16 v14, p2

    .line 25
    .line 26
    const/4 v13, 0x0

    .line 27
    :goto_0
    iget v2, v14, Lm0/g0;->a:I

    .line 28
    .line 29
    if-ge v13, v2, :cond_0

    .line 30
    .line 31
    new-instance v15, LR0/m;

    .line 32
    .line 33
    aget v7, p3, v13

    .line 34
    .line 35
    move-object v2, v15

    .line 36
    move/from16 v3, p1

    .line 37
    .line 38
    move-object/from16 v4, p2

    .line 39
    .line 40
    move v5, v13

    .line 41
    move-object v6, v1

    .line 42
    move-object v8, v10

    .line 43
    move-object v9, v11

    .line 44
    invoke-direct/range {v2 .. v9}, LR0/m;-><init>(ILm0/g0;ILR0/k;ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v12, v15}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v13, v13, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v12}, Lz4/E;->m0()Lz4/d0;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    return-object v1
.end method

.method public final execute()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, LO0/A;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LZ2/a;

    .line 4
    .line 5
    iget-object v1, p0, LO0/A;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LU2/i;

    .line 8
    .line 9
    iget-object v2, p0, LO0/A;->J:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, LU2/h;

    .line 12
    .line 13
    iget-object v3, v0, LZ2/a;->d:Lb3/d;

    .line 14
    .line 15
    check-cast v3, Lb3/j;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v4, v1, LU2/i;->c:LR2/c;

    .line 21
    .line 22
    iget-object v5, v2, LU2/h;->a:Ljava/lang/String;

    .line 23
    .line 24
    const-string v6, "SQLiteEventStore"

    .line 25
    .line 26
    invoke-static {v6}, LE3/f;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const/4 v7, 0x3

    .line 31
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    if-eqz v8, :cond_0

    .line 36
    .line 37
    new-instance v8, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v9, "Storing event with priority="

    .line 40
    .line 41
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v4, ", name="

    .line 48
    .line 49
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, " for destination "

    .line 56
    .line 57
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v4, v1, LU2/i;->a:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_0
    new-instance v4, LO0/A;

    .line 73
    .line 74
    invoke-direct {v4, v3, v2, v1, v7}, LO0/A;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v4}, Lb3/j;->N(Lb3/h;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Ljava/lang/Long;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object v0, v0, LZ2/a;->a:La3/m;

    .line 87
    .line 88
    check-cast v0, La3/d;

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    const/4 v3, 0x1

    .line 92
    invoke-virtual {v0, v1, v3, v2}, La3/d;->a(LU2/i;IZ)V

    .line 93
    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    return-object v0
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, LO0/A;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc5/b;

    .line 4
    .line 5
    iget-object v1, p0, LO0/A;->J:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LV4/B;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    sget-object p1, Lc5/b;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object p1, Lc5/b;->a:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, LV4/r;

    .line 23
    .line 24
    invoke-static {}, Lc5/b;->a()V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    throw p1
.end method
