.class public final Lb7/V0;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpe/hf/black20/ParentalControlActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/ParentalControlActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb7/V0;->a:I

    invoke-direct {p0, p1, v0}, Lb7/V0;-><init>(Lpe/hf/black20/ParentalControlActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/ParentalControlActivity;I)V
    .locals 0

    .line 2
    iput p2, p0, Lb7/V0;->a:I

    iput-object p1, p0, Lb7/V0;->b:Lpe/hf/black20/ParentalControlActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/ParentalControlActivity;La/r;)V
    .locals 0

    .line 3
    const/4 p2, 0x2

    iput p2, p0, Lb7/V0;->a:I

    invoke-direct {p0, p1, p2}, Lb7/V0;-><init>(Lpe/hf/black20/ParentalControlActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/ParentalControlActivity;Ljava/lang/Object;)V
    .locals 0

    .line 4
    const/4 p2, 0x1

    iput p2, p0, Lb7/V0;->a:I

    invoke-direct {p0, p1, p2}, Lb7/V0;-><init>(Lpe/hf/black20/ParentalControlActivity;I)V

    return-void
.end method


# virtual methods
.method public final varargs a()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb7/V0;->a:I

    .line 4
    .line 5
    const-string v3, "00000"

    .line 6
    .line 7
    const-string v4, "0"

    .line 8
    .line 9
    const-string v6, "99999"

    .line 10
    .line 11
    const-string v7, "yes"

    .line 12
    .line 13
    const-string v8, "category_id"

    .line 14
    .line 15
    const-string v9, "category_name"

    .line 16
    .line 17
    const-string v10, "parent_id"

    .line 18
    .line 19
    const-string v11, "null"

    .line 20
    .line 21
    const-string v12, ""

    .line 22
    .line 23
    const-string v13, "filter_status"

    .line 24
    .line 25
    const-string v14, "No"

    .line 26
    .line 27
    const-string v15, "Yes"

    .line 28
    .line 29
    const-string v2, "no"

    .line 30
    .line 31
    const-string v5, "pe.hf.black20"

    .line 32
    .line 33
    move-object/from16 v17, v7

    .line 34
    .line 35
    iget-object v7, v0, Lb7/V0;->b:Lpe/hf/black20/ParentalControlActivity;

    .line 36
    .line 37
    packed-switch v1, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, v7, Lpe/hf/black20/ParentalControlActivity;->S:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 48
    .line 49
    .line 50
    iget-object v1, v7, Lpe/hf/black20/ParentalControlActivity;->G:Lpe/hf/black20/ParentalControlActivity;

    .line 51
    .line 52
    new-instance v0, Lc7/d;

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    move-object/from16 v19, v7

    .line 58
    .line 59
    new-instance v7, Lc7/b;

    .line 60
    .line 61
    move-object/from16 v20, v15

    .line 62
    .line 63
    const/4 v15, 0x1

    .line 64
    invoke-direct {v7, v1, v15}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 65
    .line 66
    .line 67
    new-instance v7, Lc7/b;

    .line 68
    .line 69
    const/4 v15, 0x0

    .line 70
    invoke-direct {v7, v1, v15}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v5, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    sget-object v15, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-interface {v5, v13, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v15

    .line 90
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v15

    .line 94
    if-nez v15, :cond_1

    .line 95
    .line 96
    invoke-interface {v5, v13, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v15

    .line 100
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    if-nez v12, :cond_1

    .line 105
    .line 106
    invoke-interface {v5, v13, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_0

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    move-object/from16 v2, v20

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    :goto_0
    move-object v2, v14

    .line 121
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lc7/d;->s0()Ljava/util/ArrayList;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    new-instance v5, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    const/4 v11, 0x0

    .line 139
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result v12

    .line 143
    if-ge v11, v12, :cond_5

    .line 144
    .line 145
    if-nez v11, :cond_2

    .line 146
    .line 147
    new-instance v12, Ljava/util/HashMap;

    .line 148
    .line 149
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v12, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    const v13, 0x7f1301cc

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v15

    .line 162
    invoke-virtual {v12, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v12, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v12

    .line 175
    if-eqz v12, :cond_2

    .line 176
    .line 177
    new-instance v12, Ljava/util/HashMap;

    .line 178
    .line 179
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v12, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    const v13, 0x7f13020b

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v15

    .line 192
    invoke-virtual {v12, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v12, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :cond_2
    move-object/from16 v15, v20

    .line 202
    .line 203
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    if-eqz v12, :cond_4

    .line 208
    .line 209
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    check-cast v12, Lh7/a;

    .line 214
    .line 215
    iget-object v12, v12, Lh7/a;->b:Ljava/lang/String;

    .line 216
    .line 217
    const-string v13, "VOD"

    .line 218
    .line 219
    invoke-virtual {v7, v12, v13}, Lc7/b;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    move-object/from16 v13, v17

    .line 224
    .line 225
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    if-eqz v12, :cond_3

    .line 230
    .line 231
    new-instance v12, Ljava/util/HashMap;

    .line 232
    .line 233
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v17

    .line 240
    move-object/from16 v18, v1

    .line 241
    .line 242
    move-object/from16 v1, v17

    .line 243
    .line 244
    check-cast v1, Lh7/a;

    .line 245
    .line 246
    iget-object v1, v1, Lh7/a;->a:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v12, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Lh7/a;

    .line 256
    .line 257
    iget-object v1, v1, Lh7/a;->b:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v12, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    check-cast v1, Lh7/a;

    .line 267
    .line 268
    iget-object v1, v1, Lh7/a;->c:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v12, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_3
    move-object/from16 v18, v1

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_4
    move-object/from16 v18, v1

    .line 281
    .line 282
    move-object/from16 v13, v17

    .line 283
    .line 284
    new-instance v1, Ljava/util/HashMap;

    .line 285
    .line 286
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    check-cast v12, Lh7/a;

    .line 294
    .line 295
    iget-object v12, v12, Lh7/a;->a:Ljava/lang/String;

    .line 296
    .line 297
    invoke-virtual {v1, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v12

    .line 304
    check-cast v12, Lh7/a;

    .line 305
    .line 306
    iget-object v12, v12, Lh7/a;->b:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v1, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    check-cast v12, Lh7/a;

    .line 316
    .line 317
    iget-object v12, v12, Lh7/a;->c:Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {v1, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 326
    .line 327
    move-object/from16 v17, v13

    .line 328
    .line 329
    move-object/from16 v20, v15

    .line 330
    .line 331
    move-object/from16 v1, v18

    .line 332
    .line 333
    goto/16 :goto_2

    .line 334
    .line 335
    :cond_5
    move-object/from16 v1, v19

    .line 336
    .line 337
    iput-object v5, v1, Lpe/hf/black20/ParentalControlActivity;->S:Ljava/util/ArrayList;

    .line 338
    .line 339
    const/4 v0, 0x0

    .line 340
    iput-object v0, v1, Lpe/hf/black20/ParentalControlActivity;->V:Lorg/json/JSONArray;

    .line 341
    .line 342
    new-instance v0, Lorg/json/JSONArray;

    .line 343
    .line 344
    iget-object v2, v1, Lpe/hf/black20/ParentalControlActivity;->S:Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 347
    .line 348
    .line 349
    iput-object v0, v1, Lpe/hf/black20/ParentalControlActivity;->V:Lorg/json/JSONArray;

    .line 350
    .line 351
    return-void

    .line 352
    :pswitch_0
    move-object v1, v7

    .line 353
    move-object/from16 v0, v17

    .line 354
    .line 355
    new-instance v3, Ljava/util/ArrayList;

    .line 356
    .line 357
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .line 359
    .line 360
    iput-object v3, v1, Lpe/hf/black20/ParentalControlActivity;->R:Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 363
    .line 364
    .line 365
    iget-object v3, v1, Lpe/hf/black20/ParentalControlActivity;->G:Lpe/hf/black20/ParentalControlActivity;

    .line 366
    .line 367
    new-instance v4, Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .line 371
    .line 372
    new-instance v6, Ljava/util/ArrayList;

    .line 373
    .line 374
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .line 376
    .line 377
    new-instance v6, Lc7/b;

    .line 378
    .line 379
    const/4 v7, 0x1

    .line 380
    invoke-direct {v6, v3, v7}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 381
    .line 382
    .line 383
    new-instance v6, Lc7/d;

    .line 384
    .line 385
    invoke-direct {v6, v3}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 386
    .line 387
    .line 388
    new-instance v7, Lc7/b;

    .line 389
    .line 390
    move-object/from16 v19, v1

    .line 391
    .line 392
    const/4 v1, 0x0

    .line 393
    invoke-direct {v7, v3, v1}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v3, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    invoke-virtual {v6}, Lc7/d;->q0()Ljava/util/ArrayList;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    sget-object v5, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    if-eqz v2, :cond_7

    .line 411
    .line 412
    const/4 v2, 0x0

    .line 413
    invoke-interface {v3, v13, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    if-nez v5, :cond_7

    .line 422
    .line 423
    invoke-interface {v3, v13, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    if-nez v5, :cond_7

    .line 432
    .line 433
    invoke-interface {v3, v13, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    if-eqz v2, :cond_6

    .line 442
    .line 443
    goto :goto_4

    .line 444
    :cond_6
    move-object v14, v15

    .line 445
    :cond_7
    :goto_4
    const/4 v2, 0x0

    .line 446
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    if-ge v2, v3, :cond_a

    .line 451
    .line 452
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    if-eqz v3, :cond_8

    .line 457
    .line 458
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    check-cast v3, Lh7/a;

    .line 463
    .line 464
    iget-object v3, v3, Lh7/a;->b:Ljava/lang/String;

    .line 465
    .line 466
    const-string v5, "Live"

    .line 467
    .line 468
    invoke-virtual {v7, v3, v5}, Lc7/b;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    if-eqz v3, :cond_9

    .line 477
    .line 478
    new-instance v3, Ljava/util/HashMap;

    .line 479
    .line 480
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    check-cast v5, Lh7/a;

    .line 488
    .line 489
    iget-object v5, v5, Lh7/a;->a:Ljava/lang/String;

    .line 490
    .line 491
    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v5

    .line 498
    check-cast v5, Lh7/a;

    .line 499
    .line 500
    iget-object v5, v5, Lh7/a;->b:Ljava/lang/String;

    .line 501
    .line 502
    invoke-virtual {v3, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v5

    .line 509
    check-cast v5, Lh7/a;

    .line 510
    .line 511
    iget-object v5, v5, Lh7/a;->c:Ljava/lang/String;

    .line 512
    .line 513
    invoke-virtual {v3, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    goto :goto_6

    .line 520
    :cond_8
    new-instance v3, Ljava/util/HashMap;

    .line 521
    .line 522
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    check-cast v5, Lh7/a;

    .line 530
    .line 531
    iget-object v5, v5, Lh7/a;->a:Ljava/lang/String;

    .line 532
    .line 533
    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v5

    .line 540
    check-cast v5, Lh7/a;

    .line 541
    .line 542
    iget-object v5, v5, Lh7/a;->b:Ljava/lang/String;

    .line 543
    .line 544
    invoke-virtual {v3, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v5

    .line 551
    check-cast v5, Lh7/a;

    .line 552
    .line 553
    iget-object v5, v5, Lh7/a;->c:Ljava/lang/String;

    .line 554
    .line 555
    invoke-virtual {v3, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    :cond_9
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 562
    .line 563
    goto :goto_5

    .line 564
    :cond_a
    move-object/from16 v2, v19

    .line 565
    .line 566
    iput-object v4, v2, Lpe/hf/black20/ParentalControlActivity;->R:Ljava/util/ArrayList;

    .line 567
    .line 568
    const/4 v0, 0x0

    .line 569
    iput-object v0, v2, Lpe/hf/black20/ParentalControlActivity;->U:Lorg/json/JSONArray;

    .line 570
    .line 571
    new-instance v0, Lorg/json/JSONArray;

    .line 572
    .line 573
    iget-object v1, v2, Lpe/hf/black20/ParentalControlActivity;->R:Ljava/util/ArrayList;

    .line 574
    .line 575
    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 576
    .line 577
    .line 578
    iput-object v0, v2, Lpe/hf/black20/ParentalControlActivity;->U:Lorg/json/JSONArray;

    .line 579
    .line 580
    return-void

    .line 581
    :pswitch_1
    move-object v1, v7

    .line 582
    move-object/from16 v0, v17

    .line 583
    .line 584
    new-instance v7, Ljava/util/ArrayList;

    .line 585
    .line 586
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .line 588
    .line 589
    iput-object v7, v1, Lpe/hf/black20/ParentalControlActivity;->T:Ljava/util/ArrayList;

    .line 590
    .line 591
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 592
    .line 593
    .line 594
    iget-object v7, v1, Lpe/hf/black20/ParentalControlActivity;->G:Lpe/hf/black20/ParentalControlActivity;

    .line 595
    .line 596
    move-object/from16 v19, v1

    .line 597
    .line 598
    new-instance v1, Lc7/d;

    .line 599
    .line 600
    invoke-direct {v1, v7}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 601
    .line 602
    .line 603
    move-object/from16 v17, v0

    .line 604
    .line 605
    new-instance v0, Lc7/b;

    .line 606
    .line 607
    move-object/from16 v20, v15

    .line 608
    .line 609
    const/4 v15, 0x1

    .line 610
    invoke-direct {v0, v7, v15}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 611
    .line 612
    .line 613
    new-instance v0, Lc7/b;

    .line 614
    .line 615
    const/4 v15, 0x0

    .line 616
    invoke-direct {v0, v7, v15}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v7, v5, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 620
    .line 621
    .line 622
    move-result-object v5

    .line 623
    sget-object v15, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 624
    .line 625
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    if-eqz v2, :cond_c

    .line 630
    .line 631
    const/4 v2, 0x0

    .line 632
    invoke-interface {v5, v13, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v15

    .line 636
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v15

    .line 640
    if-nez v15, :cond_c

    .line 641
    .line 642
    invoke-interface {v5, v13, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v15

    .line 646
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v12

    .line 650
    if-nez v12, :cond_c

    .line 651
    .line 652
    invoke-interface {v5, v13, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v5

    .line 656
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v2

    .line 660
    if-eqz v2, :cond_b

    .line 661
    .line 662
    goto :goto_7

    .line 663
    :cond_b
    move-object/from16 v14, v20

    .line 664
    .line 665
    :cond_c
    :goto_7
    new-instance v2, Ljava/util/ArrayList;

    .line 666
    .line 667
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v1}, Lc7/d;->n0()Ljava/util/ArrayList;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    new-instance v2, Ljava/util/ArrayList;

    .line 678
    .line 679
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .line 681
    .line 682
    const/4 v5, 0x0

    .line 683
    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 684
    .line 685
    .line 686
    move-result v11

    .line 687
    if-ge v5, v11, :cond_10

    .line 688
    .line 689
    if-nez v5, :cond_d

    .line 690
    .line 691
    new-instance v11, Ljava/util/HashMap;

    .line 692
    .line 693
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v11, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    const v12, 0x7f1301cc

    .line 700
    .line 701
    .line 702
    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v13

    .line 706
    invoke-virtual {v11, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v11, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    new-instance v11, Ljava/util/HashMap;

    .line 716
    .line 717
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v11, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    const v13, 0x7f13020b

    .line 724
    .line 725
    .line 726
    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v15

    .line 730
    invoke-virtual {v11, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v11, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    :goto_9
    move-object/from16 v11, v20

    .line 740
    .line 741
    goto :goto_a

    .line 742
    :cond_d
    const v12, 0x7f1301cc

    .line 743
    .line 744
    .line 745
    const v13, 0x7f13020b

    .line 746
    .line 747
    .line 748
    goto :goto_9

    .line 749
    :goto_a
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    move-result v15

    .line 753
    if-eqz v15, :cond_e

    .line 754
    .line 755
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v15

    .line 759
    check-cast v15, Lh7/a;

    .line 760
    .line 761
    iget-object v15, v15, Lh7/a;->b:Ljava/lang/String;

    .line 762
    .line 763
    const-string v12, "Series"

    .line 764
    .line 765
    invoke-virtual {v0, v15, v12}, Lc7/b;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v12

    .line 769
    move-object/from16 v15, v17

    .line 770
    .line 771
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    move-result v12

    .line 775
    if-eqz v12, :cond_f

    .line 776
    .line 777
    new-instance v12, Ljava/util/HashMap;

    .line 778
    .line 779
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v16

    .line 786
    move-object/from16 v13, v16

    .line 787
    .line 788
    check-cast v13, Lh7/a;

    .line 789
    .line 790
    iget-object v13, v13, Lh7/a;->a:Ljava/lang/String;

    .line 791
    .line 792
    invoke-virtual {v12, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v13

    .line 799
    check-cast v13, Lh7/a;

    .line 800
    .line 801
    iget-object v13, v13, Lh7/a;->b:Ljava/lang/String;

    .line 802
    .line 803
    invoke-virtual {v12, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v13

    .line 810
    check-cast v13, Lh7/a;

    .line 811
    .line 812
    iget-object v13, v13, Lh7/a;->c:Ljava/lang/String;

    .line 813
    .line 814
    invoke-virtual {v12, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    goto :goto_b

    .line 821
    :cond_e
    move-object/from16 v15, v17

    .line 822
    .line 823
    new-instance v12, Ljava/util/HashMap;

    .line 824
    .line 825
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v13

    .line 832
    check-cast v13, Lh7/a;

    .line 833
    .line 834
    iget-object v13, v13, Lh7/a;->a:Ljava/lang/String;

    .line 835
    .line 836
    invoke-virtual {v12, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v13

    .line 843
    check-cast v13, Lh7/a;

    .line 844
    .line 845
    iget-object v13, v13, Lh7/a;->b:Ljava/lang/String;

    .line 846
    .line 847
    invoke-virtual {v12, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    move-result-object v13

    .line 854
    check-cast v13, Lh7/a;

    .line 855
    .line 856
    iget-object v13, v13, Lh7/a;->c:Ljava/lang/String;

    .line 857
    .line 858
    invoke-virtual {v12, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    .line 863
    .line 864
    :cond_f
    :goto_b
    add-int/lit8 v5, v5, 0x1

    .line 865
    .line 866
    move-object/from16 v20, v11

    .line 867
    .line 868
    move-object/from16 v17, v15

    .line 869
    .line 870
    goto/16 :goto_8

    .line 871
    .line 872
    :cond_10
    move-object/from16 v5, v19

    .line 873
    .line 874
    iput-object v2, v5, Lpe/hf/black20/ParentalControlActivity;->T:Ljava/util/ArrayList;

    .line 875
    .line 876
    const/4 v0, 0x0

    .line 877
    iput-object v0, v5, Lpe/hf/black20/ParentalControlActivity;->W:Lorg/json/JSONArray;

    .line 878
    .line 879
    new-instance v0, Lorg/json/JSONArray;

    .line 880
    .line 881
    iget-object v1, v5, Lpe/hf/black20/ParentalControlActivity;->T:Ljava/util/ArrayList;

    .line 882
    .line 883
    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 884
    .line 885
    .line 886
    iput-object v0, v5, Lpe/hf/black20/ParentalControlActivity;->W:Lorg/json/JSONArray;

    .line 887
    .line 888
    return-void

    .line 889
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Void;)V
    .locals 4

    .line 1
    iget v0, p0, Lb7/V0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lb7/V0;->b:Lpe/hf/black20/ParentalControlActivity;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lpe/hf/black20/ParentalControlActivity;->X:Landroid/widget/EditText;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance p1, Lb7/V0;

    .line 18
    .line 19
    invoke-direct {p1, v2}, Lb7/V0;-><init>(Lpe/hf/black20/ParentalControlActivity;)V

    .line 20
    .line 21
    .line 22
    new-array v0, v1, [Ljava/lang/Void;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 25
    .line 26
    .line 27
    new-instance p1, Lb7/M;

    .line 28
    .line 29
    iget-object v0, v2, Lpe/hf/black20/ParentalControlActivity;->G:Lpe/hf/black20/ParentalControlActivity;

    .line 30
    .line 31
    iget-object v1, v2, Lpe/hf/black20/ParentalControlActivity;->S:Ljava/util/ArrayList;

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    invoke-direct {p1, v3, v0, v1}, Lb7/M;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v2, Lpe/hf/black20/ParentalControlActivity;->O:Landroid/widget/ListView;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, v2, Lpe/hf/black20/ParentalControlActivity;->O:Landroid/widget/ListView;

    .line 43
    .line 44
    new-instance v0, Lb7/f;

    .line 45
    .line 46
    const/16 v1, 0x10

    .line 47
    .line 48
    invoke-direct {v0, p0, v1}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object p1, Lpe/hf/black20/ParentalControlActivity;->X:Landroid/widget/EditText;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance p1, Lb7/V0;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-direct {p1, v2, v0}, Lb7/V0;-><init>(Lpe/hf/black20/ParentalControlActivity;La/r;)V

    .line 67
    .line 68
    .line 69
    new-array v0, v1, [Ljava/lang/Void;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    .line 73
    .line 74
    new-instance p1, Lb7/M;

    .line 75
    .line 76
    iget-object v0, v2, Lpe/hf/black20/ParentalControlActivity;->G:Lpe/hf/black20/ParentalControlActivity;

    .line 77
    .line 78
    iget-object v1, v2, Lpe/hf/black20/ParentalControlActivity;->R:Ljava/util/ArrayList;

    .line 79
    .line 80
    const/4 v3, 0x2

    .line 81
    invoke-direct {p1, v3, v0, v1}, Lb7/M;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v2, Lpe/hf/black20/ParentalControlActivity;->N:Landroid/widget/ListView;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, v2, Lpe/hf/black20/ParentalControlActivity;->N:Landroid/widget/ListView;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 92
    .line 93
    .line 94
    iget-object p1, v2, Lpe/hf/black20/ParentalControlActivity;->N:Landroid/widget/ListView;

    .line 95
    .line 96
    new-instance v0, Lb7/f;

    .line 97
    .line 98
    const/16 v1, 0xf

    .line 99
    .line 100
    invoke-direct {v0, p0, v1}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, v2, Lpe/hf/black20/ParentalControlActivity;->Q:Landroid/widget/ProgressBar;

    .line 111
    .line 112
    const/4 v0, 0x4

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    new-instance p1, Lb7/M;

    .line 117
    .line 118
    iget-object v0, v2, Lpe/hf/black20/ParentalControlActivity;->G:Lpe/hf/black20/ParentalControlActivity;

    .line 119
    .line 120
    iget-object v1, v2, Lpe/hf/black20/ParentalControlActivity;->T:Ljava/util/ArrayList;

    .line 121
    .line 122
    const/4 v3, 0x1

    .line 123
    invoke-direct {p1, v3, v0, v1}, Lb7/M;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, v2, Lpe/hf/black20/ParentalControlActivity;->P:Landroid/widget/ListView;

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, v2, Lpe/hf/black20/ParentalControlActivity;->P:Landroid/widget/ListView;

    .line 132
    .line 133
    new-instance v0, Lb7/f;

    .line 134
    .line 135
    const/16 v1, 0xe

    .line 136
    .line 137
    invoke-direct {v0, p0, v1}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lb7/V0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, [Ljava/lang/Void;

    .line 8
    .line 9
    invoke-virtual {p0}, Lb7/V0;->a()V

    .line 10
    .line 11
    .line 12
    return-object v1

    .line 13
    :pswitch_0
    check-cast p1, [Ljava/lang/Void;

    .line 14
    .line 15
    invoke-virtual {p0}, Lb7/V0;->a()V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :pswitch_1
    check-cast p1, [Ljava/lang/Void;

    .line 20
    .line 21
    invoke-virtual {p0}, Lb7/V0;->a()V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lb7/V0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Void;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lb7/V0;->b(Ljava/lang/Void;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lb7/V0;->b(Ljava/lang/Void;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast p1, Ljava/lang/Void;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lb7/V0;->b(Ljava/lang/Void;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreExecute()V
    .locals 3

    .line 1
    iget v0, p0, Lb7/V0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lb7/V0;->b:Lpe/hf/black20/ParentalControlActivity;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 10
    .line 11
    .line 12
    iget-object v0, v2, Lpe/hf/black20/ParentalControlActivity;->Q:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 19
    .line 20
    .line 21
    iget-object v0, v2, Lpe/hf/black20/ParentalControlActivity;->Q:Landroid/widget/ProgressBar;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 28
    .line 29
    .line 30
    iget-object v0, v2, Lpe/hf/black20/ParentalControlActivity;->Q:Landroid/widget/ProgressBar;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
