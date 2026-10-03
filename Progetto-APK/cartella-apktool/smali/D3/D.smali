.class public final synthetic LD3/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/f;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LD3/a;


# direct methods
.method public synthetic constructor <init>(LD3/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LD3/D;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LD3/D;->H:LD3/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget v3, v1, LD3/D;->G:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v0, p1

    .line 11
    .line 12
    check-cast v0, Landroid/os/Bundle;

    .line 13
    .line 14
    iget-object v2, v1, LD3/D;->H:LD3/a;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v2, "com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES"

    .line 20
    .line 21
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/Cw;->T(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    iget-object v3, v1, LD3/D;->H:LD3/a;

    .line 26
    .line 27
    move-object/from16 v4, p1

    .line 28
    .line 29
    check-cast v4, Landroid/os/Bundle;

    .line 30
    .line 31
    sget-boolean v5, Lcom/google/android/gms/internal/cast/N;->j:Z

    .line 32
    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    goto/16 :goto_8

    .line 36
    .line 37
    :cond_0
    iget-object v5, v3, LD3/a;->a:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v12, v3, LD3/a;->e:LH3/t;

    .line 40
    .line 41
    iget-object v9, v3, LD3/a;->b:LD3/g;

    .line 42
    .line 43
    iget-object v10, v3, LD3/a;->i:Lcom/google/android/gms/internal/cast/t;

    .line 44
    .line 45
    iget-object v11, v3, LD3/a;->f:Lcom/google/android/gms/internal/cast/c;

    .line 46
    .line 47
    new-instance v3, Lcom/google/android/gms/internal/cast/N;

    .line 48
    .line 49
    move-object v6, v3

    .line 50
    move-object v7, v5

    .line 51
    move-object v8, v12

    .line 52
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/cast/N;-><init>(Landroid/content/Context;LH3/t;LD3/g;Lcom/google/android/gms/internal/cast/t;Lcom/google/android/gms/internal/cast/c;)V

    .line 53
    .line 54
    .line 55
    const-string v6, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE"

    .line 56
    .line 57
    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_1

    .line 62
    .line 63
    const-string v6, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE"

    .line 64
    .line 65
    invoke-virtual {v4, v6, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string v6, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED"

    .line 71
    .line 72
    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_2

    .line 77
    .line 78
    const-string v6, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED"

    .line 79
    .line 80
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_2

    .line 85
    .line 86
    const/4 v6, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const/4 v6, 0x0

    .line 89
    :goto_0
    const-string v7, "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"

    .line 90
    .line 91
    invoke-virtual {v4, v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-nez v6, :cond_3

    .line 96
    .line 97
    if-eqz v7, :cond_10

    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    const/4 v7, 0x1

    .line 101
    :cond_3
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 106
    .line 107
    const-string v9, ".client_cast_analytics_data"

    .line 108
    .line 109
    invoke-static {v8, v9}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    const-string v10, "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE"

    .line 114
    .line 115
    invoke-virtual {v4, v10}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v10

    .line 119
    const-wide/16 v13, 0x0

    .line 120
    .line 121
    cmp-long v15, v10, v13

    .line 122
    .line 123
    if-nez v15, :cond_4

    .line 124
    .line 125
    const/4 v10, 0x1

    .line 126
    goto :goto_1

    .line 127
    :cond_4
    const/4 v10, 0x2

    .line 128
    :goto_1
    iput v10, v3, Lcom/google/android/gms/internal/cast/N;->h:I

    .line 129
    .line 130
    invoke-static {v5}, LU2/q;->b(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, LU2/q;->a()LU2/q;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    sget-object v11, LS2/a;->e:LS2/a;

    .line 138
    .line 139
    invoke-virtual {v10, v11}, LU2/q;->c(LS2/a;)LU2/o;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    const-string v11, "proto"

    .line 144
    .line 145
    const-string v15, "CAST_SENDER_SDK"

    .line 146
    .line 147
    new-instance v13, LR2/b;

    .line 148
    .line 149
    invoke-direct {v13, v11}, LR2/b;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    sget-object v11, Lcom/google/android/gms/internal/cast/y;->G:Lcom/google/android/gms/internal/cast/y;

    .line 153
    .line 154
    invoke-virtual {v10, v15, v13, v11}, LU2/o;->a(Ljava/lang/String;LR2/b;LR2/d;)Lo/j;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    iput-object v10, v3, Lcom/google/android/gms/internal/cast/N;->g:Lo/j;

    .line 159
    .line 160
    const-string v10, "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"

    .line 161
    .line 162
    invoke-virtual {v4, v10}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    if-eqz v10, :cond_5

    .line 167
    .line 168
    const-string v10, "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"

    .line 169
    .line 170
    invoke-virtual {v4, v10}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v10

    .line 174
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    iput-object v4, v3, Lcom/google/android/gms/internal/cast/N;->e:Ljava/lang/Long;

    .line 179
    .line 180
    :cond_5
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v4, v9, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    if-eqz v6, :cond_6

    .line 189
    .line 190
    const-string v5, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR"

    .line 191
    .line 192
    const-string v9, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON"

    .line 193
    .line 194
    filled-new-array {v5, v9}, [Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-static {}, LK3/s;->a()LK3/r;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    new-instance v10, Lm2/l;

    .line 203
    .line 204
    const/16 v11, 0xf

    .line 205
    .line 206
    invoke-direct {v10, v11, v12, v5}, Lm2/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    iput-object v10, v9, LK3/r;->c:Ljava/lang/Object;

    .line 210
    .line 211
    new-array v2, v2, [LJ3/d;

    .line 212
    .line 213
    sget-object v5, LC3/y;->c:LJ3/d;

    .line 214
    .line 215
    aput-object v5, v2, v0

    .line 216
    .line 217
    iput-object v2, v9, LK3/r;->d:Ljava/lang/Object;

    .line 218
    .line 219
    iput-boolean v0, v9, LK3/r;->b:Z

    .line 220
    .line 221
    const/16 v0, 0x20ea

    .line 222
    .line 223
    iput v0, v9, LK3/r;->a:I

    .line 224
    .line 225
    invoke-virtual {v9}, LK3/r;->a()LK3/O;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v12, v0}, Lcom/google/android/gms/common/api/j;->doRead(LK3/s;)Lg4/h;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    new-instance v2, LB0/w0;

    .line 234
    .line 235
    invoke-direct {v2, v3, v8, v6, v4}, LB0/w0;-><init>(Lcom/google/android/gms/internal/cast/N;Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 236
    .line 237
    .line 238
    check-cast v0, Lg4/r;

    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    sget-object v5, Lg4/j;->a:Lg4/q;

    .line 244
    .line 245
    invoke-virtual {v0, v5, v2}, Lg4/r;->c(Ljava/util/concurrent/Executor;Lg4/f;)Lg4/r;

    .line 246
    .line 247
    .line 248
    :cond_6
    if-eqz v7, :cond_10

    .line 249
    .line 250
    invoke-static {v4}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    sget-object v0, Lcom/google/android/gms/internal/cast/D0;->i:LH3/b;

    .line 254
    .line 255
    const-class v2, Lcom/google/android/gms/internal/cast/D0;

    .line 256
    .line 257
    monitor-enter v2

    .line 258
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/cast/D0;->k:Lcom/google/android/gms/internal/cast/D0;

    .line 259
    .line 260
    if-nez v0, :cond_7

    .line 261
    .line 262
    new-instance v0, Lcom/google/android/gms/internal/cast/D0;

    .line 263
    .line 264
    invoke-direct {v0, v4, v3, v8}, Lcom/google/android/gms/internal/cast/D0;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/N;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    sput-object v0, Lcom/google/android/gms/internal/cast/D0;->k:Lcom/google/android/gms/internal/cast/D0;

    .line 268
    .line 269
    goto :goto_2

    .line 270
    :catchall_0
    move-exception v0

    .line 271
    goto/16 :goto_7

    .line 272
    .line 273
    :cond_7
    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/cast/D0;->k:Lcom/google/android/gms/internal/cast/D0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .line 275
    monitor-exit v2

    .line 276
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/D0;->f:Ljava/util/HashSet;

    .line 277
    .line 278
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/D0;->b:Landroid/content/SharedPreferences;

    .line 279
    .line 280
    const-string v4, "feature_usage_sdk_version"

    .line 281
    .line 282
    const/4 v5, 0x0

    .line 283
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    const-string v7, "feature_usage_package_name"

    .line 288
    .line 289
    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 294
    .line 295
    .line 296
    iget-object v8, v0, Lcom/google/android/gms/internal/cast/D0;->g:Ljava/util/HashSet;

    .line 297
    .line 298
    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 299
    .line 300
    .line 301
    const-wide/16 v9, 0x0

    .line 302
    .line 303
    iput-wide v9, v0, Lcom/google/android/gms/internal/cast/D0;->h:J

    .line 304
    .line 305
    sget-object v11, Lcom/google/android/gms/internal/cast/D0;->j:Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    const-string v12, "feature_usage_timestamp_"

    .line 312
    .line 313
    const-string v13, "feature_usage_last_report_time"

    .line 314
    .line 315
    iget-object v14, v0, Lcom/google/android/gms/internal/cast/D0;->c:Ljava/lang/String;

    .line 316
    .line 317
    if-eqz v6, :cond_d

    .line 318
    .line 319
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    if-nez v5, :cond_8

    .line 324
    .line 325
    goto/16 :goto_4

    .line 326
    .line 327
    :cond_8
    invoke-interface {v3, v13, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 328
    .line 329
    .line 330
    move-result-wide v4

    .line 331
    iput-wide v4, v0, Lcom/google/android/gms/internal/cast/D0;->h:J

    .line 332
    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 334
    .line 335
    .line 336
    move-result-wide v4

    .line 337
    new-instance v6, Ljava/util/HashSet;

    .line 338
    .line 339
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    :cond_9
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 355
    .line 356
    .line 357
    move-result v9

    .line 358
    if-eqz v9, :cond_c

    .line 359
    .line 360
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v9

    .line 364
    check-cast v9, Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    if-eqz v10, :cond_9

    .line 371
    .line 372
    const-wide/16 v10, 0x0

    .line 373
    .line 374
    invoke-interface {v3, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 375
    .line 376
    .line 377
    move-result-wide v13

    .line 378
    cmp-long v15, v13, v10

    .line 379
    .line 380
    if-eqz v15, :cond_a

    .line 381
    .line 382
    sub-long v13, v4, v13

    .line 383
    .line 384
    const-wide/32 v15, 0x48190800

    .line 385
    .line 386
    .line 387
    cmp-long v17, v13, v15

    .line 388
    .line 389
    if-lez v17, :cond_a

    .line 390
    .line 391
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    goto :goto_3

    .line 395
    :cond_a
    const-string v13, "feature_usage_timestamp_reported_feature_"

    .line 396
    .line 397
    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 398
    .line 399
    .line 400
    move-result v13

    .line 401
    const/16 v14, 0x29

    .line 402
    .line 403
    if-eqz v13, :cond_b

    .line 404
    .line 405
    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v9

    .line 409
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/D0;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/d0;

    .line 410
    .line 411
    .line 412
    move-result-object v9

    .line 413
    if-eqz v9, :cond_9

    .line 414
    .line 415
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    goto :goto_3

    .line 422
    :cond_b
    const-string v13, "feature_usage_timestamp_detected_feature_"

    .line 423
    .line 424
    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 425
    .line 426
    .line 427
    move-result v13

    .line 428
    if-eqz v13, :cond_9

    .line 429
    .line 430
    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v9

    .line 434
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/D0;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/d0;

    .line 435
    .line 436
    .line 437
    move-result-object v9

    .line 438
    if-eqz v9, :cond_9

    .line 439
    .line 440
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    goto :goto_3

    .line 444
    :cond_c
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/cast/D0;->c(Ljava/util/HashSet;)V

    .line 445
    .line 446
    .line 447
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/D0;->e:LX3/d;

    .line 448
    .line 449
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/D0;->d:Lcom/google/android/gms/internal/cast/X;

    .line 453
    .line 454
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/D0;->e:LX3/d;

    .line 458
    .line 459
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/D0;->d:Lcom/google/android/gms/internal/cast/X;

    .line 460
    .line 461
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 462
    .line 463
    .line 464
    goto :goto_6

    .line 465
    :cond_d
    :goto_4
    new-instance v2, Ljava/util/HashSet;

    .line 466
    .line 467
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    :cond_e
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 483
    .line 484
    .line 485
    move-result v6

    .line 486
    if-eqz v6, :cond_f

    .line 487
    .line 488
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v6

    .line 492
    check-cast v6, Ljava/lang/String;

    .line 493
    .line 494
    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 495
    .line 496
    .line 497
    move-result v8

    .line 498
    if-eqz v8, :cond_e

    .line 499
    .line 500
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    goto :goto_5

    .line 504
    :cond_f
    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cast/D0;->c(Ljava/util/HashSet;)V

    .line 508
    .line 509
    .line 510
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-interface {v0, v4, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-interface {v0, v7, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 523
    .line 524
    .line 525
    :goto_6
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->M:Lcom/google/android/gms/internal/cast/d0;

    .line 526
    .line 527
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/D0;->a(Lcom/google/android/gms/internal/cast/d0;)V

    .line 528
    .line 529
    .line 530
    goto :goto_8

    .line 531
    :goto_7
    monitor-exit v2

    .line 532
    throw v0

    .line 533
    :cond_10
    :goto_8
    return-void

    .line 534
    nop

    .line 535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
