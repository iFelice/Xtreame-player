.class public final La3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LV2/f;

.field public final c:Lb3/d;

.field public final d:La3/m;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lc3/c;

.field public final g:Ld3/a;

.field public final h:Ld3/a;

.field public final i:Lb3/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;LV2/f;Lb3/d;La3/m;Ljava/util/concurrent/Executor;Lc3/c;Ld3/a;Ld3/a;Lb3/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La3/j;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, La3/j;->b:LV2/f;

    .line 7
    .line 8
    iput-object p3, p0, La3/j;->c:Lb3/d;

    .line 9
    .line 10
    iput-object p4, p0, La3/j;->d:La3/m;

    .line 11
    .line 12
    iput-object p5, p0, La3/j;->e:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iput-object p6, p0, La3/j;->f:Lc3/c;

    .line 15
    .line 16
    iput-object p7, p0, La3/j;->g:Ld3/a;

    .line 17
    .line 18
    iput-object p8, p0, La3/j;->h:Ld3/a;

    .line 19
    .line 20
    iput-object p9, p0, La3/j;->i:Lb3/c;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(LU2/i;I)V
    .locals 46

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const/4 v9, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    iget-object v0, v8, LU2/i;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, v7, La3/j;->b:LV2/f;

    .line 10
    .line 11
    invoke-virtual {v2, v0}, LV2/f;->a(Ljava/lang/String;)LV2/h;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    :goto_0
    new-instance v0, La3/g;

    .line 18
    .line 19
    invoke-direct {v0, v7, v8, v1}, La3/g;-><init>(La3/j;LU2/i;I)V

    .line 20
    .line 21
    .line 22
    iget-object v10, v7, La3/j;->f:Lc3/c;

    .line 23
    .line 24
    check-cast v10, Lb3/j;

    .line 25
    .line 26
    invoke-virtual {v10, v0}, Lb3/j;->a0(Lc3/b;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v12, v7, La3/j;->g:Ld3/a;

    .line 37
    .line 38
    if-eqz v0, :cond_2e

    .line 39
    .line 40
    new-instance v0, La3/g;

    .line 41
    .line 42
    invoke-direct {v0, v7, v8, v9}, La3/g;-><init>(La3/j;LU2/i;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v10, v0}, Lb3/j;->a0(Lc3/b;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    move-object v13, v0

    .line 50
    check-cast v13, Ljava/lang/Iterable;

    .line 51
    .line 52
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    const/4 v15, 0x3

    .line 64
    const-wide/16 v3, -0x1

    .line 65
    .line 66
    iget-object v9, v8, LU2/i;->b:[B

    .line 67
    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    const-string v0, "Uploader"

    .line 71
    .line 72
    const-string v11, "Unknown backend for %s, deleting event batch for it..."

    .line 73
    .line 74
    invoke-static {v8, v0, v11}, LE3/f;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, LV2/a;

    .line 78
    .line 79
    invoke-direct {v0, v15, v3, v4}, LV2/a;-><init>(IJ)V

    .line 80
    .line 81
    .line 82
    move-object/from16 v32, v2

    .line 83
    .line 84
    :goto_1
    move-object/from16 v23, v9

    .line 85
    .line 86
    move-object/from16 v25, v10

    .line 87
    .line 88
    const-wide/16 v1, 0x0

    .line 89
    .line 90
    const/4 v3, 0x2

    .line 91
    const/4 v10, 0x0

    .line 92
    goto/16 :goto_2d

    .line 93
    .line 94
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v16

    .line 103
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v17

    .line 107
    if-eqz v17, :cond_2

    .line 108
    .line 109
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v17

    .line 113
    move-object/from16 v14, v17

    .line 114
    .line 115
    check-cast v14, Lb3/b;

    .line 116
    .line 117
    iget-object v14, v14, Lb3/b;->c:LU2/h;

    .line 118
    .line 119
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    if-eqz v9, :cond_3

    .line 124
    .line 125
    const/4 v14, 0x1

    .line 126
    goto :goto_3

    .line 127
    :cond_3
    const/4 v14, 0x0

    .line 128
    :goto_3
    const-string v3, "proto"

    .line 129
    .line 130
    if-eqz v14, :cond_4

    .line 131
    .line 132
    iget-object v4, v7, La3/j;->i:Lb3/c;

    .line 133
    .line 134
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    new-instance v14, La3/i;

    .line 138
    .line 139
    invoke-direct {v14, v4, v1}, La3/i;-><init>(Ljava/lang/Object;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v10, v14}, Lb3/j;->a0(Lc3/b;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, LX2/a;

    .line 147
    .line 148
    new-instance v14, Ll/x;

    .line 149
    .line 150
    invoke-direct {v14, v15}, Ll/x;-><init>(I)V

    .line 151
    .line 152
    .line 153
    new-instance v15, Ljava/util/HashMap;

    .line 154
    .line 155
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 156
    .line 157
    .line 158
    iput-object v15, v14, Ll/x;->L:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v12, Ld3/c;

    .line 161
    .line 162
    invoke-virtual {v12}, Ld3/c;->a()J

    .line 163
    .line 164
    .line 165
    move-result-wide v18

    .line 166
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    iput-object v12, v14, Ll/x;->J:Ljava/lang/Object;

    .line 171
    .line 172
    iget-object v12, v7, La3/j;->h:Ld3/a;

    .line 173
    .line 174
    check-cast v12, Ld3/c;

    .line 175
    .line 176
    invoke-virtual {v12}, Ld3/c;->a()J

    .line 177
    .line 178
    .line 179
    move-result-wide v18

    .line 180
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    iput-object v12, v14, Ll/x;->K:Ljava/lang/Object;

    .line 185
    .line 186
    const-string v12, "GDT_CLIENT_METRICS"

    .line 187
    .line 188
    iput-object v12, v14, Ll/x;->G:Ljava/lang/Object;

    .line 189
    .line 190
    new-instance v12, LU2/l;

    .line 191
    .line 192
    new-instance v15, LR2/b;

    .line 193
    .line 194
    invoke-direct {v15, v3}, LR2/b;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    sget-object v11, LU2/n;->a:Lcom/google/android/gms/internal/ads/bD;

    .line 201
    .line 202
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 206
    .line 207
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 208
    .line 209
    .line 210
    :try_start_0
    invoke-virtual {v11, v4, v1}, Lcom/google/android/gms/internal/ads/bD;->e(LX2/a;Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .line 212
    .line 213
    :catch_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-direct {v12, v15, v1}, LU2/l;-><init>(LR2/b;[B)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v14, v12}, Ll/x;->m(LU2/l;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v14}, Ll/x;->e()LU2/h;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    move-object v4, v2

    .line 228
    check-cast v4, LS2/d;

    .line 229
    .line 230
    invoke-virtual {v4, v1}, LS2/d;->a(LU2/h;)LU2/h;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 238
    .line 239
    const/16 v4, 0xb

    .line 240
    .line 241
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/atv_ads_framework/x0;-><init>(I)V

    .line 242
    .line 243
    .line 244
    iput-object v0, v1, Lcom/google/android/gms/internal/atv_ads_framework/x0;->H:Ljava/lang/Object;

    .line 245
    .line 246
    iput-object v9, v1, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 247
    .line 248
    move-object v1, v2

    .line 249
    check-cast v1, LS2/d;

    .line 250
    .line 251
    new-instance v4, Ljava/util/HashMap;

    .line 252
    .line 253
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v11

    .line 264
    if-eqz v11, :cond_6

    .line 265
    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    check-cast v11, LU2/h;

    .line 271
    .line 272
    iget-object v12, v11, LU2/h;->a:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v4, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v14

    .line 278
    if-nez v14, :cond_5

    .line 279
    .line 280
    new-instance v14, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_5
    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v12

    .line 296
    check-cast v12, Ljava/util/List;

    .line 297
    .line 298
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 316
    .line 317
    .line 318
    move-result v11

    .line 319
    const-string v12, "CctTransportBackend"

    .line 320
    .line 321
    if-eqz v11, :cond_11

    .line 322
    .line 323
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v11

    .line 327
    check-cast v11, Ljava/util/Map$Entry;

    .line 328
    .line 329
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v20

    .line 333
    move-object/from16 v14, v20

    .line 334
    .line 335
    check-cast v14, Ljava/util/List;

    .line 336
    .line 337
    const/4 v15, 0x0

    .line 338
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v14

    .line 342
    check-cast v14, LU2/h;

    .line 343
    .line 344
    sget-object v31, LT2/w;->G:LT2/w;

    .line 345
    .line 346
    iget-object v15, v1, LS2/d;->f:Ld3/a;

    .line 347
    .line 348
    check-cast v15, Ld3/c;

    .line 349
    .line 350
    invoke-virtual {v15}, Ld3/c;->a()J

    .line 351
    .line 352
    .line 353
    move-result-wide v23

    .line 354
    iget-object v15, v1, LS2/d;->e:Ld3/a;

    .line 355
    .line 356
    check-cast v15, Ld3/c;

    .line 357
    .line 358
    invoke-virtual {v15}, Ld3/c;->a()J

    .line 359
    .line 360
    .line 361
    move-result-wide v25

    .line 362
    sget-object v15, LT2/p;->G:LT2/p;

    .line 363
    .line 364
    move-object/from16 v32, v2

    .line 365
    .line 366
    const-string v2, "sdk-version"

    .line 367
    .line 368
    invoke-virtual {v14, v2}, LU2/h;->b(Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 373
    .line 374
    .line 375
    move-result-object v34

    .line 376
    const-string v2, "model"

    .line 377
    .line 378
    invoke-virtual {v14, v2}, LU2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v35

    .line 382
    const-string v2, "hardware"

    .line 383
    .line 384
    invoke-virtual {v14, v2}, LU2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v36

    .line 388
    const-string v2, "device"

    .line 389
    .line 390
    invoke-virtual {v14, v2}, LU2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v37

    .line 394
    const-string v2, "product"

    .line 395
    .line 396
    invoke-virtual {v14, v2}, LU2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v38

    .line 400
    const-string v2, "os-uild"

    .line 401
    .line 402
    invoke-virtual {v14, v2}, LU2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v39

    .line 406
    const-string v2, "manufacturer"

    .line 407
    .line 408
    invoke-virtual {v14, v2}, LU2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v40

    .line 412
    const-string v2, "fingerprint"

    .line 413
    .line 414
    invoke-virtual {v14, v2}, LU2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v41

    .line 418
    const-string v2, "country"

    .line 419
    .line 420
    invoke-virtual {v14, v2}, LU2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v43

    .line 424
    const-string v2, "locale"

    .line 425
    .line 426
    invoke-virtual {v14, v2}, LU2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v42

    .line 430
    const-string v2, "mcc_mnc"

    .line 431
    .line 432
    invoke-virtual {v14, v2}, LU2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v44

    .line 436
    const-string v2, "application_build"

    .line 437
    .line 438
    invoke-virtual {v14, v2}, LU2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v45

    .line 442
    new-instance v2, LT2/h;

    .line 443
    .line 444
    move-object/from16 v33, v2

    .line 445
    .line 446
    invoke-direct/range {v33 .. v45}, LT2/h;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    new-instance v14, LT2/j;

    .line 450
    .line 451
    invoke-direct {v14, v15, v2}, LT2/j;-><init>(LT2/p;LT2/a;)V

    .line 452
    .line 453
    .line 454
    :try_start_1
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    check-cast v2, Ljava/lang/String;

    .line 459
    .line 460
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 465
    .line 466
    .line 467
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 468
    move-object/from16 v28, v2

    .line 469
    .line 470
    const/16 v29, 0x0

    .line 471
    .line 472
    goto :goto_6

    .line 473
    :catch_1
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    check-cast v2, Ljava/lang/String;

    .line 478
    .line 479
    move-object/from16 v29, v2

    .line 480
    .line 481
    const/16 v28, 0x0

    .line 482
    .line 483
    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    .line 484
    .line 485
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .line 487
    .line 488
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v11

    .line 492
    check-cast v11, Ljava/util/List;

    .line 493
    .line 494
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 495
    .line 496
    .line 497
    move-result-object v11

    .line 498
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 499
    .line 500
    .line 501
    move-result v15

    .line 502
    if-eqz v15, :cond_10

    .line 503
    .line 504
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v15

    .line 508
    check-cast v15, LU2/h;

    .line 509
    .line 510
    move-object/from16 v33, v4

    .line 511
    .line 512
    iget-object v4, v15, LU2/h;->c:LU2/l;

    .line 513
    .line 514
    move-object/from16 v21, v11

    .line 515
    .line 516
    iget-object v11, v4, LU2/l;->a:LR2/b;

    .line 517
    .line 518
    new-instance v8, LR2/b;

    .line 519
    .line 520
    invoke-direct {v8, v3}, LR2/b;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v11, v8}, LR2/b;->equals(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v8

    .line 527
    iget-object v4, v4, LU2/l;->b:[B

    .line 528
    .line 529
    if-eqz v8, :cond_7

    .line 530
    .line 531
    new-instance v8, Ll/s1;

    .line 532
    .line 533
    const/4 v11, 0x2

    .line 534
    invoke-direct {v8, v11}, Ll/s1;-><init>(I)V

    .line 535
    .line 536
    .line 537
    iput-object v4, v8, Ll/s1;->d:Ljava/lang/Object;

    .line 538
    .line 539
    move-object/from16 v34, v3

    .line 540
    .line 541
    goto :goto_8

    .line 542
    :cond_7
    new-instance v8, LR2/b;

    .line 543
    .line 544
    move-object/from16 v34, v3

    .line 545
    .line 546
    const-string v3, "json"

    .line 547
    .line 548
    invoke-direct {v8, v3}, LR2/b;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v11, v8}, LR2/b;->equals(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v3

    .line 555
    if-eqz v3, :cond_f

    .line 556
    .line 557
    new-instance v3, Ljava/lang/String;

    .line 558
    .line 559
    const-string v8, "UTF-8"

    .line 560
    .line 561
    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 562
    .line 563
    .line 564
    move-result-object v8

    .line 565
    invoke-direct {v3, v4, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 566
    .line 567
    .line 568
    new-instance v8, Ll/s1;

    .line 569
    .line 570
    const/4 v4, 0x2

    .line 571
    invoke-direct {v8, v4}, Ll/s1;-><init>(I)V

    .line 572
    .line 573
    .line 574
    iput-object v3, v8, Ll/s1;->e:Ljava/lang/Object;

    .line 575
    .line 576
    :goto_8
    iget-wide v3, v15, LU2/h;->d:J

    .line 577
    .line 578
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    iput-object v3, v8, Ll/s1;->a:Ljava/lang/Object;

    .line 583
    .line 584
    iget-wide v3, v15, LU2/h;->e:J

    .line 585
    .line 586
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    iput-object v3, v8, Ll/s1;->c:Ljava/lang/Object;

    .line 591
    .line 592
    iget-object v3, v15, LU2/h;->f:Ljava/util/Map;

    .line 593
    .line 594
    const-string v4, "tz-offset"

    .line 595
    .line 596
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    check-cast v3, Ljava/lang/String;

    .line 601
    .line 602
    if-nez v3, :cond_8

    .line 603
    .line 604
    const-wide/16 v3, 0x0

    .line 605
    .line 606
    goto :goto_9

    .line 607
    :cond_8
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 608
    .line 609
    .line 610
    move-result-object v3

    .line 611
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 612
    .line 613
    .line 614
    move-result-wide v3

    .line 615
    :goto_9
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    iput-object v3, v8, Ll/s1;->f:Ljava/lang/Object;

    .line 620
    .line 621
    new-instance v3, Lm2/l;

    .line 622
    .line 623
    const/16 v4, 0xc

    .line 624
    .line 625
    invoke-direct {v3, v4}, Lm2/l;-><init>(I)V

    .line 626
    .line 627
    .line 628
    const-string v4, "net-type"

    .line 629
    .line 630
    invoke-virtual {v15, v4}, LU2/h;->b(Ljava/lang/String;)I

    .line 631
    .line 632
    .line 633
    move-result v4

    .line 634
    sget-object v11, LT2/u;->G:Landroid/util/SparseArray;

    .line 635
    .line 636
    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v4

    .line 640
    check-cast v4, LT2/u;

    .line 641
    .line 642
    iput-object v4, v3, Lm2/l;->H:Ljava/lang/Object;

    .line 643
    .line 644
    const-string v4, "mobile-subtype"

    .line 645
    .line 646
    invoke-virtual {v15, v4}, LU2/h;->b(Ljava/lang/String;)I

    .line 647
    .line 648
    .line 649
    move-result v4

    .line 650
    sget-object v11, LT2/t;->G:Landroid/util/SparseArray;

    .line 651
    .line 652
    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    check-cast v4, LT2/t;

    .line 657
    .line 658
    iput-object v4, v3, Lm2/l;->I:Ljava/lang/Object;

    .line 659
    .line 660
    new-instance v11, LT2/n;

    .line 661
    .line 662
    iget-object v3, v3, Lm2/l;->H:Ljava/lang/Object;

    .line 663
    .line 664
    check-cast v3, LT2/u;

    .line 665
    .line 666
    invoke-direct {v11, v3, v4}, LT2/n;-><init>(LT2/u;LT2/t;)V

    .line 667
    .line 668
    .line 669
    iput-object v11, v8, Ll/s1;->g:Ljava/lang/Object;

    .line 670
    .line 671
    iget-object v3, v15, LU2/h;->b:Ljava/lang/Integer;

    .line 672
    .line 673
    if-eqz v3, :cond_9

    .line 674
    .line 675
    iput-object v3, v8, Ll/s1;->b:Ljava/lang/Object;

    .line 676
    .line 677
    :cond_9
    iget-object v3, v8, Ll/s1;->a:Ljava/lang/Object;

    .line 678
    .line 679
    check-cast v3, Ljava/lang/Long;

    .line 680
    .line 681
    if-nez v3, :cond_a

    .line 682
    .line 683
    const-string v3, " eventTimeMs"

    .line 684
    .line 685
    goto :goto_a

    .line 686
    :cond_a
    const-string v3, ""

    .line 687
    .line 688
    :goto_a
    iget-object v4, v8, Ll/s1;->c:Ljava/lang/Object;

    .line 689
    .line 690
    check-cast v4, Ljava/lang/Long;

    .line 691
    .line 692
    if-nez v4, :cond_b

    .line 693
    .line 694
    const-string v4, " eventUptimeMs"

    .line 695
    .line 696
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v3

    .line 700
    :cond_b
    iget-object v4, v8, Ll/s1;->f:Ljava/lang/Object;

    .line 701
    .line 702
    check-cast v4, Ljava/lang/Long;

    .line 703
    .line 704
    if-nez v4, :cond_c

    .line 705
    .line 706
    const-string v4, " timezoneOffsetSeconds"

    .line 707
    .line 708
    invoke-static {v3, v4}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 713
    .line 714
    .line 715
    move-result v4

    .line 716
    if-eqz v4, :cond_e

    .line 717
    .line 718
    new-instance v3, LT2/k;

    .line 719
    .line 720
    iget-object v4, v8, Ll/s1;->a:Ljava/lang/Object;

    .line 721
    .line 722
    check-cast v4, Ljava/lang/Long;

    .line 723
    .line 724
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 725
    .line 726
    .line 727
    move-result-wide v36

    .line 728
    iget-object v4, v8, Ll/s1;->b:Ljava/lang/Object;

    .line 729
    .line 730
    move-object/from16 v38, v4

    .line 731
    .line 732
    check-cast v38, Ljava/lang/Integer;

    .line 733
    .line 734
    iget-object v4, v8, Ll/s1;->c:Ljava/lang/Object;

    .line 735
    .line 736
    check-cast v4, Ljava/lang/Long;

    .line 737
    .line 738
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 739
    .line 740
    .line 741
    move-result-wide v39

    .line 742
    iget-object v4, v8, Ll/s1;->d:Ljava/lang/Object;

    .line 743
    .line 744
    move-object/from16 v41, v4

    .line 745
    .line 746
    check-cast v41, [B

    .line 747
    .line 748
    iget-object v4, v8, Ll/s1;->e:Ljava/lang/Object;

    .line 749
    .line 750
    move-object/from16 v42, v4

    .line 751
    .line 752
    check-cast v42, Ljava/lang/String;

    .line 753
    .line 754
    iget-object v4, v8, Ll/s1;->f:Ljava/lang/Object;

    .line 755
    .line 756
    check-cast v4, Ljava/lang/Long;

    .line 757
    .line 758
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 759
    .line 760
    .line 761
    move-result-wide v43

    .line 762
    iget-object v4, v8, Ll/s1;->g:Ljava/lang/Object;

    .line 763
    .line 764
    move-object/from16 v45, v4

    .line 765
    .line 766
    check-cast v45, LT2/v;

    .line 767
    .line 768
    move-object/from16 v35, v3

    .line 769
    .line 770
    invoke-direct/range {v35 .. v45}, LT2/k;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLT2/v;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    :cond_d
    :goto_b
    move-object/from16 v8, p1

    .line 777
    .line 778
    move-object/from16 v11, v21

    .line 779
    .line 780
    move-object/from16 v4, v33

    .line 781
    .line 782
    move-object/from16 v3, v34

    .line 783
    .line 784
    goto/16 :goto_7

    .line 785
    .line 786
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 787
    .line 788
    const-string v1, "Missing required properties:"

    .line 789
    .line 790
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    throw v0

    .line 798
    :cond_f
    invoke-static {v12}, LE3/f;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v3

    .line 802
    const/4 v4, 0x5

    .line 803
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 804
    .line 805
    .line 806
    move-result v8

    .line 807
    if-eqz v8, :cond_d

    .line 808
    .line 809
    new-instance v8, Ljava/lang/StringBuilder;

    .line 810
    .line 811
    const-string v15, "Received event of unsupported encoding "

    .line 812
    .line 813
    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    const-string v11, ". Skipping..."

    .line 820
    .line 821
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v8

    .line 828
    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    .line 830
    .line 831
    goto :goto_b

    .line 832
    :cond_10
    move-object/from16 v34, v3

    .line 833
    .line 834
    move-object/from16 v33, v4

    .line 835
    .line 836
    new-instance v3, LT2/l;

    .line 837
    .line 838
    move-object/from16 v22, v3

    .line 839
    .line 840
    move-object/from16 v27, v14

    .line 841
    .line 842
    move-object/from16 v30, v2

    .line 843
    .line 844
    invoke-direct/range {v22 .. v31}, LT2/l;-><init>(JJLT2/q;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;LT2/w;)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    .line 849
    .line 850
    move-object/from16 v8, p1

    .line 851
    .line 852
    move-object/from16 v2, v32

    .line 853
    .line 854
    move-object/from16 v4, v33

    .line 855
    .line 856
    move-object/from16 v3, v34

    .line 857
    .line 858
    goto/16 :goto_5

    .line 859
    .line 860
    :cond_11
    move-object/from16 v32, v2

    .line 861
    .line 862
    const/4 v4, 0x5

    .line 863
    new-instance v2, LT2/i;

    .line 864
    .line 865
    invoke-direct {v2, v0}, LT2/i;-><init>(Ljava/util/ArrayList;)V

    .line 866
    .line 867
    .line 868
    iget-object v0, v1, LS2/d;->d:Ljava/net/URL;

    .line 869
    .line 870
    if-eqz v9, :cond_13

    .line 871
    .line 872
    :try_start_2
    invoke-static {v9}, LS2/a;->a([B)LS2/a;

    .line 873
    .line 874
    .line 875
    move-result-object v3

    .line 876
    iget-object v8, v3, LS2/a;->b:Ljava/lang/String;

    .line 877
    .line 878
    if-eqz v8, :cond_12

    .line 879
    .line 880
    goto :goto_c

    .line 881
    :cond_12
    const/4 v8, 0x0

    .line 882
    :goto_c
    iget-object v3, v3, LS2/a;->a:Ljava/lang/String;

    .line 883
    .line 884
    if-eqz v3, :cond_14

    .line 885
    .line 886
    invoke-static {v3}, LS2/d;->b(Ljava/lang/String;)Ljava/net/URL;

    .line 887
    .line 888
    .line 889
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 890
    goto :goto_d

    .line 891
    :catch_2
    new-instance v0, LV2/a;

    .line 892
    .line 893
    const/4 v1, 0x3

    .line 894
    const-wide/16 v2, -0x1

    .line 895
    .line 896
    invoke-direct {v0, v1, v2, v3}, LV2/a;-><init>(IJ)V

    .line 897
    .line 898
    .line 899
    goto/16 :goto_1

    .line 900
    .line 901
    :cond_13
    const/4 v8, 0x0

    .line 902
    :cond_14
    :goto_d
    :try_start_3
    new-instance v3, LS2/b;

    .line 903
    .line 904
    invoke-direct {v3, v0, v2, v8}, LS2/b;-><init>(Ljava/net/URL;LT2/o;Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    const/4 v15, 0x5

    .line 908
    :goto_e
    iget-object v0, v3, LS2/b;->a:Ljava/net/URL;

    .line 909
    .line 910
    invoke-static {v12}, LE3/f;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v2

    .line 914
    const/4 v4, 0x4

    .line 915
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 916
    .line 917
    .line 918
    move-result v8

    .line 919
    if-eqz v8, :cond_15

    .line 920
    .line 921
    new-instance v4, Ljava/lang/StringBuilder;

    .line 922
    .line 923
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 924
    .line 925
    .line 926
    const-string v8, "Making request to: "

    .line 927
    .line 928
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v0

    .line 938
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    .line 940
    .line 941
    :cond_15
    iget-object v0, v3, LS2/b;->a:Ljava/net/URL;

    .line 942
    .line 943
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 948
    .line 949
    const/16 v2, 0x7530

    .line 950
    .line 951
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 952
    .line 953
    .line 954
    iget v2, v1, LS2/d;->g:I

    .line 955
    .line 956
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 957
    .line 958
    .line 959
    const/4 v2, 0x1

    .line 960
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 961
    .line 962
    .line 963
    const/4 v2, 0x0

    .line 964
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 965
    .line 966
    .line 967
    const-string v2, "POST"

    .line 968
    .line 969
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 970
    .line 971
    .line 972
    const-string v2, "User-Agent"

    .line 973
    .line 974
    const-string v4, "datatransport/3.1.9 android/"

    .line 975
    .line 976
    invoke-virtual {v0, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    const-string v2, "Content-Encoding"

    .line 980
    .line 981
    const-string v4, "gzip"

    .line 982
    .line 983
    invoke-virtual {v0, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    const-string v8, "Content-Type"

    .line 987
    .line 988
    const-string v11, "application/json"

    .line 989
    .line 990
    invoke-virtual {v0, v8, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    .line 992
    .line 993
    const-string v11, "Accept-Encoding"

    .line 994
    .line 995
    invoke-virtual {v0, v11, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    .line 997
    .line 998
    iget-object v11, v3, LS2/b;->c:Ljava/lang/String;

    .line 999
    .line 1000
    if-eqz v11, :cond_16

    .line 1001
    .line 1002
    const-string v14, "X-Goog-Api-Key"

    .line 1003
    .line 1004
    invoke-virtual {v0, v14, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13

    .line 1005
    .line 1006
    .line 1007
    :cond_16
    :try_start_4
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v14
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_e
    .catch LP4/b; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c

    .line 1011
    :try_start_5
    new-instance v11, Ljava/util/zip/GZIPOutputStream;

    .line 1012
    .line 1013
    invoke-direct {v11, v14}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    .line 1014
    .line 1015
    .line 1016
    move-object/from16 v23, v9

    .line 1017
    .line 1018
    :try_start_6
    iget-object v9, v1, LS2/d;->a:LZ3/o;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 1019
    .line 1020
    move-object/from16 v24, v1

    .line 1021
    .line 1022
    :try_start_7
    iget-object v1, v3, LS2/b;->b:LT2/o;

    .line 1023
    .line 1024
    new-instance v7, Ljava/io/BufferedWriter;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 1025
    .line 1026
    move-object/from16 v25, v10

    .line 1027
    .line 1028
    :try_start_8
    new-instance v10, Ljava/io/OutputStreamWriter;

    .line 1029
    .line 1030
    invoke-direct {v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1031
    .line 1032
    .line 1033
    invoke-direct {v7, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 1034
    .line 1035
    .line 1036
    :try_start_9
    invoke-virtual {v9, v7, v1}, LZ3/o;->f(Ljava/io/BufferedWriter;LT2/o;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1037
    .line 1038
    .line 1039
    :try_start_a
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1040
    .line 1041
    .line 1042
    if-eqz v14, :cond_17

    .line 1043
    .line 1044
    :try_start_b
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/net/ConnectException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_5
    .catch LP4/b; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 1045
    .line 1046
    .line 1047
    goto :goto_11

    .line 1048
    :catch_3
    move-exception v0

    .line 1049
    :goto_f
    const/4 v10, 0x0

    .line 1050
    goto/16 :goto_23

    .line 1051
    .line 1052
    :catch_4
    move-exception v0

    .line 1053
    goto :goto_f

    .line 1054
    :catch_5
    move-exception v0

    .line 1055
    :goto_10
    const/4 v10, 0x0

    .line 1056
    goto/16 :goto_25

    .line 1057
    .line 1058
    :catch_6
    move-exception v0

    .line 1059
    goto :goto_10

    .line 1060
    :cond_17
    :goto_11
    :try_start_c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 1061
    .line 1062
    .line 1063
    move-result v1

    .line 1064
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v7

    .line 1068
    invoke-static {v12}, LE3/f;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v9

    .line 1072
    const/4 v10, 0x4

    .line 1073
    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1074
    .line 1075
    .line 1076
    move-result v11

    .line 1077
    if-eqz v11, :cond_18

    .line 1078
    .line 1079
    const/4 v10, 0x1

    .line 1080
    new-array v11, v10, [Ljava/lang/Object;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 1081
    .line 1082
    const/4 v10, 0x0

    .line 1083
    :try_start_d
    aput-object v7, v11, v10

    .line 1084
    .line 1085
    const-string v7, "Status Code: %d"

    .line 1086
    .line 1087
    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v7

    .line 1091
    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    .line 1093
    .line 1094
    goto :goto_12

    .line 1095
    :cond_18
    const/4 v10, 0x0

    .line 1096
    :goto_12
    const-string v7, "Content-Type: %s"

    .line 1097
    .line 1098
    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v8

    .line 1102
    invoke-static {v8, v12, v7}, LE3/f;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    const-string v7, "Content-Encoding: %s"

    .line 1106
    .line 1107
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v8

    .line 1111
    invoke-static {v8, v12, v7}, LE3/f;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    .line 1113
    .line 1114
    const/16 v7, 0x12e

    .line 1115
    .line 1116
    if-eq v1, v7, :cond_20

    .line 1117
    .line 1118
    const/16 v7, 0x12d

    .line 1119
    .line 1120
    if-eq v1, v7, :cond_20

    .line 1121
    .line 1122
    const/16 v7, 0x133

    .line 1123
    .line 1124
    if-ne v1, v7, :cond_19

    .line 1125
    .line 1126
    goto/16 :goto_19

    .line 1127
    .line 1128
    :cond_19
    const/16 v7, 0xc8

    .line 1129
    .line 1130
    if-eq v1, v7, :cond_1b

    .line 1131
    .line 1132
    new-instance v0, LS2/c;

    .line 1133
    .line 1134
    const/4 v2, 0x0

    .line 1135
    const-wide/16 v7, 0x0

    .line 1136
    .line 1137
    invoke-direct {v0, v1, v2, v7, v8}, LS2/c;-><init>(ILjava/net/URL;J)V

    .line 1138
    .line 1139
    .line 1140
    :cond_1a
    :goto_13
    const-wide/16 v1, 0x0

    .line 1141
    .line 1142
    const/4 v4, 0x0

    .line 1143
    goto/16 :goto_26

    .line 1144
    .line 1145
    :cond_1b
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v7
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_12

    .line 1149
    :try_start_e
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v0

    .line 1153
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1154
    .line 1155
    .line 1156
    move-result v0

    .line 1157
    if-eqz v0, :cond_1c

    .line 1158
    .line 1159
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 1160
    .line 1161
    invoke-direct {v0, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1162
    .line 1163
    .line 1164
    move-object v2, v0

    .line 1165
    goto :goto_14

    .line 1166
    :cond_1c
    move-object v2, v7

    .line 1167
    :goto_14
    :try_start_f
    new-instance v0, Ljava/io/BufferedReader;

    .line 1168
    .line 1169
    new-instance v4, Ljava/io/InputStreamReader;

    .line 1170
    .line 1171
    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1172
    .line 1173
    .line 1174
    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1175
    .line 1176
    .line 1177
    invoke-static {v0}, LT2/m;->a(Ljava/io/BufferedReader;)LT2/m;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v0

    .line 1181
    iget-wide v8, v0, LT2/m;->a:J

    .line 1182
    .line 1183
    new-instance v0, LS2/c;

    .line 1184
    .line 1185
    const/4 v4, 0x0

    .line 1186
    invoke-direct {v0, v1, v4, v8, v9}, LS2/c;-><init>(ILjava/net/URL;J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1187
    .line 1188
    .line 1189
    if-eqz v2, :cond_1d

    .line 1190
    .line 1191
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1192
    .line 1193
    .line 1194
    goto :goto_15

    .line 1195
    :catchall_0
    move-exception v0

    .line 1196
    move-object v1, v0

    .line 1197
    goto :goto_17

    .line 1198
    :cond_1d
    :goto_15
    if-eqz v7, :cond_1a

    .line 1199
    .line 1200
    :try_start_11
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_12

    .line 1201
    .line 1202
    .line 1203
    goto :goto_13

    .line 1204
    :catchall_1
    move-exception v0

    .line 1205
    move-object v1, v0

    .line 1206
    if-eqz v2, :cond_1e

    .line 1207
    .line 1208
    :try_start_12
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1209
    .line 1210
    .line 1211
    goto :goto_16

    .line 1212
    :catchall_2
    move-exception v0

    .line 1213
    move-object v2, v0

    .line 1214
    :try_start_13
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1215
    .line 1216
    .line 1217
    :cond_1e
    :goto_16
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1218
    :goto_17
    if-eqz v7, :cond_1f

    .line 1219
    .line 1220
    :try_start_14
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 1221
    .line 1222
    .line 1223
    goto :goto_18

    .line 1224
    :catchall_3
    move-exception v0

    .line 1225
    move-object v2, v0

    .line 1226
    :try_start_15
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1227
    .line 1228
    .line 1229
    :cond_1f
    :goto_18
    throw v1

    .line 1230
    :cond_20
    :goto_19
    const-string v2, "Location"

    .line 1231
    .line 1232
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v0

    .line 1236
    new-instance v2, LS2/c;

    .line 1237
    .line 1238
    new-instance v4, Ljava/net/URL;

    .line 1239
    .line 1240
    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1241
    .line 1242
    .line 1243
    const-wide/16 v7, 0x0

    .line 1244
    .line 1245
    invoke-direct {v2, v1, v4, v7, v8}, LS2/c;-><init>(ILjava/net/URL;J)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_12

    .line 1246
    .line 1247
    .line 1248
    move-object v0, v2

    .line 1249
    goto :goto_13

    .line 1250
    :catch_7
    move-exception v0

    .line 1251
    const/4 v10, 0x0

    .line 1252
    goto/16 :goto_2b

    .line 1253
    .line 1254
    :catchall_4
    move-exception v0

    .line 1255
    :goto_1a
    const/4 v10, 0x0

    .line 1256
    :goto_1b
    move-object v1, v0

    .line 1257
    goto :goto_20

    .line 1258
    :catchall_5
    move-exception v0

    .line 1259
    goto :goto_1d

    .line 1260
    :goto_1c
    move-object v1, v0

    .line 1261
    goto :goto_1e

    .line 1262
    :catchall_6
    move-exception v0

    .line 1263
    :goto_1d
    const/4 v10, 0x0

    .line 1264
    goto :goto_1c

    .line 1265
    :catchall_7
    move-exception v0

    .line 1266
    move-object/from16 v25, v10

    .line 1267
    .line 1268
    goto :goto_1d

    .line 1269
    :catchall_8
    move-exception v0

    .line 1270
    move-object/from16 v24, v1

    .line 1271
    .line 1272
    move-object/from16 v25, v10

    .line 1273
    .line 1274
    goto :goto_1d

    .line 1275
    :goto_1e
    :try_start_16
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 1276
    .line 1277
    .line 1278
    goto :goto_1f

    .line 1279
    :catchall_9
    move-exception v0

    .line 1280
    move-object v2, v0

    .line 1281
    :try_start_17
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1282
    .line 1283
    .line 1284
    :goto_1f
    throw v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 1285
    :catchall_a
    move-exception v0

    .line 1286
    goto :goto_1b

    .line 1287
    :catchall_b
    move-exception v0

    .line 1288
    move-object/from16 v24, v1

    .line 1289
    .line 1290
    move-object/from16 v23, v9

    .line 1291
    .line 1292
    move-object/from16 v25, v10

    .line 1293
    .line 1294
    goto :goto_1a

    .line 1295
    :goto_20
    if-eqz v14, :cond_21

    .line 1296
    .line 1297
    :try_start_18
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 1298
    .line 1299
    .line 1300
    goto :goto_21

    .line 1301
    :catchall_c
    move-exception v0

    .line 1302
    move-object v2, v0

    .line 1303
    :try_start_19
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1304
    .line 1305
    .line 1306
    goto :goto_21

    .line 1307
    :catch_8
    move-exception v0

    .line 1308
    goto :goto_23

    .line 1309
    :catch_9
    move-exception v0

    .line 1310
    goto :goto_23

    .line 1311
    :catch_a
    move-exception v0

    .line 1312
    goto :goto_25

    .line 1313
    :catch_b
    move-exception v0

    .line 1314
    goto :goto_25

    .line 1315
    :cond_21
    :goto_21
    throw v1
    :try_end_19
    .catch Ljava/net/ConnectException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/net/UnknownHostException; {:try_start_19 .. :try_end_19} :catch_a
    .catch LP4/b; {:try_start_19 .. :try_end_19} :catch_9
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_8

    .line 1316
    :catch_c
    move-exception v0

    .line 1317
    :goto_22
    move-object/from16 v24, v1

    .line 1318
    .line 1319
    move-object/from16 v23, v9

    .line 1320
    .line 1321
    move-object/from16 v25, v10

    .line 1322
    .line 1323
    goto/16 :goto_f

    .line 1324
    .line 1325
    :catch_d
    move-exception v0

    .line 1326
    goto :goto_22

    .line 1327
    :goto_23
    :try_start_1a
    const-string v1, "Couldn\'t encode request, returning with 400"

    .line 1328
    .line 1329
    invoke-static {v12, v1, v0}, LE3/f;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1330
    .line 1331
    .line 1332
    new-instance v0, LS2/c;

    .line 1333
    .line 1334
    const-wide/16 v1, 0x0

    .line 1335
    .line 1336
    const/4 v4, 0x0

    .line 1337
    const/16 v7, 0x190

    .line 1338
    .line 1339
    invoke-direct {v0, v7, v4, v1, v2}, LS2/c;-><init>(ILjava/net/URL;J)V

    .line 1340
    .line 1341
    .line 1342
    goto/16 :goto_13

    .line 1343
    .line 1344
    :catch_e
    move-exception v0

    .line 1345
    :goto_24
    move-object/from16 v24, v1

    .line 1346
    .line 1347
    move-object/from16 v23, v9

    .line 1348
    .line 1349
    move-object/from16 v25, v10

    .line 1350
    .line 1351
    goto/16 :goto_10

    .line 1352
    .line 1353
    :catch_f
    move-exception v0

    .line 1354
    goto :goto_24

    .line 1355
    :goto_25
    const-string v1, "Couldn\'t open connection, returning with 500"

    .line 1356
    .line 1357
    invoke-static {v12, v1, v0}, LE3/f;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1358
    .line 1359
    .line 1360
    new-instance v0, LS2/c;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_12

    .line 1361
    .line 1362
    const-wide/16 v1, 0x0

    .line 1363
    .line 1364
    const/4 v4, 0x0

    .line 1365
    const/16 v7, 0x1f4

    .line 1366
    .line 1367
    :try_start_1b
    invoke-direct {v0, v7, v4, v1, v2}, LS2/c;-><init>(ILjava/net/URL;J)V

    .line 1368
    .line 1369
    .line 1370
    :goto_26
    iget-object v7, v0, LS2/c;->b:Ljava/net/URL;

    .line 1371
    .line 1372
    if-eqz v7, :cond_22

    .line 1373
    .line 1374
    const-string v8, "Following redirect to: %s"

    .line 1375
    .line 1376
    invoke-static {v7, v12, v8}, LE3/f;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    .line 1378
    .line 1379
    new-instance v8, LS2/b;

    .line 1380
    .line 1381
    iget-object v9, v3, LS2/b;->b:LT2/o;

    .line 1382
    .line 1383
    iget-object v3, v3, LS2/b;->c:Ljava/lang/String;

    .line 1384
    .line 1385
    invoke-direct {v8, v7, v9, v3}, LS2/b;-><init>(Ljava/net/URL;LT2/o;Ljava/lang/String;)V

    .line 1386
    .line 1387
    .line 1388
    move-object v3, v8

    .line 1389
    goto :goto_27

    .line 1390
    :cond_22
    move-object v3, v4

    .line 1391
    :goto_27
    if-eqz v3, :cond_24

    .line 1392
    .line 1393
    add-int/lit8 v15, v15, -0x1

    .line 1394
    .line 1395
    const/4 v7, 0x1

    .line 1396
    if-ge v15, v7, :cond_23

    .line 1397
    .line 1398
    goto :goto_28

    .line 1399
    :cond_23
    move-object/from16 v7, p0

    .line 1400
    .line 1401
    move-object/from16 v9, v23

    .line 1402
    .line 1403
    move-object/from16 v1, v24

    .line 1404
    .line 1405
    move-object/from16 v10, v25

    .line 1406
    .line 1407
    goto/16 :goto_e

    .line 1408
    .line 1409
    :cond_24
    const/4 v7, 0x1

    .line 1410
    :goto_28
    iget v3, v0, LS2/c;->a:I

    .line 1411
    .line 1412
    const/16 v4, 0xc8

    .line 1413
    .line 1414
    if-ne v3, v4, :cond_25

    .line 1415
    .line 1416
    iget-wide v3, v0, LS2/c;->c:J

    .line 1417
    .line 1418
    new-instance v0, LV2/a;

    .line 1419
    .line 1420
    invoke-direct {v0, v7, v3, v4}, LV2/a;-><init>(IJ)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_10

    .line 1421
    .line 1422
    .line 1423
    :goto_29
    const/4 v3, 0x2

    .line 1424
    goto :goto_2d

    .line 1425
    :catch_10
    move-exception v0

    .line 1426
    goto :goto_2c

    .line 1427
    :cond_25
    const/16 v4, 0x1f4

    .line 1428
    .line 1429
    if-ge v3, v4, :cond_28

    .line 1430
    .line 1431
    const/16 v0, 0x194

    .line 1432
    .line 1433
    if-ne v3, v0, :cond_26

    .line 1434
    .line 1435
    goto :goto_2a

    .line 1436
    :cond_26
    const/16 v4, 0x190

    .line 1437
    .line 1438
    if-ne v3, v4, :cond_27

    .line 1439
    .line 1440
    :try_start_1c
    new-instance v0, LV2/a;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_11

    .line 1441
    .line 1442
    const/4 v3, 0x4

    .line 1443
    const-wide/16 v7, -0x1

    .line 1444
    .line 1445
    :try_start_1d
    invoke-direct {v0, v3, v7, v8}, LV2/a;-><init>(IJ)V

    .line 1446
    .line 1447
    .line 1448
    goto :goto_29

    .line 1449
    :catch_11
    move-exception v0

    .line 1450
    const-wide/16 v7, -0x1

    .line 1451
    .line 1452
    goto :goto_2c

    .line 1453
    :cond_27
    const-wide/16 v7, -0x1

    .line 1454
    .line 1455
    new-instance v0, LV2/a;

    .line 1456
    .line 1457
    const/4 v3, 0x3

    .line 1458
    invoke-direct {v0, v3, v7, v8}, LV2/a;-><init>(IJ)V

    .line 1459
    .line 1460
    .line 1461
    goto :goto_29

    .line 1462
    :cond_28
    :goto_2a
    new-instance v0, LV2/a;

    .line 1463
    .line 1464
    const/4 v3, 0x2

    .line 1465
    const-wide/16 v7, -0x1

    .line 1466
    .line 1467
    invoke-direct {v0, v3, v7, v8}, LV2/a;-><init>(IJ)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_10

    .line 1468
    .line 1469
    .line 1470
    goto :goto_29

    .line 1471
    :catch_12
    move-exception v0

    .line 1472
    :goto_2b
    const-wide/16 v1, 0x0

    .line 1473
    .line 1474
    goto :goto_2c

    .line 1475
    :catch_13
    move-exception v0

    .line 1476
    move-object/from16 v23, v9

    .line 1477
    .line 1478
    move-object/from16 v25, v10

    .line 1479
    .line 1480
    const-wide/16 v1, 0x0

    .line 1481
    .line 1482
    const/4 v10, 0x0

    .line 1483
    :goto_2c
    const-string v3, "Could not make request to the backend"

    .line 1484
    .line 1485
    invoke-static {v12, v3, v0}, LE3/f;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1486
    .line 1487
    .line 1488
    new-instance v0, LV2/a;

    .line 1489
    .line 1490
    const/4 v3, 0x2

    .line 1491
    const-wide/16 v7, -0x1

    .line 1492
    .line 1493
    invoke-direct {v0, v3, v7, v8}, LV2/a;-><init>(IJ)V

    .line 1494
    .line 1495
    .line 1496
    :goto_2d
    iget v4, v0, LV2/a;->a:I

    .line 1497
    .line 1498
    if-ne v4, v3, :cond_29

    .line 1499
    .line 1500
    new-instance v0, La3/h;

    .line 1501
    .line 1502
    move-object v1, v0

    .line 1503
    move-object/from16 v2, p0

    .line 1504
    .line 1505
    move-object v3, v13

    .line 1506
    move-object/from16 v4, p1

    .line 1507
    .line 1508
    invoke-direct/range {v1 .. v6}, La3/h;-><init>(La3/j;Ljava/lang/Iterable;LU2/i;J)V

    .line 1509
    .line 1510
    .line 1511
    move-object/from16 v3, v25

    .line 1512
    .line 1513
    invoke-virtual {v3, v0}, Lb3/j;->a0(Lc3/b;)Ljava/lang/Object;

    .line 1514
    .line 1515
    .line 1516
    const/4 v7, 0x1

    .line 1517
    add-int/lit8 v0, p2, 0x1

    .line 1518
    .line 1519
    move-object/from16 v8, p0

    .line 1520
    .line 1521
    iget-object v1, v8, La3/j;->d:La3/m;

    .line 1522
    .line 1523
    check-cast v1, La3/d;

    .line 1524
    .line 1525
    move-object/from16 v9, p1

    .line 1526
    .line 1527
    invoke-virtual {v1, v9, v0, v7}, La3/d;->a(LU2/i;IZ)V

    .line 1528
    .line 1529
    .line 1530
    return-void

    .line 1531
    :cond_29
    move-object/from16 v8, p0

    .line 1532
    .line 1533
    move-object/from16 v9, p1

    .line 1534
    .line 1535
    move-object/from16 v3, v25

    .line 1536
    .line 1537
    const/4 v7, 0x1

    .line 1538
    new-instance v11, LC0/d;

    .line 1539
    .line 1540
    const/16 v12, 0xf

    .line 1541
    .line 1542
    invoke-direct {v11, v12, v8, v13}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1543
    .line 1544
    .line 1545
    invoke-virtual {v3, v11}, Lb3/j;->a0(Lc3/b;)Ljava/lang/Object;

    .line 1546
    .line 1547
    .line 1548
    if-ne v4, v7, :cond_2b

    .line 1549
    .line 1550
    iget-wide v11, v0, LV2/a;->b:J

    .line 1551
    .line 1552
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 1553
    .line 1554
    .line 1555
    move-result-wide v5

    .line 1556
    if-eqz v23, :cond_2a

    .line 1557
    .line 1558
    new-instance v0, LB0/x;

    .line 1559
    .line 1560
    const/16 v4, 0x1d

    .line 1561
    .line 1562
    invoke-direct {v0, v8, v4}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 1563
    .line 1564
    .line 1565
    invoke-virtual {v3, v0}, Lb3/j;->a0(Lc3/b;)Ljava/lang/Object;

    .line 1566
    .line 1567
    .line 1568
    :cond_2a
    const/4 v11, 0x1

    .line 1569
    goto :goto_2f

    .line 1570
    :cond_2b
    const/4 v7, 0x4

    .line 1571
    if-ne v4, v7, :cond_2a

    .line 1572
    .line 1573
    new-instance v0, Ljava/util/HashMap;

    .line 1574
    .line 1575
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1576
    .line 1577
    .line 1578
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v4

    .line 1582
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1583
    .line 1584
    .line 1585
    move-result v7

    .line 1586
    if-eqz v7, :cond_2d

    .line 1587
    .line 1588
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v7

    .line 1592
    check-cast v7, Lb3/b;

    .line 1593
    .line 1594
    iget-object v7, v7, Lb3/b;->c:LU2/h;

    .line 1595
    .line 1596
    iget-object v7, v7, LU2/h;->a:Ljava/lang/String;

    .line 1597
    .line 1598
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1599
    .line 1600
    .line 1601
    move-result v11

    .line 1602
    if-nez v11, :cond_2c

    .line 1603
    .line 1604
    const/4 v11, 0x1

    .line 1605
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v12

    .line 1609
    invoke-virtual {v0, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    .line 1611
    .line 1612
    goto :goto_2e

    .line 1613
    :cond_2c
    const/4 v11, 0x1

    .line 1614
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v12

    .line 1618
    check-cast v12, Ljava/lang/Integer;

    .line 1619
    .line 1620
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 1621
    .line 1622
    .line 1623
    move-result v12

    .line 1624
    add-int/2addr v12, v11

    .line 1625
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v12

    .line 1629
    invoke-virtual {v0, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    .line 1631
    .line 1632
    goto :goto_2e

    .line 1633
    :cond_2d
    const/4 v11, 0x1

    .line 1634
    new-instance v4, LC0/d;

    .line 1635
    .line 1636
    const/16 v7, 0x10

    .line 1637
    .line 1638
    invoke-direct {v4, v7, v8, v0}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1639
    .line 1640
    .line 1641
    invoke-virtual {v3, v4}, Lb3/j;->a0(Lc3/b;)Ljava/lang/Object;

    .line 1642
    .line 1643
    .line 1644
    :goto_2f
    move-object v7, v8

    .line 1645
    move-object v8, v9

    .line 1646
    move-object/from16 v2, v32

    .line 1647
    .line 1648
    const/4 v1, 0x0

    .line 1649
    const/4 v9, 0x1

    .line 1650
    goto/16 :goto_0

    .line 1651
    .line 1652
    :cond_2e
    move-object v9, v8

    .line 1653
    move-object v3, v10

    .line 1654
    move-object v8, v7

    .line 1655
    invoke-virtual {v3}, Lb3/j;->k()Landroid/database/sqlite/SQLiteDatabase;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v1

    .line 1659
    new-instance v2, LC0/i;

    .line 1660
    .line 1661
    const/16 v0, 0xc

    .line 1662
    .line 1663
    invoke-direct {v2, v0}, LC0/i;-><init>(I)V

    .line 1664
    .line 1665
    .line 1666
    iget-object v0, v3, Lb3/j;->I:Ld3/a;

    .line 1667
    .line 1668
    move-object v4, v0

    .line 1669
    check-cast v4, Ld3/c;

    .line 1670
    .line 1671
    invoke-virtual {v4}, Ld3/c;->a()J

    .line 1672
    .line 1673
    .line 1674
    move-result-wide v10

    .line 1675
    :goto_30
    :try_start_1e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1e .. :try_end_1e} :catch_14

    .line 1676
    .line 1677
    .line 1678
    goto :goto_31

    .line 1679
    :catch_14
    move-exception v0

    .line 1680
    move-object v7, v0

    .line 1681
    invoke-virtual {v4}, Ld3/c;->a()J

    .line 1682
    .line 1683
    .line 1684
    move-result-wide v13

    .line 1685
    iget-object v0, v3, Lb3/j;->J:Lb3/a;

    .line 1686
    .line 1687
    iget v0, v0, Lb3/a;->c:I

    .line 1688
    .line 1689
    move-object/from16 v25, v3

    .line 1690
    .line 1691
    move-object/from16 p2, v4

    .line 1692
    .line 1693
    int-to-long v3, v0

    .line 1694
    add-long/2addr v3, v10

    .line 1695
    cmp-long v0, v13, v3

    .line 1696
    .line 1697
    if-ltz v0, :cond_2f

    .line 1698
    .line 1699
    invoke-virtual {v2, v7}, LC0/i;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    .line 1701
    .line 1702
    :goto_31
    :try_start_1f
    check-cast v12, Ld3/c;

    .line 1703
    .line 1704
    invoke-virtual {v12}, Ld3/c;->a()J

    .line 1705
    .line 1706
    .line 1707
    move-result-wide v2

    .line 1708
    add-long/2addr v2, v5

    .line 1709
    iget-object v0, v8, La3/j;->c:Lb3/d;

    .line 1710
    .line 1711
    check-cast v0, Lb3/j;

    .line 1712
    .line 1713
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1714
    .line 1715
    .line 1716
    new-instance v4, LC0/y;

    .line 1717
    .line 1718
    invoke-direct {v4, v2, v3, v9}, LC0/y;-><init>(JLU2/i;)V

    .line 1719
    .line 1720
    .line 1721
    invoke-virtual {v0, v4}, Lb3/j;->N(Lb3/h;)Ljava/lang/Object;

    .line 1722
    .line 1723
    .line 1724
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    .line 1725
    .line 1726
    .line 1727
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1728
    .line 1729
    .line 1730
    return-void

    .line 1731
    :catchall_d
    move-exception v0

    .line 1732
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1733
    .line 1734
    .line 1735
    throw v0

    .line 1736
    :cond_2f
    const-wide/16 v3, 0x32

    .line 1737
    .line 1738
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1739
    .line 1740
    .line 1741
    move-object/from16 v4, p2

    .line 1742
    .line 1743
    move-object/from16 v3, v25

    .line 1744
    .line 1745
    goto :goto_30
.end method
