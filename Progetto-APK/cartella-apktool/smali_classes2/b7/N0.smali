.class public final Lb7/N0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:[Ljava/util/ArrayList;

.field public final synthetic H:[Ljava/util/ArrayList;

.field public final synthetic I:Ljava/lang/String;

.field public final synthetic J:[Lorg/json/JSONArray;

.field public final synthetic K:[Ljava/util/ArrayList;

.field public final synthetic L:[Ljava/util/ArrayList;

.field public final synthetic M:[Ljava/util/ArrayList;

.field public final synthetic N:[Ljava/util/ArrayList;

.field public final synthetic O:Lb7/S0;


# direct methods
.method public constructor <init>(Lb7/S0;[Ljava/util/ArrayList;[Ljava/util/ArrayList;Ljava/lang/String;[Lorg/json/JSONArray;[Ljava/util/ArrayList;[Ljava/util/ArrayList;[Ljava/util/ArrayList;[Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb7/N0;->O:Lb7/S0;

    .line 5
    .line 6
    iput-object p2, p0, Lb7/N0;->G:[Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Lb7/N0;->H:[Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-object p4, p0, Lb7/N0;->I:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lb7/N0;->J:[Lorg/json/JSONArray;

    .line 13
    .line 14
    iput-object p6, p0, Lb7/N0;->K:[Ljava/util/ArrayList;

    .line 15
    .line 16
    iput-object p7, p0, Lb7/N0;->L:[Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object p8, p0, Lb7/N0;->M:[Ljava/util/ArrayList;

    .line 19
    .line 20
    iput-object p9, p0, Lb7/N0;->N:[Ljava/util/ArrayList;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lb7/N0;->O:Lb7/S0;

    .line 4
    .line 5
    iget-object v2, v1, Lb7/S0;->e1:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "search"

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, v0, Lb7/N0;->G:[Ljava/util/ArrayList;

    .line 14
    .line 15
    const-string v4, "0"

    .line 16
    .line 17
    const-string v5, "parent_id"

    .line 18
    .line 19
    const-string v6, "category_name"

    .line 20
    .line 21
    const-string v7, "category_id"

    .line 22
    .line 23
    iget-object v8, v0, Lb7/N0;->J:[Lorg/json/JSONArray;

    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const-string v2, "SEARCH RESULT"

    .line 29
    .line 30
    const-string v10, "0000000"

    .line 31
    .line 32
    invoke-static {v6, v2, v7, v10}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    aget-object v3, v3, v9

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    iget-object v12, v0, Lb7/N0;->I:Ljava/lang/String;

    .line 49
    .line 50
    const-string v13, "NEW"

    .line 51
    .line 52
    const/4 v11, 0x1

    .line 53
    const-string v14, "0"

    .line 54
    .line 55
    const-string v15, "0"

    .line 56
    .line 57
    invoke-static/range {v10 .. v15}, Ly4/k;->M(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v3, v0, Lb7/N0;->H:[Ljava/util/ArrayList;

    .line 62
    .line 63
    aput-object v2, v3, v9

    .line 64
    .line 65
    new-instance v2, Lorg/json/JSONArray;

    .line 66
    .line 67
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 68
    .line 69
    .line 70
    aput-object v2, v8, v9

    .line 71
    .line 72
    new-instance v2, Lorg/json/JSONArray;

    .line 73
    .line 74
    aget-object v3, v3, v9

    .line 75
    .line 76
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 77
    .line 78
    .line 79
    aput-object v2, v8, v9

    .line 80
    .line 81
    :goto_0
    move-object/from16 v36, v1

    .line 82
    .line 83
    move-object v1, v0

    .line 84
    move-object/from16 v0, v36

    .line 85
    .line 86
    goto/16 :goto_c

    .line 87
    .line 88
    :cond_0
    iget-object v2, v1, Lb7/S0;->e1:Ljava/lang/String;

    .line 89
    .line 90
    const-string v10, "fav"

    .line 91
    .line 92
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    const-string v2, "FAVORITES"

    .line 99
    .line 100
    const-string v10, "99999"

    .line 101
    .line 102
    invoke-static {v6, v2, v7, v10}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    aget-object v3, v3, v9

    .line 110
    .line 111
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    const-string v12, "all"

    .line 119
    .line 120
    const-string v13, "NEW"

    .line 121
    .line 122
    const/4 v11, 0x0

    .line 123
    const-string v14, "99999"

    .line 124
    .line 125
    const-string v15, ""

    .line 126
    .line 127
    invoke-static/range {v10 .. v15}, Ly4/k;->M(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    iget-object v3, v0, Lb7/N0;->K:[Ljava/util/ArrayList;

    .line 132
    .line 133
    aput-object v2, v3, v9

    .line 134
    .line 135
    new-instance v2, Lorg/json/JSONArray;

    .line 136
    .line 137
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 138
    .line 139
    .line 140
    aput-object v2, v8, v9

    .line 141
    .line 142
    new-instance v2, Lorg/json/JSONArray;

    .line 143
    .line 144
    aget-object v3, v3, v9

    .line 145
    .line 146
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 147
    .line 148
    .line 149
    aput-object v2, v8, v9

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_1
    iget-object v2, v1, Lb7/S0;->e1:Ljava/lang/String;

    .line 153
    .line 154
    const-string v10, "cont"

    .line 155
    .line 156
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    const-string v10, "ORT_PROFILE_ID"

    .line 161
    .line 162
    const-string v11, ""

    .line 163
    .line 164
    const-string v13, "direct_source"

    .line 165
    .line 166
    const-string v14, "custom_sid"

    .line 167
    .line 168
    const-string v15, "container_extension"

    .line 169
    .line 170
    const-string v12, "added"

    .line 171
    .line 172
    const-string v9, "rating_5based"

    .line 173
    .line 174
    move-object/from16 v17, v8

    .line 175
    .line 176
    const-string v8, "rating"

    .line 177
    .line 178
    move-object/from16 v18, v13

    .line 179
    .line 180
    const-string v13, "stream_icon"

    .line 181
    .line 182
    move-object/from16 v19, v14

    .line 183
    .line 184
    const-string v14, "stream_id"

    .line 185
    .line 186
    move-object/from16 v20, v15

    .line 187
    .line 188
    const-string v15, "stream_type"

    .line 189
    .line 190
    move-object/from16 v21, v12

    .line 191
    .line 192
    const-string v12, "name"

    .line 193
    .line 194
    move-object/from16 v22, v9

    .line 195
    .line 196
    const-string v9, "num"

    .line 197
    .line 198
    if-eqz v2, :cond_5

    .line 199
    .line 200
    const-string v2, "CONTINUE WATCHING"

    .line 201
    .line 202
    move-object/from16 v23, v8

    .line 203
    .line 204
    const-string v8, "99997"

    .line 205
    .line 206
    invoke-static {v6, v2, v7, v8}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    const/16 v16, 0x0

    .line 214
    .line 215
    aget-object v3, v3, v16

    .line 216
    .line 217
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    iget-object v2, v1, Lb7/S0;->E0:Lc7/d;

    .line 221
    .line 222
    invoke-virtual {v2}, Lc7/d;->E0()Ljava/util/ArrayList;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    iget-object v3, v0, Lb7/N0;->L:[Ljava/util/ArrayList;

    .line 227
    .line 228
    aput-object v2, v3, v16

    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-lez v2, :cond_4

    .line 235
    .line 236
    const/4 v2, 0x0

    .line 237
    :goto_1
    aget-object v4, v3, v16

    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    iget-object v5, v0, Lb7/N0;->M:[Ljava/util/ArrayList;

    .line 244
    .line 245
    if-ge v2, v4, :cond_3

    .line 246
    .line 247
    aget-object v4, v3, v16

    .line 248
    .line 249
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    check-cast v4, Lh7/g;

    .line 254
    .line 255
    iget-object v4, v4, Lh7/g;->a:Ljava/lang/String;

    .line 256
    .line 257
    const-string v6, "-"

    .line 258
    .line 259
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    invoke-virtual {v6, v10, v11}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    aget-object v8, v4, v16

    .line 272
    .line 273
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-eqz v6, :cond_2

    .line 278
    .line 279
    new-instance v6, Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    const/4 v8, 0x1

    .line 292
    aget-object v4, v4, v8

    .line 293
    .line 294
    invoke-static {v6, v4}, Ly4/k;->L(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 299
    .line 300
    .line 301
    move-result v6

    .line 302
    if-lez v6, :cond_2

    .line 303
    .line 304
    new-instance v6, Ljava/util/HashMap;

    .line 305
    .line 306
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 307
    .line 308
    .line 309
    const/4 v8, 0x0

    .line 310
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v16

    .line 314
    move-object/from16 v8, v16

    .line 315
    .line 316
    check-cast v8, Ljava/util/HashMap;

    .line 317
    .line 318
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    check-cast v8, Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    const/4 v8, 0x0

    .line 328
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v16

    .line 332
    move-object/from16 v8, v16

    .line 333
    .line 334
    check-cast v8, Ljava/util/HashMap;

    .line 335
    .line 336
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    check-cast v8, Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {v6, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    const/4 v8, 0x0

    .line 346
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v16

    .line 350
    move-object/from16 v8, v16

    .line 351
    .line 352
    check-cast v8, Ljava/util/HashMap;

    .line 353
    .line 354
    invoke-virtual {v8, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    check-cast v8, Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {v6, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    const/4 v8, 0x0

    .line 364
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v16

    .line 368
    move-object/from16 v8, v16

    .line 369
    .line 370
    check-cast v8, Ljava/util/HashMap;

    .line 371
    .line 372
    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v8

    .line 376
    check-cast v8, Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v6, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    const/4 v8, 0x0

    .line 382
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v16

    .line 386
    move-object/from16 v8, v16

    .line 387
    .line 388
    check-cast v8, Ljava/util/HashMap;

    .line 389
    .line 390
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v8

    .line 394
    check-cast v8, Ljava/lang/String;

    .line 395
    .line 396
    invoke-virtual {v6, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    const/4 v8, 0x0

    .line 400
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v16

    .line 404
    move-object/from16 v8, v16

    .line 405
    .line 406
    check-cast v8, Ljava/util/HashMap;

    .line 407
    .line 408
    move-object/from16 v0, v23

    .line 409
    .line 410
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v8

    .line 414
    check-cast v8, Ljava/lang/String;

    .line 415
    .line 416
    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    const/4 v8, 0x0

    .line 420
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v16

    .line 424
    move-object/from16 v8, v16

    .line 425
    .line 426
    check-cast v8, Ljava/util/HashMap;

    .line 427
    .line 428
    move-object/from16 v0, v22

    .line 429
    .line 430
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v8

    .line 434
    check-cast v8, Ljava/lang/String;

    .line 435
    .line 436
    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    const/4 v8, 0x0

    .line 440
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v16

    .line 444
    move-object/from16 v8, v16

    .line 445
    .line 446
    check-cast v8, Ljava/util/HashMap;

    .line 447
    .line 448
    move-object/from16 v0, v21

    .line 449
    .line 450
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v8

    .line 454
    check-cast v8, Ljava/lang/String;

    .line 455
    .line 456
    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    const/4 v8, 0x0

    .line 460
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v16

    .line 464
    move-object/from16 v8, v16

    .line 465
    .line 466
    check-cast v8, Ljava/util/HashMap;

    .line 467
    .line 468
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v8

    .line 472
    check-cast v8, Ljava/lang/String;

    .line 473
    .line 474
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    const/4 v8, 0x0

    .line 478
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v16

    .line 482
    move-object/from16 v8, v16

    .line 483
    .line 484
    check-cast v8, Ljava/util/HashMap;

    .line 485
    .line 486
    move-object/from16 v0, v20

    .line 487
    .line 488
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    check-cast v8, Ljava/lang/String;

    .line 493
    .line 494
    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    const/4 v8, 0x0

    .line 498
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v16

    .line 502
    move-object/from16 v8, v16

    .line 503
    .line 504
    check-cast v8, Ljava/util/HashMap;

    .line 505
    .line 506
    move-object/from16 v0, v19

    .line 507
    .line 508
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v8

    .line 512
    check-cast v8, Ljava/lang/String;

    .line 513
    .line 514
    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    const/4 v8, 0x0

    .line 518
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    check-cast v4, Ljava/util/HashMap;

    .line 523
    .line 524
    move-object/from16 v8, v18

    .line 525
    .line 526
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    check-cast v4, Ljava/lang/String;

    .line 531
    .line 532
    invoke-virtual {v6, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    const/4 v4, 0x0

    .line 536
    aget-object v5, v5, v4

    .line 537
    .line 538
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    goto :goto_2

    .line 542
    :cond_2
    move-object/from16 v8, v18

    .line 543
    .line 544
    move-object/from16 v0, v19

    .line 545
    .line 546
    const/4 v4, 0x0

    .line 547
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 548
    .line 549
    const/16 v16, 0x0

    .line 550
    .line 551
    move-object/from16 v19, v0

    .line 552
    .line 553
    move-object/from16 v18, v8

    .line 554
    .line 555
    move-object/from16 v0, p0

    .line 556
    .line 557
    goto/16 :goto_1

    .line 558
    .line 559
    :cond_3
    const/4 v4, 0x0

    .line 560
    new-instance v0, Lorg/json/JSONArray;

    .line 561
    .line 562
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 563
    .line 564
    .line 565
    aput-object v0, v17, v4

    .line 566
    .line 567
    new-instance v0, Lorg/json/JSONArray;

    .line 568
    .line 569
    aget-object v2, v5, v4

    .line 570
    .line 571
    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 572
    .line 573
    .line 574
    aput-object v0, v17, v4

    .line 575
    .line 576
    :cond_4
    move-object v0, v1

    .line 577
    move-object/from16 v1, p0

    .line 578
    .line 579
    goto/16 :goto_c

    .line 580
    .line 581
    :cond_5
    move-object/from16 v23, v8

    .line 582
    .line 583
    move-object/from16 v8, v18

    .line 584
    .line 585
    move-object/from16 v0, v19

    .line 586
    .line 587
    iget-object v2, v1, Lb7/S0;->e1:Ljava/lang/String;

    .line 588
    .line 589
    const-string v8, "all"

    .line 590
    .line 591
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v2

    .line 595
    if-eqz v2, :cond_4

    .line 596
    .line 597
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    new-instance v8, Lc7/d;

    .line 602
    .line 603
    invoke-direct {v8, v2}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 604
    .line 605
    .line 606
    move-object/from16 v19, v0

    .line 607
    .line 608
    new-instance v0, Lc7/b;

    .line 609
    .line 610
    move-object/from16 v24, v13

    .line 611
    .line 612
    const/4 v13, 0x1

    .line 613
    invoke-direct {v0, v2, v13}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 614
    .line 615
    .line 616
    new-instance v13, Lc7/b;

    .line 617
    .line 618
    move-object/from16 v25, v14

    .line 619
    .line 620
    const/4 v14, 0x0

    .line 621
    invoke-direct {v13, v2, v14}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 622
    .line 623
    .line 624
    move-object/from16 v26, v15

    .line 625
    .line 626
    const-string v15, "pe.hf.black20"

    .line 627
    .line 628
    invoke-virtual {v2, v15, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    sget-object v14, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 633
    .line 634
    const-string v15, "no"

    .line 635
    .line 636
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v14

    .line 640
    const-string v15, "Yes"

    .line 641
    .line 642
    move-object/from16 v27, v12

    .line 643
    .line 644
    const-string v12, "No"

    .line 645
    .line 646
    if-eqz v14, :cond_7

    .line 647
    .line 648
    const-string v14, "filter_status"

    .line 649
    .line 650
    move-object/from16 v29, v1

    .line 651
    .line 652
    move-object/from16 v28, v9

    .line 653
    .line 654
    const/4 v9, 0x0

    .line 655
    invoke-interface {v2, v14, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    move-result v1

    .line 663
    if-nez v1, :cond_8

    .line 664
    .line 665
    invoke-interface {v2, v14, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-nez v1, :cond_8

    .line 674
    .line 675
    invoke-interface {v2, v14, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    const-string v2, "null"

    .line 680
    .line 681
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    move-result v1

    .line 685
    if-eqz v1, :cond_6

    .line 686
    .line 687
    goto :goto_3

    .line 688
    :cond_6
    move-object v12, v15

    .line 689
    goto :goto_3

    .line 690
    :cond_7
    move-object/from16 v29, v1

    .line 691
    .line 692
    move-object/from16 v28, v9

    .line 693
    .line 694
    :cond_8
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    .line 695
    .line 696
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v8}, Lc7/d;->s0()Ljava/util/ArrayList;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    new-instance v2, Ljava/util/ArrayList;

    .line 707
    .line 708
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .line 710
    .line 711
    const/4 v9, 0x0

    .line 712
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 713
    .line 714
    .line 715
    move-result v14

    .line 716
    if-ge v9, v14, :cond_f

    .line 717
    .line 718
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v14

    .line 722
    check-cast v14, Lh7/a;

    .line 723
    .line 724
    iget-object v14, v14, Lh7/a;->a:Ljava/lang/String;

    .line 725
    .line 726
    move-object/from16 v30, v3

    .line 727
    .line 728
    const-string v3, "VOD"

    .line 729
    .line 730
    invoke-virtual {v8, v3, v14}, Lc7/d;->k0(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .line 732
    .line 733
    move-result v14

    .line 734
    move-object/from16 v31, v8

    .line 735
    .line 736
    const/4 v8, 0x1

    .line 737
    if-lt v14, v8, :cond_d

    .line 738
    .line 739
    const-string v8, "ORT_PARENTAL_CONTROL_STATUS"

    .line 740
    .line 741
    move-object/from16 v32, v4

    .line 742
    .line 743
    const-string v4, "locked"

    .line 744
    .line 745
    invoke-static {v8, v4, v4}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 746
    .line 747
    .line 748
    move-result v4

    .line 749
    const-string v8, "yes"

    .line 750
    .line 751
    move-object/from16 v33, v2

    .line 752
    .line 753
    const-string v2, ")"

    .line 754
    .line 755
    move-object/from16 v34, v5

    .line 756
    .line 757
    const-string v5, " ("

    .line 758
    .line 759
    if-eqz v4, :cond_b

    .line 760
    .line 761
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v4

    .line 765
    check-cast v4, Lh7/a;

    .line 766
    .line 767
    iget-object v4, v4, Lh7/a;->a:Ljava/lang/String;

    .line 768
    .line 769
    move-object/from16 v35, v6

    .line 770
    .line 771
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 772
    .line 773
    .line 774
    move-result-object v6

    .line 775
    invoke-virtual {v6, v10, v11}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v6

    .line 779
    invoke-virtual {v0, v4, v3, v6}, Lc7/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v4

    .line 783
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    move-result v4

    .line 787
    if-nez v4, :cond_9

    .line 788
    .line 789
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result v4

    .line 793
    if-eqz v4, :cond_a

    .line 794
    .line 795
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v4

    .line 799
    check-cast v4, Lh7/a;

    .line 800
    .line 801
    iget-object v4, v4, Lh7/a;->b:Ljava/lang/String;

    .line 802
    .line 803
    invoke-virtual {v13, v4, v3}, Lc7/b;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v3

    .line 807
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 808
    .line 809
    .line 810
    move-result v3

    .line 811
    if-eqz v3, :cond_9

    .line 812
    .line 813
    new-instance v3, Ljava/util/HashMap;

    .line 814
    .line 815
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v4

    .line 822
    check-cast v4, Lh7/a;

    .line 823
    .line 824
    iget-object v4, v4, Lh7/a;->a:Ljava/lang/String;

    .line 825
    .line 826
    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    new-instance v4, Ljava/lang/StringBuilder;

    .line 830
    .line 831
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v6

    .line 838
    check-cast v6, Lh7/a;

    .line 839
    .line 840
    iget-object v6, v6, Lh7/a;->b:Ljava/lang/String;

    .line 841
    .line 842
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v5

    .line 852
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v2

    .line 862
    move-object/from16 v4, v35

    .line 863
    .line 864
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v2

    .line 871
    check-cast v2, Lh7/a;

    .line 872
    .line 873
    iget-object v2, v2, Lh7/a;->c:Ljava/lang/String;

    .line 874
    .line 875
    move-object/from16 v6, v34

    .line 876
    .line 877
    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-object/from16 v8, v33

    .line 881
    .line 882
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    .line 884
    .line 885
    move-object/from16 v34, v0

    .line 886
    .line 887
    move-object v0, v8

    .line 888
    move-object/from16 v35, v10

    .line 889
    .line 890
    goto/16 :goto_5

    .line 891
    .line 892
    :cond_9
    move-object/from16 v6, v34

    .line 893
    .line 894
    move-object/from16 v4, v35

    .line 895
    .line 896
    move-object/from16 v34, v0

    .line 897
    .line 898
    move-object/from16 v35, v10

    .line 899
    .line 900
    move-object/from16 v0, v33

    .line 901
    .line 902
    goto/16 :goto_5

    .line 903
    .line 904
    :cond_a
    move-object/from16 v8, v33

    .line 905
    .line 906
    move-object/from16 v6, v34

    .line 907
    .line 908
    move-object/from16 v4, v35

    .line 909
    .line 910
    new-instance v3, Ljava/util/HashMap;

    .line 911
    .line 912
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 913
    .line 914
    .line 915
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object v33

    .line 919
    move-object/from16 v34, v0

    .line 920
    .line 921
    move-object/from16 v0, v33

    .line 922
    .line 923
    check-cast v0, Lh7/a;

    .line 924
    .line 925
    iget-object v0, v0, Lh7/a;->a:Ljava/lang/String;

    .line 926
    .line 927
    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    .line 931
    .line 932
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 933
    .line 934
    .line 935
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    move-result-object v33

    .line 939
    move-object/from16 v35, v10

    .line 940
    .line 941
    move-object/from16 v10, v33

    .line 942
    .line 943
    check-cast v10, Lh7/a;

    .line 944
    .line 945
    iget-object v10, v10, Lh7/a;->b:Ljava/lang/String;

    .line 946
    .line 947
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    .line 949
    .line 950
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    .line 952
    .line 953
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v5

    .line 957
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    .line 962
    .line 963
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    .line 969
    .line 970
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    check-cast v0, Lh7/a;

    .line 975
    .line 976
    iget-object v0, v0, Lh7/a;->c:Ljava/lang/String;

    .line 977
    .line 978
    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    .line 983
    .line 984
    move-object v0, v8

    .line 985
    goto/16 :goto_5

    .line 986
    .line 987
    :cond_b
    move-object v4, v6

    .line 988
    move-object/from16 v35, v10

    .line 989
    .line 990
    move-object/from16 v6, v34

    .line 991
    .line 992
    move-object/from16 v34, v0

    .line 993
    .line 994
    move-object/from16 v0, v33

    .line 995
    .line 996
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 997
    .line 998
    .line 999
    move-result v10

    .line 1000
    if-eqz v10, :cond_c

    .line 1001
    .line 1002
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v10

    .line 1006
    check-cast v10, Lh7/a;

    .line 1007
    .line 1008
    iget-object v10, v10, Lh7/a;->b:Ljava/lang/String;

    .line 1009
    .line 1010
    invoke-virtual {v13, v10, v3}, Lc7/b;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v3

    .line 1014
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v3

    .line 1018
    if-eqz v3, :cond_e

    .line 1019
    .line 1020
    new-instance v3, Ljava/util/HashMap;

    .line 1021
    .line 1022
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v8

    .line 1029
    check-cast v8, Lh7/a;

    .line 1030
    .line 1031
    iget-object v8, v8, Lh7/a;->a:Ljava/lang/String;

    .line 1032
    .line 1033
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    .line 1035
    .line 1036
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v10

    .line 1045
    check-cast v10, Lh7/a;

    .line 1046
    .line 1047
    iget-object v10, v10, Lh7/a;->b:Ljava/lang/String;

    .line 1048
    .line 1049
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    .line 1055
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v5

    .line 1059
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v2

    .line 1069
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v2

    .line 1076
    check-cast v2, Lh7/a;

    .line 1077
    .line 1078
    iget-object v2, v2, Lh7/a;->c:Ljava/lang/String;

    .line 1079
    .line 1080
    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    .line 1085
    .line 1086
    goto :goto_5

    .line 1087
    :cond_c
    new-instance v3, Ljava/util/HashMap;

    .line 1088
    .line 1089
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v8

    .line 1096
    check-cast v8, Lh7/a;

    .line 1097
    .line 1098
    iget-object v8, v8, Lh7/a;->a:Ljava/lang/String;

    .line 1099
    .line 1100
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    .line 1102
    .line 1103
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v10

    .line 1112
    check-cast v10, Lh7/a;

    .line 1113
    .line 1114
    iget-object v10, v10, Lh7/a;->b:Ljava/lang/String;

    .line 1115
    .line 1116
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    .line 1122
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v5

    .line 1126
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v2

    .line 1136
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v2

    .line 1143
    check-cast v2, Lh7/a;

    .line 1144
    .line 1145
    iget-object v2, v2, Lh7/a;->c:Ljava/lang/String;

    .line 1146
    .line 1147
    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    .line 1152
    .line 1153
    goto :goto_5

    .line 1154
    :cond_d
    move-object/from16 v34, v0

    .line 1155
    .line 1156
    move-object v0, v2

    .line 1157
    move-object/from16 v32, v4

    .line 1158
    .line 1159
    move-object v4, v6

    .line 1160
    move-object/from16 v35, v10

    .line 1161
    .line 1162
    move-object v6, v5

    .line 1163
    :cond_e
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 1164
    .line 1165
    move-object v2, v0

    .line 1166
    move-object v5, v6

    .line 1167
    move-object/from16 v3, v30

    .line 1168
    .line 1169
    move-object/from16 v8, v31

    .line 1170
    .line 1171
    move-object/from16 v0, v34

    .line 1172
    .line 1173
    move-object/from16 v10, v35

    .line 1174
    .line 1175
    move-object v6, v4

    .line 1176
    move-object/from16 v4, v32

    .line 1177
    .line 1178
    goto/16 :goto_4

    .line 1179
    .line 1180
    :cond_f
    move-object v0, v2

    .line 1181
    move-object/from16 v30, v3

    .line 1182
    .line 1183
    move-object/from16 v32, v4

    .line 1184
    .line 1185
    move-object v4, v6

    .line 1186
    move-object v6, v5

    .line 1187
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1188
    .line 1189
    .line 1190
    move-result v1

    .line 1191
    if-nez v1, :cond_10

    .line 1192
    .line 1193
    const-string v1, "0000000000000"

    .line 1194
    .line 1195
    const-string v2, "NO MOVIES FOUND! (0)"

    .line 1196
    .line 1197
    invoke-static {v7, v1, v4, v2}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v1

    .line 1201
    move-object/from16 v2, v32

    .line 1202
    .line 1203
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    .line 1208
    .line 1209
    :cond_10
    const/4 v1, 0x0

    .line 1210
    aput-object v0, v30, v1

    .line 1211
    .line 1212
    move-object/from16 v0, v29

    .line 1213
    .line 1214
    iget-object v1, v0, Lb7/S0;->E0:Lc7/d;

    .line 1215
    .line 1216
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1217
    .line 1218
    .line 1219
    new-instance v2, Ljava/util/ArrayList;

    .line 1220
    .line 1221
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v1

    .line 1231
    :try_start_0
    const-string v3, "SELECT * FROM vods ORDER BY CAST(stream_id AS NUMBER) DESC"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1232
    .line 1233
    const/4 v4, 0x0

    .line 1234
    :try_start_1
    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1238
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1239
    .line 1240
    .line 1241
    move-result v1

    .line 1242
    if-eqz v1, :cond_12

    .line 1243
    .line 1244
    :goto_6
    new-instance v1, Ljava/util/HashMap;

    .line 1245
    .line 1246
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1247
    .line 1248
    .line 1249
    const/4 v3, 0x0

    .line 1250
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v4

    .line 1254
    move-object/from16 v3, v28

    .line 1255
    .line 1256
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    .line 1258
    .line 1259
    const/4 v4, 0x1

    .line 1260
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v5

    .line 1264
    move-object/from16 v6, v27

    .line 1265
    .line 1266
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    .line 1268
    .line 1269
    const/4 v5, 0x2

    .line 1270
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v5

    .line 1274
    move-object/from16 v8, v26

    .line 1275
    .line 1276
    invoke-virtual {v1, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    .line 1278
    .line 1279
    const/4 v5, 0x3

    .line 1280
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v5

    .line 1284
    move-object/from16 v9, v25

    .line 1285
    .line 1286
    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    .line 1288
    .line 1289
    const/4 v5, 0x4

    .line 1290
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v5

    .line 1294
    move-object/from16 v10, v24

    .line 1295
    .line 1296
    invoke-virtual {v1, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    .line 1298
    .line 1299
    const/4 v5, 0x5

    .line 1300
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v5

    .line 1304
    move-object/from16 v11, v23

    .line 1305
    .line 1306
    invoke-virtual {v1, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    .line 1308
    .line 1309
    const/4 v5, 0x6

    .line 1310
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v5

    .line 1314
    move-object/from16 v12, v22

    .line 1315
    .line 1316
    invoke-virtual {v1, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    const/4 v5, 0x7

    .line 1320
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v5

    .line 1324
    move-object/from16 v13, v21

    .line 1325
    .line 1326
    invoke-virtual {v1, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    .line 1328
    .line 1329
    const/16 v5, 0x8

    .line 1330
    .line 1331
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v5

    .line 1335
    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    .line 1337
    .line 1338
    const/16 v5, 0x9

    .line 1339
    .line 1340
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v5

    .line 1344
    move-object/from16 v14, v20

    .line 1345
    .line 1346
    invoke-virtual {v1, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    .line 1348
    .line 1349
    const/16 v5, 0xa

    .line 1350
    .line 1351
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v5

    .line 1355
    move-object/from16 v4, v19

    .line 1356
    .line 1357
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    .line 1359
    .line 1360
    const/16 v5, 0xb

    .line 1361
    .line 1362
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v5

    .line 1366
    move-object/from16 v28, v3

    .line 1367
    .line 1368
    move-object/from16 v3, v18

    .line 1369
    .line 1370
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    .line 1372
    .line 1373
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    .line 1375
    .line 1376
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 1377
    .line 1378
    .line 1379
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1380
    if-nez v1, :cond_11

    .line 1381
    .line 1382
    goto :goto_7

    .line 1383
    :cond_11
    move-object/from16 v18, v3

    .line 1384
    .line 1385
    move-object/from16 v19, v4

    .line 1386
    .line 1387
    move-object/from16 v27, v6

    .line 1388
    .line 1389
    move-object/from16 v26, v8

    .line 1390
    .line 1391
    move-object/from16 v25, v9

    .line 1392
    .line 1393
    move-object/from16 v24, v10

    .line 1394
    .line 1395
    move-object/from16 v23, v11

    .line 1396
    .line 1397
    move-object/from16 v22, v12

    .line 1398
    .line 1399
    move-object/from16 v21, v13

    .line 1400
    .line 1401
    move-object/from16 v20, v14

    .line 1402
    .line 1403
    goto/16 :goto_6

    .line 1404
    .line 1405
    :catchall_0
    nop

    .line 1406
    goto :goto_a

    .line 1407
    :cond_12
    :goto_7
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    .line 1408
    .line 1409
    .line 1410
    move-result v1

    .line 1411
    if-nez v1, :cond_13

    .line 1412
    .line 1413
    :goto_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1414
    .line 1415
    .line 1416
    :cond_13
    move-object/from16 v1, p0

    .line 1417
    .line 1418
    goto :goto_b

    .line 1419
    :catchall_1
    :goto_9
    nop

    .line 1420
    move-object v15, v4

    .line 1421
    goto :goto_a

    .line 1422
    :catchall_2
    const/4 v4, 0x0

    .line 1423
    goto :goto_9

    .line 1424
    :goto_a
    if-eqz v15, :cond_13

    .line 1425
    .line 1426
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    .line 1427
    .line 1428
    .line 1429
    move-result v1

    .line 1430
    if-nez v1, :cond_13

    .line 1431
    .line 1432
    goto :goto_8

    .line 1433
    :goto_b
    iget-object v3, v1, Lb7/N0;->N:[Ljava/util/ArrayList;

    .line 1434
    .line 1435
    const/4 v4, 0x0

    .line 1436
    aput-object v2, v3, v4

    .line 1437
    .line 1438
    new-instance v2, Lorg/json/JSONArray;

    .line 1439
    .line 1440
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1441
    .line 1442
    .line 1443
    aput-object v2, v17, v4

    .line 1444
    .line 1445
    new-instance v2, Lorg/json/JSONArray;

    .line 1446
    .line 1447
    aget-object v3, v3, v4

    .line 1448
    .line 1449
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1450
    .line 1451
    .line 1452
    aput-object v2, v17, v4

    .line 1453
    .line 1454
    :goto_c
    invoke-virtual {v0}, LY/s;->j()LY/v;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v2

    .line 1458
    if-nez v2, :cond_14

    .line 1459
    .line 1460
    return-void

    .line 1461
    :cond_14
    invoke-virtual {v0}, LY/s;->j()LY/v;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v0

    .line 1465
    new-instance v2, Lcom/google/android/gms/internal/cast/X;

    .line 1466
    .line 1467
    const/16 v3, 0x15

    .line 1468
    .line 1469
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 1470
    .line 1471
    .line 1472
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1473
    .line 1474
    .line 1475
    return-void
.end method
