.class public final Lm2/b;
.super LP1/e;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;LP1/x;I)V
    .locals 0

    .line 1
    iput p3, p0, Lm2/b;->d:I

    .line 2
    .line 3
    iput-object p1, p0, Lm2/b;->e:Ljava/lang/Object;

    .line 4
    .line 5
    const-string p1, "database"

    .line 6
    .line 7
    invoke-static {p2, p1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lk/d;-><init>(LP1/x;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lm2/b;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    const-string v0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_1
    const-string v0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_2
    const-string v0, "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)"

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_3
    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)"

    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_4
    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_5
    const-string v0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(LT1/i;Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget v2, v1, Lm2/b;->d:I

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    packed-switch v2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object/from16 v2, p2

    .line 14
    .line 15
    check-cast v2, Lm2/t;

    .line 16
    .line 17
    iget-object v3, v2, Lm2/t;->a:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    invoke-interface {v0, v5}, LT1/g;->J(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v0, v5, v3}, LT1/g;->g(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v2, v2, Lm2/t;->b:Ljava/lang/String;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v0, v4}, LT1/g;->J(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-interface {v0, v4, v2}, LT1/g;->g(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void

    .line 40
    :pswitch_0
    move-object/from16 v2, p2

    .line 41
    .line 42
    check-cast v2, Lm2/q;

    .line 43
    .line 44
    iget-object v6, v2, Lm2/q;->a:Ljava/lang/String;

    .line 45
    .line 46
    if-nez v6, :cond_2

    .line 47
    .line 48
    invoke-interface {v0, v5}, LT1/g;->J(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-interface {v0, v5, v6}, LT1/g;->g(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    iget v6, v2, Lm2/q;->b:I

    .line 56
    .line 57
    invoke-static {v6}, LS3/e;->o(I)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    int-to-long v6, v6

    .line 62
    invoke-interface {v0, v4, v6, v7}, LT1/g;->w(IJ)V

    .line 63
    .line 64
    .line 65
    iget-object v6, v2, Lm2/q;->c:Ljava/lang/String;

    .line 66
    .line 67
    if-nez v6, :cond_3

    .line 68
    .line 69
    invoke-interface {v0, v3}, LT1/g;->J(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    invoke-interface {v0, v3, v6}, LT1/g;->g(ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_3
    iget-object v6, v2, Lm2/q;->d:Ljava/lang/String;

    .line 77
    .line 78
    const/4 v7, 0x4

    .line 79
    if-nez v6, :cond_4

    .line 80
    .line 81
    invoke-interface {v0, v7}, LT1/g;->J(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_4
    invoke-interface {v0, v7, v6}, LT1/g;->g(ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :goto_4
    iget-object v6, v2, Lm2/q;->e:Ld2/e;

    .line 89
    .line 90
    invoke-static {v6}, Ld2/e;->c(Ld2/e;)[B

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const/4 v8, 0x5

    .line 95
    if-nez v6, :cond_5

    .line 96
    .line 97
    invoke-interface {v0, v8}, LT1/g;->J(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_5
    invoke-interface {v0, v8, v6}, LT1/g;->A(I[B)V

    .line 102
    .line 103
    .line 104
    :goto_5
    iget-object v6, v2, Lm2/q;->f:Ld2/e;

    .line 105
    .line 106
    invoke-static {v6}, Ld2/e;->c(Ld2/e;)[B

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    const/4 v9, 0x6

    .line 111
    if-nez v6, :cond_6

    .line 112
    .line 113
    invoke-interface {v0, v9}, LT1/g;->J(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_6
    invoke-interface {v0, v9, v6}, LT1/g;->A(I[B)V

    .line 118
    .line 119
    .line 120
    :goto_6
    const/4 v6, 0x7

    .line 121
    iget-wide v10, v2, Lm2/q;->g:J

    .line 122
    .line 123
    invoke-interface {v0, v6, v10, v11}, LT1/g;->w(IJ)V

    .line 124
    .line 125
    .line 126
    const/16 v6, 0x8

    .line 127
    .line 128
    iget-wide v10, v2, Lm2/q;->h:J

    .line 129
    .line 130
    invoke-interface {v0, v6, v10, v11}, LT1/g;->w(IJ)V

    .line 131
    .line 132
    .line 133
    const/16 v6, 0x9

    .line 134
    .line 135
    iget-wide v10, v2, Lm2/q;->i:J

    .line 136
    .line 137
    invoke-interface {v0, v6, v10, v11}, LT1/g;->w(IJ)V

    .line 138
    .line 139
    .line 140
    iget v6, v2, Lm2/q;->k:I

    .line 141
    .line 142
    int-to-long v10, v6

    .line 143
    const/16 v6, 0xa

    .line 144
    .line 145
    invoke-interface {v0, v6, v10, v11}, LT1/g;->w(IJ)V

    .line 146
    .line 147
    .line 148
    iget v6, v2, Lm2/q;->l:I

    .line 149
    .line 150
    const-string v10, "backoffPolicy"

    .line 151
    .line 152
    invoke-static {v6, v10}, Lt/a;->f(ILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v6}, Lu/h;->b(I)I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    const/4 v10, 0x0

    .line 160
    const/16 v11, 0x10

    .line 161
    .line 162
    if-eqz v6, :cond_8

    .line 163
    .line 164
    if-ne v6, v5, :cond_7

    .line 165
    .line 166
    const/4 v6, 0x1

    .line 167
    goto :goto_7

    .line 168
    :cond_7
    new-instance v0, LY/r;

    .line 169
    .line 170
    invoke-direct {v0, v11, v10}, LY/r;-><init>(ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    throw v0

    .line 174
    :cond_8
    const/4 v6, 0x0

    .line 175
    :goto_7
    const/16 v13, 0xb

    .line 176
    .line 177
    int-to-long v14, v6

    .line 178
    invoke-interface {v0, v13, v14, v15}, LT1/g;->w(IJ)V

    .line 179
    .line 180
    .line 181
    const/16 v6, 0xc

    .line 182
    .line 183
    iget-wide v13, v2, Lm2/q;->m:J

    .line 184
    .line 185
    invoke-interface {v0, v6, v13, v14}, LT1/g;->w(IJ)V

    .line 186
    .line 187
    .line 188
    const/16 v6, 0xd

    .line 189
    .line 190
    iget-wide v13, v2, Lm2/q;->n:J

    .line 191
    .line 192
    invoke-interface {v0, v6, v13, v14}, LT1/g;->w(IJ)V

    .line 193
    .line 194
    .line 195
    const/16 v6, 0xe

    .line 196
    .line 197
    iget-wide v13, v2, Lm2/q;->o:J

    .line 198
    .line 199
    invoke-interface {v0, v6, v13, v14}, LT1/g;->w(IJ)V

    .line 200
    .line 201
    .line 202
    const/16 v6, 0xf

    .line 203
    .line 204
    iget-wide v13, v2, Lm2/q;->p:J

    .line 205
    .line 206
    invoke-interface {v0, v6, v13, v14}, LT1/g;->w(IJ)V

    .line 207
    .line 208
    .line 209
    iget-boolean v6, v2, Lm2/q;->q:Z

    .line 210
    .line 211
    int-to-long v13, v6

    .line 212
    invoke-interface {v0, v11, v13, v14}, LT1/g;->w(IJ)V

    .line 213
    .line 214
    .line 215
    iget v6, v2, Lm2/q;->r:I

    .line 216
    .line 217
    const-string v13, "policy"

    .line 218
    .line 219
    invoke-static {v6, v13}, Lt/a;->f(ILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-static {v6}, Lu/h;->b(I)I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    if-eqz v6, :cond_a

    .line 227
    .line 228
    if-ne v6, v5, :cond_9

    .line 229
    .line 230
    const/4 v6, 0x1

    .line 231
    goto :goto_8

    .line 232
    :cond_9
    new-instance v0, LY/r;

    .line 233
    .line 234
    invoke-direct {v0, v11, v10}, LY/r;-><init>(ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    throw v0

    .line 238
    :cond_a
    const/4 v6, 0x0

    .line 239
    :goto_8
    const/16 v11, 0x11

    .line 240
    .line 241
    int-to-long v13, v6

    .line 242
    invoke-interface {v0, v11, v13, v14}, LT1/g;->w(IJ)V

    .line 243
    .line 244
    .line 245
    iget v6, v2, Lm2/q;->s:I

    .line 246
    .line 247
    int-to-long v13, v6

    .line 248
    const/16 v6, 0x12

    .line 249
    .line 250
    invoke-interface {v0, v6, v13, v14}, LT1/g;->w(IJ)V

    .line 251
    .line 252
    .line 253
    iget v6, v2, Lm2/q;->t:I

    .line 254
    .line 255
    int-to-long v13, v6

    .line 256
    const/16 v6, 0x13

    .line 257
    .line 258
    invoke-interface {v0, v6, v13, v14}, LT1/g;->w(IJ)V

    .line 259
    .line 260
    .line 261
    iget-object v2, v2, Lm2/q;->j:Ld2/d;

    .line 262
    .line 263
    const/16 v13, 0x19

    .line 264
    .line 265
    const/16 v14, 0x18

    .line 266
    .line 267
    const/16 v15, 0x17

    .line 268
    .line 269
    const/16 v8, 0x16

    .line 270
    .line 271
    const/16 v6, 0x15

    .line 272
    .line 273
    const/16 v10, 0x14

    .line 274
    .line 275
    if-eqz v2, :cond_13

    .line 276
    .line 277
    iget v12, v2, Ld2/d;->a:I

    .line 278
    .line 279
    const-string v11, "networkType"

    .line 280
    .line 281
    invoke-static {v12, v11}, Lt/a;->f(ILjava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v12}, Lu/h;->b(I)I

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    if-eqz v11, :cond_f

    .line 289
    .line 290
    if-eq v11, v5, :cond_e

    .line 291
    .line 292
    if-eq v11, v4, :cond_d

    .line 293
    .line 294
    if-eq v11, v3, :cond_10

    .line 295
    .line 296
    if-eq v11, v7, :cond_c

    .line 297
    .line 298
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 299
    .line 300
    const/16 v4, 0x1e

    .line 301
    .line 302
    if-lt v3, v4, :cond_b

    .line 303
    .line 304
    if-ne v12, v9, :cond_b

    .line 305
    .line 306
    const/4 v3, 0x5

    .line 307
    goto :goto_9

    .line 308
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 309
    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    const-string v3, "Could not convert "

    .line 313
    .line 314
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-static {v12}, Lcom/google/protobuf/U2;->C(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v3, " to int"

    .line 325
    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v0

    .line 337
    :cond_c
    const/4 v3, 0x4

    .line 338
    goto :goto_9

    .line 339
    :cond_d
    const/4 v3, 0x2

    .line 340
    goto :goto_9

    .line 341
    :cond_e
    const/4 v3, 0x1

    .line 342
    goto :goto_9

    .line 343
    :cond_f
    const/4 v3, 0x0

    .line 344
    :cond_10
    :goto_9
    int-to-long v3, v3

    .line 345
    invoke-interface {v0, v10, v3, v4}, LT1/g;->w(IJ)V

    .line 346
    .line 347
    .line 348
    iget-boolean v3, v2, Ld2/d;->b:Z

    .line 349
    .line 350
    int-to-long v3, v3

    .line 351
    invoke-interface {v0, v6, v3, v4}, LT1/g;->w(IJ)V

    .line 352
    .line 353
    .line 354
    iget-boolean v3, v2, Ld2/d;->c:Z

    .line 355
    .line 356
    int-to-long v3, v3

    .line 357
    invoke-interface {v0, v8, v3, v4}, LT1/g;->w(IJ)V

    .line 358
    .line 359
    .line 360
    iget-boolean v3, v2, Ld2/d;->d:Z

    .line 361
    .line 362
    int-to-long v3, v3

    .line 363
    invoke-interface {v0, v15, v3, v4}, LT1/g;->w(IJ)V

    .line 364
    .line 365
    .line 366
    iget-boolean v3, v2, Ld2/d;->e:Z

    .line 367
    .line 368
    int-to-long v3, v3

    .line 369
    invoke-interface {v0, v14, v3, v4}, LT1/g;->w(IJ)V

    .line 370
    .line 371
    .line 372
    iget-wide v3, v2, Ld2/d;->f:J

    .line 373
    .line 374
    invoke-interface {v0, v13, v3, v4}, LT1/g;->w(IJ)V

    .line 375
    .line 376
    .line 377
    iget-wide v3, v2, Ld2/d;->g:J

    .line 378
    .line 379
    const/16 v5, 0x1a

    .line 380
    .line 381
    invoke-interface {v0, v5, v3, v4}, LT1/g;->w(IJ)V

    .line 382
    .line 383
    .line 384
    iget-object v2, v2, Ld2/d;->h:Ljava/util/Set;

    .line 385
    .line 386
    const-string v3, "triggers"

    .line 387
    .line 388
    invoke-static {v2, v3}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-eqz v3, :cond_11

    .line 396
    .line 397
    const/4 v3, 0x0

    .line 398
    new-array v2, v3, [B

    .line 399
    .line 400
    :goto_a
    const/16 v3, 0x1b

    .line 401
    .line 402
    goto :goto_c

    .line 403
    :cond_11
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 404
    .line 405
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 406
    .line 407
    .line 408
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    .line 409
    .line 410
    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 411
    .line 412
    .line 413
    :try_start_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 418
    .line 419
    .line 420
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    if-eqz v5, :cond_12

    .line 429
    .line 430
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    check-cast v5, Ld2/c;

    .line 435
    .line 436
    iget-object v6, v5, Ld2/c;->a:Landroid/net/Uri;

    .line 437
    .line 438
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v6

    .line 442
    invoke-virtual {v4, v6}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    iget-boolean v5, v5, Ld2/c;->b:Z

    .line 446
    .line 447
    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    .line 449
    .line 450
    goto :goto_b

    .line 451
    :catchall_0
    move-exception v0

    .line 452
    move-object v2, v0

    .line 453
    goto :goto_d

    .line 454
    :cond_12
    const/4 v2, 0x0

    .line 455
    :try_start_2
    invoke-static {v4, v2}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 456
    .line 457
    .line 458
    invoke-static {v3, v2}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    const-string v3, "outputStream.toByteArray()"

    .line 466
    .line 467
    invoke-static {v2, v3}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    goto :goto_a

    .line 471
    :goto_c
    invoke-interface {v0, v3, v2}, LT1/g;->A(I[B)V

    .line 472
    .line 473
    .line 474
    goto :goto_f

    .line 475
    :catchall_1
    move-exception v0

    .line 476
    move-object v2, v0

    .line 477
    goto :goto_e

    .line 478
    :goto_d
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 479
    :catchall_2
    move-exception v0

    .line 480
    move-object v5, v0

    .line 481
    :try_start_4
    invoke-static {v4, v2}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 482
    .line 483
    .line 484
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 485
    :goto_e
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 486
    :catchall_3
    move-exception v0

    .line 487
    move-object v4, v0

    .line 488
    invoke-static {v3, v2}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 489
    .line 490
    .line 491
    throw v4

    .line 492
    :cond_13
    invoke-interface {v0, v10}, LT1/g;->J(I)V

    .line 493
    .line 494
    .line 495
    invoke-interface {v0, v6}, LT1/g;->J(I)V

    .line 496
    .line 497
    .line 498
    invoke-interface {v0, v8}, LT1/g;->J(I)V

    .line 499
    .line 500
    .line 501
    invoke-interface {v0, v15}, LT1/g;->J(I)V

    .line 502
    .line 503
    .line 504
    invoke-interface {v0, v14}, LT1/g;->J(I)V

    .line 505
    .line 506
    .line 507
    invoke-interface {v0, v13}, LT1/g;->J(I)V

    .line 508
    .line 509
    .line 510
    const/16 v2, 0x1a

    .line 511
    .line 512
    invoke-interface {v0, v2}, LT1/g;->J(I)V

    .line 513
    .line 514
    .line 515
    const/16 v2, 0x1b

    .line 516
    .line 517
    invoke-interface {v0, v2}, LT1/g;->J(I)V

    .line 518
    .line 519
    .line 520
    :goto_f
    return-void

    .line 521
    :pswitch_1
    move-object/from16 v2, p2

    .line 522
    .line 523
    check-cast v2, Lm2/m;

    .line 524
    .line 525
    iget-object v3, v2, Lm2/m;->a:Ljava/lang/String;

    .line 526
    .line 527
    if-nez v3, :cond_14

    .line 528
    .line 529
    invoke-interface {v0, v5}, LT1/g;->J(I)V

    .line 530
    .line 531
    .line 532
    goto :goto_10

    .line 533
    :cond_14
    invoke-interface {v0, v5, v3}, LT1/g;->g(ILjava/lang/String;)V

    .line 534
    .line 535
    .line 536
    :goto_10
    iget-object v2, v2, Lm2/m;->b:Ld2/e;

    .line 537
    .line 538
    invoke-static {v2}, Ld2/e;->c(Ld2/e;)[B

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    if-nez v2, :cond_15

    .line 543
    .line 544
    invoke-interface {v0, v4}, LT1/g;->J(I)V

    .line 545
    .line 546
    .line 547
    goto :goto_11

    .line 548
    :cond_15
    invoke-interface {v0, v4, v2}, LT1/g;->A(I[B)V

    .line 549
    .line 550
    .line 551
    :goto_11
    return-void

    .line 552
    :pswitch_2
    move-object/from16 v2, p2

    .line 553
    .line 554
    check-cast v2, Lm2/k;

    .line 555
    .line 556
    invoke-interface {v0, v5}, LT1/g;->J(I)V

    .line 557
    .line 558
    .line 559
    invoke-interface {v0, v4}, LT1/g;->J(I)V

    .line 560
    .line 561
    .line 562
    return-void

    .line 563
    :pswitch_3
    move-object/from16 v2, p2

    .line 564
    .line 565
    check-cast v2, Lm2/g;

    .line 566
    .line 567
    iget-object v6, v2, Lm2/g;->a:Ljava/lang/String;

    .line 568
    .line 569
    if-nez v6, :cond_16

    .line 570
    .line 571
    invoke-interface {v0, v5}, LT1/g;->J(I)V

    .line 572
    .line 573
    .line 574
    goto :goto_12

    .line 575
    :cond_16
    invoke-interface {v0, v5, v6}, LT1/g;->g(ILjava/lang/String;)V

    .line 576
    .line 577
    .line 578
    :goto_12
    iget v5, v2, Lm2/g;->b:I

    .line 579
    .line 580
    int-to-long v5, v5

    .line 581
    invoke-interface {v0, v4, v5, v6}, LT1/g;->w(IJ)V

    .line 582
    .line 583
    .line 584
    iget v2, v2, Lm2/g;->c:I

    .line 585
    .line 586
    int-to-long v4, v2

    .line 587
    invoke-interface {v0, v3, v4, v5}, LT1/g;->w(IJ)V

    .line 588
    .line 589
    .line 590
    return-void

    .line 591
    :pswitch_4
    move-object/from16 v2, p2

    .line 592
    .line 593
    check-cast v2, Lm2/d;

    .line 594
    .line 595
    iget-object v3, v2, Lm2/d;->a:Ljava/lang/String;

    .line 596
    .line 597
    if-nez v3, :cond_17

    .line 598
    .line 599
    invoke-interface {v0, v5}, LT1/g;->J(I)V

    .line 600
    .line 601
    .line 602
    goto :goto_13

    .line 603
    :cond_17
    invoke-interface {v0, v5, v3}, LT1/g;->g(ILjava/lang/String;)V

    .line 604
    .line 605
    .line 606
    :goto_13
    iget-object v2, v2, Lm2/d;->b:Ljava/lang/Long;

    .line 607
    .line 608
    if-nez v2, :cond_18

    .line 609
    .line 610
    invoke-interface {v0, v4}, LT1/g;->J(I)V

    .line 611
    .line 612
    .line 613
    goto :goto_14

    .line 614
    :cond_18
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 615
    .line 616
    .line 617
    move-result-wide v2

    .line 618
    invoke-interface {v0, v4, v2, v3}, LT1/g;->w(IJ)V

    .line 619
    .line 620
    .line 621
    :goto_14
    return-void

    .line 622
    :pswitch_5
    move-object/from16 v2, p2

    .line 623
    .line 624
    check-cast v2, Lm2/a;

    .line 625
    .line 626
    iget-object v3, v2, Lm2/a;->a:Ljava/lang/String;

    .line 627
    .line 628
    if-nez v3, :cond_19

    .line 629
    .line 630
    invoke-interface {v0, v5}, LT1/g;->J(I)V

    .line 631
    .line 632
    .line 633
    goto :goto_15

    .line 634
    :cond_19
    invoke-interface {v0, v5, v3}, LT1/g;->g(ILjava/lang/String;)V

    .line 635
    .line 636
    .line 637
    :goto_15
    iget-object v2, v2, Lm2/a;->b:Ljava/lang/String;

    .line 638
    .line 639
    if-nez v2, :cond_1a

    .line 640
    .line 641
    invoke-interface {v0, v4}, LT1/g;->J(I)V

    .line 642
    .line 643
    .line 644
    goto :goto_16

    .line 645
    :cond_1a
    invoke-interface {v0, v4, v2}, LT1/g;->g(ILjava/lang/String;)V

    .line 646
    .line 647
    .line 648
    :goto_16
    return-void

    .line 649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
