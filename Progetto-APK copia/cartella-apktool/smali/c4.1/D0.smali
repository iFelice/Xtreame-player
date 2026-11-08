.class public final synthetic Lc4/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Landroid/os/Bundle;

.field public final synthetic I:Lc4/K0;


# direct methods
.method public synthetic constructor <init>(Lc4/K0;Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lc4/D0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lc4/D0;->I:Lc4/K0;

    .line 7
    .line 8
    iput-object p2, p0, Lc4/D0;->H:Landroid/os/Bundle;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc4/D0;->G:I

    .line 4
    .line 5
    const-string v2, "time_to_live"

    .line 6
    .line 7
    const-string v3, "trigger_timeout"

    .line 8
    .line 9
    const-string v4, "trigger_event_name"

    .line 10
    .line 11
    const-string v5, "expired_event_params"

    .line 12
    .line 13
    const-string v6, "expired_event_name"

    .line 14
    .line 15
    const-string v7, "name"

    .line 16
    .line 17
    const-string v8, "app_id"

    .line 18
    .line 19
    const-string v9, "creation_timestamp"

    .line 20
    .line 21
    iget-object v10, v0, Lc4/D0;->H:Landroid/os/Bundle;

    .line 22
    .line 23
    iget-object v11, v0, Lc4/D0;->I:Lc4/K0;

    .line 24
    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v11}, Lc4/z;->m()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v11}, Lc4/B;->n()V

    .line 32
    .line 33
    .line 34
    invoke-static {v10}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v10, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v16

    .line 41
    invoke-static/range {v16 .. v16}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v11, Lc1/d;->G:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lc4/l0;

    .line 47
    .line 48
    invoke-virtual {v1}, Lc4/l0;->f()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    iget-object v1, v11, Lc1/d;->G:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Lc4/l0;

    .line 57
    .line 58
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 59
    .line 60
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 61
    .line 62
    .line 63
    const-string v2, "Conditional property not cleared since app measurement is disabled"

    .line 64
    .line 65
    iget-object v1, v1, Lc4/T;->T:Lc4/Q;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    new-instance v1, Lc4/F1;

    .line 72
    .line 73
    const-string v17, ""

    .line 74
    .line 75
    const-wide/16 v13, 0x0

    .line 76
    .line 77
    const/4 v15, 0x0

    .line 78
    move-object v12, v1

    .line 79
    invoke-direct/range {v12 .. v17}, Lc4/F1;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :try_start_0
    iget-object v7, v11, Lc1/d;->G:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v7, Lc4/l0;

    .line 85
    .line 86
    iget-object v12, v7, Lc4/l0;->R:Lc4/I1;

    .line 87
    .line 88
    invoke-static {v12}, Lc4/l0;->i(Lc4/s0;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v10, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    const-string v15, ""

    .line 103
    .line 104
    invoke-virtual {v10, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v16

    .line 108
    const/16 v18, 0x1

    .line 109
    .line 110
    invoke-virtual/range {v12 .. v18}, Lc4/I1;->r(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lc4/u;

    .line 111
    .line 112
    .line 113
    move-result-object v26
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    new-instance v5, Lc4/f;

    .line 115
    .line 116
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    invoke-virtual {v10, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v16

    .line 124
    const-string v6, "active"

    .line 125
    .line 126
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v18

    .line 130
    invoke-virtual {v10, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v19

    .line 134
    invoke-virtual {v10, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v21

    .line 138
    invoke-virtual {v10, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 139
    .line 140
    .line 141
    move-result-wide v24

    .line 142
    const-string v14, ""

    .line 143
    .line 144
    const/16 v20, 0x0

    .line 145
    .line 146
    const/16 v23, 0x0

    .line 147
    .line 148
    move-object v12, v5

    .line 149
    move-object v15, v1

    .line 150
    invoke-direct/range {v12 .. v26}, Lc4/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lc4/F1;JZLjava/lang/String;Lc4/u;JLc4/u;JLc4/u;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v11, Lc1/d;->G:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v1, Lc4/l0;

    .line 156
    .line 157
    invoke-virtual {v1}, Lc4/l0;->r()Lc4/d1;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1, v5}, Lc4/d1;->u(Lc4/f;)V

    .line 162
    .line 163
    .line 164
    :catch_0
    :goto_0
    return-void

    .line 165
    :pswitch_0
    invoke-virtual {v11}, Lc4/z;->m()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v11}, Lc4/B;->n()V

    .line 169
    .line 170
    .line 171
    invoke-static {v10}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v10, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v16

    .line 178
    const-string v1, "origin"

    .line 179
    .line 180
    invoke-virtual {v10, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-static/range {v16 .. v16}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v7, "value"

    .line 191
    .line 192
    invoke-virtual {v10, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    invoke-static {v12}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    iget-object v12, v11, Lc1/d;->G:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v12, Lc4/l0;

    .line 202
    .line 203
    invoke-virtual {v12}, Lc4/l0;->f()Z

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    if-nez v12, :cond_1

    .line 208
    .line 209
    iget-object v1, v11, Lc1/d;->G:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v1, Lc4/l0;

    .line 212
    .line 213
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 214
    .line 215
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 216
    .line 217
    .line 218
    const-string v2, "Conditional property not set since app measurement is disabled"

    .line 219
    .line 220
    iget-object v1, v1, Lc4/T;->T:Lc4/Q;

    .line 221
    .line 222
    invoke-virtual {v1, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :cond_1
    new-instance v24, Lc4/F1;

    .line 228
    .line 229
    const-string v12, "triggered_timestamp"

    .line 230
    .line 231
    invoke-virtual {v10, v12}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 232
    .line 233
    .line 234
    move-result-wide v13

    .line 235
    invoke-virtual {v10, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v15

    .line 239
    move-object/from16 v12, v24

    .line 240
    .line 241
    move-object/from16 v17, v1

    .line 242
    .line 243
    invoke-direct/range {v12 .. v17}, Lc4/F1;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :try_start_1
    iget-object v7, v11, Lc1/d;->G:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v7, Lc4/l0;

    .line 249
    .line 250
    iget-object v7, v7, Lc4/l0;->R:Lc4/I1;

    .line 251
    .line 252
    invoke-static {v7}, Lc4/l0;->i(Lc4/s0;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    const-string v12, "triggered_event_name"

    .line 259
    .line 260
    invoke-virtual {v10, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v18

    .line 264
    const-string v12, "triggered_event_params"

    .line 265
    .line 266
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 267
    .line 268
    .line 269
    move-result-object v19

    .line 270
    const-wide/16 v21, 0x0

    .line 271
    .line 272
    const/16 v23, 0x1

    .line 273
    .line 274
    move-object/from16 v17, v7

    .line 275
    .line 276
    move-object/from16 v20, v1

    .line 277
    .line 278
    invoke-virtual/range {v17 .. v23}, Lc4/I1;->r(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lc4/u;

    .line 279
    .line 280
    .line 281
    move-result-object v28

    .line 282
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    const-string v12, "timed_out_event_name"

    .line 286
    .line 287
    invoke-virtual {v10, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v18

    .line 291
    const-string v12, "timed_out_event_params"

    .line 292
    .line 293
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 294
    .line 295
    .line 296
    move-result-object v19

    .line 297
    const-wide/16 v21, 0x0

    .line 298
    .line 299
    const/16 v23, 0x1

    .line 300
    .line 301
    move-object/from16 v17, v7

    .line 302
    .line 303
    move-object/from16 v20, v1

    .line 304
    .line 305
    invoke-virtual/range {v17 .. v23}, Lc4/I1;->r(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lc4/u;

    .line 306
    .line 307
    .line 308
    move-result-object v25

    .line 309
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v10, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v18

    .line 316
    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 317
    .line 318
    .line 319
    move-result-object v19

    .line 320
    const-wide/16 v21, 0x0

    .line 321
    .line 322
    const/16 v23, 0x1

    .line 323
    .line 324
    move-object/from16 v17, v7

    .line 325
    .line 326
    move-object/from16 v20, v1

    .line 327
    .line 328
    invoke-virtual/range {v17 .. v23}, Lc4/I1;->r(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lc4/u;

    .line 329
    .line 330
    .line 331
    move-result-object v31
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 332
    new-instance v5, Lc4/f;

    .line 333
    .line 334
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v18

    .line 338
    invoke-virtual {v10, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 339
    .line 340
    .line 341
    move-result-wide v21

    .line 342
    invoke-virtual {v10, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v10, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 347
    .line 348
    .line 349
    move-result-wide v26

    .line 350
    invoke-virtual {v10, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 351
    .line 352
    .line 353
    move-result-wide v29

    .line 354
    const/16 v23, 0x0

    .line 355
    .line 356
    move-object/from16 v17, v5

    .line 357
    .line 358
    move-object/from16 v19, v1

    .line 359
    .line 360
    move-object/from16 v20, v24

    .line 361
    .line 362
    move-object/from16 v24, v4

    .line 363
    .line 364
    invoke-direct/range {v17 .. v31}, Lc4/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lc4/F1;JZLjava/lang/String;Lc4/u;JLc4/u;JLc4/u;)V

    .line 365
    .line 366
    .line 367
    iget-object v1, v11, Lc1/d;->G:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v1, Lc4/l0;

    .line 370
    .line 371
    invoke-virtual {v1}, Lc4/l0;->r()Lc4/d1;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v1, v5}, Lc4/d1;->u(Lc4/f;)V

    .line 376
    .line 377
    .line 378
    :catch_1
    :goto_1
    return-void

    .line 379
    :pswitch_1
    invoke-virtual {v10}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    const/4 v2, 0x0

    .line 384
    if-eqz v1, :cond_2

    .line 385
    .line 386
    move-object v3, v10

    .line 387
    goto/16 :goto_6

    .line 388
    .line 389
    :cond_2
    iget-object v1, v11, Lc1/d;->G:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v1, Lc4/l0;

    .line 392
    .line 393
    new-instance v3, Landroid/os/Bundle;

    .line 394
    .line 395
    iget-object v4, v1, Lc4/l0;->N:Lc4/Z;

    .line 396
    .line 397
    invoke-static {v4}, Lc4/l0;->i(Lc4/s0;)V

    .line 398
    .line 399
    .line 400
    iget-object v4, v4, Lc4/Z;->f0:Lm2/o;

    .line 401
    .line 402
    invoke-virtual {v4}, Lm2/o;->u()Landroid/os/Bundle;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v10}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    iget-object v12, v11, Lc4/K0;->c0:LZ3/o;

    .line 422
    .line 423
    const/4 v6, 0x0

    .line 424
    iget-object v7, v1, Lc4/l0;->M:Lc4/h;

    .line 425
    .line 426
    iget-object v8, v1, Lc4/l0;->O:Lc4/T;

    .line 427
    .line 428
    iget-object v9, v1, Lc4/l0;->R:Lc4/I1;

    .line 429
    .line 430
    if-eqz v5, :cond_8

    .line 431
    .line 432
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    check-cast v5, Ljava/lang/String;

    .line 437
    .line 438
    invoke-virtual {v10, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v15

    .line 442
    if-eqz v15, :cond_5

    .line 443
    .line 444
    instance-of v13, v15, Ljava/lang/String;

    .line 445
    .line 446
    if-nez v13, :cond_5

    .line 447
    .line 448
    instance-of v13, v15, Ljava/lang/Long;

    .line 449
    .line 450
    if-nez v13, :cond_5

    .line 451
    .line 452
    instance-of v13, v15, Ljava/lang/Double;

    .line 453
    .line 454
    if-nez v13, :cond_5

    .line 455
    .line 456
    invoke-static {v9}, Lc4/l0;->i(Lc4/s0;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    invoke-static {v15}, Lc4/I1;->e0(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v6

    .line 466
    if-eqz v6, :cond_4

    .line 467
    .line 468
    const/16 v14, 0x1b

    .line 469
    .line 470
    const/4 v6, 0x0

    .line 471
    const/4 v13, 0x0

    .line 472
    const/16 v16, 0x0

    .line 473
    .line 474
    const/16 v17, 0x0

    .line 475
    .line 476
    move-object v7, v15

    .line 477
    move-object v15, v6

    .line 478
    invoke-static/range {v12 .. v17}, Lc4/I1;->G(Lc4/H1;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 479
    .line 480
    .line 481
    goto :goto_3

    .line 482
    :cond_4
    move-object v7, v15

    .line 483
    :goto_3
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 484
    .line 485
    .line 486
    const-string v6, "Invalid default event parameter type. Name, value"

    .line 487
    .line 488
    iget-object v8, v8, Lc4/T;->Q:Lc4/Q;

    .line 489
    .line 490
    invoke-virtual {v8, v5, v7, v6}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    goto :goto_2

    .line 494
    :cond_5
    move-object v12, v15

    .line 495
    invoke-static {v5}, Lc4/I1;->h0(Ljava/lang/String;)Z

    .line 496
    .line 497
    .line 498
    move-result v13

    .line 499
    if-eqz v13, :cond_6

    .line 500
    .line 501
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 502
    .line 503
    .line 504
    const-string v6, "Invalid default event parameter name. Name"

    .line 505
    .line 506
    iget-object v7, v8, Lc4/T;->Q:Lc4/Q;

    .line 507
    .line 508
    invoke-virtual {v7, v5, v6}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    goto :goto_2

    .line 512
    :cond_6
    if-nez v12, :cond_7

    .line 513
    .line 514
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    goto :goto_2

    .line 518
    :cond_7
    invoke-static {v9}, Lc4/l0;->i(Lc4/s0;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v7, v2, v6}, Lc4/h;->s(Ljava/lang/String;Z)I

    .line 522
    .line 523
    .line 524
    move-result v6

    .line 525
    const-string v7, "param"

    .line 526
    .line 527
    invoke-virtual {v9, v7, v5, v6, v12}, Lc4/I1;->Z(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v6

    .line 531
    if-eqz v6, :cond_3

    .line 532
    .line 533
    invoke-virtual {v9, v3, v5, v12}, Lc4/I1;->H(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    goto :goto_2

    .line 537
    :cond_8
    invoke-static {v9}, Lc4/l0;->i(Lc4/s0;)V

    .line 538
    .line 539
    .line 540
    iget-object v1, v7, Lc1/d;->G:Ljava/lang/Object;

    .line 541
    .line 542
    check-cast v1, Lc4/l0;

    .line 543
    .line 544
    iget-object v1, v1, Lc4/l0;->R:Lc4/I1;

    .line 545
    .line 546
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 547
    .line 548
    .line 549
    const v4, 0xc02a560

    .line 550
    .line 551
    .line 552
    invoke-virtual {v1, v4}, Lc4/I1;->g0(I)Z

    .line 553
    .line 554
    .line 555
    move-result v1

    .line 556
    if-eqz v1, :cond_9

    .line 557
    .line 558
    const/16 v1, 0x64

    .line 559
    .line 560
    goto :goto_4

    .line 561
    :cond_9
    const/16 v1, 0x19

    .line 562
    .line 563
    :goto_4
    invoke-virtual {v3}, Landroid/os/BaseBundle;->size()I

    .line 564
    .line 565
    .line 566
    move-result v4

    .line 567
    if-gt v4, v1, :cond_a

    .line 568
    .line 569
    goto :goto_6

    .line 570
    :cond_a
    new-instance v4, Ljava/util/TreeSet;

    .line 571
    .line 572
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 573
    .line 574
    .line 575
    move-result-object v5

    .line 576
    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 580
    .line 581
    .line 582
    move-result-object v4

    .line 583
    :cond_b
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 584
    .line 585
    .line 586
    move-result v5

    .line 587
    if-eqz v5, :cond_c

    .line 588
    .line 589
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v5

    .line 593
    check-cast v5, Ljava/lang/String;

    .line 594
    .line 595
    add-int/lit8 v6, v6, 0x1

    .line 596
    .line 597
    if-le v6, v1, :cond_b

    .line 598
    .line 599
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    goto :goto_5

    .line 603
    :cond_c
    invoke-static {v9}, Lc4/l0;->i(Lc4/s0;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 607
    .line 608
    .line 609
    const/4 v13, 0x0

    .line 610
    const/16 v14, 0x1a

    .line 611
    .line 612
    const/4 v15, 0x0

    .line 613
    const/16 v16, 0x0

    .line 614
    .line 615
    const/16 v17, 0x0

    .line 616
    .line 617
    invoke-static/range {v12 .. v17}, Lc4/I1;->G(Lc4/H1;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 618
    .line 619
    .line 620
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 621
    .line 622
    .line 623
    const-string v1, "Too many default event parameters set. Discarding beyond event parameter limit"

    .line 624
    .line 625
    iget-object v4, v8, Lc4/T;->Q:Lc4/Q;

    .line 626
    .line 627
    invoke-virtual {v4, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    :goto_6
    iget-object v1, v11, Lc1/d;->G:Ljava/lang/Object;

    .line 631
    .line 632
    check-cast v1, Lc4/l0;

    .line 633
    .line 634
    iget-object v4, v1, Lc4/l0;->N:Lc4/Z;

    .line 635
    .line 636
    invoke-static {v4}, Lc4/l0;->i(Lc4/s0;)V

    .line 637
    .line 638
    .line 639
    iget-object v4, v4, Lc4/Z;->f0:Lm2/o;

    .line 640
    .line 641
    invoke-virtual {v4, v3}, Lm2/o;->w(Landroid/os/Bundle;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v10}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 645
    .line 646
    .line 647
    move-result v4

    .line 648
    if-eqz v4, :cond_d

    .line 649
    .line 650
    sget-object v4, Lc4/E;->e1:Lc4/D;

    .line 651
    .line 652
    iget-object v1, v1, Lc4/l0;->M:Lc4/h;

    .line 653
    .line 654
    invoke-virtual {v1, v2, v4}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    if-eqz v1, :cond_e

    .line 659
    .line 660
    :cond_d
    iget-object v1, v11, Lc1/d;->G:Ljava/lang/Object;

    .line 661
    .line 662
    check-cast v1, Lc4/l0;

    .line 663
    .line 664
    invoke-virtual {v1}, Lc4/l0;->r()Lc4/d1;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    invoke-virtual {v1, v3}, Lc4/d1;->w(Landroid/os/Bundle;)V

    .line 669
    .line 670
    .line 671
    :cond_e
    return-void

    .line 672
    nop

    .line 673
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
