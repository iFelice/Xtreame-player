.class public final Lb7/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:Z

.field public final synthetic H:Ljava/lang/String;

.field public final synthetic I:Z

.field public final synthetic J:Z

.field public final synthetic K:Lb7/A1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb7/A1;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lb7/t1;->K:Lb7/A1;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lb7/t1;->G:Z

    .line 8
    .line 9
    iput-object p1, p0, Lb7/t1;->H:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean p3, p0, Lb7/t1;->I:Z

    .line 12
    .line 13
    iput-boolean p4, p0, Lb7/t1;->J:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lb7/t1;->K:Lb7/A1;

    .line 9
    .line 10
    iput-object v1, v2, Lb7/A1;->L0:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v3, "TV"

    .line 20
    .line 21
    const-string v4, "ORT_WHICH_CAT"

    .line 22
    .line 23
    invoke-virtual {v1, v4, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    iget-boolean v4, v0, Lb7/t1;->G:Z

    .line 29
    .line 30
    const-string v5, "ASC"

    .line 31
    .line 32
    iget-object v6, v0, Lb7/t1;->H:Ljava/lang/String;

    .line 33
    .line 34
    const-string v7, "parent_id"

    .line 35
    .line 36
    const-string v8, "category_id"

    .line 37
    .line 38
    const-string v9, "category_name"

    .line 39
    .line 40
    const-string v10, "0"

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    iget-object v4, v2, Lb7/A1;->M0:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v4, v3, v6, v5, v10}, Lz4/q0;->u(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iput-object v4, v2, Lb7/A1;->M0:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-lez v4, :cond_0

    .line 64
    .line 65
    const-string v4, "LIVE TV"

    .line 66
    .line 67
    const-string v11, "0000001"

    .line 68
    .line 69
    invoke-static {v9, v4, v8, v11}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    iget-object v11, v2, Lb7/A1;->L0:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    iget-object v4, v2, Lb7/A1;->M0:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    sget-object v12, Lpe/hf/black20/util/Methods;->a:Landroid/content/SharedPreferences;

    .line 88
    .line 89
    const-string v12, "pe.hf.black20"

    .line 90
    .line 91
    invoke-virtual {v11, v12, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    new-instance v12, Lcom/google/gson/Gson;

    .line 100
    .line 101
    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v12, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const-string v12, "tv_arraylist_search"

    .line 109
    .line 110
    invoke-interface {v11, v12, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    .line 112
    .line 113
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    .line 115
    .line 116
    :cond_0
    iget-boolean v4, v0, Lb7/t1;->I:Z

    .line 117
    .line 118
    if-eqz v4, :cond_2

    .line 119
    .line 120
    iget-object v4, v2, Lb7/A1;->N0:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    iget-object v13, v0, Lb7/t1;->H:Ljava/lang/String;

    .line 130
    .line 131
    const-string v14, "ASC"

    .line 132
    .line 133
    const/4 v12, 0x1

    .line 134
    const-string v15, "00000"

    .line 135
    .line 136
    const-string v16, ""

    .line 137
    .line 138
    invoke-static/range {v11 .. v16}, Ly4/k;->M(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    iput-object v4, v2, Lb7/A1;->N0:Ljava/util/ArrayList;

    .line 143
    .line 144
    iget-object v4, v2, Lb7/A1;->O0:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    iget-object v13, v0, Lb7/t1;->H:Ljava/lang/String;

    .line 154
    .line 155
    const-string v14, "ASC"

    .line 156
    .line 157
    const/4 v12, 0x1

    .line 158
    const-string v15, "0000"

    .line 159
    .line 160
    const-string v16, "0"

    .line 161
    .line 162
    invoke-static/range {v11 .. v16}, La7/b;->e(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    iput-object v4, v2, Lb7/A1;->O0:Ljava/util/ArrayList;

    .line 167
    .line 168
    iget-object v4, v2, Lb7/A1;->N0:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-lez v4, :cond_1

    .line 175
    .line 176
    const-string v4, "MOVIES"

    .line 177
    .line 178
    const-string v11, "0000004"

    .line 179
    .line 180
    invoke-static {v9, v4, v8, v11}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v4, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    iget-object v11, v2, Lb7/A1;->L0:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    :cond_1
    iget-object v4, v2, Lb7/A1;->O0:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-lez v4, :cond_2

    .line 199
    .line 200
    const-string v4, "TV SHOWS"

    .line 201
    .line 202
    const-string v11, "0000005"

    .line 203
    .line 204
    invoke-static {v9, v4, v8, v11}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v4, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    iget-object v11, v2, Lb7/A1;->L0:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    :cond_2
    invoke-virtual {v2}, LY/s;->j()LY/v;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    new-instance v11, Lb7/s1;

    .line 221
    .line 222
    invoke-direct {v11, v0, v1}, Lb7/s1;-><init>(Lb7/t1;I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v4, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    .line 227
    .line 228
    iget-boolean v4, v0, Lb7/t1;->J:Z

    .line 229
    .line 230
    const/4 v11, 0x3

    .line 231
    if-eqz v4, :cond_8

    .line 232
    .line 233
    const-string v4, "TV GUIDE RESULT"

    .line 234
    .line 235
    const-string v12, "0000006"

    .line 236
    .line 237
    invoke-static {v9, v4, v8, v12}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-virtual {v4, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    iget-object v7, v2, Lb7/A1;->L0:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, LY/s;->j()LY/v;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    new-instance v7, Lb7/s1;

    .line 254
    .line 255
    invoke-direct {v7, v0, v3}, Lb7/s1;-><init>(Lb7/t1;I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 259
    .line 260
    .line 261
    new-instance v4, Lr0/b;

    .line 262
    .line 263
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    invoke-direct {v4, v7, v3}, Lr0/b;-><init>(Landroid/content/Context;I)V

    .line 268
    .line 269
    .line 270
    new-instance v7, Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 276
    .line 277
    .line 278
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 279
    .line 280
    const-string v8, "yyyyMMddHHmmss Z"

    .line 281
    .line 282
    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    new-instance v8, Ljava/util/Date;

    .line 286
    .line 287
    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    const-string v8, "%"

    .line 295
    .line 296
    invoke-static {v8, v6, v8}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    new-instance v7, Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    const/4 v8, 0x2

    .line 317
    const/4 v9, 0x0

    .line 318
    :try_start_0
    const-string v12, "SELECT * FROM epgdb WHERE title LIKE ? AND stop >? GROUP BY title"

    .line 319
    .line 320
    invoke-virtual {v4, v12, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 321
    .line 322
    .line 323
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 324
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    if-eqz v6, :cond_4

    .line 329
    .line 330
    :cond_3
    new-instance v6, Ld7/g;

    .line 331
    .line 332
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v12

    .line 339
    iput-object v12, v6, Ld7/g;->a:Ljava/lang/String;

    .line 340
    .line 341
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v12

    .line 345
    iput-object v12, v6, Ld7/g;->b:Ljava/lang/String;

    .line 346
    .line 347
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v12

    .line 351
    iput-object v12, v6, Ld7/g;->c:Ljava/lang/String;

    .line 352
    .line 353
    const/4 v12, 0x4

    .line 354
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v12

    .line 358
    iput-object v12, v6, Ld7/g;->d:Ljava/lang/String;

    .line 359
    .line 360
    const/4 v12, 0x5

    .line 361
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v12

    .line 365
    iput-object v12, v6, Ld7/g;->e:Ljava/lang/String;

    .line 366
    .line 367
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 371
    .line 372
    .line 373
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    if-nez v6, :cond_3

    .line 375
    .line 376
    goto :goto_0

    .line 377
    :catchall_0
    nop

    .line 378
    goto :goto_2

    .line 379
    :cond_4
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    if-nez v3, :cond_5

    .line 384
    .line 385
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 386
    .line 387
    .line 388
    goto :goto_3

    .line 389
    :catchall_1
    nop

    .line 390
    move-object v4, v9

    .line 391
    :goto_2
    if-eqz v4, :cond_5

    .line 392
    .line 393
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    if-nez v3, :cond_5

    .line 398
    .line 399
    goto :goto_1

    .line 400
    :cond_5
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    if-lez v3, :cond_7

    .line 405
    .line 406
    iput-object v9, v2, Lb7/A1;->P0:Ljava/util/ArrayList;

    .line 407
    .line 408
    new-instance v3, Ljava/util/ArrayList;

    .line 409
    .line 410
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .line 412
    .line 413
    iput-object v3, v2, Lb7/A1;->P0:Ljava/util/ArrayList;

    .line 414
    .line 415
    invoke-static {}, Lpe/hf/black20/util/Methods;->F()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    const-string v4, "all"

    .line 423
    .line 424
    invoke-static {v3, v1, v4, v5, v10}, Lz4/q0;->u(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    iput-object v3, v2, Lb7/A1;->Q0:Ljava/util/ArrayList;

    .line 429
    .line 430
    const/4 v3, 0x0

    .line 431
    :goto_4
    iget-object v4, v2, Lb7/A1;->Q0:Ljava/util/ArrayList;

    .line 432
    .line 433
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    if-ge v3, v4, :cond_7

    .line 438
    .line 439
    const/4 v4, 0x0

    .line 440
    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 441
    .line 442
    .line 443
    move-result v5

    .line 444
    if-ge v4, v5, :cond_6

    .line 445
    .line 446
    new-instance v5, Ljava/util/HashMap;

    .line 447
    .line 448
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    check-cast v6, Ld7/g;

    .line 456
    .line 457
    iget-object v6, v6, Ld7/g;->d:Ljava/lang/String;

    .line 458
    .line 459
    const-string v9, "title"

    .line 460
    .line 461
    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v6

    .line 468
    check-cast v6, Ld7/g;

    .line 469
    .line 470
    iget-object v6, v6, Ld7/g;->e:Ljava/lang/String;

    .line 471
    .line 472
    const-string v9, "description"

    .line 473
    .line 474
    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    const-string v9, "Start: "

    .line 480
    .line 481
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v9

    .line 488
    check-cast v9, Ld7/g;

    .line 489
    .line 490
    iget-object v9, v9, Ld7/g;->a:Ljava/lang/String;

    .line 491
    .line 492
    invoke-static {v9}, Lpe/hf/black20/util/Methods;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v9

    .line 496
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v6

    .line 503
    const-string v9, "pr_time"

    .line 504
    .line 505
    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v6

    .line 512
    check-cast v6, Ld7/g;

    .line 513
    .line 514
    iget-object v6, v6, Ld7/g;->c:Ljava/lang/String;

    .line 515
    .line 516
    const-string v9, "channel"

    .line 517
    .line 518
    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    iget-object v6, v2, Lb7/A1;->Q0:Ljava/util/ArrayList;

    .line 522
    .line 523
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v6

    .line 527
    check-cast v6, Ljava/util/HashMap;

    .line 528
    .line 529
    const-string v9, "name"

    .line 530
    .line 531
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v6

    .line 535
    check-cast v6, Ljava/lang/String;

    .line 536
    .line 537
    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    iget-object v6, v2, Lb7/A1;->Q0:Ljava/util/ArrayList;

    .line 541
    .line 542
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v6

    .line 546
    check-cast v6, Ljava/util/HashMap;

    .line 547
    .line 548
    const-string v9, "stream_icon"

    .line 549
    .line 550
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v6

    .line 554
    check-cast v6, Ljava/lang/String;

    .line 555
    .line 556
    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    iget-object v6, v2, Lb7/A1;->P0:Ljava/util/ArrayList;

    .line 560
    .line 561
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    add-int/lit8 v4, v4, 0x1

    .line 565
    .line 566
    goto :goto_5

    .line 567
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 568
    .line 569
    goto/16 :goto_4

    .line 570
    .line 571
    :cond_7
    invoke-virtual {v2}, LY/s;->j()LY/v;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    new-instance v2, Lb7/s1;

    .line 576
    .line 577
    invoke-direct {v2, v0, v8}, Lb7/s1;-><init>(Lb7/t1;I)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 581
    .line 582
    .line 583
    goto :goto_6

    .line 584
    :cond_8
    invoke-virtual {v2}, LY/s;->j()LY/v;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    new-instance v2, Lb7/s1;

    .line 589
    .line 590
    invoke-direct {v2, v0, v11}, Lb7/s1;-><init>(Lb7/t1;I)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 594
    .line 595
    .line 596
    :goto_6
    return-void
.end method
