.class public final Ld7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/epg/EPGActivityXMLTV;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/epg/EPGActivityXMLTV;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ld7/a;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Ld7/a;->H:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ld7/a;->G:I

    .line 4
    .line 5
    const-string v2, "yes"

    .line 6
    .line 7
    const-string v3, "TV"

    .line 8
    .line 9
    const-string v4, "locked"

    .line 10
    .line 11
    const-string v5, "ORT_PARENTAL_CONTROL_STATUS"

    .line 12
    .line 13
    const-string v7, "category_id"

    .line 14
    .line 15
    const-string v8, "99999"

    .line 16
    .line 17
    iget-object v9, v0, Ld7/a;->H:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 18
    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    sget-object v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->v0:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v1, :cond_12

    .line 25
    .line 26
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const-string v11, "default"

    .line 31
    .line 32
    const-string v12, "tv_archive_duration"

    .line 33
    .line 34
    const-string v13, "direct_source"

    .line 35
    .line 36
    const-string v14, "tv_archive"

    .line 37
    .line 38
    const-string v15, "custom_sid"

    .line 39
    .line 40
    const-string v10, "added"

    .line 41
    .line 42
    const-string v8, "stream_icon"

    .line 43
    .line 44
    const-string v6, "stream_id"

    .line 45
    .line 46
    const-string v0, "stream_type"

    .line 47
    .line 48
    move-object/from16 v16, v12

    .line 49
    .line 50
    const-string v12, "name"

    .line 51
    .line 52
    move-object/from16 v17, v13

    .line 53
    .line 54
    const-string v13, "num"

    .line 55
    .line 56
    move-object/from16 v18, v14

    .line 57
    .line 58
    const-string v14, "epg_channel_id"

    .line 59
    .line 60
    move-object/from16 v19, v15

    .line 61
    .line 62
    const-string v15, ""

    .line 63
    .line 64
    if-eqz v1, :cond_6

    .line 65
    .line 66
    iget-object v1, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->O:Lc7/d;

    .line 67
    .line 68
    move-object/from16 v20, v7

    .line 69
    .line 70
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    move-object/from16 v21, v10

    .line 75
    .line 76
    const-string v10, "ORT_PROFILE_ID"

    .line 77
    .line 78
    invoke-virtual {v7, v10, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v1, v11, v7}, Lc7/d;->r0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iput-object v1, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    const/4 v7, 0x0

    .line 90
    :goto_0
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    if-ge v7, v11, :cond_9

    .line 97
    .line 98
    invoke-static {v5, v4, v4}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    if-eqz v11, :cond_3

    .line 103
    .line 104
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->P:Lc7/b;

    .line 105
    .line 106
    move-object/from16 v22, v4

    .line 107
    .line 108
    iget-object v4, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lh7/d;

    .line 115
    .line 116
    iget-object v4, v4, Lh7/d;->h:Ljava/lang/String;

    .line 117
    .line 118
    move-object/from16 v23, v5

    .line 119
    .line 120
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v5, v10, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v11, v4, v3, v5}, Lc7/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-nez v4, :cond_2

    .line 137
    .line 138
    new-instance v4, Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    check-cast v5, Lh7/d;

    .line 150
    .line 151
    iget-object v5, v5, Lh7/d;->a:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v4, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    check-cast v5, Lh7/d;

    .line 163
    .line 164
    iget-object v5, v5, Lh7/d;->b:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v4, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    check-cast v5, Lh7/d;

    .line 176
    .line 177
    iget-object v5, v5, Lh7/d;->c:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    check-cast v5, Lh7/d;

    .line 189
    .line 190
    iget-object v5, v5, Lh7/d;->d:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    check-cast v5, Lh7/d;

    .line 202
    .line 203
    iget-object v5, v5, Lh7/d;->e:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v4, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    check-cast v5, Lh7/d;

    .line 215
    .line 216
    iget-object v5, v5, Lh7/d;->f:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v4, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    check-cast v5, Lh7/d;

    .line 228
    .line 229
    iget-object v5, v5, Lh7/d;->g:Ljava/lang/String;

    .line 230
    .line 231
    move-object/from16 v11, v21

    .line 232
    .line 233
    invoke-virtual {v4, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    check-cast v5, Lh7/d;

    .line 243
    .line 244
    iget-object v5, v5, Lh7/d;->h:Ljava/lang/String;

    .line 245
    .line 246
    move-object/from16 v21, v10

    .line 247
    .line 248
    move-object/from16 v10, v20

    .line 249
    .line 250
    invoke-virtual {v4, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    check-cast v5, Lh7/d;

    .line 260
    .line 261
    iget-object v5, v5, Lh7/d;->i:Ljava/lang/String;

    .line 262
    .line 263
    move-object/from16 v20, v2

    .line 264
    .line 265
    move-object/from16 v2, v19

    .line 266
    .line 267
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    check-cast v5, Lh7/d;

    .line 277
    .line 278
    iget-object v5, v5, Lh7/d;->j:Ljava/lang/String;

    .line 279
    .line 280
    move-object/from16 v19, v3

    .line 281
    .line 282
    move-object/from16 v3, v18

    .line 283
    .line 284
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    check-cast v5, Lh7/d;

    .line 294
    .line 295
    iget-object v5, v5, Lh7/d;->k:Ljava/lang/String;

    .line 296
    .line 297
    move-object/from16 v18, v3

    .line 298
    .line 299
    move-object/from16 v3, v17

    .line 300
    .line 301
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    check-cast v5, Lh7/d;

    .line 311
    .line 312
    iget-object v5, v5, Lh7/d;->l:Ljava/lang/String;

    .line 313
    .line 314
    move-object/from16 v17, v3

    .line 315
    .line 316
    move-object/from16 v3, v16

    .line 317
    .line 318
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->L:Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    if-nez v1, :cond_1

    .line 327
    .line 328
    iget-object v4, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    check-cast v4, Lh7/d;

    .line 335
    .line 336
    iget-object v4, v4, Lh7/d;->f:Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    if-eqz v4, :cond_0

    .line 343
    .line 344
    iget-object v4, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    check-cast v4, Lh7/d;

    .line 351
    .line 352
    iget-object v4, v4, Lh7/d;->f:Ljava/lang/String;

    .line 353
    .line 354
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    if-nez v4, :cond_1

    .line 359
    .line 360
    :cond_0
    sget-object v4, Lpe/hf/black20/epg/EPGActivityXMLTV;->C0:Lr0/b;

    .line 361
    .line 362
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 363
    .line 364
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    check-cast v5, Lh7/d;

    .line 369
    .line 370
    iget-object v5, v5, Lh7/d;->f:Ljava/lang/String;

    .line 371
    .line 372
    invoke-virtual {v4, v5}, Lr0/b;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    const/4 v5, 0x4

    .line 381
    if-le v4, v5, :cond_1

    .line 382
    .line 383
    iget-object v1, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    check-cast v1, Lh7/d;

    .line 390
    .line 391
    iget-object v1, v1, Lh7/d;->f:Ljava/lang/String;

    .line 392
    .line 393
    iput-object v1, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->e0:Ljava/lang/String;

    .line 394
    .line 395
    const/4 v1, 0x1

    .line 396
    :cond_1
    :goto_1
    move-object/from16 v16, v2

    .line 397
    .line 398
    move-object/from16 v2, v17

    .line 399
    .line 400
    goto/16 :goto_2

    .line 401
    .line 402
    :cond_2
    move-object/from16 v11, v21

    .line 403
    .line 404
    move-object/from16 v21, v10

    .line 405
    .line 406
    move-object/from16 v10, v20

    .line 407
    .line 408
    move-object/from16 v20, v2

    .line 409
    .line 410
    move-object/from16 v2, v19

    .line 411
    .line 412
    move-object/from16 v19, v3

    .line 413
    .line 414
    move-object/from16 v3, v16

    .line 415
    .line 416
    goto :goto_1

    .line 417
    :cond_3
    move-object/from16 v22, v4

    .line 418
    .line 419
    move-object/from16 v23, v5

    .line 420
    .line 421
    move-object/from16 v11, v21

    .line 422
    .line 423
    move-object/from16 v21, v10

    .line 424
    .line 425
    move-object/from16 v10, v20

    .line 426
    .line 427
    move-object/from16 v20, v2

    .line 428
    .line 429
    move-object/from16 v2, v19

    .line 430
    .line 431
    move-object/from16 v19, v3

    .line 432
    .line 433
    move-object/from16 v3, v16

    .line 434
    .line 435
    new-instance v4, Ljava/util/HashMap;

    .line 436
    .line 437
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 438
    .line 439
    .line 440
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 441
    .line 442
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    check-cast v5, Lh7/d;

    .line 447
    .line 448
    iget-object v5, v5, Lh7/d;->a:Ljava/lang/String;

    .line 449
    .line 450
    invoke-virtual {v4, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 454
    .line 455
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    check-cast v5, Lh7/d;

    .line 460
    .line 461
    iget-object v5, v5, Lh7/d;->b:Ljava/lang/String;

    .line 462
    .line 463
    invoke-virtual {v4, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 467
    .line 468
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    check-cast v5, Lh7/d;

    .line 473
    .line 474
    iget-object v5, v5, Lh7/d;->c:Ljava/lang/String;

    .line 475
    .line 476
    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 480
    .line 481
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    check-cast v5, Lh7/d;

    .line 486
    .line 487
    iget-object v5, v5, Lh7/d;->d:Ljava/lang/String;

    .line 488
    .line 489
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 493
    .line 494
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v5

    .line 498
    check-cast v5, Lh7/d;

    .line 499
    .line 500
    iget-object v5, v5, Lh7/d;->e:Ljava/lang/String;

    .line 501
    .line 502
    invoke-virtual {v4, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 506
    .line 507
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    check-cast v5, Lh7/d;

    .line 512
    .line 513
    iget-object v5, v5, Lh7/d;->f:Ljava/lang/String;

    .line 514
    .line 515
    invoke-virtual {v4, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 519
    .line 520
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v5

    .line 524
    check-cast v5, Lh7/d;

    .line 525
    .line 526
    iget-object v5, v5, Lh7/d;->g:Ljava/lang/String;

    .line 527
    .line 528
    invoke-virtual {v4, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 532
    .line 533
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    check-cast v5, Lh7/d;

    .line 538
    .line 539
    iget-object v5, v5, Lh7/d;->h:Ljava/lang/String;

    .line 540
    .line 541
    invoke-virtual {v4, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 545
    .line 546
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v5

    .line 550
    check-cast v5, Lh7/d;

    .line 551
    .line 552
    iget-object v5, v5, Lh7/d;->i:Ljava/lang/String;

    .line 553
    .line 554
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 558
    .line 559
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v5

    .line 563
    check-cast v5, Lh7/d;

    .line 564
    .line 565
    iget-object v5, v5, Lh7/d;->j:Ljava/lang/String;

    .line 566
    .line 567
    move-object/from16 v16, v2

    .line 568
    .line 569
    move-object/from16 v2, v18

    .line 570
    .line 571
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 575
    .line 576
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v5

    .line 580
    check-cast v5, Lh7/d;

    .line 581
    .line 582
    iget-object v5, v5, Lh7/d;->k:Ljava/lang/String;

    .line 583
    .line 584
    move-object/from16 v18, v2

    .line 585
    .line 586
    move-object/from16 v2, v17

    .line 587
    .line 588
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 592
    .line 593
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v5

    .line 597
    check-cast v5, Lh7/d;

    .line 598
    .line 599
    iget-object v5, v5, Lh7/d;->l:Ljava/lang/String;

    .line 600
    .line 601
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->L:Ljava/util/ArrayList;

    .line 605
    .line 606
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    if-nez v1, :cond_5

    .line 610
    .line 611
    iget-object v4, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 612
    .line 613
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v4

    .line 617
    check-cast v4, Lh7/d;

    .line 618
    .line 619
    iget-object v4, v4, Lh7/d;->f:Ljava/lang/String;

    .line 620
    .line 621
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 622
    .line 623
    .line 624
    move-result v4

    .line 625
    if-eqz v4, :cond_4

    .line 626
    .line 627
    iget-object v4, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 628
    .line 629
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    check-cast v4, Lh7/d;

    .line 634
    .line 635
    iget-object v4, v4, Lh7/d;->f:Ljava/lang/String;

    .line 636
    .line 637
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result v4

    .line 641
    if-nez v4, :cond_5

    .line 642
    .line 643
    :cond_4
    sget-object v4, Lpe/hf/black20/epg/EPGActivityXMLTV;->C0:Lr0/b;

    .line 644
    .line 645
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 646
    .line 647
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    check-cast v5, Lh7/d;

    .line 652
    .line 653
    iget-object v5, v5, Lh7/d;->f:Ljava/lang/String;

    .line 654
    .line 655
    invoke-virtual {v4, v5}, Lr0/b;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v4

    .line 659
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 660
    .line 661
    .line 662
    move-result v4

    .line 663
    const/4 v5, 0x4

    .line 664
    if-le v4, v5, :cond_5

    .line 665
    .line 666
    iget-object v1, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 667
    .line 668
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    check-cast v1, Lh7/d;

    .line 673
    .line 674
    iget-object v1, v1, Lh7/d;->f:Ljava/lang/String;

    .line 675
    .line 676
    iput-object v1, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->e0:Ljava/lang/String;

    .line 677
    .line 678
    const/4 v1, 0x1

    .line 679
    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 680
    .line 681
    move-object/from16 v17, v2

    .line 682
    .line 683
    move-object/from16 v2, v20

    .line 684
    .line 685
    move-object/from16 v4, v22

    .line 686
    .line 687
    move-object/from16 v5, v23

    .line 688
    .line 689
    move-object/from16 v20, v10

    .line 690
    .line 691
    move-object/from16 v10, v21

    .line 692
    .line 693
    move-object/from16 v21, v11

    .line 694
    .line 695
    move-object/from16 v24, v16

    .line 696
    .line 697
    move-object/from16 v16, v3

    .line 698
    .line 699
    move-object/from16 v3, v19

    .line 700
    .line 701
    move-object/from16 v19, v24

    .line 702
    .line 703
    goto/16 :goto_0

    .line 704
    .line 705
    :cond_6
    move-object v1, v10

    .line 706
    move-object/from16 v3, v16

    .line 707
    .line 708
    move-object/from16 v2, v17

    .line 709
    .line 710
    move-object/from16 v16, v19

    .line 711
    .line 712
    move-object v10, v7

    .line 713
    iget-object v4, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->O:Lc7/d;

    .line 714
    .line 715
    const-string v5, "all"

    .line 716
    .line 717
    sget-object v7, Lpe/hf/black20/epg/EPGActivityXMLTV;->v0:Ljava/lang/String;

    .line 718
    .line 719
    invoke-virtual {v4, v5, v7, v11}, Lc7/d;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 720
    .line 721
    .line 722
    move-result-object v4

    .line 723
    iput-object v4, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 724
    .line 725
    const/4 v4, 0x0

    .line 726
    const/4 v5, 0x0

    .line 727
    :goto_3
    iget-object v7, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 728
    .line 729
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 730
    .line 731
    .line 732
    move-result v7

    .line 733
    if-ge v5, v7, :cond_9

    .line 734
    .line 735
    new-instance v7, Ljava/util/HashMap;

    .line 736
    .line 737
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 738
    .line 739
    .line 740
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 741
    .line 742
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v11

    .line 746
    check-cast v11, Lh7/d;

    .line 747
    .line 748
    iget-object v11, v11, Lh7/d;->a:Ljava/lang/String;

    .line 749
    .line 750
    invoke-virtual {v7, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 754
    .line 755
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v11

    .line 759
    check-cast v11, Lh7/d;

    .line 760
    .line 761
    iget-object v11, v11, Lh7/d;->b:Ljava/lang/String;

    .line 762
    .line 763
    invoke-virtual {v7, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 767
    .line 768
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v11

    .line 772
    check-cast v11, Lh7/d;

    .line 773
    .line 774
    iget-object v11, v11, Lh7/d;->c:Ljava/lang/String;

    .line 775
    .line 776
    invoke-virtual {v7, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 780
    .line 781
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v11

    .line 785
    check-cast v11, Lh7/d;

    .line 786
    .line 787
    iget-object v11, v11, Lh7/d;->d:Ljava/lang/String;

    .line 788
    .line 789
    invoke-virtual {v7, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 793
    .line 794
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    move-result-object v11

    .line 798
    check-cast v11, Lh7/d;

    .line 799
    .line 800
    iget-object v11, v11, Lh7/d;->e:Ljava/lang/String;

    .line 801
    .line 802
    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 806
    .line 807
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v11

    .line 811
    check-cast v11, Lh7/d;

    .line 812
    .line 813
    iget-object v11, v11, Lh7/d;->f:Ljava/lang/String;

    .line 814
    .line 815
    invoke-virtual {v7, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 819
    .line 820
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v11

    .line 824
    check-cast v11, Lh7/d;

    .line 825
    .line 826
    iget-object v11, v11, Lh7/d;->g:Ljava/lang/String;

    .line 827
    .line 828
    invoke-virtual {v7, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 832
    .line 833
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    move-result-object v11

    .line 837
    check-cast v11, Lh7/d;

    .line 838
    .line 839
    iget-object v11, v11, Lh7/d;->h:Ljava/lang/String;

    .line 840
    .line 841
    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 845
    .line 846
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v11

    .line 850
    check-cast v11, Lh7/d;

    .line 851
    .line 852
    iget-object v11, v11, Lh7/d;->i:Ljava/lang/String;

    .line 853
    .line 854
    move-object/from16 v17, v0

    .line 855
    .line 856
    move-object/from16 v0, v16

    .line 857
    .line 858
    invoke-virtual {v7, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 862
    .line 863
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v11

    .line 867
    check-cast v11, Lh7/d;

    .line 868
    .line 869
    iget-object v11, v11, Lh7/d;->j:Ljava/lang/String;

    .line 870
    .line 871
    move-object/from16 v19, v0

    .line 872
    .line 873
    move-object/from16 v0, v18

    .line 874
    .line 875
    invoke-virtual {v7, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 879
    .line 880
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v11

    .line 884
    check-cast v11, Lh7/d;

    .line 885
    .line 886
    iget-object v11, v11, Lh7/d;->k:Ljava/lang/String;

    .line 887
    .line 888
    invoke-virtual {v7, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 892
    .line 893
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v11

    .line 897
    check-cast v11, Lh7/d;

    .line 898
    .line 899
    iget-object v11, v11, Lh7/d;->l:Ljava/lang/String;

    .line 900
    .line 901
    invoke-virtual {v7, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->L:Ljava/util/ArrayList;

    .line 905
    .line 906
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    .line 908
    .line 909
    if-nez v4, :cond_8

    .line 910
    .line 911
    iget-object v7, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 912
    .line 913
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object v7

    .line 917
    check-cast v7, Lh7/d;

    .line 918
    .line 919
    iget-object v7, v7, Lh7/d;->f:Ljava/lang/String;

    .line 920
    .line 921
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 922
    .line 923
    .line 924
    move-result v7

    .line 925
    if-eqz v7, :cond_7

    .line 926
    .line 927
    iget-object v7, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 928
    .line 929
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    move-result-object v7

    .line 933
    check-cast v7, Lh7/d;

    .line 934
    .line 935
    iget-object v7, v7, Lh7/d;->f:Ljava/lang/String;

    .line 936
    .line 937
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    move-result v7

    .line 941
    if-nez v7, :cond_8

    .line 942
    .line 943
    :cond_7
    sget-object v7, Lpe/hf/black20/epg/EPGActivityXMLTV;->C0:Lr0/b;

    .line 944
    .line 945
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 946
    .line 947
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object v11

    .line 951
    check-cast v11, Lh7/d;

    .line 952
    .line 953
    iget-object v11, v11, Lh7/d;->f:Ljava/lang/String;

    .line 954
    .line 955
    invoke-virtual {v7, v11}, Lr0/b;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v7

    .line 959
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 960
    .line 961
    .line 962
    move-result v7

    .line 963
    const/4 v11, 0x4

    .line 964
    if-le v7, v11, :cond_8

    .line 965
    .line 966
    iget-object v4, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 967
    .line 968
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    move-result-object v4

    .line 972
    check-cast v4, Lh7/d;

    .line 973
    .line 974
    iget-object v4, v4, Lh7/d;->f:Ljava/lang/String;

    .line 975
    .line 976
    iput-object v4, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->e0:Ljava/lang/String;

    .line 977
    .line 978
    const/4 v4, 0x1

    .line 979
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 980
    .line 981
    move-object/from16 v18, v0

    .line 982
    .line 983
    move-object/from16 v0, v17

    .line 984
    .line 985
    move-object/from16 v16, v19

    .line 986
    .line 987
    goto/16 :goto_3

    .line 988
    .line 989
    :cond_9
    iget-object v0, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->L:Ljava/util/ArrayList;

    .line 990
    .line 991
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 992
    .line 993
    .line 994
    move-result v0

    .line 995
    if-lez v0, :cond_10

    .line 996
    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    .line 998
    .line 999
    const-string v1, "arraylist.size() > 0......................"

    .line 1000
    .line 1001
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    iget-object v1, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->L:Ljava/util/ArrayList;

    .line 1005
    .line 1006
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1007
    .line 1008
    .line 1009
    move-result v1

    .line 1010
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v0

    .line 1017
    const-string v1, "XCIPTV_TAG"

    .line 1018
    .line 1019
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    .line 1021
    .line 1022
    new-instance v0, Ljava/util/ArrayList;

    .line 1023
    .line 1024
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    .line 1026
    .line 1027
    iget-object v1, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->L:Ljava/util/ArrayList;

    .line 1028
    .line 1029
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1030
    .line 1031
    .line 1032
    move-result v1

    .line 1033
    new-array v2, v1, [Ljava/lang/String;

    .line 1034
    .line 1035
    const/4 v3, 0x0

    .line 1036
    :goto_4
    iget-object v4, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->L:Ljava/util/ArrayList;

    .line 1037
    .line 1038
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1039
    .line 1040
    .line 1041
    move-result v4

    .line 1042
    if-ge v3, v4, :cond_a

    .line 1043
    .line 1044
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1045
    .line 1046
    .line 1047
    iget-object v4, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->L:Ljava/util/ArrayList;

    .line 1048
    .line 1049
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v4

    .line 1053
    check-cast v4, Ljava/util/HashMap;

    .line 1054
    .line 1055
    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v4

    .line 1059
    check-cast v4, Ljava/lang/String;

    .line 1060
    .line 1061
    aput-object v4, v2, v3

    .line 1062
    .line 1063
    add-int/lit8 v3, v3, 0x1

    .line 1064
    .line 1065
    goto :goto_4

    .line 1066
    :cond_a
    sget-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->C0:Lr0/b;

    .line 1067
    .line 1068
    iget-object v3, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->e0:Ljava/lang/String;

    .line 1069
    .line 1070
    invoke-virtual {v0, v3}, Lr0/b;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v0

    .line 1074
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1075
    .line 1076
    .line 1077
    move-result v3

    .line 1078
    const/4 v4, 0x4

    .line 1079
    if-le v3, v4, :cond_10

    .line 1080
    .line 1081
    sget v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->l0:I

    .line 1082
    .line 1083
    invoke-static {v3, v0}, Lpe/hf/black20/util/Methods;->n(ILjava/lang/String;)[Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    sget-object v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->C0:Lr0/b;

    .line 1088
    .line 1089
    const/4 v4, 0x0

    .line 1090
    aget-object v5, v0, v4

    .line 1091
    .line 1092
    const/4 v4, 0x1

    .line 1093
    aget-object v0, v0, v4

    .line 1094
    .line 1095
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1096
    .line 1097
    .line 1098
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1099
    .line 1100
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1101
    .line 1102
    .line 1103
    const/4 v6, 0x0

    .line 1104
    const/4 v7, 0x0

    .line 1105
    :goto_5
    if-ge v6, v1, :cond_c

    .line 1106
    .line 1107
    aget-object v8, v2, v6

    .line 1108
    .line 1109
    if-eqz v7, :cond_b

    .line 1110
    .line 1111
    const-string v10, ","

    .line 1112
    .line 1113
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    .line 1115
    .line 1116
    goto :goto_6

    .line 1117
    :cond_b
    const/4 v7, 0x1

    .line 1118
    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1119
    .line 1120
    const-string v11, "\'"

    .line 1121
    .line 1122
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v8

    .line 1135
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    add-int/lit8 v6, v6, 0x1

    .line 1139
    .line 1140
    goto :goto_5

    .line 1141
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v1

    .line 1145
    new-instance v2, Ljava/util/ArrayList;

    .line 1146
    .line 1147
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v3

    .line 1157
    const/4 v4, 0x0

    .line 1158
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1161
    .line 1162
    .line 1163
    const-string v7, "SELECT * FROM epgdb WHERE stop >=? AND start < ? AND channel IN ("

    .line 1164
    .line 1165
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    const-string v1, ") ORDER BY start ASC "

    .line 1172
    .line 1173
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v1

    .line 1180
    filled-new-array {v5, v0}, [Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v0

    .line 1184
    invoke-virtual {v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v4

    .line 1188
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1189
    .line 1190
    .line 1191
    move-result v0

    .line 1192
    if-eqz v0, :cond_e

    .line 1193
    .line 1194
    :cond_d
    new-instance v0, Ld7/g;

    .line 1195
    .line 1196
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1197
    .line 1198
    .line 1199
    const/4 v1, 0x1

    .line 1200
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v3

    .line 1204
    iput-object v3, v0, Ld7/g;->a:Ljava/lang/String;

    .line 1205
    .line 1206
    const/4 v3, 0x2

    .line 1207
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v5

    .line 1211
    iput-object v5, v0, Ld7/g;->b:Ljava/lang/String;

    .line 1212
    .line 1213
    const/4 v3, 0x3

    .line 1214
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v3

    .line 1218
    iput-object v3, v0, Ld7/g;->c:Ljava/lang/String;

    .line 1219
    .line 1220
    const/4 v3, 0x4

    .line 1221
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v5

    .line 1225
    iput-object v5, v0, Ld7/g;->d:Ljava/lang/String;

    .line 1226
    .line 1227
    const/4 v5, 0x5

    .line 1228
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v5

    .line 1232
    iput-object v5, v0, Ld7/g;->e:Ljava/lang/String;

    .line 1233
    .line 1234
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    .line 1236
    .line 1237
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 1238
    .line 1239
    .line 1240
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    if-nez v0, :cond_d

    .line 1242
    .line 1243
    goto :goto_7

    .line 1244
    :catchall_0
    nop

    .line 1245
    goto :goto_9

    .line 1246
    :cond_e
    :goto_7
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    .line 1247
    .line 1248
    .line 1249
    move-result v0

    .line 1250
    if-nez v0, :cond_f

    .line 1251
    .line 1252
    :goto_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1253
    .line 1254
    .line 1255
    goto :goto_a

    .line 1256
    :goto_9
    if-eqz v4, :cond_f

    .line 1257
    .line 1258
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    .line 1259
    .line 1260
    .line 1261
    move-result v0

    .line 1262
    if-nez v0, :cond_f

    .line 1263
    .line 1264
    goto :goto_8

    .line 1265
    :cond_f
    :goto_a
    iput-object v2, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->d0:Ljava/util/ArrayList;

    .line 1266
    .line 1267
    :cond_10
    new-instance v0, Lorg/json/JSONArray;

    .line 1268
    .line 1269
    iget-object v1, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->L:Ljava/util/ArrayList;

    .line 1270
    .line 1271
    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1272
    .line 1273
    .line 1274
    sput-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->z0:Lorg/json/JSONArray;

    .line 1275
    .line 1276
    iget-object v0, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 1277
    .line 1278
    if-eqz v0, :cond_11

    .line 1279
    .line 1280
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1281
    .line 1282
    .line 1283
    move-result v0

    .line 1284
    if-lez v0, :cond_11

    .line 1285
    .line 1286
    iget-object v0, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 1287
    .line 1288
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1289
    .line 1290
    .line 1291
    iget-object v0, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 1292
    .line 1293
    const/4 v1, 0x0

    .line 1294
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v0

    .line 1298
    check-cast v0, Lh7/d;

    .line 1299
    .line 1300
    iget-object v0, v0, Lh7/d;->f:Ljava/lang/String;

    .line 1301
    .line 1302
    :cond_11
    new-instance v0, Lf5/a;

    .line 1303
    .line 1304
    const/16 v1, 0x9

    .line 1305
    .line 1306
    move-object/from16 v2, p0

    .line 1307
    .line 1308
    invoke-direct {v0, v2, v1}, Lf5/a;-><init>(Ljava/lang/Object;I)V

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v9, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1312
    .line 1313
    .line 1314
    goto :goto_b

    .line 1315
    :cond_12
    move-object v2, v0

    .line 1316
    new-instance v0, LD1/G;

    .line 1317
    .line 1318
    const/4 v1, 0x2

    .line 1319
    invoke-direct {v0, v1}, LD1/G;-><init>(I)V

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v9, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1323
    .line 1324
    .line 1325
    :goto_b
    return-void

    .line 1326
    :pswitch_0
    move-object/from16 v20, v2

    .line 1327
    .line 1328
    move-object/from16 v19, v3

    .line 1329
    .line 1330
    move-object/from16 v22, v4

    .line 1331
    .line 1332
    move-object/from16 v23, v5

    .line 1333
    .line 1334
    move-object v10, v7

    .line 1335
    const/4 v1, 0x0

    .line 1336
    move-object v2, v0

    .line 1337
    iget-object v0, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->O:Lc7/d;

    .line 1338
    .line 1339
    invoke-virtual {v0}, Lc7/d;->q0()Ljava/util/ArrayList;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v0

    .line 1343
    iput-object v0, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1344
    .line 1345
    const/4 v6, 0x0

    .line 1346
    :goto_c
    iget-object v0, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1347
    .line 1348
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1349
    .line 1350
    .line 1351
    move-result v0

    .line 1352
    if-ge v6, v0, :cond_18

    .line 1353
    .line 1354
    const-string v0, "parent_id"

    .line 1355
    .line 1356
    const-string v1, "category_name"

    .line 1357
    .line 1358
    if-nez v6, :cond_13

    .line 1359
    .line 1360
    new-instance v3, Ljava/util/HashMap;

    .line 1361
    .line 1362
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1363
    .line 1364
    .line 1365
    invoke-virtual {v3, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    .line 1367
    .line 1368
    iget-object v4, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->G:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 1369
    .line 1370
    const v5, 0x7f1301cc

    .line 1371
    .line 1372
    .line 1373
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v4

    .line 1377
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    .line 1379
    .line 1380
    const-string v4, "0"

    .line 1381
    .line 1382
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    .line 1384
    .line 1385
    iget-object v4, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 1386
    .line 1387
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1388
    .line 1389
    .line 1390
    :cond_13
    move-object/from16 v3, v22

    .line 1391
    .line 1392
    move-object/from16 v4, v23

    .line 1393
    .line 1394
    invoke-static {v4, v3, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1395
    .line 1396
    .line 1397
    move-result v5

    .line 1398
    const-string v7, "Live"

    .line 1399
    .line 1400
    const-string v11, "Yes"

    .line 1401
    .line 1402
    if-eqz v5, :cond_15

    .line 1403
    .line 1404
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->P:Lc7/b;

    .line 1405
    .line 1406
    iget-object v12, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1407
    .line 1408
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v12

    .line 1412
    check-cast v12, Lh7/a;

    .line 1413
    .line 1414
    iget-object v12, v12, Lh7/a;->a:Ljava/lang/String;

    .line 1415
    .line 1416
    iget-object v13, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->R:Lh7/i;

    .line 1417
    .line 1418
    iget-object v13, v13, Lh7/i;->a:Ljava/lang/String;

    .line 1419
    .line 1420
    move-object/from16 v14, v19

    .line 1421
    .line 1422
    invoke-virtual {v5, v12, v14, v13}, Lc7/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v5

    .line 1426
    move-object/from16 v12, v20

    .line 1427
    .line 1428
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1429
    .line 1430
    .line 1431
    move-result v5

    .line 1432
    if-nez v5, :cond_17

    .line 1433
    .line 1434
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->T:Ljava/lang/String;

    .line 1435
    .line 1436
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1437
    .line 1438
    .line 1439
    move-result v5

    .line 1440
    if-eqz v5, :cond_14

    .line 1441
    .line 1442
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->Q:Lc7/b;

    .line 1443
    .line 1444
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1445
    .line 1446
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v11

    .line 1450
    check-cast v11, Lh7/a;

    .line 1451
    .line 1452
    iget-object v11, v11, Lh7/a;->b:Ljava/lang/String;

    .line 1453
    .line 1454
    invoke-virtual {v5, v11, v7}, Lc7/b;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v5

    .line 1458
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1459
    .line 1460
    .line 1461
    move-result v5

    .line 1462
    if-eqz v5, :cond_17

    .line 1463
    .line 1464
    new-instance v5, Ljava/util/HashMap;

    .line 1465
    .line 1466
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1467
    .line 1468
    .line 1469
    iget-object v7, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1470
    .line 1471
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v7

    .line 1475
    check-cast v7, Lh7/a;

    .line 1476
    .line 1477
    iget-object v7, v7, Lh7/a;->a:Ljava/lang/String;

    .line 1478
    .line 1479
    invoke-virtual {v5, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    .line 1481
    .line 1482
    iget-object v7, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1483
    .line 1484
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v7

    .line 1488
    check-cast v7, Lh7/a;

    .line 1489
    .line 1490
    iget-object v7, v7, Lh7/a;->b:Ljava/lang/String;

    .line 1491
    .line 1492
    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    .line 1494
    .line 1495
    iget-object v1, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1496
    .line 1497
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v1

    .line 1501
    check-cast v1, Lh7/a;

    .line 1502
    .line 1503
    iget-object v1, v1, Lh7/a;->c:Ljava/lang/String;

    .line 1504
    .line 1505
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    .line 1507
    .line 1508
    iget-object v0, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 1509
    .line 1510
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1511
    .line 1512
    .line 1513
    goto/16 :goto_d

    .line 1514
    .line 1515
    :cond_14
    new-instance v5, Ljava/util/HashMap;

    .line 1516
    .line 1517
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1518
    .line 1519
    .line 1520
    iget-object v7, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1521
    .line 1522
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v7

    .line 1526
    check-cast v7, Lh7/a;

    .line 1527
    .line 1528
    iget-object v7, v7, Lh7/a;->a:Ljava/lang/String;

    .line 1529
    .line 1530
    invoke-virtual {v5, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    .line 1532
    .line 1533
    iget-object v7, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1534
    .line 1535
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v7

    .line 1539
    check-cast v7, Lh7/a;

    .line 1540
    .line 1541
    iget-object v7, v7, Lh7/a;->b:Ljava/lang/String;

    .line 1542
    .line 1543
    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    .line 1545
    .line 1546
    iget-object v1, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1547
    .line 1548
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v1

    .line 1552
    check-cast v1, Lh7/a;

    .line 1553
    .line 1554
    iget-object v1, v1, Lh7/a;->c:Ljava/lang/String;

    .line 1555
    .line 1556
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    .line 1558
    .line 1559
    iget-object v0, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 1560
    .line 1561
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1562
    .line 1563
    .line 1564
    goto/16 :goto_d

    .line 1565
    .line 1566
    :cond_15
    move-object/from16 v14, v19

    .line 1567
    .line 1568
    move-object/from16 v12, v20

    .line 1569
    .line 1570
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->T:Ljava/lang/String;

    .line 1571
    .line 1572
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1573
    .line 1574
    .line 1575
    move-result v5

    .line 1576
    if-eqz v5, :cond_16

    .line 1577
    .line 1578
    iget-object v5, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->Q:Lc7/b;

    .line 1579
    .line 1580
    iget-object v11, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1581
    .line 1582
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v11

    .line 1586
    check-cast v11, Lh7/a;

    .line 1587
    .line 1588
    iget-object v11, v11, Lh7/a;->b:Ljava/lang/String;

    .line 1589
    .line 1590
    invoke-virtual {v5, v11, v7}, Lc7/b;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v5

    .line 1594
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1595
    .line 1596
    .line 1597
    move-result v5

    .line 1598
    if-eqz v5, :cond_17

    .line 1599
    .line 1600
    new-instance v5, Ljava/util/HashMap;

    .line 1601
    .line 1602
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1603
    .line 1604
    .line 1605
    iget-object v7, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1606
    .line 1607
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v7

    .line 1611
    check-cast v7, Lh7/a;

    .line 1612
    .line 1613
    iget-object v7, v7, Lh7/a;->a:Ljava/lang/String;

    .line 1614
    .line 1615
    invoke-virtual {v5, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    .line 1617
    .line 1618
    iget-object v7, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1619
    .line 1620
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v7

    .line 1624
    check-cast v7, Lh7/a;

    .line 1625
    .line 1626
    iget-object v7, v7, Lh7/a;->b:Ljava/lang/String;

    .line 1627
    .line 1628
    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    .line 1630
    .line 1631
    iget-object v1, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1632
    .line 1633
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v1

    .line 1637
    check-cast v1, Lh7/a;

    .line 1638
    .line 1639
    iget-object v1, v1, Lh7/a;->c:Ljava/lang/String;

    .line 1640
    .line 1641
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    .line 1643
    .line 1644
    iget-object v0, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 1645
    .line 1646
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1647
    .line 1648
    .line 1649
    goto :goto_d

    .line 1650
    :cond_16
    new-instance v5, Ljava/util/HashMap;

    .line 1651
    .line 1652
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1653
    .line 1654
    .line 1655
    iget-object v7, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1656
    .line 1657
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v7

    .line 1661
    check-cast v7, Lh7/a;

    .line 1662
    .line 1663
    iget-object v7, v7, Lh7/a;->a:Ljava/lang/String;

    .line 1664
    .line 1665
    invoke-virtual {v5, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    .line 1667
    .line 1668
    iget-object v7, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1669
    .line 1670
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v7

    .line 1674
    check-cast v7, Lh7/a;

    .line 1675
    .line 1676
    iget-object v7, v7, Lh7/a;->b:Ljava/lang/String;

    .line 1677
    .line 1678
    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    .line 1680
    .line 1681
    iget-object v1, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 1682
    .line 1683
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v1

    .line 1687
    check-cast v1, Lh7/a;

    .line 1688
    .line 1689
    iget-object v1, v1, Lh7/a;->c:Ljava/lang/String;

    .line 1690
    .line 1691
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    .line 1693
    .line 1694
    iget-object v0, v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 1695
    .line 1696
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1697
    .line 1698
    .line 1699
    :cond_17
    :goto_d
    add-int/lit8 v6, v6, 0x1

    .line 1700
    .line 1701
    move-object/from16 v22, v3

    .line 1702
    .line 1703
    move-object/from16 v23, v4

    .line 1704
    .line 1705
    move-object/from16 v20, v12

    .line 1706
    .line 1707
    move-object/from16 v19, v14

    .line 1708
    .line 1709
    goto/16 :goto_c

    .line 1710
    .line 1711
    :cond_18
    new-instance v0, Lcom/google/android/gms/internal/cast/X;

    .line 1712
    .line 1713
    const/16 v1, 0x19

    .line 1714
    .line 1715
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 1716
    .line 1717
    .line 1718
    invoke-virtual {v9, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1719
    .line 1720
    .line 1721
    return-void

    .line 1722
    nop

    .line 1723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
