.class public final LZ3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ3/J;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:LZ3/i;

.field public final c:LZ3/c0;

.field public final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/app/Application;LZ3/i;LZ3/c0;LZ3/F;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LZ3/g;->a:Landroid/app/Application;

    .line 5
    .line 6
    iput-object p2, p0, LZ3/g;->b:LZ3/i;

    .line 7
    .line 8
    iput-object p4, p0, LZ3/g;->d:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-object p3, p0, LZ3/g;->c:LZ3/c0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const v6, 0x5a5b64d

    .line 14
    .line 15
    .line 16
    if-eq v5, v6, :cond_1

    .line 17
    .line 18
    const v6, 0x6c257df

    .line 19
    .line 20
    .line 21
    if-eq v5, v6, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v5, "write"

    .line 25
    .line 26
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string v5, "clear"

    .line 35
    .line 36
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    const/4 v2, -0x1

    .line 45
    :goto_1
    iget-object v5, v1, LZ3/g;->a:Landroid/app/Application;

    .line 46
    .line 47
    const-string v6, "UserMessagingPlatform"

    .line 48
    .line 49
    if-eqz v2, :cond_c

    .line 50
    .line 51
    if-eq v2, v4, :cond_3

    .line 52
    .line 53
    return v3

    .line 54
    :cond_3
    const-string v2, "keys"

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_a

    .line 61
    .line 62
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_4

    .line 67
    .line 68
    goto/16 :goto_6

    .line 69
    .line 70
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    const/4 v8, 0x0

    .line 80
    :goto_2
    if-ge v8, v7, :cond_6

    .line 81
    .line 82
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-eqz v10, :cond_5

    .line 91
    .line 92
    new-instance v9, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v10, "Action[clear]: empty key at index: "

    .line 95
    .line 96
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_5
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :goto_3
    add-int/2addr v8, v4

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    new-instance v2, LZ3/D;

    .line 116
    .line 117
    invoke-direct {v2, v5}, LZ3/D;-><init>(Landroid/app/Application;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    iget-object v8, v2, LZ3/D;->c:Ljava/util/HashMap;

    .line 129
    .line 130
    if-eqz v7, :cond_9

    .line 131
    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    check-cast v7, Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/Cw;->z(Landroid/content/Context;Ljava/lang/String;)LZ3/n;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    if-nez v9, :cond_7

    .line 143
    .line 144
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    const-string v8, "clearKeys: unable to process key: "

    .line 149
    .line 150
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_7
    iget-object v7, v9, LZ3/n;->G:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v7, Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    if-nez v10, :cond_8

    .line 167
    .line 168
    iget-object v10, v2, LZ3/D;->b:Landroid/content/Context;

    .line 169
    .line 170
    invoke-virtual {v10, v7, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    invoke-virtual {v8, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    :cond_8
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    check-cast v7, Landroid/content/SharedPreferences$Editor;

    .line 186
    .line 187
    iget-object v8, v9, LZ3/n;->H:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v8, Ljava/lang/String;

    .line 190
    .line 191
    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_9
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_b

    .line 208
    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    check-cast v2, Landroid/content/SharedPreferences$Editor;

    .line 214
    .line 215
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_a
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    const-string v2, "Action[clear]: wrong args."

    .line 228
    .line 229
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    :cond_b
    return v4

    .line 237
    :cond_c
    new-instance v2, LZ3/D;

    .line 238
    .line 239
    invoke-direct {v2, v5}, LZ3/D;-><init>(Landroid/app/Application;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    iget-object v9, v2, LZ3/D;->a:Ljava/util/HashMap;

    .line 251
    .line 252
    iget-object v10, v2, LZ3/D;->c:Ljava/util/HashMap;

    .line 253
    .line 254
    iget-object v11, v1, LZ3/g;->b:LZ3/i;

    .line 255
    .line 256
    if-eqz v8, :cond_16

    .line 257
    .line 258
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    check-cast v8, Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v13

    .line 272
    new-instance v14, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string v15, "Writing to storage: ["

    .line 275
    .line 276
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v15, "] "

    .line 283
    .line 284
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v13

    .line 294
    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    iget-object v13, v2, LZ3/D;->b:Landroid/content/Context;

    .line 298
    .line 299
    invoke-static {v13, v8}, Lcom/google/android/gms/internal/ads/Cw;->z(Landroid/content/Context;Ljava/lang/String;)LZ3/n;

    .line 300
    .line 301
    .line 302
    move-result-object v14

    .line 303
    if-nez v14, :cond_d

    .line 304
    .line 305
    goto/16 :goto_9

    .line 306
    .line 307
    :cond_d
    iget-object v15, v14, LZ3/n;->G:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v15, Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v10, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v16

    .line 315
    if-nez v16, :cond_e

    .line 316
    .line 317
    invoke-virtual {v13, v15, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 318
    .line 319
    .line 320
    move-result-object v13

    .line 321
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 322
    .line 323
    .line 324
    move-result-object v13

    .line 325
    invoke-virtual {v10, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    :cond_e
    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v10

    .line 332
    check-cast v10, Landroid/content/SharedPreferences$Editor;

    .line 333
    .line 334
    instance-of v13, v12, Ljava/lang/Integer;

    .line 335
    .line 336
    iget-object v14, v14, LZ3/n;->H:Ljava/lang/Object;

    .line 337
    .line 338
    if-eqz v13, :cond_f

    .line 339
    .line 340
    check-cast v12, Ljava/lang/Integer;

    .line 341
    .line 342
    check-cast v14, Ljava/lang/String;

    .line 343
    .line 344
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 345
    .line 346
    .line 347
    move-result v13

    .line 348
    invoke-interface {v10, v14, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 349
    .line 350
    .line 351
    sget-object v10, LZ3/D;->d:LZ3/O;

    .line 352
    .line 353
    invoke-virtual {v10, v14}, LZ3/K;->contains(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v10

    .line 357
    if-eqz v10, :cond_14

    .line 358
    .line 359
    invoke-virtual {v9, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    goto :goto_8

    .line 363
    :cond_f
    instance-of v9, v12, Ljava/lang/Long;

    .line 364
    .line 365
    if-eqz v9, :cond_10

    .line 366
    .line 367
    check-cast v12, Ljava/lang/Long;

    .line 368
    .line 369
    check-cast v14, Ljava/lang/String;

    .line 370
    .line 371
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 372
    .line 373
    .line 374
    move-result-wide v12

    .line 375
    invoke-interface {v10, v14, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 376
    .line 377
    .line 378
    goto :goto_8

    .line 379
    :cond_10
    instance-of v9, v12, Ljava/lang/Double;

    .line 380
    .line 381
    if-eqz v9, :cond_11

    .line 382
    .line 383
    check-cast v12, Ljava/lang/Double;

    .line 384
    .line 385
    check-cast v14, Ljava/lang/String;

    .line 386
    .line 387
    invoke-virtual {v12}, Ljava/lang/Double;->floatValue()F

    .line 388
    .line 389
    .line 390
    move-result v9

    .line 391
    invoke-interface {v10, v14, v9}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 392
    .line 393
    .line 394
    goto :goto_8

    .line 395
    :cond_11
    instance-of v9, v12, Ljava/lang/Float;

    .line 396
    .line 397
    if-eqz v9, :cond_12

    .line 398
    .line 399
    check-cast v12, Ljava/lang/Float;

    .line 400
    .line 401
    check-cast v14, Ljava/lang/String;

    .line 402
    .line 403
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 404
    .line 405
    .line 406
    move-result v9

    .line 407
    invoke-interface {v10, v14, v9}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 408
    .line 409
    .line 410
    goto :goto_8

    .line 411
    :cond_12
    instance-of v9, v12, Ljava/lang/Boolean;

    .line 412
    .line 413
    if-eqz v9, :cond_13

    .line 414
    .line 415
    check-cast v12, Ljava/lang/Boolean;

    .line 416
    .line 417
    check-cast v14, Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 420
    .line 421
    .line 422
    move-result v9

    .line 423
    invoke-interface {v10, v14, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 424
    .line 425
    .line 426
    goto :goto_8

    .line 427
    :cond_13
    instance-of v9, v12, Ljava/lang/String;

    .line 428
    .line 429
    if-eqz v9, :cond_15

    .line 430
    .line 431
    check-cast v12, Ljava/lang/String;

    .line 432
    .line 433
    check-cast v14, Ljava/lang/String;

    .line 434
    .line 435
    invoke-interface {v10, v14, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 436
    .line 437
    .line 438
    :cond_14
    :goto_8
    iget-object v9, v11, LZ3/i;->c:Ljava/util/HashSet;

    .line 439
    .line 440
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    goto/16 :goto_7

    .line 444
    .line 445
    :cond_15
    :goto_9
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v8

    .line 449
    const-string v9, "Failed writing key: "

    .line 450
    .line 451
    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v8

    .line 455
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .line 457
    .line 458
    goto/16 :goto_7

    .line 459
    .line 460
    :cond_16
    iget-object v0, v11, LZ3/i;->b:Landroid/content/SharedPreferences;

    .line 461
    .line 462
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    iget-object v2, v11, LZ3/i;->c:Ljava/util/HashSet;

    .line 467
    .line 468
    const-string v5, "written_values"

    .line 469
    .line 470
    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 475
    .line 476
    .line 477
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    if-eqz v2, :cond_17

    .line 490
    .line 491
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    check-cast v2, Landroid/content/SharedPreferences$Editor;

    .line 496
    .line 497
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 498
    .line 499
    .line 500
    goto :goto_a

    .line 501
    :cond_17
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-le v0, v4, :cond_34

    .line 506
    .line 507
    const-class v0, Ljava/lang/String;

    .line 508
    .line 509
    const-string v2, "valueOf"

    .line 510
    .line 511
    iget-object v5, v1, LZ3/g;->c:LZ3/c0;

    .line 512
    .line 513
    iget-object v8, v5, LZ3/c0;->a:LZ3/e;

    .line 514
    .line 515
    iget-object v10, v8, LZ3/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 516
    .line 517
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v11

    .line 521
    iget-object v12, v8, LZ3/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 522
    .line 523
    iget-object v13, v8, LZ3/e;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 524
    .line 525
    iget-object v14, v8, LZ3/e;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 526
    .line 527
    iget-object v15, v8, LZ3/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 528
    .line 529
    if-eqz v11, :cond_18

    .line 530
    .line 531
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    check-cast v0, Ljava/lang/Boolean;

    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-nez v0, :cond_1a

    .line 542
    .line 543
    :goto_b
    move-object/from16 v19, v9

    .line 544
    .line 545
    goto/16 :goto_18

    .line 546
    .line 547
    :cond_18
    iget-object v11, v8, LZ3/e;->a:Landroid/content/Context;

    .line 548
    .line 549
    if-nez v11, :cond_19

    .line 550
    .line 551
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 552
    .line 553
    invoke-virtual {v10, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    goto :goto_b

    .line 557
    :cond_19
    :try_start_0
    const-class v7, Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 558
    .line 559
    const-string v3, "getInstance"

    .line 560
    .line 561
    new-array v1, v4, [Ljava/lang/Class;

    .line 562
    .line 563
    const-class v18, Landroid/content/Context;

    .line 564
    .line 565
    const/16 v17, 0x0

    .line 566
    .line 567
    aput-object v18, v1, v17

    .line 568
    .line 569
    invoke-virtual {v7, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    new-array v3, v4, [Ljava/lang/Object;

    .line 574
    .line 575
    aput-object v11, v3, v17

    .line 576
    .line 577
    const/4 v11, 0x0

    .line 578
    invoke-virtual {v1, v11, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    invoke-virtual {v15, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    const-string v1, "setConsent"

    .line 586
    .line 587
    new-array v3, v4, [Ljava/lang/Class;

    .line 588
    .line 589
    const-class v11, Ljava/util/Map;

    .line 590
    .line 591
    const/16 v17, 0x0

    .line 592
    .line 593
    aput-object v11, v3, v17

    .line 594
    .line 595
    invoke-virtual {v7, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    invoke-virtual {v14, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 600
    .line 601
    .line 602
    const-class v1, LI4/a;

    .line 603
    .line 604
    const-class v3, LI4/b;

    .line 605
    .line 606
    new-array v7, v4, [Ljava/lang/Class;

    .line 607
    .line 608
    const/4 v11, 0x0

    .line 609
    aput-object v0, v7, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 610
    .line 611
    const-string v11, "valueOf"

    .line 612
    .line 613
    :try_start_1
    invoke-virtual {v1, v11, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    new-array v7, v4, [Ljava/lang/Class;

    .line 618
    .line 619
    const/4 v11, 0x0

    .line 620
    aput-object v0, v7, v11

    .line 621
    .line 622
    invoke-virtual {v3, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-virtual {v13, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v12, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 630
    .line 631
    .line 632
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 633
    .line 634
    invoke-virtual {v10, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 635
    .line 636
    .line 637
    :cond_1a
    iget-object v0, v5, LZ3/c0;->b:Landroid/content/Context;

    .line 638
    .line 639
    iget-object v1, v8, LZ3/e;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 640
    .line 641
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    if-nez v2, :cond_1b

    .line 646
    .line 647
    :try_start_2
    invoke-static {v0}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    const/16 v3, 0x80

    .line 656
    .line 657
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/U1;->b(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 662
    .line 663
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 664
    .line 665
    .line 666
    goto :goto_d

    .line 667
    :catch_0
    move-exception v0

    .line 668
    goto :goto_c

    .line 669
    :catch_1
    move-exception v0

    .line 670
    :goto_c
    const-string v2, "Failed to get metadata. "

    .line 671
    .line 672
    invoke-static {v6, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 673
    .line 674
    .line 675
    :cond_1b
    :goto_d
    const-string v0, "IABTCF_gdprApplies"

    .line 676
    .line 677
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    check-cast v2, Ljava/lang/Integer;

    .line 682
    .line 683
    new-instance v3, Ljava/util/HashMap;

    .line 684
    .line 685
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 689
    .line 690
    .line 691
    move-result-object v5

    .line 692
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 693
    .line 694
    .line 695
    move-result-object v5

    .line 696
    :cond_1c
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 697
    .line 698
    .line 699
    move-result v7

    .line 700
    if-eqz v7, :cond_30

    .line 701
    .line 702
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object v7

    .line 706
    check-cast v7, Ljava/lang/String;

    .line 707
    .line 708
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    move-result v8

    .line 712
    if-nez v8, :cond_1c

    .line 713
    .line 714
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 715
    .line 716
    .line 717
    move-result v8

    .line 718
    sparse-switch v8, :sswitch_data_0

    .line 719
    .line 720
    .line 721
    goto :goto_f

    .line 722
    :sswitch_0
    const-string v8, "UMP_CoMoAdUserDataPurposeConsentStatus"

    .line 723
    .line 724
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    move-result v8

    .line 728
    if-eqz v8, :cond_1d

    .line 729
    .line 730
    const/4 v8, 0x1

    .line 731
    goto :goto_10

    .line 732
    :sswitch_1
    const-string v8, "UMP_CoMoAdStoragePurposeConsentStatus"

    .line 733
    .line 734
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v8

    .line 738
    if-eqz v8, :cond_1d

    .line 739
    .line 740
    const/4 v8, 0x0

    .line 741
    goto :goto_10

    .line 742
    :sswitch_2
    const-string v8, "UMP_CoMoAnalyticsStoragePurposeConsentStatus"

    .line 743
    .line 744
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    move-result v8

    .line 748
    if-eqz v8, :cond_1d

    .line 749
    .line 750
    const/4 v8, 0x3

    .line 751
    goto :goto_10

    .line 752
    :sswitch_3
    const-string v8, "UMP_CoMoAdPersonalizationPurposeConsentStatus"

    .line 753
    .line 754
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v8

    .line 758
    if-eqz v8, :cond_1d

    .line 759
    .line 760
    const/4 v8, 0x2

    .line 761
    goto :goto_10

    .line 762
    :cond_1d
    :goto_f
    const/4 v8, -0x1

    .line 763
    :goto_10
    const-string v10, "AD_USER_DATA"

    .line 764
    .line 765
    const-string v11, "AD_PERSONALIZATION"

    .line 766
    .line 767
    if-eqz v8, :cond_21

    .line 768
    .line 769
    if-eq v8, v4, :cond_20

    .line 770
    .line 771
    const/4 v4, 0x2

    .line 772
    if-eq v8, v4, :cond_1f

    .line 773
    .line 774
    const/4 v4, 0x3

    .line 775
    if-eq v8, v4, :cond_1e

    .line 776
    .line 777
    :goto_11
    const/4 v4, 0x1

    .line 778
    goto :goto_e

    .line 779
    :cond_1e
    const-string v4, "google_analytics_default_allow_analytics_storage"

    .line 780
    .line 781
    const-string v8, "ANALYTICS_STORAGE"

    .line 782
    .line 783
    goto :goto_12

    .line 784
    :cond_1f
    const-string v4, "google_analytics_default_allow_ad_personalization_signals"

    .line 785
    .line 786
    move-object v8, v11

    .line 787
    goto :goto_12

    .line 788
    :cond_20
    const-string v4, "google_analytics_default_allow_ad_user_data"

    .line 789
    .line 790
    move-object v8, v10

    .line 791
    goto :goto_12

    .line 792
    :cond_21
    const-string v4, "google_analytics_default_allow_ad_storage"

    .line 793
    .line 794
    const-string v8, "AD_STORAGE"

    .line 795
    .line 796
    :goto_12
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v7

    .line 800
    check-cast v7, Ljava/lang/Integer;

    .line 801
    .line 802
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 803
    .line 804
    .line 805
    move-result v7

    .line 806
    move-object/from16 p2, v5

    .line 807
    .line 808
    const/4 v5, -0x1

    .line 809
    if-eq v7, v5, :cond_2f

    .line 810
    .line 811
    const-string v5, "GRANTED"

    .line 812
    .line 813
    move-object/from16 v19, v9

    .line 814
    .line 815
    const/4 v9, 0x1

    .line 816
    if-eq v7, v9, :cond_2e

    .line 817
    .line 818
    const-string v9, "DENIED"

    .line 819
    .line 820
    move-object/from16 v20, v0

    .line 821
    .line 822
    const/4 v0, 0x2

    .line 823
    if-eq v7, v0, :cond_2d

    .line 824
    .line 825
    const/4 v0, 0x4

    .line 826
    if-eq v7, v0, :cond_22

    .line 827
    .line 828
    const/4 v0, 0x5

    .line 829
    if-eq v7, v0, :cond_23

    .line 830
    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    .line 832
    .line 833
    const-string v4, "Invalid CoMo consent status: "

    .line 834
    .line 835
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    .line 847
    .line 848
    :cond_22
    :goto_13
    move-object/from16 v5, p2

    .line 849
    .line 850
    move-object/from16 v9, v19

    .line 851
    .line 852
    move-object/from16 v0, v20

    .line 853
    .line 854
    goto :goto_11

    .line 855
    :cond_23
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    if-nez v0, :cond_24

    .line 860
    .line 861
    goto :goto_14

    .line 862
    :cond_24
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    check-cast v0, Landroid/os/Bundle;

    .line 867
    .line 868
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    if-eqz v0, :cond_26

    .line 873
    .line 874
    instance-of v4, v0, Ljava/lang/Boolean;

    .line 875
    .line 876
    if-eqz v4, :cond_25

    .line 877
    .line 878
    check-cast v0, Ljava/lang/Boolean;

    .line 879
    .line 880
    goto :goto_15

    .line 881
    :cond_25
    instance-of v4, v0, Ljava/lang/String;

    .line 882
    .line 883
    if-eqz v4, :cond_26

    .line 884
    .line 885
    check-cast v0, Ljava/lang/String;

    .line 886
    .line 887
    goto :goto_15

    .line 888
    :cond_26
    :goto_14
    const/4 v0, 0x0

    .line 889
    :goto_15
    if-nez v0, :cond_27

    .line 890
    .line 891
    const-string v0, "No default metadata"

    .line 892
    .line 893
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    .line 895
    .line 896
    goto :goto_13

    .line 897
    :cond_27
    instance-of v4, v0, Ljava/lang/Boolean;

    .line 898
    .line 899
    if-eqz v4, :cond_29

    .line 900
    .line 901
    check-cast v0, Ljava/lang/Boolean;

    .line 902
    .line 903
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 904
    .line 905
    .line 906
    move-result v0

    .line 907
    const/4 v4, 0x1

    .line 908
    if-eq v4, v0, :cond_28

    .line 909
    .line 910
    move-object v5, v9

    .line 911
    :cond_28
    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    goto :goto_13

    .line 915
    :cond_29
    instance-of v4, v0, Ljava/lang/String;

    .line 916
    .line 917
    if-eqz v4, :cond_2c

    .line 918
    .line 919
    const-string v4, "eu_consent_policy"

    .line 920
    .line 921
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 922
    .line 923
    .line 924
    move-result v0

    .line 925
    if-eqz v0, :cond_2c

    .line 926
    .line 927
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 928
    .line 929
    .line 930
    move-result v0

    .line 931
    if-nez v0, :cond_2a

    .line 932
    .line 933
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    move-result v0

    .line 937
    if-eqz v0, :cond_2c

    .line 938
    .line 939
    :cond_2a
    if-eqz v2, :cond_2c

    .line 940
    .line 941
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 942
    .line 943
    .line 944
    move-result v0

    .line 945
    const/4 v4, 0x1

    .line 946
    if-ne v0, v4, :cond_2b

    .line 947
    .line 948
    move-object v5, v9

    .line 949
    :cond_2b
    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    goto :goto_13

    .line 953
    :cond_2c
    const-string v0, "Failed to get the default eu_consent_policy value."

    .line 954
    .line 955
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    .line 957
    .line 958
    goto :goto_13

    .line 959
    :cond_2d
    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    goto :goto_13

    .line 963
    :cond_2e
    move-object/from16 v20, v0

    .line 964
    .line 965
    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-object/from16 v5, p2

    .line 969
    .line 970
    move-object/from16 v9, v19

    .line 971
    .line 972
    goto/16 :goto_11

    .line 973
    .line 974
    :cond_2f
    move-object/from16 v20, v0

    .line 975
    .line 976
    move-object/from16 v19, v9

    .line 977
    .line 978
    goto/16 :goto_13

    .line 979
    .line 980
    :cond_30
    move-object/from16 v19, v9

    .line 981
    .line 982
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    const-string v1, "Update Firebase: "

    .line 987
    .line 988
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    .line 994
    .line 995
    new-instance v1, Ljava/util/HashMap;

    .line 996
    .line 997
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v2

    .line 1008
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1009
    .line 1010
    .line 1011
    move-result v0

    .line 1012
    if-eqz v0, :cond_31

    .line 1013
    .line 1014
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    check-cast v0, Ljava/lang/String;

    .line 1019
    .line 1020
    :try_start_3
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v4

    .line 1024
    check-cast v4, Ljava/lang/reflect/Method;

    .line 1025
    .line 1026
    const/4 v5, 0x1

    .line 1027
    new-array v7, v5, [Ljava/lang/Object;

    .line 1028
    .line 1029
    const/4 v5, 0x0

    .line 1030
    aput-object v0, v7, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1031
    .line 1032
    const/4 v5, 0x0

    .line 1033
    :try_start_4
    invoke-virtual {v4, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1037
    :try_start_5
    check-cast v4, Ljava/lang/Enum;

    .line 1038
    .line 1039
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v5

    .line 1043
    check-cast v5, Ljava/lang/reflect/Method;

    .line 1044
    .line 1045
    const/4 v7, 0x1

    .line 1046
    new-array v8, v7, [Ljava/lang/Object;

    .line 1047
    .line 1048
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    const/4 v7, 0x0

    .line 1053
    aput-object v0, v8, v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1054
    .line 1055
    const/4 v7, 0x0

    .line 1056
    :try_start_6
    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    check-cast v0, Ljava/lang/Enum;

    .line 1061
    .line 1062
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1063
    .line 1064
    .line 1065
    goto :goto_16

    .line 1066
    :catch_2
    move-exception v0

    .line 1067
    goto :goto_17

    .line 1068
    :catch_3
    move-exception v0

    .line 1069
    const/4 v7, 0x0

    .line 1070
    goto :goto_17

    .line 1071
    :catch_4
    move-exception v0

    .line 1072
    move-object v7, v5

    .line 1073
    :goto_17
    const-string v4, "Failed to invoke the Firebase static method."

    .line 1074
    .line 1075
    invoke-static {v6, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1076
    .line 1077
    .line 1078
    goto :goto_16

    .line 1079
    :cond_31
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v0

    .line 1083
    if-eqz v0, :cond_33

    .line 1084
    .line 1085
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 1086
    .line 1087
    .line 1088
    move-result v0

    .line 1089
    if-eqz v0, :cond_32

    .line 1090
    .line 1091
    goto :goto_18

    .line 1092
    :cond_32
    :try_start_7
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    check-cast v0, Ljava/lang/reflect/Method;

    .line 1097
    .line 1098
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v2

    .line 1102
    const/4 v3, 0x1

    .line 1103
    new-array v4, v3, [Ljava/lang/Object;

    .line 1104
    .line 1105
    const/4 v3, 0x0

    .line 1106
    aput-object v1, v4, v3

    .line 1107
    .line 1108
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1109
    .line 1110
    .line 1111
    goto :goto_18

    .line 1112
    :catch_5
    move-exception v0

    .line 1113
    const-string v1, "Failed to invoke Firebase method. "

    .line 1114
    .line 1115
    invoke-static {v6, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1116
    .line 1117
    .line 1118
    goto :goto_18

    .line 1119
    :catch_6
    move-exception v0

    .line 1120
    move-object/from16 v19, v9

    .line 1121
    .line 1122
    const-string v1, "No Firebase class found. "

    .line 1123
    .line 1124
    invoke-static {v6, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1125
    .line 1126
    .line 1127
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1128
    .line 1129
    invoke-virtual {v10, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1130
    .line 1131
    .line 1132
    :cond_33
    :goto_18
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V

    .line 1133
    .line 1134
    .line 1135
    :cond_34
    const/4 v1, 0x1

    .line 1136
    return v1

    .line 1137
    :sswitch_data_0
    .sparse-switch
        -0x72d36826 -> :sswitch_3
        -0x883f808 -> :sswitch_2
        0x3fb31ab1 -> :sswitch_1
        0x582c6f7b -> :sswitch_0
    .end sparse-switch
.end method

.method public final zza()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/g;->d:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method
