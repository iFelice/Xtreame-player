.class public final Lcom/google/android/gms/internal/ads/Qv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:J

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/android/gms/internal/ads/J;

.field public final k:Landroid/os/Bundle;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Lorg/json/JSONObject;

.field public final p:Lorg/json/JSONObject;

.field public final q:Ljava/lang/String;

.field public final r:I

.field public final s:J

.field public final t:J


# direct methods
.method public constructor <init>(Landroid/util/JsonReader;)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    .line 26
    .line 27
    .line 28
    const-string v8, ""

    .line 29
    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v10, 0x0

    .line 32
    move-object v9, v8

    .line 33
    move-object v11, v9

    .line 34
    move-object v12, v11

    .line 35
    move-object v14, v12

    .line 36
    move-object v15, v14

    .line 37
    move-object/from16 v17, v10

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/16 v16, 0x0

    .line 42
    .line 43
    const-wide/16 v18, -0x1

    .line 44
    .line 45
    const-wide/16 v20, -0x1

    .line 46
    .line 47
    const-wide/16 v22, 0x0

    .line 48
    .line 49
    const/16 v24, -0x1

    .line 50
    .line 51
    const/16 v25, 0x1

    .line 52
    .line 53
    move-object v10, v15

    .line 54
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v26

    .line 58
    if-eqz v26, :cond_1c

    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    const-string v7, "nofill_urls"

    .line 65
    .line 66
    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_0

    .line 71
    .line 72
    invoke-static/range {p1 .. p1}, LQ3/b;->O(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const-string v7, "refresh_interval"

    .line 78
    .line 79
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_1

    .line 84
    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const-string v7, "refresh_load_delay_time_interval"

    .line 91
    .line 92
    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_2

    .line 97
    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    .line 99
    .line 100
    .line 101
    move-result v24

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    const-string v7, "gws_query_id"

    .line 104
    .line 105
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_3

    .line 110
    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    move-object v8, v7

    .line 116
    goto :goto_0

    .line 117
    :cond_3
    const-string v7, "analytics_query_ad_event_id"

    .line 118
    .line 119
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_4

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    move-object v9, v7

    .line 130
    goto :goto_0

    .line 131
    :cond_4
    const-string v7, "is_idless"

    .line 132
    .line 133
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_5

    .line 138
    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    move/from16 v16, v7

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_5
    const-string v7, "response_code"

    .line 147
    .line 148
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_6

    .line 153
    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    goto :goto_0

    .line 159
    :cond_6
    const-string v7, "latency"

    .line 160
    .line 161
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_7

    .line 166
    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextLong()J

    .line 168
    .line 169
    .line 170
    move-result-wide v22

    .line 171
    goto :goto_0

    .line 172
    :cond_7
    sget-object v7, Lcom/google/android/gms/internal/ads/Q7;->D7:Lcom/google/android/gms/internal/ads/J7;

    .line 173
    .line 174
    move-object/from16 v28, v12

    .line 175
    .line 176
    sget-object v12, Ll3/q;->d:Ll3/q;

    .line 177
    .line 178
    move-object/from16 v29, v4

    .line 179
    .line 180
    iget-object v4, v12, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 181
    .line 182
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    check-cast v4, Ljava/lang/Boolean;

    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-eqz v4, :cond_9

    .line 193
    .line 194
    const-string v4, "public_error"

    .line 195
    .line 196
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-eqz v4, :cond_9

    .line 201
    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    sget-object v7, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    .line 207
    .line 208
    if-ne v4, v7, :cond_9

    .line 209
    .line 210
    new-instance v4, Lcom/google/android/gms/internal/ads/J;

    .line 211
    .line 212
    move-object/from16 v7, p1

    .line 213
    .line 214
    invoke-direct {v4, v7}, Lcom/google/android/gms/internal/ads/J;-><init>(Landroid/util/JsonReader;)V

    .line 215
    .line 216
    .line 217
    move-object/from16 v17, v4

    .line 218
    .line 219
    :cond_8
    :goto_1
    move-object/from16 v12, v28

    .line 220
    .line 221
    :goto_2
    move-object/from16 v4, v29

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_9
    move-object/from16 v7, p1

    .line 226
    .line 227
    const-string v4, "bidding_data"

    .line 228
    .line 229
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-eqz v4, :cond_a

    .line 234
    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    move-object v10, v4

    .line 240
    goto :goto_1

    .line 241
    :cond_a
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->I9:Lcom/google/android/gms/internal/ads/J7;

    .line 242
    .line 243
    iget-object v12, v12, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 244
    .line 245
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    check-cast v4, Ljava/lang/Boolean;

    .line 250
    .line 251
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-eqz v4, :cond_b

    .line 256
    .line 257
    const-string v4, "topics_should_record_observation"

    .line 258
    .line 259
    invoke-static {v13, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-eqz v4, :cond_b

    .line 264
    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 266
    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_b
    const-string v4, "adapter_response_replacement_key"

    .line 270
    .line 271
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-eqz v4, :cond_c

    .line 276
    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    move-object v12, v4

    .line 282
    goto :goto_2

    .line 283
    :cond_c
    const-string v4, "response_info_extras"

    .line 284
    .line 285
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    if-eqz v4, :cond_e

    .line 290
    .line 291
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->n6:Lcom/google/android/gms/internal/ads/J7;

    .line 292
    .line 293
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    check-cast v4, Ljava/lang/Boolean;

    .line 298
    .line 299
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    if-eqz v4, :cond_d

    .line 304
    .line 305
    :try_start_0
    invoke-static/range {p1 .. p1}, LQ3/b;->a0(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-static {v4}, LQ3/b;->A(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 310
    .line 311
    .line 312
    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    if-eqz v4, :cond_8

    .line 314
    .line 315
    move-object v2, v4

    .line 316
    goto :goto_1

    .line 317
    :catch_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 318
    .line 319
    .line 320
    goto :goto_1

    .line 321
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 322
    .line 323
    .line 324
    goto :goto_1

    .line 325
    :cond_e
    const-string v4, "adRequestPostBody"

    .line 326
    .line 327
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-eqz v4, :cond_10

    .line 332
    .line 333
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->A8:Lcom/google/android/gms/internal/ads/J7;

    .line 334
    .line 335
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    check-cast v4, Ljava/lang/Boolean;

    .line 340
    .line 341
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 342
    .line 343
    .line 344
    move-result v4

    .line 345
    if-eqz v4, :cond_f

    .line 346
    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    move-object v15, v4

    .line 352
    goto/16 :goto_1

    .line 353
    .line 354
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_1

    .line 358
    .line 359
    :cond_10
    const-string v4, "adRequestUrl"

    .line 360
    .line 361
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    if-eqz v4, :cond_12

    .line 366
    .line 367
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->A8:Lcom/google/android/gms/internal/ads/J7;

    .line 368
    .line 369
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    check-cast v4, Ljava/lang/Boolean;

    .line 374
    .line 375
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    if-eqz v4, :cond_11

    .line 380
    .line 381
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    move-object v14, v4

    .line 386
    goto/16 :goto_1

    .line 387
    .line 388
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_1

    .line 392
    .line 393
    :cond_12
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->B8:Lcom/google/android/gms/internal/ads/J7;

    .line 394
    .line 395
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v30

    .line 399
    check-cast v30, Ljava/lang/Boolean;

    .line 400
    .line 401
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    .line 402
    .line 403
    .line 404
    move-result v30

    .line 405
    if-eqz v30, :cond_13

    .line 406
    .line 407
    const-string v7, "adResponseBody"

    .line 408
    .line 409
    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v7

    .line 413
    if-eqz v7, :cond_13

    .line 414
    .line 415
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    move-object v11, v4

    .line 420
    goto/16 :goto_1

    .line 421
    .line 422
    :cond_13
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    check-cast v4, Ljava/lang/Boolean;

    .line 427
    .line 428
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    if-eqz v4, :cond_14

    .line 433
    .line 434
    const-string v4, "adResponseHeaders"

    .line 435
    .line 436
    invoke-static {v13, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    if-eqz v4, :cond_14

    .line 441
    .line 442
    invoke-static/range {p1 .. p1}, LQ3/b;->a0(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    goto/16 :goto_1

    .line 447
    .line 448
    :cond_14
    const-string v4, "max_parallel_renderers"

    .line 449
    .line 450
    invoke-static {v13, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    if-eqz v4, :cond_15

    .line 455
    .line 456
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    const/4 v7, 0x1

    .line 461
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 462
    .line 463
    .line 464
    move-result v25

    .line 465
    goto/16 :goto_1

    .line 466
    .line 467
    :cond_15
    const/4 v7, 0x1

    .line 468
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->I8:Lcom/google/android/gms/internal/ads/J7;

    .line 469
    .line 470
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    check-cast v4, Ljava/lang/Boolean;

    .line 475
    .line 476
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    if-eqz v4, :cond_16

    .line 481
    .line 482
    const-string v4, "inspector_ad_transaction_extras"

    .line 483
    .line 484
    invoke-static {v13, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v4

    .line 488
    if-eqz v4, :cond_16

    .line 489
    .line 490
    invoke-static/range {p1 .. p1}, LQ3/b;->a0(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    move-object/from16 v12, v28

    .line 495
    .line 496
    goto/16 :goto_0

    .line 497
    .line 498
    :cond_16
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->V1:Lcom/google/android/gms/internal/ads/J7;

    .line 499
    .line 500
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    check-cast v4, Ljava/lang/Boolean;

    .line 505
    .line 506
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 507
    .line 508
    .line 509
    move-result v4

    .line 510
    if-eqz v4, :cond_1b

    .line 511
    .line 512
    const-string v4, "latency_extras"

    .line 513
    .line 514
    invoke-static {v13, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    if-eqz v4, :cond_1b

    .line 519
    .line 520
    :try_start_1
    invoke-static/range {p1 .. p1}, LQ3/b;->a0(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    invoke-static {v4}, LQ3/b;->A(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 525
    .line 526
    .line 527
    move-result-object v4

    .line 528
    if-eqz v4, :cond_8

    .line 529
    .line 530
    const-string v12, "start_time"

    .line 531
    .line 532
    invoke-virtual {v4, v12}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 533
    .line 534
    .line 535
    move-result-wide v12
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6

    .line 536
    const-wide/high16 v20, -0x3c20000000000000L    # -9.223372036854776E18

    .line 537
    .line 538
    const-wide/high16 v30, 0x43e0000000000000L    # 9.223372036854776E18

    .line 539
    .line 540
    cmpl-double v27, v12, v30

    .line 541
    .line 542
    if-gtz v27, :cond_18

    .line 543
    .line 544
    cmpg-double v27, v12, v20

    .line 545
    .line 546
    if-gez v27, :cond_17

    .line 547
    .line 548
    goto :goto_3

    .line 549
    :cond_17
    double-to-long v12, v12

    .line 550
    goto :goto_4

    .line 551
    :cond_18
    :goto_3
    const-wide/16 v12, -0x1

    .line 552
    .line 553
    :goto_4
    :try_start_2
    const-string v7, "end_time"
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 554
    .line 555
    move-wide/from16 v32, v12

    .line 556
    .line 557
    :try_start_3
    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 558
    .line 559
    .line 560
    move-result-wide v12
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 561
    cmpl-double v4, v12, v30

    .line 562
    .line 563
    if-gtz v4, :cond_1a

    .line 564
    .line 565
    cmpg-double v4, v12, v20

    .line 566
    .line 567
    if-gez v4, :cond_19

    .line 568
    .line 569
    goto :goto_5

    .line 570
    :cond_19
    double-to-long v12, v12

    .line 571
    move-wide/from16 v18, v12

    .line 572
    .line 573
    goto :goto_6

    .line 574
    :cond_1a
    :goto_5
    const-wide/16 v18, -0x1

    .line 575
    .line 576
    :goto_6
    move-wide/from16 v20, v32

    .line 577
    .line 578
    goto/16 :goto_1

    .line 579
    .line 580
    :catch_1
    :goto_7
    nop

    .line 581
    goto :goto_6

    .line 582
    :catch_2
    move-wide/from16 v32, v12

    .line 583
    .line 584
    :catch_3
    move-wide/from16 v20, v32

    .line 585
    .line 586
    goto :goto_8

    .line 587
    :catch_4
    move-wide/from16 v32, v12

    .line 588
    .line 589
    goto :goto_7

    .line 590
    :catch_5
    nop

    .line 591
    goto/16 :goto_1

    .line 592
    .line 593
    :catch_6
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 594
    .line 595
    .line 596
    goto/16 :goto_1

    .line 597
    .line 598
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 599
    .line 600
    .line 601
    goto/16 :goto_1

    .line 602
    .line 603
    :cond_1c
    move-object/from16 v29, v4

    .line 604
    .line 605
    move-object/from16 v28, v12

    .line 606
    .line 607
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 608
    .line 609
    .line 610
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Qv;->a:Ljava/util/List;

    .line 611
    .line 612
    iput v5, v0, Lcom/google/android/gms/internal/ads/Qv;->c:I

    .line 613
    .line 614
    sget-object v1, Lcom/google/android/gms/internal/ads/x8;->d:Lcom/google/android/gms/internal/ads/f8;

    .line 615
    .line 616
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    check-cast v1, Ljava/lang/Boolean;

    .line 621
    .line 622
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    if-eqz v1, :cond_1d

    .line 627
    .line 628
    const/4 v1, -0x1

    .line 629
    iput v1, v0, Lcom/google/android/gms/internal/ads/Qv;->d:I

    .line 630
    .line 631
    goto :goto_9

    .line 632
    :cond_1d
    sget-object v1, Lcom/google/android/gms/internal/ads/i8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 633
    .line 634
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v4

    .line 638
    check-cast v4, Ljava/lang/Long;

    .line 639
    .line 640
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 641
    .line 642
    .line 643
    move-result-wide v4

    .line 644
    const-wide/16 v12, -0x1

    .line 645
    .line 646
    cmp-long v7, v4, v12

    .line 647
    .line 648
    if-lez v7, :cond_1e

    .line 649
    .line 650
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    check-cast v1, Ljava/lang/Long;

    .line 655
    .line 656
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 657
    .line 658
    .line 659
    move-result v1

    .line 660
    iput v1, v0, Lcom/google/android/gms/internal/ads/Qv;->d:I

    .line 661
    .line 662
    goto :goto_9

    .line 663
    :cond_1e
    move/from16 v13, v24

    .line 664
    .line 665
    iput v13, v0, Lcom/google/android/gms/internal/ads/Qv;->d:I

    .line 666
    .line 667
    :goto_9
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/Qv;->b:Ljava/lang/String;

    .line 668
    .line 669
    iput-object v9, v0, Lcom/google/android/gms/internal/ads/Qv;->e:Ljava/lang/String;

    .line 670
    .line 671
    iput v6, v0, Lcom/google/android/gms/internal/ads/Qv;->f:I

    .line 672
    .line 673
    move-wide/from16 v4, v22

    .line 674
    .line 675
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/Qv;->g:J

    .line 676
    .line 677
    move-object/from16 v1, v17

    .line 678
    .line 679
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Qv;->j:Lcom/google/android/gms/internal/ads/J;

    .line 680
    .line 681
    move/from16 v9, v16

    .line 682
    .line 683
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/Qv;->h:Z

    .line 684
    .line 685
    iput-object v10, v0, Lcom/google/android/gms/internal/ads/Qv;->i:Ljava/lang/String;

    .line 686
    .line 687
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Qv;->k:Landroid/os/Bundle;

    .line 688
    .line 689
    iput-object v14, v0, Lcom/google/android/gms/internal/ads/Qv;->l:Ljava/lang/String;

    .line 690
    .line 691
    iput-object v15, v0, Lcom/google/android/gms/internal/ads/Qv;->m:Ljava/lang/String;

    .line 692
    .line 693
    iput-object v11, v0, Lcom/google/android/gms/internal/ads/Qv;->n:Ljava/lang/String;

    .line 694
    .line 695
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/Qv;->o:Lorg/json/JSONObject;

    .line 696
    .line 697
    move-object/from16 v4, v29

    .line 698
    .line 699
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/Qv;->p:Lorg/json/JSONObject;

    .line 700
    .line 701
    move-object/from16 v8, v28

    .line 702
    .line 703
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/Qv;->q:Ljava/lang/String;

    .line 704
    .line 705
    sget-object v1, Lcom/google/android/gms/internal/ads/v8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 706
    .line 707
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    check-cast v2, Ljava/lang/Long;

    .line 712
    .line 713
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 714
    .line 715
    .line 716
    move-result-wide v2

    .line 717
    const-wide/16 v4, 0x0

    .line 718
    .line 719
    cmp-long v6, v2, v4

    .line 720
    .line 721
    if-lez v6, :cond_1f

    .line 722
    .line 723
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    check-cast v1, Ljava/lang/Long;

    .line 728
    .line 729
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 730
    .line 731
    .line 732
    move-result v25

    .line 733
    :cond_1f
    move/from16 v1, v25

    .line 734
    .line 735
    iput v1, v0, Lcom/google/android/gms/internal/ads/Qv;->r:I

    .line 736
    .line 737
    move-wide/from16 v5, v20

    .line 738
    .line 739
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/Qv;->s:J

    .line 740
    .line 741
    move-wide/from16 v5, v18

    .line 742
    .line 743
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/Qv;->t:J

    .line 744
    .line 745
    return-void
.end method
