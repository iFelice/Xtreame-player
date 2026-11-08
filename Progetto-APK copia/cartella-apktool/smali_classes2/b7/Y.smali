.class public final Lb7/Y;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpe/hf/black20/MultiScreenActivityEXO;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/MultiScreenActivityEXO;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb7/Y;->a:I

    invoke-direct {p0, p1, v0}, Lb7/Y;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V
    .locals 0

    .line 2
    iput p2, p0, Lb7/Y;->a:I

    iput-object p1, p0, Lb7/Y;->b:Lpe/hf/black20/MultiScreenActivityEXO;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb7/Y;->a:I

    .line 4
    .line 5
    const-string v2, "locked"

    .line 6
    .line 7
    const-string v3, "category_id"

    .line 8
    .line 9
    const-string v5, "ORT_PARENTAL_CONTROL_STATUS"

    .line 10
    .line 11
    const-string v6, "TV"

    .line 12
    .line 13
    const-string v7, "yes"

    .line 14
    .line 15
    const-string v8, "99999"

    .line 16
    .line 17
    iget-object v9, v0, Lb7/Y;->b:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 18
    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, v9, Lpe/hf/black20/MultiScreenActivityEXO;->n1:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v1, v9, Lpe/hf/black20/MultiScreenActivityEXO;->r1:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->s1:Ljava/lang/String;

    .line 41
    .line 42
    const-string v10, "tv_archive_duration"

    .line 43
    .line 44
    const-string v11, "direct_source"

    .line 45
    .line 46
    const-string v12, "tv_archive"

    .line 47
    .line 48
    const-string v13, "custom_sid"

    .line 49
    .line 50
    const-string v14, "added"

    .line 51
    .line 52
    const-string v15, "epg_channel_id"

    .line 53
    .line 54
    const-string v4, "stream_icon"

    .line 55
    .line 56
    const-string v0, "stream_id"

    .line 57
    .line 58
    move-object/from16 v16, v10

    .line 59
    .line 60
    const-string v10, "stream_type"

    .line 61
    .line 62
    move-object/from16 v17, v11

    .line 63
    .line 64
    const-string v11, "name"

    .line 65
    .line 66
    move-object/from16 v18, v12

    .line 67
    .line 68
    const-string v12, "num"

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    iget-object v1, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 75
    .line 76
    .line 77
    iget-object v1, v9, Lpe/hf/black20/MultiScreenActivityEXO;->f1:Lc7/d;

    .line 78
    .line 79
    move-object/from16 v19, v13

    .line 80
    .line 81
    iget-object v13, v9, Lpe/hf/black20/MultiScreenActivityEXO;->j1:Lh7/i;

    .line 82
    .line 83
    iget-object v13, v13, Lh7/i;->a:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v1, v8, v13}, Lc7/d;->r0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v1, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    :goto_0
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-ge v1, v8, :cond_6

    .line 99
    .line 100
    invoke-static {v5, v2, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-eqz v8, :cond_1

    .line 105
    .line 106
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->g1:Lc7/b;

    .line 107
    .line 108
    iget-object v13, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    check-cast v13, Lh7/d;

    .line 115
    .line 116
    iget-object v13, v13, Lh7/d;->h:Ljava/lang/String;

    .line 117
    .line 118
    move-object/from16 v20, v2

    .line 119
    .line 120
    iget-object v2, v9, Lpe/hf/black20/MultiScreenActivityEXO;->j1:Lh7/i;

    .line 121
    .line 122
    iget-object v2, v2, Lh7/i;->a:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v8, v13, v6, v2}, Lc7/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_0

    .line 133
    .line 134
    new-instance v2, Ljava/util/HashMap;

    .line 135
    .line 136
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 137
    .line 138
    .line 139
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    check-cast v8, Lh7/d;

    .line 146
    .line 147
    iget-object v8, v8, Lh7/d;->a:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v2, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    check-cast v8, Lh7/d;

    .line 159
    .line 160
    iget-object v8, v8, Lh7/d;->b:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    check-cast v8, Lh7/d;

    .line 172
    .line 173
    iget-object v8, v8, Lh7/d;->c:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v2, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    check-cast v8, Lh7/d;

    .line 185
    .line 186
    iget-object v8, v8, Lh7/d;->d:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    check-cast v8, Lh7/d;

    .line 198
    .line 199
    iget-object v8, v8, Lh7/d;->e:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    check-cast v8, Lh7/d;

    .line 211
    .line 212
    iget-object v8, v8, Lh7/d;->f:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v2, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    check-cast v8, Lh7/d;

    .line 224
    .line 225
    iget-object v8, v8, Lh7/d;->g:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v2, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    check-cast v8, Lh7/d;

    .line 237
    .line 238
    iget-object v8, v8, Lh7/d;->h:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    check-cast v8, Lh7/d;

    .line 250
    .line 251
    iget-object v8, v8, Lh7/d;->i:Ljava/lang/String;

    .line 252
    .line 253
    move-object/from16 v13, v19

    .line 254
    .line 255
    invoke-virtual {v2, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    check-cast v8, Lh7/d;

    .line 265
    .line 266
    iget-object v8, v8, Lh7/d;->j:Ljava/lang/String;

    .line 267
    .line 268
    move-object/from16 v19, v7

    .line 269
    .line 270
    move-object/from16 v7, v18

    .line 271
    .line 272
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    check-cast v8, Lh7/d;

    .line 282
    .line 283
    iget-object v8, v8, Lh7/d;->k:Ljava/lang/String;

    .line 284
    .line 285
    move-object/from16 v18, v6

    .line 286
    .line 287
    move-object/from16 v6, v17

    .line 288
    .line 289
    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    check-cast v8, Lh7/d;

    .line 299
    .line 300
    iget-object v8, v8, Lh7/d;->l:Ljava/lang/String;

    .line 301
    .line 302
    move-object/from16 v17, v5

    .line 303
    .line 304
    move-object/from16 v5, v16

    .line 305
    .line 306
    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->n1:Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    goto/16 :goto_1

    .line 315
    .line 316
    :cond_0
    move-object/from16 v13, v19

    .line 317
    .line 318
    move-object/from16 v19, v7

    .line 319
    .line 320
    move-object/from16 v7, v18

    .line 321
    .line 322
    move-object/from16 v18, v6

    .line 323
    .line 324
    move-object/from16 v6, v17

    .line 325
    .line 326
    move-object/from16 v17, v5

    .line 327
    .line 328
    move-object/from16 v5, v16

    .line 329
    .line 330
    goto/16 :goto_1

    .line 331
    .line 332
    :cond_1
    move-object/from16 v20, v2

    .line 333
    .line 334
    move-object/from16 v13, v19

    .line 335
    .line 336
    move-object/from16 v19, v7

    .line 337
    .line 338
    move-object/from16 v7, v18

    .line 339
    .line 340
    move-object/from16 v18, v6

    .line 341
    .line 342
    move-object/from16 v6, v17

    .line 343
    .line 344
    move-object/from16 v17, v5

    .line 345
    .line 346
    move-object/from16 v5, v16

    .line 347
    .line 348
    new-instance v2, Ljava/util/HashMap;

    .line 349
    .line 350
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 351
    .line 352
    .line 353
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v8

    .line 359
    check-cast v8, Lh7/d;

    .line 360
    .line 361
    iget-object v8, v8, Lh7/d;->a:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {v2, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 367
    .line 368
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v8

    .line 372
    check-cast v8, Lh7/d;

    .line 373
    .line 374
    iget-object v8, v8, Lh7/d;->b:Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 380
    .line 381
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v8

    .line 385
    check-cast v8, Lh7/d;

    .line 386
    .line 387
    iget-object v8, v8, Lh7/d;->c:Ljava/lang/String;

    .line 388
    .line 389
    invoke-virtual {v2, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 393
    .line 394
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v8

    .line 398
    check-cast v8, Lh7/d;

    .line 399
    .line 400
    iget-object v8, v8, Lh7/d;->d:Ljava/lang/String;

    .line 401
    .line 402
    invoke-virtual {v2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 406
    .line 407
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    check-cast v8, Lh7/d;

    .line 412
    .line 413
    iget-object v8, v8, Lh7/d;->e:Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 419
    .line 420
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v8

    .line 424
    check-cast v8, Lh7/d;

    .line 425
    .line 426
    iget-object v8, v8, Lh7/d;->f:Ljava/lang/String;

    .line 427
    .line 428
    invoke-virtual {v2, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 432
    .line 433
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v8

    .line 437
    check-cast v8, Lh7/d;

    .line 438
    .line 439
    iget-object v8, v8, Lh7/d;->g:Ljava/lang/String;

    .line 440
    .line 441
    invoke-virtual {v2, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 445
    .line 446
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v8

    .line 450
    check-cast v8, Lh7/d;

    .line 451
    .line 452
    iget-object v8, v8, Lh7/d;->h:Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 458
    .line 459
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v8

    .line 463
    check-cast v8, Lh7/d;

    .line 464
    .line 465
    iget-object v8, v8, Lh7/d;->i:Ljava/lang/String;

    .line 466
    .line 467
    invoke-virtual {v2, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 471
    .line 472
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v8

    .line 476
    check-cast v8, Lh7/d;

    .line 477
    .line 478
    iget-object v8, v8, Lh7/d;->j:Ljava/lang/String;

    .line 479
    .line 480
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 484
    .line 485
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v8

    .line 489
    check-cast v8, Lh7/d;

    .line 490
    .line 491
    iget-object v8, v8, Lh7/d;->k:Ljava/lang/String;

    .line 492
    .line 493
    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 497
    .line 498
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v8

    .line 502
    check-cast v8, Lh7/d;

    .line 503
    .line 504
    iget-object v8, v8, Lh7/d;->l:Ljava/lang/String;

    .line 505
    .line 506
    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->n1:Ljava/util/ArrayList;

    .line 510
    .line 511
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 515
    .line 516
    move-object/from16 v16, v5

    .line 517
    .line 518
    move-object/from16 v5, v17

    .line 519
    .line 520
    move-object/from16 v2, v20

    .line 521
    .line 522
    move-object/from16 v17, v6

    .line 523
    .line 524
    move-object/from16 v6, v18

    .line 525
    .line 526
    move-object/from16 v18, v7

    .line 527
    .line 528
    move-object/from16 v7, v19

    .line 529
    .line 530
    move-object/from16 v19, v13

    .line 531
    .line 532
    goto/16 :goto_0

    .line 533
    .line 534
    :cond_2
    move-object/from16 v20, v2

    .line 535
    .line 536
    move-object/from16 v19, v7

    .line 537
    .line 538
    move-object/from16 v7, v18

    .line 539
    .line 540
    move-object/from16 v18, v6

    .line 541
    .line 542
    move-object/from16 v6, v17

    .line 543
    .line 544
    move-object/from16 v17, v5

    .line 545
    .line 546
    move-object/from16 v5, v16

    .line 547
    .line 548
    const/4 v1, 0x0

    .line 549
    iput-object v1, v9, Lpe/hf/black20/MultiScreenActivityEXO;->D1:Lorg/json/JSONArray;

    .line 550
    .line 551
    new-instance v1, Lorg/json/JSONArray;

    .line 552
    .line 553
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 554
    .line 555
    .line 556
    iput-object v1, v9, Lpe/hf/black20/MultiScreenActivityEXO;->D1:Lorg/json/JSONArray;

    .line 557
    .line 558
    iget-object v1, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 559
    .line 560
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 561
    .line 562
    .line 563
    iget-object v1, v9, Lpe/hf/black20/MultiScreenActivityEXO;->f1:Lc7/d;

    .line 564
    .line 565
    iget-object v2, v9, Lpe/hf/black20/MultiScreenActivityEXO;->r1:Ljava/lang/String;

    .line 566
    .line 567
    move-object/from16 v16, v5

    .line 568
    .line 569
    const-string v5, "all"

    .line 570
    .line 571
    invoke-virtual {v1, v5, v2, v8}, Lc7/d;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    iput-object v1, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 576
    .line 577
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    const-string v2, "XCIPTV_TAG"

    .line 582
    .line 583
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    .line 585
    .line 586
    const/4 v1, 0x0

    .line 587
    :goto_2
    iget-object v2, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 588
    .line 589
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    if-ge v1, v2, :cond_6

    .line 594
    .line 595
    move-object/from16 v5, v17

    .line 596
    .line 597
    move-object/from16 v2, v20

    .line 598
    .line 599
    invoke-static {v5, v2, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 600
    .line 601
    .line 602
    move-result v8

    .line 603
    const-string v2, "live"

    .line 604
    .line 605
    if-eqz v8, :cond_4

    .line 606
    .line 607
    iget-object v8, v9, Lpe/hf/black20/MultiScreenActivityEXO;->g1:Lc7/b;

    .line 608
    .line 609
    move-object/from16 v17, v5

    .line 610
    .line 611
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 612
    .line 613
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v5

    .line 617
    check-cast v5, Lh7/d;

    .line 618
    .line 619
    iget-object v5, v5, Lh7/d;->h:Ljava/lang/String;

    .line 620
    .line 621
    move-object/from16 v21, v6

    .line 622
    .line 623
    iget-object v6, v9, Lpe/hf/black20/MultiScreenActivityEXO;->j1:Lh7/i;

    .line 624
    .line 625
    iget-object v6, v6, Lh7/i;->a:Ljava/lang/String;

    .line 626
    .line 627
    move-object/from16 v22, v7

    .line 628
    .line 629
    move-object/from16 v7, v18

    .line 630
    .line 631
    invoke-virtual {v8, v5, v7, v6}, Lc7/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v5

    .line 635
    move-object/from16 v6, v19

    .line 636
    .line 637
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result v5

    .line 641
    if-nez v5, :cond_3

    .line 642
    .line 643
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 644
    .line 645
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v5

    .line 649
    check-cast v5, Lh7/d;

    .line 650
    .line 651
    iget-object v5, v5, Lh7/d;->c:Ljava/lang/String;

    .line 652
    .line 653
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v5

    .line 657
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 658
    .line 659
    .line 660
    move-result v2

    .line 661
    if-eqz v2, :cond_3

    .line 662
    .line 663
    new-instance v2, Ljava/util/HashMap;

    .line 664
    .line 665
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 666
    .line 667
    .line 668
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 669
    .line 670
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v5

    .line 674
    check-cast v5, Lh7/d;

    .line 675
    .line 676
    iget-object v5, v5, Lh7/d;->a:Ljava/lang/String;

    .line 677
    .line 678
    invoke-virtual {v2, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 682
    .line 683
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v5

    .line 687
    check-cast v5, Lh7/d;

    .line 688
    .line 689
    iget-object v5, v5, Lh7/d;->b:Ljava/lang/String;

    .line 690
    .line 691
    invoke-virtual {v2, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 695
    .line 696
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v5

    .line 700
    check-cast v5, Lh7/d;

    .line 701
    .line 702
    iget-object v5, v5, Lh7/d;->c:Ljava/lang/String;

    .line 703
    .line 704
    invoke-virtual {v2, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 708
    .line 709
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v5

    .line 713
    check-cast v5, Lh7/d;

    .line 714
    .line 715
    iget-object v5, v5, Lh7/d;->d:Ljava/lang/String;

    .line 716
    .line 717
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 721
    .line 722
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v5

    .line 726
    check-cast v5, Lh7/d;

    .line 727
    .line 728
    iget-object v5, v5, Lh7/d;->e:Ljava/lang/String;

    .line 729
    .line 730
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 734
    .line 735
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v5

    .line 739
    check-cast v5, Lh7/d;

    .line 740
    .line 741
    iget-object v5, v5, Lh7/d;->f:Ljava/lang/String;

    .line 742
    .line 743
    invoke-virtual {v2, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 747
    .line 748
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v5

    .line 752
    check-cast v5, Lh7/d;

    .line 753
    .line 754
    iget-object v5, v5, Lh7/d;->g:Ljava/lang/String;

    .line 755
    .line 756
    invoke-virtual {v2, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 760
    .line 761
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v5

    .line 765
    check-cast v5, Lh7/d;

    .line 766
    .line 767
    iget-object v5, v5, Lh7/d;->h:Ljava/lang/String;

    .line 768
    .line 769
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 773
    .line 774
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v5

    .line 778
    check-cast v5, Lh7/d;

    .line 779
    .line 780
    iget-object v5, v5, Lh7/d;->i:Ljava/lang/String;

    .line 781
    .line 782
    invoke-virtual {v2, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 786
    .line 787
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v5

    .line 791
    check-cast v5, Lh7/d;

    .line 792
    .line 793
    iget-object v5, v5, Lh7/d;->j:Ljava/lang/String;

    .line 794
    .line 795
    move-object/from16 v8, v22

    .line 796
    .line 797
    invoke-virtual {v2, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 801
    .line 802
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v5

    .line 806
    check-cast v5, Lh7/d;

    .line 807
    .line 808
    iget-object v5, v5, Lh7/d;->k:Ljava/lang/String;

    .line 809
    .line 810
    move-object/from16 v19, v6

    .line 811
    .line 812
    move-object/from16 v6, v21

    .line 813
    .line 814
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 818
    .line 819
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v5

    .line 823
    check-cast v5, Lh7/d;

    .line 824
    .line 825
    iget-object v5, v5, Lh7/d;->l:Ljava/lang/String;

    .line 826
    .line 827
    move-object/from16 v18, v7

    .line 828
    .line 829
    move-object/from16 v7, v16

    .line 830
    .line 831
    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->n1:Ljava/util/ArrayList;

    .line 835
    .line 836
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    .line 838
    .line 839
    goto/16 :goto_3

    .line 840
    .line 841
    :cond_3
    move-object/from16 v19, v6

    .line 842
    .line 843
    move-object/from16 v18, v7

    .line 844
    .line 845
    move-object/from16 v7, v16

    .line 846
    .line 847
    move-object/from16 v6, v21

    .line 848
    .line 849
    move-object/from16 v8, v22

    .line 850
    .line 851
    goto/16 :goto_3

    .line 852
    .line 853
    :cond_4
    move-object/from16 v17, v5

    .line 854
    .line 855
    move-object v8, v7

    .line 856
    move-object/from16 v7, v16

    .line 857
    .line 858
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 859
    .line 860
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v5

    .line 864
    check-cast v5, Lh7/d;

    .line 865
    .line 866
    iget-object v5, v5, Lh7/d;->c:Ljava/lang/String;

    .line 867
    .line 868
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v5

    .line 872
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 873
    .line 874
    .line 875
    move-result v2

    .line 876
    if-eqz v2, :cond_5

    .line 877
    .line 878
    new-instance v2, Ljava/util/HashMap;

    .line 879
    .line 880
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 881
    .line 882
    .line 883
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 884
    .line 885
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v5

    .line 889
    check-cast v5, Lh7/d;

    .line 890
    .line 891
    iget-object v5, v5, Lh7/d;->a:Ljava/lang/String;

    .line 892
    .line 893
    invoke-virtual {v2, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 897
    .line 898
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v5

    .line 902
    check-cast v5, Lh7/d;

    .line 903
    .line 904
    iget-object v5, v5, Lh7/d;->b:Ljava/lang/String;

    .line 905
    .line 906
    invoke-virtual {v2, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 910
    .line 911
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v5

    .line 915
    check-cast v5, Lh7/d;

    .line 916
    .line 917
    iget-object v5, v5, Lh7/d;->c:Ljava/lang/String;

    .line 918
    .line 919
    invoke-virtual {v2, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    .line 921
    .line 922
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 923
    .line 924
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    move-result-object v5

    .line 928
    check-cast v5, Lh7/d;

    .line 929
    .line 930
    iget-object v5, v5, Lh7/d;->d:Ljava/lang/String;

    .line 931
    .line 932
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 936
    .line 937
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v5

    .line 941
    check-cast v5, Lh7/d;

    .line 942
    .line 943
    iget-object v5, v5, Lh7/d;->e:Ljava/lang/String;

    .line 944
    .line 945
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 949
    .line 950
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v5

    .line 954
    check-cast v5, Lh7/d;

    .line 955
    .line 956
    iget-object v5, v5, Lh7/d;->f:Ljava/lang/String;

    .line 957
    .line 958
    invoke-virtual {v2, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 962
    .line 963
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 964
    .line 965
    .line 966
    move-result-object v5

    .line 967
    check-cast v5, Lh7/d;

    .line 968
    .line 969
    iget-object v5, v5, Lh7/d;->g:Ljava/lang/String;

    .line 970
    .line 971
    invoke-virtual {v2, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 975
    .line 976
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object v5

    .line 980
    check-cast v5, Lh7/d;

    .line 981
    .line 982
    iget-object v5, v5, Lh7/d;->h:Ljava/lang/String;

    .line 983
    .line 984
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 988
    .line 989
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 990
    .line 991
    .line 992
    move-result-object v5

    .line 993
    check-cast v5, Lh7/d;

    .line 994
    .line 995
    iget-object v5, v5, Lh7/d;->i:Ljava/lang/String;

    .line 996
    .line 997
    invoke-virtual {v2, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 1001
    .line 1002
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v5

    .line 1006
    check-cast v5, Lh7/d;

    .line 1007
    .line 1008
    iget-object v5, v5, Lh7/d;->j:Ljava/lang/String;

    .line 1009
    .line 1010
    invoke-virtual {v2, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 1014
    .line 1015
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v5

    .line 1019
    check-cast v5, Lh7/d;

    .line 1020
    .line 1021
    iget-object v5, v5, Lh7/d;->k:Ljava/lang/String;

    .line 1022
    .line 1023
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 1027
    .line 1028
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v5

    .line 1032
    check-cast v5, Lh7/d;

    .line 1033
    .line 1034
    iget-object v5, v5, Lh7/d;->l:Ljava/lang/String;

    .line 1035
    .line 1036
    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->n1:Ljava/util/ArrayList;

    .line 1040
    .line 1041
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    .line 1043
    .line 1044
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 1045
    .line 1046
    move-object/from16 v16, v7

    .line 1047
    .line 1048
    move-object v7, v8

    .line 1049
    goto/16 :goto_2

    .line 1050
    .line 1051
    :cond_6
    new-instance v0, Lorg/json/JSONArray;

    .line 1052
    .line 1053
    iget-object v1, v9, Lpe/hf/black20/MultiScreenActivityEXO;->n1:Ljava/util/ArrayList;

    .line 1054
    .line 1055
    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1056
    .line 1057
    .line 1058
    iput-object v0, v9, Lpe/hf/black20/MultiScreenActivityEXO;->D1:Lorg/json/JSONArray;

    .line 1059
    .line 1060
    return-void

    .line 1061
    :pswitch_0
    move-object/from16 v20, v2

    .line 1062
    .line 1063
    move-object/from16 v17, v5

    .line 1064
    .line 1065
    move-object/from16 v18, v6

    .line 1066
    .line 1067
    move-object/from16 v19, v7

    .line 1068
    .line 1069
    iget-object v0, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1070
    .line 1071
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1072
    .line 1073
    .line 1074
    iget-object v0, v9, Lpe/hf/black20/MultiScreenActivityEXO;->f1:Lc7/d;

    .line 1075
    .line 1076
    invoke-virtual {v0}, Lc7/d;->q0()Ljava/util/ArrayList;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    iput-object v0, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1081
    .line 1082
    new-instance v0, Ljava/util/ArrayList;

    .line 1083
    .line 1084
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    .line 1086
    .line 1087
    iput-object v0, v9, Lpe/hf/black20/MultiScreenActivityEXO;->m1:Ljava/util/ArrayList;

    .line 1088
    .line 1089
    const/4 v4, 0x0

    .line 1090
    :goto_4
    iget-object v0, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1091
    .line 1092
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1093
    .line 1094
    .line 1095
    move-result v0

    .line 1096
    if-ge v4, v0, :cond_c

    .line 1097
    .line 1098
    const-string v0, "parent_id"

    .line 1099
    .line 1100
    const-string v1, "category_name"

    .line 1101
    .line 1102
    if-nez v4, :cond_7

    .line 1103
    .line 1104
    new-instance v2, Ljava/util/HashMap;

    .line 1105
    .line 1106
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    .line 1111
    .line 1112
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->G:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 1113
    .line 1114
    const v6, 0x7f1301cc

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v5

    .line 1121
    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    .line 1123
    .line 1124
    const-string v5, "0"

    .line 1125
    .line 1126
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    iget-object v5, v9, Lpe/hf/black20/MultiScreenActivityEXO;->m1:Ljava/util/ArrayList;

    .line 1130
    .line 1131
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    .line 1133
    .line 1134
    :cond_7
    move-object/from16 v5, v17

    .line 1135
    .line 1136
    move-object/from16 v2, v20

    .line 1137
    .line 1138
    invoke-static {v5, v2, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1139
    .line 1140
    .line 1141
    move-result v6

    .line 1142
    iget-object v7, v9, Lpe/hf/black20/MultiScreenActivityEXO;->p1:Ljava/lang/String;

    .line 1143
    .line 1144
    const-string v10, "Live"

    .line 1145
    .line 1146
    const-string v11, "Yes"

    .line 1147
    .line 1148
    if-eqz v6, :cond_9

    .line 1149
    .line 1150
    iget-object v6, v9, Lpe/hf/black20/MultiScreenActivityEXO;->g1:Lc7/b;

    .line 1151
    .line 1152
    iget-object v12, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1153
    .line 1154
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v12

    .line 1158
    check-cast v12, Lh7/a;

    .line 1159
    .line 1160
    iget-object v12, v12, Lh7/a;->a:Ljava/lang/String;

    .line 1161
    .line 1162
    iget-object v13, v9, Lpe/hf/black20/MultiScreenActivityEXO;->j1:Lh7/i;

    .line 1163
    .line 1164
    iget-object v13, v13, Lh7/i;->a:Ljava/lang/String;

    .line 1165
    .line 1166
    move-object/from16 v14, v18

    .line 1167
    .line 1168
    invoke-virtual {v6, v12, v14, v13}, Lc7/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v6

    .line 1172
    move-object/from16 v12, v19

    .line 1173
    .line 1174
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1175
    .line 1176
    .line 1177
    move-result v6

    .line 1178
    if-nez v6, :cond_b

    .line 1179
    .line 1180
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1181
    .line 1182
    .line 1183
    move-result v6

    .line 1184
    if-eqz v6, :cond_8

    .line 1185
    .line 1186
    iget-object v6, v9, Lpe/hf/black20/MultiScreenActivityEXO;->h1:Lc7/b;

    .line 1187
    .line 1188
    iget-object v7, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1189
    .line 1190
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v7

    .line 1194
    check-cast v7, Lh7/a;

    .line 1195
    .line 1196
    iget-object v7, v7, Lh7/a;->b:Ljava/lang/String;

    .line 1197
    .line 1198
    invoke-virtual {v6, v7, v10}, Lc7/b;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v6

    .line 1202
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1203
    .line 1204
    .line 1205
    move-result v6

    .line 1206
    if-eqz v6, :cond_b

    .line 1207
    .line 1208
    new-instance v6, Ljava/util/HashMap;

    .line 1209
    .line 1210
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1211
    .line 1212
    .line 1213
    iget-object v7, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1214
    .line 1215
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v7

    .line 1219
    check-cast v7, Lh7/a;

    .line 1220
    .line 1221
    iget-object v7, v7, Lh7/a;->a:Ljava/lang/String;

    .line 1222
    .line 1223
    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    .line 1225
    .line 1226
    iget-object v7, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1227
    .line 1228
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v7

    .line 1232
    check-cast v7, Lh7/a;

    .line 1233
    .line 1234
    iget-object v7, v7, Lh7/a;->b:Ljava/lang/String;

    .line 1235
    .line 1236
    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    .line 1238
    .line 1239
    iget-object v1, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1240
    .line 1241
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v1

    .line 1245
    check-cast v1, Lh7/a;

    .line 1246
    .line 1247
    iget-object v1, v1, Lh7/a;->c:Ljava/lang/String;

    .line 1248
    .line 1249
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    .line 1251
    .line 1252
    iget-object v0, v9, Lpe/hf/black20/MultiScreenActivityEXO;->m1:Ljava/util/ArrayList;

    .line 1253
    .line 1254
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    .line 1256
    .line 1257
    goto/16 :goto_5

    .line 1258
    .line 1259
    :cond_8
    new-instance v6, Ljava/util/HashMap;

    .line 1260
    .line 1261
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1262
    .line 1263
    .line 1264
    iget-object v7, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1265
    .line 1266
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v7

    .line 1270
    check-cast v7, Lh7/a;

    .line 1271
    .line 1272
    iget-object v7, v7, Lh7/a;->a:Ljava/lang/String;

    .line 1273
    .line 1274
    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    .line 1276
    .line 1277
    iget-object v7, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1278
    .line 1279
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v7

    .line 1283
    check-cast v7, Lh7/a;

    .line 1284
    .line 1285
    iget-object v7, v7, Lh7/a;->b:Ljava/lang/String;

    .line 1286
    .line 1287
    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    .line 1289
    .line 1290
    iget-object v1, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1291
    .line 1292
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v1

    .line 1296
    check-cast v1, Lh7/a;

    .line 1297
    .line 1298
    iget-object v1, v1, Lh7/a;->c:Ljava/lang/String;

    .line 1299
    .line 1300
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    .line 1302
    .line 1303
    iget-object v0, v9, Lpe/hf/black20/MultiScreenActivityEXO;->m1:Ljava/util/ArrayList;

    .line 1304
    .line 1305
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    .line 1307
    .line 1308
    goto/16 :goto_5

    .line 1309
    .line 1310
    :cond_9
    move-object/from16 v14, v18

    .line 1311
    .line 1312
    move-object/from16 v12, v19

    .line 1313
    .line 1314
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1315
    .line 1316
    .line 1317
    move-result v6

    .line 1318
    if-eqz v6, :cond_a

    .line 1319
    .line 1320
    iget-object v6, v9, Lpe/hf/black20/MultiScreenActivityEXO;->h1:Lc7/b;

    .line 1321
    .line 1322
    iget-object v7, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1323
    .line 1324
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v7

    .line 1328
    check-cast v7, Lh7/a;

    .line 1329
    .line 1330
    iget-object v7, v7, Lh7/a;->b:Ljava/lang/String;

    .line 1331
    .line 1332
    invoke-virtual {v6, v7, v10}, Lc7/b;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v6

    .line 1336
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1337
    .line 1338
    .line 1339
    move-result v6

    .line 1340
    if-eqz v6, :cond_b

    .line 1341
    .line 1342
    new-instance v6, Ljava/util/HashMap;

    .line 1343
    .line 1344
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1345
    .line 1346
    .line 1347
    iget-object v7, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1348
    .line 1349
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v7

    .line 1353
    check-cast v7, Lh7/a;

    .line 1354
    .line 1355
    iget-object v7, v7, Lh7/a;->a:Ljava/lang/String;

    .line 1356
    .line 1357
    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    .line 1359
    .line 1360
    iget-object v7, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1361
    .line 1362
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v7

    .line 1366
    check-cast v7, Lh7/a;

    .line 1367
    .line 1368
    iget-object v7, v7, Lh7/a;->b:Ljava/lang/String;

    .line 1369
    .line 1370
    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    .line 1372
    .line 1373
    iget-object v1, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1374
    .line 1375
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v1

    .line 1379
    check-cast v1, Lh7/a;

    .line 1380
    .line 1381
    iget-object v1, v1, Lh7/a;->c:Ljava/lang/String;

    .line 1382
    .line 1383
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    .line 1385
    .line 1386
    iget-object v0, v9, Lpe/hf/black20/MultiScreenActivityEXO;->m1:Ljava/util/ArrayList;

    .line 1387
    .line 1388
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    .line 1390
    .line 1391
    goto :goto_5

    .line 1392
    :cond_a
    new-instance v6, Ljava/util/HashMap;

    .line 1393
    .line 1394
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1395
    .line 1396
    .line 1397
    iget-object v7, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1398
    .line 1399
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v7

    .line 1403
    check-cast v7, Lh7/a;

    .line 1404
    .line 1405
    iget-object v7, v7, Lh7/a;->a:Ljava/lang/String;

    .line 1406
    .line 1407
    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    .line 1409
    .line 1410
    iget-object v7, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1411
    .line 1412
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v7

    .line 1416
    check-cast v7, Lh7/a;

    .line 1417
    .line 1418
    iget-object v7, v7, Lh7/a;->b:Ljava/lang/String;

    .line 1419
    .line 1420
    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    .line 1422
    .line 1423
    iget-object v1, v9, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 1424
    .line 1425
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v1

    .line 1429
    check-cast v1, Lh7/a;

    .line 1430
    .line 1431
    iget-object v1, v1, Lh7/a;->c:Ljava/lang/String;

    .line 1432
    .line 1433
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    .line 1435
    .line 1436
    iget-object v0, v9, Lpe/hf/black20/MultiScreenActivityEXO;->m1:Ljava/util/ArrayList;

    .line 1437
    .line 1438
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1439
    .line 1440
    .line 1441
    :cond_b
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 1442
    .line 1443
    move-object/from16 v20, v2

    .line 1444
    .line 1445
    move-object/from16 v17, v5

    .line 1446
    .line 1447
    move-object/from16 v19, v12

    .line 1448
    .line 1449
    move-object/from16 v18, v14

    .line 1450
    .line 1451
    goto/16 :goto_4

    .line 1452
    .line 1453
    :cond_c
    return-void

    .line 1454
    nop

    .line 1455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Void;)V
    .locals 6

    .line 1
    iget v0, p0, Lb7/Y;->a:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    iget-object v2, p0, Lb7/Y;->b:Lpe/hf/black20/MultiScreenActivityEXO;

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
    iget-object p1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->c1:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lb7/i1;

    .line 18
    .line 19
    iget-object v0, v2, Lpe/hf/black20/MultiScreenActivityEXO;->n1:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p1, v2, v0}, Lb7/i1;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v2, Lpe/hf/black20/MultiScreenActivityEXO;->e1:Landroid/widget/ListView;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->e1:Landroid/widget/ListView;

    .line 30
    .line 31
    new-instance v0, Lb7/f;

    .line 32
    .line 33
    const/16 v1, 0xc

    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->c1:Landroid/widget/ProgressBar;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lb7/t;

    .line 51
    .line 52
    iget-object v0, v2, Lpe/hf/black20/MultiScreenActivityEXO;->G:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 53
    .line 54
    iget-object v1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->m1:Ljava/util/ArrayList;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-direct {p1, v3, v0, v1}, Lb7/t;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->d1:Landroid/widget/ListView;

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->f1:Lc7/d;

    .line 66
    .line 67
    iget-object v1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->j1:Lh7/i;

    .line 68
    .line 69
    iget-object v1, v1, Lh7/i;->a:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v5, v2, Lpe/hf/black20/MultiScreenActivityEXO;->j1:Lh7/i;

    .line 77
    .line 78
    iget-object v5, v5, Lh7/i;->a:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v5, "_live"

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {p1, v1, v4}, Lc7/d;->v0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v1, "yes"

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    const-string v1, "ORT_SELECTED_POS"

    .line 103
    .line 104
    const-string v4, "ORT_CAT_NAME"

    .line 105
    .line 106
    const/4 v5, 0x1

    .line 107
    if-eqz p1, :cond_0

    .line 108
    .line 109
    const-string p1, "99999"

    .line 110
    .line 111
    iput-object p1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->r1:Ljava/lang/String;

    .line 112
    .line 113
    const p1, 0x7f1301cc

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iput-object p1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->q1:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object v0, v2, Lpe/hf/black20/MultiScreenActivityEXO;->q1:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p1, v4, v0}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 129
    .line 130
    .line 131
    iget-object p1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->d1:Landroid/widget/ListView;

    .line 132
    .line 133
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 134
    .line 135
    .line 136
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1, v3, v1}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->m1:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Ljava/util/HashMap;

    .line 151
    .line 152
    const-string v0, "category_name"

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Ljava/lang/String;

    .line 159
    .line 160
    iput-object p1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->q1:Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iget-object v0, v2, Lpe/hf/black20/MultiScreenActivityEXO;->q1:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p1, v4, v0}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 169
    .line 170
    .line 171
    iget-object p1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->m1:Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Ljava/util/HashMap;

    .line 178
    .line 179
    const-string v0, "category_id"

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Ljava/lang/String;

    .line 186
    .line 187
    iput-object p1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->r1:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1, v5, v1}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 194
    .line 195
    .line 196
    iget-object p1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->d1:Landroid/widget/ListView;

    .line 197
    .line 198
    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 199
    .line 200
    .line 201
    :goto_0
    iget-object p1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->d1:Landroid/widget/ListView;

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 204
    .line 205
    .line 206
    new-instance p1, Lb7/Y;

    .line 207
    .line 208
    invoke-direct {p1, v2, v5}, Lb7/Y;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 209
    .line 210
    .line 211
    new-array v0, v3, [Ljava/lang/Void;

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    .line 215
    .line 216
    iget-object p1, v2, Lpe/hf/black20/MultiScreenActivityEXO;->d1:Landroid/widget/ListView;

    .line 217
    .line 218
    new-instance v0, Lb7/f;

    .line 219
    .line 220
    const/16 v1, 0xb

    .line 221
    .line 222
    invoke-direct {v0, p0, v1}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lb7/Y;->a:I

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
    invoke-virtual {p0}, Lb7/Y;->a()V

    .line 10
    .line 11
    .line 12
    return-object v1

    .line 13
    :pswitch_0
    check-cast p1, [Ljava/lang/Void;

    .line 14
    .line 15
    invoke-virtual {p0}, Lb7/Y;->a()V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lb7/Y;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Void;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lb7/Y;->b(Ljava/lang/Void;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lb7/Y;->b(Ljava/lang/Void;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreExecute()V
    .locals 3

    .line 1
    iget v0, p0, Lb7/Y;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lb7/Y;->b:Lpe/hf/black20/MultiScreenActivityEXO;

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
    iget-object v0, v2, Lpe/hf/black20/MultiScreenActivityEXO;->c1:Landroid/widget/ProgressBar;

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
    iget-object v0, v2, Lpe/hf/black20/MultiScreenActivityEXO;->c1:Landroid/widget/ProgressBar;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
