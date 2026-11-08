.class public final Lb7/D;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpe/hf/black20/ChannelListActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/ChannelListActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb7/D;->a:I

    invoke-direct {p0, p1, v0}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/ChannelListActivity;I)V
    .locals 0

    .line 2
    iput p2, p0, Lb7/D;->a:I

    iput-object p1, p0, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/ChannelListActivity;La/r;)V
    .locals 0

    .line 3
    const/4 p2, 0x2

    iput p2, p0, Lb7/D;->a:I

    invoke-direct {p0, p1, p2}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/ChannelListActivity;Lb7/A;)V
    .locals 0

    .line 6
    const/16 p2, 0x8

    iput p2, p0, Lb7/D;->a:I

    invoke-direct {p0, p1, p2}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/ChannelListActivity;Lb7/B;)V
    .locals 0

    .line 7
    const/4 p2, 0x5

    iput p2, p0, Lb7/D;->a:I

    invoke-direct {p0, p1, p2}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/ChannelListActivity;Lb7/C;)V
    .locals 0

    .line 8
    const/4 p2, 0x3

    iput p2, p0, Lb7/D;->a:I

    invoke-direct {p0, p1, p2}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/ChannelListActivity;Lb7/y;)V
    .locals 0

    .line 4
    const/4 p2, 0x4

    iput p2, p0, Lb7/D;->a:I

    invoke-direct {p0, p1, p2}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/ChannelListActivity;Lb7/z;)V
    .locals 0

    .line 5
    const/4 p2, 0x7

    iput p2, p0, Lb7/D;->a:I

    invoke-direct {p0, p1, p2}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/ChannelListActivity;Ljava/lang/Object;)V
    .locals 0

    .line 9
    const/4 p2, 0x1

    iput p2, p0, Lb7/D;->a:I

    invoke-direct {p0, p1, p2}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    return-void
.end method

.method private varargs b()V
    .locals 28

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p0

    .line 7
    .line 8
    iget-object v2, v1, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 17
    .line 18
    sget-object v3, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v4, Lc7/d;

    .line 21
    .line 22
    invoke-direct {v4, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lc7/b;

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    invoke-direct {v5, v0, v6}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v6, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const-string v7, "ORT_PROFILE_ID"

    .line 49
    .line 50
    const-string v8, ""

    .line 51
    .line 52
    invoke-virtual {v6, v7, v8}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v4, v3, v6}, Lc7/d;->o0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const/4 v4, 0x0

    .line 61
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-ge v4, v6, :cond_2

    .line 66
    .line 67
    const-string v6, "ORT_PARENTAL_CONTROL_STATUS"

    .line 68
    .line 69
    const-string v9, "locked"

    .line 70
    .line 71
    invoke-static {v6, v9, v9}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    const-string v9, "category_id"

    .line 76
    .line 77
    const-string v10, "episode_run_time"

    .line 78
    .line 79
    const-string v11, "youtube_trailer"

    .line 80
    .line 81
    const-string v12, "backdrop_path"

    .line 82
    .line 83
    const-string v13, "rating_5based"

    .line 84
    .line 85
    const-string v14, "rating"

    .line 86
    .line 87
    const-string v15, "last_modified"

    .line 88
    .line 89
    const-string v1, "releaseDate"

    .line 90
    .line 91
    move-object/from16 v16, v2

    .line 92
    .line 93
    const-string v2, "genre"

    .line 94
    .line 95
    move-object/from16 v17, v0

    .line 96
    .line 97
    const-string v0, "director"

    .line 98
    .line 99
    move-object/from16 v18, v9

    .line 100
    .line 101
    const-string v9, "cast"

    .line 102
    .line 103
    move-object/from16 v19, v10

    .line 104
    .line 105
    const-string v10, "plot"

    .line 106
    .line 107
    move-object/from16 v20, v11

    .line 108
    .line 109
    const-string v11, "cover"

    .line 110
    .line 111
    move-object/from16 v21, v12

    .line 112
    .line 113
    const-string v12, "series_id"

    .line 114
    .line 115
    move-object/from16 v22, v13

    .line 116
    .line 117
    const-string v13, "name"

    .line 118
    .line 119
    move-object/from16 v23, v14

    .line 120
    .line 121
    const-string v14, "num"

    .line 122
    .line 123
    if-eqz v6, :cond_1

    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    check-cast v6, Lh7/h;

    .line 130
    .line 131
    iget-object v6, v6, Lh7/h;->p:Ljava/lang/String;

    .line 132
    .line 133
    move-object/from16 v24, v15

    .line 134
    .line 135
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 136
    .line 137
    .line 138
    move-result-object v15

    .line 139
    invoke-virtual {v15, v7, v8}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v15

    .line 143
    move-object/from16 v25, v7

    .line 144
    .line 145
    const-string v7, "SERIES"

    .line 146
    .line 147
    invoke-virtual {v5, v6, v7, v15}, Lc7/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    const-string v7, "yes"

    .line 152
    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-nez v6, :cond_0

    .line 158
    .line 159
    new-instance v6, Ljava/util/HashMap;

    .line 160
    .line 161
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    check-cast v7, Lh7/h;

    .line 169
    .line 170
    iget-object v7, v7, Lh7/h;->a:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v6, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    check-cast v7, Lh7/h;

    .line 180
    .line 181
    iget-object v7, v7, Lh7/h;->b:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v6, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    check-cast v7, Lh7/h;

    .line 191
    .line 192
    iget-object v7, v7, Lh7/h;->c:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v6, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    check-cast v7, Lh7/h;

    .line 202
    .line 203
    iget-object v7, v7, Lh7/h;->d:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v6, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    check-cast v7, Lh7/h;

    .line 213
    .line 214
    iget-object v7, v7, Lh7/h;->e:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v6, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    check-cast v7, Lh7/h;

    .line 224
    .line 225
    iget-object v7, v7, Lh7/h;->f:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    check-cast v7, Lh7/h;

    .line 235
    .line 236
    iget-object v7, v7, Lh7/h;->g:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    check-cast v0, Lh7/h;

    .line 246
    .line 247
    iget-object v0, v0, Lh7/h;->h:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Lh7/h;

    .line 257
    .line 258
    iget-object v0, v0, Lh7/h;->i:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Lh7/h;

    .line 268
    .line 269
    iget-object v0, v0, Lh7/h;->j:Ljava/lang/String;

    .line 270
    .line 271
    move-object/from16 v7, v24

    .line 272
    .line 273
    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    check-cast v0, Lh7/h;

    .line 281
    .line 282
    iget-object v0, v0, Lh7/h;->k:Ljava/lang/String;

    .line 283
    .line 284
    move-object/from16 v15, v23

    .line 285
    .line 286
    invoke-virtual {v6, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Lh7/h;

    .line 294
    .line 295
    iget-object v0, v0, Lh7/h;->l:Ljava/lang/String;

    .line 296
    .line 297
    move-object/from16 v1, v22

    .line 298
    .line 299
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    check-cast v0, Lh7/h;

    .line 307
    .line 308
    iget-object v0, v0, Lh7/h;->m:Ljava/lang/String;

    .line 309
    .line 310
    move-object/from16 v1, v21

    .line 311
    .line 312
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    check-cast v0, Lh7/h;

    .line 320
    .line 321
    iget-object v0, v0, Lh7/h;->n:Ljava/lang/String;

    .line 322
    .line 323
    move-object/from16 v1, v20

    .line 324
    .line 325
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    check-cast v0, Lh7/h;

    .line 333
    .line 334
    iget-object v0, v0, Lh7/h;->o:Ljava/lang/String;

    .line 335
    .line 336
    move-object/from16 v1, v19

    .line 337
    .line 338
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    check-cast v0, Lh7/h;

    .line 346
    .line 347
    iget-object v0, v0, Lh7/h;->p:Ljava/lang/String;

    .line 348
    .line 349
    move-object/from16 v1, v18

    .line 350
    .line 351
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-object/from16 v0, v17

    .line 355
    .line 356
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-object/from16 v17, v5

    .line 360
    .line 361
    move-object/from16 v18, v8

    .line 362
    .line 363
    goto/16 :goto_1

    .line 364
    .line 365
    :cond_0
    move-object/from16 v18, v8

    .line 366
    .line 367
    move-object/from16 v0, v17

    .line 368
    .line 369
    move-object/from16 v17, v5

    .line 370
    .line 371
    goto/16 :goto_1

    .line 372
    .line 373
    :cond_1
    move-object/from16 v25, v7

    .line 374
    .line 375
    move-object v7, v15

    .line 376
    move-object/from16 v15, v23

    .line 377
    .line 378
    move-object/from16 v26, v17

    .line 379
    .line 380
    move-object/from16 v17, v5

    .line 381
    .line 382
    move-object/from16 v5, v21

    .line 383
    .line 384
    move-object/from16 v21, v19

    .line 385
    .line 386
    move-object/from16 v19, v26

    .line 387
    .line 388
    move-object/from16 v27, v18

    .line 389
    .line 390
    move-object/from16 v18, v8

    .line 391
    .line 392
    move-object/from16 v8, v22

    .line 393
    .line 394
    move-object/from16 v22, v20

    .line 395
    .line 396
    move-object/from16 v20, v27

    .line 397
    .line 398
    new-instance v6, Ljava/util/HashMap;

    .line 399
    .line 400
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v23

    .line 407
    move-object/from16 v24, v5

    .line 408
    .line 409
    move-object/from16 v5, v23

    .line 410
    .line 411
    check-cast v5, Lh7/h;

    .line 412
    .line 413
    iget-object v5, v5, Lh7/h;->a:Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {v6, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    check-cast v5, Lh7/h;

    .line 423
    .line 424
    iget-object v5, v5, Lh7/h;->b:Ljava/lang/String;

    .line 425
    .line 426
    invoke-virtual {v6, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    check-cast v5, Lh7/h;

    .line 434
    .line 435
    iget-object v5, v5, Lh7/h;->c:Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v6, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    check-cast v5, Lh7/h;

    .line 445
    .line 446
    iget-object v5, v5, Lh7/h;->d:Ljava/lang/String;

    .line 447
    .line 448
    invoke-virtual {v6, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    check-cast v5, Lh7/h;

    .line 456
    .line 457
    iget-object v5, v5, Lh7/h;->e:Ljava/lang/String;

    .line 458
    .line 459
    invoke-virtual {v6, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v5

    .line 466
    check-cast v5, Lh7/h;

    .line 467
    .line 468
    iget-object v5, v5, Lh7/h;->f:Ljava/lang/String;

    .line 469
    .line 470
    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    check-cast v5, Lh7/h;

    .line 478
    .line 479
    iget-object v5, v5, Lh7/h;->g:Ljava/lang/String;

    .line 480
    .line 481
    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    check-cast v0, Lh7/h;

    .line 489
    .line 490
    iget-object v0, v0, Lh7/h;->h:Ljava/lang/String;

    .line 491
    .line 492
    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    check-cast v0, Lh7/h;

    .line 500
    .line 501
    iget-object v0, v0, Lh7/h;->i:Ljava/lang/String;

    .line 502
    .line 503
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    check-cast v0, Lh7/h;

    .line 511
    .line 512
    iget-object v0, v0, Lh7/h;->j:Ljava/lang/String;

    .line 513
    .line 514
    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    check-cast v0, Lh7/h;

    .line 522
    .line 523
    iget-object v0, v0, Lh7/h;->k:Ljava/lang/String;

    .line 524
    .line 525
    invoke-virtual {v6, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    check-cast v0, Lh7/h;

    .line 533
    .line 534
    iget-object v0, v0, Lh7/h;->l:Ljava/lang/String;

    .line 535
    .line 536
    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    check-cast v0, Lh7/h;

    .line 544
    .line 545
    iget-object v0, v0, Lh7/h;->m:Ljava/lang/String;

    .line 546
    .line 547
    move-object/from16 v1, v24

    .line 548
    .line 549
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    check-cast v0, Lh7/h;

    .line 557
    .line 558
    iget-object v0, v0, Lh7/h;->n:Ljava/lang/String;

    .line 559
    .line 560
    move-object/from16 v1, v22

    .line 561
    .line 562
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    check-cast v0, Lh7/h;

    .line 570
    .line 571
    iget-object v0, v0, Lh7/h;->o:Ljava/lang/String;

    .line 572
    .line 573
    move-object/from16 v1, v21

    .line 574
    .line 575
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    check-cast v0, Lh7/h;

    .line 583
    .line 584
    iget-object v0, v0, Lh7/h;->p:Ljava/lang/String;

    .line 585
    .line 586
    move-object/from16 v1, v20

    .line 587
    .line 588
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-object/from16 v0, v19

    .line 592
    .line 593
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 597
    .line 598
    move-object/from16 v1, p0

    .line 599
    .line 600
    move-object/from16 v2, v16

    .line 601
    .line 602
    move-object/from16 v5, v17

    .line 603
    .line 604
    move-object/from16 v8, v18

    .line 605
    .line 606
    move-object/from16 v7, v25

    .line 607
    .line 608
    goto/16 :goto_0

    .line 609
    .line 610
    :cond_2
    move-object/from16 v16, v2

    .line 611
    .line 612
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 613
    .line 614
    .line 615
    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Void;)V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SERIES"

    .line 4
    .line 5
    const-string v2, "CONTINUE WATCHING"

    .line 6
    .line 7
    const-string v5, "category_name"

    .line 8
    .line 9
    const-string v6, "parent_id"

    .line 10
    .line 11
    const-string v7, "null"

    .line 12
    .line 13
    const-string v8, "filter_status"

    .line 14
    .line 15
    const-string v9, "No"

    .line 16
    .line 17
    const-string v10, "Yes"

    .line 18
    .line 19
    const-string v11, "stream_type"

    .line 20
    .line 21
    const-string v12, "stream_icon"

    .line 22
    .line 23
    const-string v13, "added"

    .line 24
    .line 25
    const-string v14, "container_extension"

    .line 26
    .line 27
    const-string v15, "custom_sid"

    .line 28
    .line 29
    const-string v3, "direct_source"

    .line 30
    .line 31
    const-string v4, "stream_id"

    .line 32
    .line 33
    move-object/from16 v17, v1

    .line 34
    .line 35
    const-string v1, "-"

    .line 36
    .line 37
    move-object/from16 v18, v10

    .line 38
    .line 39
    const-string v10, "0"

    .line 40
    .line 41
    move-object/from16 v19, v2

    .line 42
    .line 43
    const-string v2, "pe.hf.black20"

    .line 44
    .line 45
    move-object/from16 v20, v6

    .line 46
    .line 47
    iget v6, v0, Lb7/D;->a:I

    .line 48
    .line 49
    move-object/from16 v21, v10

    .line 50
    .line 51
    const-string v10, "VOD"

    .line 52
    .line 53
    move-object/from16 v22, v5

    .line 54
    .line 55
    const-string v5, "num"

    .line 56
    .line 57
    move-object/from16 v23, v7

    .line 58
    .line 59
    const-string v7, "name"

    .line 60
    .line 61
    move-object/from16 v24, v9

    .line 62
    .line 63
    const-string v9, "rating"

    .line 64
    .line 65
    move-object/from16 v25, v8

    .line 66
    .line 67
    const-string v8, "rating_5based"

    .line 68
    .line 69
    move-object/from16 v26, v2

    .line 70
    .line 71
    const-string v2, "99997"

    .line 72
    .line 73
    move-object/from16 v27, v3

    .line 74
    .line 75
    const-string v3, "00000"

    .line 76
    .line 77
    move-object/from16 v28, v15

    .line 78
    .line 79
    const-string v15, "category_id"

    .line 80
    .line 81
    move-object/from16 v29, v14

    .line 82
    .line 83
    const-string v14, "ORT_PARENTAL_CONTROL_STATUS"

    .line 84
    .line 85
    move-object/from16 v30, v13

    .line 86
    .line 87
    const-string v13, "ORT_PROFILE_ID"

    .line 88
    .line 89
    move-object/from16 v31, v8

    .line 90
    .line 91
    const-string v8, "99999"

    .line 92
    .line 93
    move-object/from16 v32, v9

    .line 94
    .line 95
    const-string v9, "no"

    .line 96
    .line 97
    move-object/from16 v33, v12

    .line 98
    .line 99
    const-string v12, "locked"

    .line 100
    .line 101
    move-object/from16 v34, v11

    .line 102
    .line 103
    const-string v11, ""

    .line 104
    .line 105
    move-object/from16 v35, v7

    .line 106
    .line 107
    const-string v7, "yes"

    .line 108
    .line 109
    move-object/from16 v36, v5

    .line 110
    .line 111
    iget-object v5, v0, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    .line 112
    .line 113
    packed-switch v6, :pswitch_data_0

    .line 114
    .line 115
    .line 116
    new-instance v6, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object v6, v5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 122
    .line 123
    new-instance v6, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v6, v5, Lpe/hf/black20/ChannelListActivity;->f0:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    iget-object v0, v5, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 135
    .line 136
    if-eqz v6, :cond_0

    .line 137
    .line 138
    iget-object v1, v5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 141
    .line 142
    .line 143
    iget-object v1, v5, Lpe/hf/black20/ChannelListActivity;->g0:Ljava/lang/String;

    .line 144
    .line 145
    sget-object v19, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 146
    .line 147
    const/16 v17, 0x1

    .line 148
    .line 149
    const-string v20, "0"

    .line 150
    .line 151
    const-string v21, ""

    .line 152
    .line 153
    move-object/from16 v16, v0

    .line 154
    .line 155
    move-object/from16 v18, v1

    .line 156
    .line 157
    invoke-static/range {v16 .. v21}, Ly4/k;->M(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iput-object v0, v5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 162
    .line 163
    iput-object v9, v5, Lpe/hf/black20/ChannelListActivity;->f0:Ljava/lang/String;

    .line 164
    .line 165
    goto/16 :goto_4

    .line 166
    .line 167
    :cond_0
    iget-object v6, v5, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-eqz v3, :cond_1

    .line 174
    .line 175
    iget-object v1, v5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 178
    .line 179
    .line 180
    iget-object v1, v5, Lpe/hf/black20/ChannelListActivity;->g0:Ljava/lang/String;

    .line 181
    .line 182
    sget-object v19, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 183
    .line 184
    const/16 v17, 0x0

    .line 185
    .line 186
    const-string v20, "00000"

    .line 187
    .line 188
    const-string v21, ""

    .line 189
    .line 190
    move-object/from16 v16, v0

    .line 191
    .line 192
    move-object/from16 v18, v1

    .line 193
    .line 194
    invoke-static/range {v16 .. v21}, Ly4/k;->M(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iput-object v0, v5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 199
    .line 200
    goto/16 :goto_4

    .line 201
    .line 202
    :cond_1
    iget-object v3, v5, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_2

    .line 209
    .line 210
    iget-object v1, v5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 213
    .line 214
    .line 215
    iget-object v1, v5, Lpe/hf/black20/ChannelListActivity;->g0:Ljava/lang/String;

    .line 216
    .line 217
    sget-object v19, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 218
    .line 219
    const/16 v17, 0x0

    .line 220
    .line 221
    const-string v20, "99999"

    .line 222
    .line 223
    const-string v21, ""

    .line 224
    .line 225
    move-object/from16 v16, v0

    .line 226
    .line 227
    move-object/from16 v18, v1

    .line 228
    .line 229
    invoke-static/range {v16 .. v21}, Ly4/k;->M(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iput-object v0, v5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 234
    .line 235
    goto/16 :goto_4

    .line 236
    .line 237
    :cond_2
    iget-object v3, v5, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_7

    .line 244
    .line 245
    iget-object v2, v5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 248
    .line 249
    .line 250
    iget-object v2, v5, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 251
    .line 252
    invoke-virtual {v2}, Lc7/d;->E0()Ljava/util/ArrayList;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    iput-object v2, v5, Lpe/hf/black20/ChannelListActivity;->L:Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-lez v2, :cond_8

    .line 263
    .line 264
    sget-object v19, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 265
    .line 266
    const-string v20, "0"

    .line 267
    .line 268
    const-string v21, ""

    .line 269
    .line 270
    const/16 v17, 0x1

    .line 271
    .line 272
    const-string v18, "all"

    .line 273
    .line 274
    move-object/from16 v16, v0

    .line 275
    .line 276
    invoke-static/range {v16 .. v21}, Ly4/k;->M(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    const/4 v2, 0x0

    .line 281
    :goto_0
    iget-object v3, v5, Lpe/hf/black20/ChannelListActivity;->L:Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    if-ge v2, v3, :cond_8

    .line 288
    .line 289
    iget-object v3, v5, Lpe/hf/black20/ChannelListActivity;->L:Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    check-cast v3, Lh7/g;

    .line 296
    .line 297
    iget-object v3, v3, Lh7/g;->a:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    const/4 v6, 0x0

    .line 304
    aget-object v8, v3, v6

    .line 305
    .line 306
    invoke-static {v13, v11, v8}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 307
    .line 308
    .line 309
    move-result v6

    .line 310
    if-eqz v6, :cond_6

    .line 311
    .line 312
    const/4 v6, 0x0

    .line 313
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 314
    .line 315
    .line 316
    move-result v8

    .line 317
    if-ge v6, v8, :cond_6

    .line 318
    .line 319
    const/4 v8, 0x1

    .line 320
    aget-object v9, v3, v8

    .line 321
    .line 322
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    check-cast v8, Ljava/util/HashMap;

    .line 327
    .line 328
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    if-eqz v8, :cond_5

    .line 337
    .line 338
    invoke-static {v14, v12, v12}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 339
    .line 340
    .line 341
    move-result v8

    .line 342
    if-eqz v8, :cond_4

    .line 343
    .line 344
    iget-object v8, v5, Lpe/hf/black20/ChannelListActivity;->P:Lc7/b;

    .line 345
    .line 346
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    check-cast v9, Ljava/util/HashMap;

    .line 351
    .line 352
    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v9

    .line 356
    check-cast v9, Ljava/lang/String;

    .line 357
    .line 358
    move-object/from16 p1, v3

    .line 359
    .line 360
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-virtual {v3, v13, v11}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-virtual {v8, v9, v10, v3}, Lc7/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    if-nez v3, :cond_3

    .line 377
    .line 378
    new-instance v3, Ljava/util/HashMap;

    .line 379
    .line 380
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    check-cast v8, Ljava/util/HashMap;

    .line 388
    .line 389
    move-object/from16 v9, v36

    .line 390
    .line 391
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v8

    .line 395
    check-cast v8, Ljava/lang/String;

    .line 396
    .line 397
    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v8

    .line 404
    check-cast v8, Ljava/util/HashMap;

    .line 405
    .line 406
    move-object/from16 v36, v1

    .line 407
    .line 408
    move-object/from16 v1, v35

    .line 409
    .line 410
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v8

    .line 414
    check-cast v8, Ljava/lang/String;

    .line 415
    .line 416
    invoke-virtual {v3, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v8

    .line 423
    check-cast v8, Ljava/util/HashMap;

    .line 424
    .line 425
    move-object/from16 v35, v7

    .line 426
    .line 427
    move-object/from16 v7, v34

    .line 428
    .line 429
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v8

    .line 433
    check-cast v8, Ljava/lang/String;

    .line 434
    .line 435
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    check-cast v8, Ljava/util/HashMap;

    .line 443
    .line 444
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v8

    .line 448
    check-cast v8, Ljava/lang/String;

    .line 449
    .line 450
    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v8

    .line 457
    check-cast v8, Ljava/util/HashMap;

    .line 458
    .line 459
    move-object/from16 v34, v13

    .line 460
    .line 461
    move-object/from16 v13, v33

    .line 462
    .line 463
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v8

    .line 467
    check-cast v8, Ljava/lang/String;

    .line 468
    .line 469
    invoke-virtual {v3, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v8

    .line 476
    check-cast v8, Ljava/util/HashMap;

    .line 477
    .line 478
    move-object/from16 v33, v12

    .line 479
    .line 480
    move-object/from16 v12, v32

    .line 481
    .line 482
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    check-cast v8, Ljava/lang/String;

    .line 487
    .line 488
    invoke-virtual {v3, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v8

    .line 495
    check-cast v8, Ljava/util/HashMap;

    .line 496
    .line 497
    move-object/from16 v32, v14

    .line 498
    .line 499
    move-object/from16 v14, v31

    .line 500
    .line 501
    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v8

    .line 505
    check-cast v8, Ljava/lang/String;

    .line 506
    .line 507
    invoke-virtual {v3, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v8

    .line 514
    check-cast v8, Ljava/util/HashMap;

    .line 515
    .line 516
    move-object/from16 v31, v11

    .line 517
    .line 518
    move-object/from16 v11, v30

    .line 519
    .line 520
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    check-cast v8, Ljava/lang/String;

    .line 525
    .line 526
    invoke-virtual {v3, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v8

    .line 533
    check-cast v8, Ljava/util/HashMap;

    .line 534
    .line 535
    invoke-virtual {v8, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v8

    .line 539
    check-cast v8, Ljava/lang/String;

    .line 540
    .line 541
    invoke-virtual {v3, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v8

    .line 548
    check-cast v8, Ljava/util/HashMap;

    .line 549
    .line 550
    move-object/from16 v30, v10

    .line 551
    .line 552
    move-object/from16 v10, v29

    .line 553
    .line 554
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v8

    .line 558
    check-cast v8, Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v3, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v8

    .line 567
    check-cast v8, Ljava/util/HashMap;

    .line 568
    .line 569
    move/from16 v16, v2

    .line 570
    .line 571
    move-object/from16 v2, v28

    .line 572
    .line 573
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v8

    .line 577
    check-cast v8, Ljava/lang/String;

    .line 578
    .line 579
    invoke-virtual {v3, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v8

    .line 586
    check-cast v8, Ljava/util/HashMap;

    .line 587
    .line 588
    move-object/from16 v2, v27

    .line 589
    .line 590
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v8

    .line 594
    check-cast v8, Ljava/lang/String;

    .line 595
    .line 596
    invoke-virtual {v3, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    iget-object v8, v5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 600
    .line 601
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    .line 603
    .line 604
    :goto_2
    move-object/from16 v17, v9

    .line 605
    .line 606
    move-object/from16 v9, v28

    .line 607
    .line 608
    goto/16 :goto_3

    .line 609
    .line 610
    :cond_3
    move/from16 v16, v2

    .line 611
    .line 612
    move-object/from16 v2, v27

    .line 613
    .line 614
    move-object/from16 v9, v36

    .line 615
    .line 616
    move-object/from16 v36, v1

    .line 617
    .line 618
    move-object/from16 v1, v35

    .line 619
    .line 620
    move-object/from16 v35, v7

    .line 621
    .line 622
    move-object/from16 v7, v34

    .line 623
    .line 624
    move-object/from16 v34, v13

    .line 625
    .line 626
    move-object/from16 v13, v33

    .line 627
    .line 628
    move-object/from16 v33, v12

    .line 629
    .line 630
    move-object/from16 v12, v32

    .line 631
    .line 632
    move-object/from16 v32, v14

    .line 633
    .line 634
    move-object/from16 v14, v31

    .line 635
    .line 636
    move-object/from16 v31, v11

    .line 637
    .line 638
    move-object/from16 v11, v30

    .line 639
    .line 640
    move-object/from16 v30, v10

    .line 641
    .line 642
    move-object/from16 v10, v29

    .line 643
    .line 644
    goto :goto_2

    .line 645
    :cond_4
    move/from16 v16, v2

    .line 646
    .line 647
    move-object/from16 p1, v3

    .line 648
    .line 649
    move-object/from16 v2, v27

    .line 650
    .line 651
    move-object/from16 v9, v36

    .line 652
    .line 653
    move-object/from16 v36, v1

    .line 654
    .line 655
    move-object/from16 v1, v35

    .line 656
    .line 657
    move-object/from16 v35, v7

    .line 658
    .line 659
    move-object/from16 v7, v34

    .line 660
    .line 661
    move-object/from16 v34, v13

    .line 662
    .line 663
    move-object/from16 v13, v33

    .line 664
    .line 665
    move-object/from16 v33, v12

    .line 666
    .line 667
    move-object/from16 v12, v32

    .line 668
    .line 669
    move-object/from16 v32, v14

    .line 670
    .line 671
    move-object/from16 v14, v31

    .line 672
    .line 673
    move-object/from16 v31, v11

    .line 674
    .line 675
    move-object/from16 v11, v30

    .line 676
    .line 677
    move-object/from16 v30, v10

    .line 678
    .line 679
    move-object/from16 v10, v29

    .line 680
    .line 681
    new-instance v3, Ljava/util/HashMap;

    .line 682
    .line 683
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v8

    .line 690
    check-cast v8, Ljava/util/HashMap;

    .line 691
    .line 692
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v8

    .line 696
    check-cast v8, Ljava/lang/String;

    .line 697
    .line 698
    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v8

    .line 705
    check-cast v8, Ljava/util/HashMap;

    .line 706
    .line 707
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v8

    .line 711
    check-cast v8, Ljava/lang/String;

    .line 712
    .line 713
    invoke-virtual {v3, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v8

    .line 720
    check-cast v8, Ljava/util/HashMap;

    .line 721
    .line 722
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v8

    .line 726
    check-cast v8, Ljava/lang/String;

    .line 727
    .line 728
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v8

    .line 735
    check-cast v8, Ljava/util/HashMap;

    .line 736
    .line 737
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v8

    .line 741
    check-cast v8, Ljava/lang/String;

    .line 742
    .line 743
    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v8

    .line 750
    check-cast v8, Ljava/util/HashMap;

    .line 751
    .line 752
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v8

    .line 756
    check-cast v8, Ljava/lang/String;

    .line 757
    .line 758
    invoke-virtual {v3, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v8

    .line 765
    check-cast v8, Ljava/util/HashMap;

    .line 766
    .line 767
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v8

    .line 771
    check-cast v8, Ljava/lang/String;

    .line 772
    .line 773
    invoke-virtual {v3, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    move-result-object v8

    .line 780
    check-cast v8, Ljava/util/HashMap;

    .line 781
    .line 782
    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v8

    .line 786
    check-cast v8, Ljava/lang/String;

    .line 787
    .line 788
    invoke-virtual {v3, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    move-result-object v8

    .line 795
    check-cast v8, Ljava/util/HashMap;

    .line 796
    .line 797
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v8

    .line 801
    check-cast v8, Ljava/lang/String;

    .line 802
    .line 803
    invoke-virtual {v3, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v8

    .line 810
    check-cast v8, Ljava/util/HashMap;

    .line 811
    .line 812
    invoke-virtual {v8, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object v8

    .line 816
    check-cast v8, Ljava/lang/String;

    .line 817
    .line 818
    invoke-virtual {v3, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v8

    .line 825
    check-cast v8, Ljava/util/HashMap;

    .line 826
    .line 827
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v8

    .line 831
    check-cast v8, Ljava/lang/String;

    .line 832
    .line 833
    invoke-virtual {v3, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v8

    .line 840
    check-cast v8, Ljava/util/HashMap;

    .line 841
    .line 842
    move-object/from16 v17, v9

    .line 843
    .line 844
    move-object/from16 v9, v28

    .line 845
    .line 846
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v8

    .line 850
    check-cast v8, Ljava/lang/String;

    .line 851
    .line 852
    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v8

    .line 859
    check-cast v8, Ljava/util/HashMap;

    .line 860
    .line 861
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object v8

    .line 865
    check-cast v8, Ljava/lang/String;

    .line 866
    .line 867
    invoke-virtual {v3, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    iget-object v8, v5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 871
    .line 872
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    .line 874
    .line 875
    goto :goto_3

    .line 876
    :cond_5
    move/from16 v16, v2

    .line 877
    .line 878
    move-object/from16 p1, v3

    .line 879
    .line 880
    move-object/from16 v2, v27

    .line 881
    .line 882
    move-object/from16 v9, v28

    .line 883
    .line 884
    move-object/from16 v17, v36

    .line 885
    .line 886
    move-object/from16 v36, v1

    .line 887
    .line 888
    move-object/from16 v1, v35

    .line 889
    .line 890
    move-object/from16 v35, v7

    .line 891
    .line 892
    move-object/from16 v7, v34

    .line 893
    .line 894
    move-object/from16 v34, v13

    .line 895
    .line 896
    move-object/from16 v13, v33

    .line 897
    .line 898
    move-object/from16 v33, v12

    .line 899
    .line 900
    move-object/from16 v12, v32

    .line 901
    .line 902
    move-object/from16 v32, v14

    .line 903
    .line 904
    move-object/from16 v14, v31

    .line 905
    .line 906
    move-object/from16 v31, v11

    .line 907
    .line 908
    move-object/from16 v11, v30

    .line 909
    .line 910
    move-object/from16 v30, v10

    .line 911
    .line 912
    move-object/from16 v10, v29

    .line 913
    .line 914
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 915
    .line 916
    move-object/from16 v3, p1

    .line 917
    .line 918
    move-object/from16 v27, v2

    .line 919
    .line 920
    move-object/from16 v28, v9

    .line 921
    .line 922
    move-object/from16 v29, v10

    .line 923
    .line 924
    move/from16 v2, v16

    .line 925
    .line 926
    move-object/from16 v10, v30

    .line 927
    .line 928
    move-object/from16 v30, v11

    .line 929
    .line 930
    move-object/from16 v11, v31

    .line 931
    .line 932
    move-object/from16 v31, v14

    .line 933
    .line 934
    move-object/from16 v14, v32

    .line 935
    .line 936
    move-object/from16 v32, v12

    .line 937
    .line 938
    move-object/from16 v12, v33

    .line 939
    .line 940
    move-object/from16 v33, v13

    .line 941
    .line 942
    move-object/from16 v13, v34

    .line 943
    .line 944
    move-object/from16 v34, v7

    .line 945
    .line 946
    move-object/from16 v7, v35

    .line 947
    .line 948
    move-object/from16 v35, v1

    .line 949
    .line 950
    move-object/from16 v1, v36

    .line 951
    .line 952
    move-object/from16 v36, v17

    .line 953
    .line 954
    goto/16 :goto_1

    .line 955
    .line 956
    :cond_6
    move/from16 v16, v2

    .line 957
    .line 958
    move-object/from16 v2, v27

    .line 959
    .line 960
    move-object/from16 v9, v28

    .line 961
    .line 962
    move-object/from16 v17, v36

    .line 963
    .line 964
    move-object/from16 v36, v1

    .line 965
    .line 966
    move-object/from16 v1, v35

    .line 967
    .line 968
    move-object/from16 v35, v7

    .line 969
    .line 970
    move-object/from16 v7, v34

    .line 971
    .line 972
    move-object/from16 v34, v13

    .line 973
    .line 974
    move-object/from16 v13, v33

    .line 975
    .line 976
    move-object/from16 v33, v12

    .line 977
    .line 978
    move-object/from16 v12, v32

    .line 979
    .line 980
    move-object/from16 v32, v14

    .line 981
    .line 982
    move-object/from16 v14, v31

    .line 983
    .line 984
    move-object/from16 v31, v11

    .line 985
    .line 986
    move-object/from16 v11, v30

    .line 987
    .line 988
    move-object/from16 v30, v10

    .line 989
    .line 990
    move-object/from16 v10, v29

    .line 991
    .line 992
    add-int/lit8 v3, v16, 0x1

    .line 993
    .line 994
    move-object/from16 v27, v2

    .line 995
    .line 996
    move v2, v3

    .line 997
    move-object/from16 v28, v9

    .line 998
    .line 999
    move-object/from16 v29, v10

    .line 1000
    .line 1001
    move-object/from16 v10, v30

    .line 1002
    .line 1003
    move-object/from16 v30, v11

    .line 1004
    .line 1005
    move-object/from16 v11, v31

    .line 1006
    .line 1007
    move-object/from16 v31, v14

    .line 1008
    .line 1009
    move-object/from16 v14, v32

    .line 1010
    .line 1011
    move-object/from16 v32, v12

    .line 1012
    .line 1013
    move-object/from16 v12, v33

    .line 1014
    .line 1015
    move-object/from16 v33, v13

    .line 1016
    .line 1017
    move-object/from16 v13, v34

    .line 1018
    .line 1019
    move-object/from16 v34, v7

    .line 1020
    .line 1021
    move-object/from16 v7, v35

    .line 1022
    .line 1023
    move-object/from16 v35, v1

    .line 1024
    .line 1025
    move-object/from16 v1, v36

    .line 1026
    .line 1027
    move-object/from16 v36, v17

    .line 1028
    .line 1029
    goto/16 :goto_0

    .line 1030
    .line 1031
    :cond_7
    iget-object v1, v5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 1032
    .line 1033
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1034
    .line 1035
    .line 1036
    sget-object v19, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 1037
    .line 1038
    iget-object v1, v5, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 1039
    .line 1040
    const-string v20, "0"

    .line 1041
    .line 1042
    const/16 v17, 0x0

    .line 1043
    .line 1044
    const-string v18, "all"

    .line 1045
    .line 1046
    move-object/from16 v16, v0

    .line 1047
    .line 1048
    move-object/from16 v21, v1

    .line 1049
    .line 1050
    invoke-static/range {v16 .. v21}, Ly4/k;->M(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    iput-object v0, v5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 1055
    .line 1056
    :cond_8
    :goto_4
    return-void

    .line 1057
    :pswitch_0
    move-object/from16 v35, v7

    .line 1058
    .line 1059
    move-object/from16 v30, v10

    .line 1060
    .line 1061
    move-object/from16 v31, v11

    .line 1062
    .line 1063
    move-object/from16 v33, v12

    .line 1064
    .line 1065
    move-object/from16 v34, v13

    .line 1066
    .line 1067
    move-object/from16 v32, v14

    .line 1068
    .line 1069
    iget-object v0, v5, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 1070
    .line 1071
    move-object/from16 v6, v30

    .line 1072
    .line 1073
    invoke-virtual {v0, v6}, Lc7/d;->j0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v0

    .line 1077
    sput-object v0, Lpe/hf/black20/ChannelListActivity;->v0:Ljava/util/ArrayList;

    .line 1078
    .line 1079
    iget-object v0, v5, Lpe/hf/black20/ChannelListActivity;->J:Ljava/util/ArrayList;

    .line 1080
    .line 1081
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1082
    .line 1083
    .line 1084
    iget-object v0, v5, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 1085
    .line 1086
    invoke-virtual {v0}, Lc7/d;->s0()Ljava/util/ArrayList;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    iput-object v0, v5, Lpe/hf/black20/ChannelListActivity;->J:Ljava/util/ArrayList;

    .line 1091
    .line 1092
    new-instance v0, Ljava/util/ArrayList;

    .line 1093
    .line 1094
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    .line 1096
    .line 1097
    iput-object v0, v5, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 1098
    .line 1099
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1100
    .line 1101
    .line 1102
    iget-object v0, v5, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 1103
    .line 1104
    new-instance v1, Lc7/d;

    .line 1105
    .line 1106
    invoke-direct {v1, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 1107
    .line 1108
    .line 1109
    new-instance v4, Lc7/b;

    .line 1110
    .line 1111
    const/4 v7, 0x1

    .line 1112
    invoke-direct {v4, v0, v7}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 1113
    .line 1114
    .line 1115
    new-instance v7, Lc7/b;

    .line 1116
    .line 1117
    const/4 v10, 0x0

    .line 1118
    invoke-direct {v7, v0, v10}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 1119
    .line 1120
    .line 1121
    move-object/from16 v11, v26

    .line 1122
    .line 1123
    invoke-virtual {v0, v11, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v11

    .line 1127
    sget-object v10, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 1128
    .line 1129
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1130
    .line 1131
    .line 1132
    move-result v9

    .line 1133
    if-eqz v9, :cond_b

    .line 1134
    .line 1135
    move-object/from16 v10, v25

    .line 1136
    .line 1137
    const/4 v9, 0x0

    .line 1138
    invoke-interface {v11, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v12

    .line 1142
    move-object/from16 v13, v24

    .line 1143
    .line 1144
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1145
    .line 1146
    .line 1147
    move-result v12

    .line 1148
    if-nez v12, :cond_c

    .line 1149
    .line 1150
    invoke-interface {v11, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v12

    .line 1154
    move-object/from16 v14, v31

    .line 1155
    .line 1156
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1157
    .line 1158
    .line 1159
    move-result v12

    .line 1160
    if-nez v12, :cond_a

    .line 1161
    .line 1162
    invoke-interface {v11, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v9

    .line 1166
    move-object/from16 v12, v23

    .line 1167
    .line 1168
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1169
    .line 1170
    .line 1171
    move-result v9

    .line 1172
    if-eqz v9, :cond_9

    .line 1173
    .line 1174
    goto :goto_5

    .line 1175
    :cond_9
    move-object/from16 v9, v18

    .line 1176
    .line 1177
    goto :goto_6

    .line 1178
    :cond_a
    :goto_5
    move-object v9, v13

    .line 1179
    goto :goto_6

    .line 1180
    :cond_b
    move-object/from16 v13, v24

    .line 1181
    .line 1182
    :cond_c
    move-object/from16 v14, v31

    .line 1183
    .line 1184
    goto :goto_5

    .line 1185
    :goto_6
    new-instance v10, Ljava/util/ArrayList;

    .line 1186
    .line 1187
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v1}, Lc7/d;->s0()Ljava/util/ArrayList;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v1

    .line 1197
    new-instance v10, Ljava/util/ArrayList;

    .line 1198
    .line 1199
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    .line 1201
    .line 1202
    const/4 v11, 0x0

    .line 1203
    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1204
    .line 1205
    .line 1206
    move-result v12

    .line 1207
    if-ge v11, v12, :cond_15

    .line 1208
    .line 1209
    if-nez v11, :cond_e

    .line 1210
    .line 1211
    new-instance v12, Ljava/util/HashMap;

    .line 1212
    .line 1213
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v12, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    .line 1218
    .line 1219
    move-object/from16 v24, v5

    .line 1220
    .line 1221
    move-object/from16 v23, v8

    .line 1222
    .line 1223
    const v8, 0x7f1301cc

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v5

    .line 1230
    move-object/from16 v8, v22

    .line 1231
    .line 1232
    invoke-virtual {v12, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    .line 1234
    .line 1235
    move-object/from16 v17, v7

    .line 1236
    .line 1237
    move-object/from16 v5, v20

    .line 1238
    .line 1239
    move-object/from16 v7, v21

    .line 1240
    .line 1241
    invoke-virtual {v12, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1248
    .line 1249
    .line 1250
    move-result v12

    .line 1251
    if-eqz v12, :cond_d

    .line 1252
    .line 1253
    new-instance v12, Ljava/util/HashMap;

    .line 1254
    .line 1255
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v12, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    .line 1260
    .line 1261
    move-object/from16 v21, v3

    .line 1262
    .line 1263
    move-object/from16 v20, v13

    .line 1264
    .line 1265
    const v13, 0x7f13020b

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v3

    .line 1272
    invoke-virtual {v12, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v12, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    .line 1280
    .line 1281
    :goto_8
    move-object/from16 v3, v19

    .line 1282
    .line 1283
    goto :goto_9

    .line 1284
    :cond_d
    move-object/from16 v21, v3

    .line 1285
    .line 1286
    move-object/from16 v20, v13

    .line 1287
    .line 1288
    goto :goto_8

    .line 1289
    :goto_9
    invoke-static {v15, v2, v8, v3}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v12

    .line 1293
    invoke-virtual {v12, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    .line 1298
    .line 1299
    :goto_a
    move-object/from16 v13, v32

    .line 1300
    .line 1301
    move-object/from16 v12, v33

    .line 1302
    .line 1303
    goto :goto_b

    .line 1304
    :cond_e
    move-object/from16 v24, v5

    .line 1305
    .line 1306
    move-object/from16 v17, v7

    .line 1307
    .line 1308
    move-object/from16 v23, v8

    .line 1309
    .line 1310
    move-object/from16 v5, v20

    .line 1311
    .line 1312
    move-object/from16 v7, v21

    .line 1313
    .line 1314
    move-object/from16 v8, v22

    .line 1315
    .line 1316
    move-object/from16 v21, v3

    .line 1317
    .line 1318
    move-object/from16 v20, v13

    .line 1319
    .line 1320
    move-object/from16 v3, v19

    .line 1321
    .line 1322
    goto :goto_a

    .line 1323
    :goto_b
    invoke-static {v13, v12, v12}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1324
    .line 1325
    .line 1326
    move-result v19

    .line 1327
    if-eqz v19, :cond_12

    .line 1328
    .line 1329
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v19

    .line 1333
    move-object/from16 v22, v0

    .line 1334
    .line 1335
    move-object/from16 v0, v19

    .line 1336
    .line 1337
    check-cast v0, Lh7/a;

    .line 1338
    .line 1339
    iget-object v0, v0, Lh7/a;->a:Ljava/lang/String;

    .line 1340
    .line 1341
    move-object/from16 v33, v12

    .line 1342
    .line 1343
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v12

    .line 1347
    move-object/from16 v19, v3

    .line 1348
    .line 1349
    move-object/from16 v3, v34

    .line 1350
    .line 1351
    invoke-virtual {v12, v3, v14}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v12

    .line 1355
    invoke-virtual {v4, v0, v6, v12}, Lc7/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v0

    .line 1359
    move-object/from16 v12, v35

    .line 1360
    .line 1361
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1362
    .line 1363
    .line 1364
    move-result v0

    .line 1365
    if-nez v0, :cond_11

    .line 1366
    .line 1367
    move-object/from16 v0, v18

    .line 1368
    .line 1369
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1370
    .line 1371
    .line 1372
    move-result v18

    .line 1373
    if-eqz v18, :cond_10

    .line 1374
    .line 1375
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v18

    .line 1379
    move-object/from16 v25, v4

    .line 1380
    .line 1381
    move-object/from16 v4, v18

    .line 1382
    .line 1383
    check-cast v4, Lh7/a;

    .line 1384
    .line 1385
    iget-object v4, v4, Lh7/a;->b:Ljava/lang/String;

    .line 1386
    .line 1387
    move-object/from16 v31, v14

    .line 1388
    .line 1389
    move-object/from16 v14, v17

    .line 1390
    .line 1391
    invoke-virtual {v14, v4, v6}, Lc7/b;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v4

    .line 1395
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1396
    .line 1397
    .line 1398
    move-result v4

    .line 1399
    if-eqz v4, :cond_f

    .line 1400
    .line 1401
    new-instance v4, Ljava/util/HashMap;

    .line 1402
    .line 1403
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1404
    .line 1405
    .line 1406
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v17

    .line 1410
    move-object/from16 v32, v13

    .line 1411
    .line 1412
    move-object/from16 v13, v17

    .line 1413
    .line 1414
    check-cast v13, Lh7/a;

    .line 1415
    .line 1416
    iget-object v13, v13, Lh7/a;->a:Ljava/lang/String;

    .line 1417
    .line 1418
    invoke-virtual {v4, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v13

    .line 1425
    check-cast v13, Lh7/a;

    .line 1426
    .line 1427
    iget-object v13, v13, Lh7/a;->b:Ljava/lang/String;

    .line 1428
    .line 1429
    invoke-virtual {v4, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v13

    .line 1436
    check-cast v13, Lh7/a;

    .line 1437
    .line 1438
    iget-object v13, v13, Lh7/a;->c:Ljava/lang/String;

    .line 1439
    .line 1440
    invoke-virtual {v4, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    .line 1442
    .line 1443
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    .line 1445
    .line 1446
    goto/16 :goto_c

    .line 1447
    .line 1448
    :cond_f
    move-object/from16 v32, v13

    .line 1449
    .line 1450
    goto/16 :goto_c

    .line 1451
    .line 1452
    :cond_10
    move-object/from16 v25, v4

    .line 1453
    .line 1454
    move-object/from16 v32, v13

    .line 1455
    .line 1456
    move-object/from16 v31, v14

    .line 1457
    .line 1458
    move-object/from16 v14, v17

    .line 1459
    .line 1460
    new-instance v4, Ljava/util/HashMap;

    .line 1461
    .line 1462
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1463
    .line 1464
    .line 1465
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v13

    .line 1469
    check-cast v13, Lh7/a;

    .line 1470
    .line 1471
    iget-object v13, v13, Lh7/a;->a:Ljava/lang/String;

    .line 1472
    .line 1473
    invoke-virtual {v4, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v13

    .line 1480
    check-cast v13, Lh7/a;

    .line 1481
    .line 1482
    iget-object v13, v13, Lh7/a;->b:Ljava/lang/String;

    .line 1483
    .line 1484
    invoke-virtual {v4, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    .line 1486
    .line 1487
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v13

    .line 1491
    check-cast v13, Lh7/a;

    .line 1492
    .line 1493
    iget-object v13, v13, Lh7/a;->c:Ljava/lang/String;

    .line 1494
    .line 1495
    invoke-virtual {v4, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    .line 1497
    .line 1498
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    .line 1500
    .line 1501
    goto/16 :goto_c

    .line 1502
    .line 1503
    :cond_11
    move-object/from16 v25, v4

    .line 1504
    .line 1505
    move-object/from16 v32, v13

    .line 1506
    .line 1507
    move-object/from16 v31, v14

    .line 1508
    .line 1509
    move-object/from16 v14, v17

    .line 1510
    .line 1511
    move-object/from16 v0, v18

    .line 1512
    .line 1513
    goto/16 :goto_c

    .line 1514
    .line 1515
    :cond_12
    move-object/from16 v22, v0

    .line 1516
    .line 1517
    move-object/from16 v19, v3

    .line 1518
    .line 1519
    move-object/from16 v25, v4

    .line 1520
    .line 1521
    move-object/from16 v33, v12

    .line 1522
    .line 1523
    move-object/from16 v32, v13

    .line 1524
    .line 1525
    move-object/from16 v31, v14

    .line 1526
    .line 1527
    move-object/from16 v14, v17

    .line 1528
    .line 1529
    move-object/from16 v0, v18

    .line 1530
    .line 1531
    move-object/from16 v3, v34

    .line 1532
    .line 1533
    move-object/from16 v12, v35

    .line 1534
    .line 1535
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1536
    .line 1537
    .line 1538
    move-result v4

    .line 1539
    if-eqz v4, :cond_13

    .line 1540
    .line 1541
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v4

    .line 1545
    check-cast v4, Lh7/a;

    .line 1546
    .line 1547
    iget-object v4, v4, Lh7/a;->b:Ljava/lang/String;

    .line 1548
    .line 1549
    invoke-virtual {v14, v4, v6}, Lc7/b;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v4

    .line 1553
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1554
    .line 1555
    .line 1556
    move-result v4

    .line 1557
    if-eqz v4, :cond_14

    .line 1558
    .line 1559
    new-instance v4, Ljava/util/HashMap;

    .line 1560
    .line 1561
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v13

    .line 1568
    check-cast v13, Lh7/a;

    .line 1569
    .line 1570
    iget-object v13, v13, Lh7/a;->a:Ljava/lang/String;

    .line 1571
    .line 1572
    invoke-virtual {v4, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    .line 1574
    .line 1575
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v13

    .line 1579
    check-cast v13, Lh7/a;

    .line 1580
    .line 1581
    iget-object v13, v13, Lh7/a;->b:Ljava/lang/String;

    .line 1582
    .line 1583
    invoke-virtual {v4, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v13

    .line 1590
    check-cast v13, Lh7/a;

    .line 1591
    .line 1592
    iget-object v13, v13, Lh7/a;->c:Ljava/lang/String;

    .line 1593
    .line 1594
    invoke-virtual {v4, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    .line 1596
    .line 1597
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1598
    .line 1599
    .line 1600
    goto :goto_c

    .line 1601
    :cond_13
    new-instance v4, Ljava/util/HashMap;

    .line 1602
    .line 1603
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1604
    .line 1605
    .line 1606
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v13

    .line 1610
    check-cast v13, Lh7/a;

    .line 1611
    .line 1612
    iget-object v13, v13, Lh7/a;->a:Ljava/lang/String;

    .line 1613
    .line 1614
    invoke-virtual {v4, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    .line 1616
    .line 1617
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v13

    .line 1621
    check-cast v13, Lh7/a;

    .line 1622
    .line 1623
    iget-object v13, v13, Lh7/a;->b:Ljava/lang/String;

    .line 1624
    .line 1625
    invoke-virtual {v4, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    .line 1627
    .line 1628
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v13

    .line 1632
    check-cast v13, Lh7/a;

    .line 1633
    .line 1634
    iget-object v13, v13, Lh7/a;->c:Ljava/lang/String;

    .line 1635
    .line 1636
    invoke-virtual {v4, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    .line 1641
    .line 1642
    :cond_14
    :goto_c
    add-int/lit8 v11, v11, 0x1

    .line 1643
    .line 1644
    move-object/from16 v18, v0

    .line 1645
    .line 1646
    move-object/from16 v34, v3

    .line 1647
    .line 1648
    move-object/from16 v35, v12

    .line 1649
    .line 1650
    move-object/from16 v13, v20

    .line 1651
    .line 1652
    move-object/from16 v3, v21

    .line 1653
    .line 1654
    move-object/from16 v0, v22

    .line 1655
    .line 1656
    move-object/from16 v4, v25

    .line 1657
    .line 1658
    move-object/from16 v20, v5

    .line 1659
    .line 1660
    move-object/from16 v21, v7

    .line 1661
    .line 1662
    move-object/from16 v22, v8

    .line 1663
    .line 1664
    move-object v7, v14

    .line 1665
    move-object/from16 v8, v23

    .line 1666
    .line 1667
    move-object/from16 v5, v24

    .line 1668
    .line 1669
    move-object/from16 v14, v31

    .line 1670
    .line 1671
    goto/16 :goto_7

    .line 1672
    .line 1673
    :cond_15
    move-object v4, v5

    .line 1674
    iput-object v10, v4, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 1675
    .line 1676
    return-void

    .line 1677
    :pswitch_1
    move-object v4, v5

    .line 1678
    move-object v12, v7

    .line 1679
    move-object/from16 v23, v8

    .line 1680
    .line 1681
    move-object/from16 v7, v21

    .line 1682
    .line 1683
    move-object/from16 v11, v26

    .line 1684
    .line 1685
    new-instance v0, Ljava/util/ArrayList;

    .line 1686
    .line 1687
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1688
    .line 1689
    .line 1690
    iput-object v0, v4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 1691
    .line 1692
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1693
    .line 1694
    .line 1695
    iget-object v0, v4, Lpe/hf/black20/ChannelListActivity;->f0:Ljava/lang/String;

    .line 1696
    .line 1697
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1698
    .line 1699
    .line 1700
    move-result v0

    .line 1701
    iget-object v1, v4, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 1702
    .line 1703
    if-eqz v0, :cond_16

    .line 1704
    .line 1705
    iget-object v0, v4, Lpe/hf/black20/ChannelListActivity;->g0:Ljava/lang/String;

    .line 1706
    .line 1707
    sget-object v2, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 1708
    .line 1709
    const/4 v3, 0x1

    .line 1710
    invoke-static {v1, v3, v0, v2, v7}, Lz4/q0;->u(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1711
    .line 1712
    .line 1713
    move-result-object v0

    .line 1714
    iput-object v0, v4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 1715
    .line 1716
    iput-object v9, v4, Lpe/hf/black20/ChannelListActivity;->f0:Ljava/lang/String;

    .line 1717
    .line 1718
    sput-object v0, Lpe/hf/black20/ChannelListActivity;->y0:Ljava/util/ArrayList;

    .line 1719
    .line 1720
    const/4 v2, 0x0

    .line 1721
    invoke-virtual {v1, v11, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v1

    .line 1725
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v1

    .line 1729
    new-instance v2, Lcom/google/gson/Gson;

    .line 1730
    .line 1731
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 1732
    .line 1733
    .line 1734
    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v0

    .line 1738
    const-string v2, "tv_arraylist_search"

    .line 1739
    .line 1740
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1741
    .line 1742
    .line 1743
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1744
    .line 1745
    .line 1746
    goto :goto_d

    .line 1747
    :cond_16
    iget-object v0, v4, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 1748
    .line 1749
    move-object/from16 v6, v23

    .line 1750
    .line 1751
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1752
    .line 1753
    .line 1754
    move-result v0

    .line 1755
    if-eqz v0, :cond_17

    .line 1756
    .line 1757
    sget-object v0, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 1758
    .line 1759
    invoke-static {v1, v0}, Lz4/q0;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1760
    .line 1761
    .line 1762
    move-result-object v0

    .line 1763
    iput-object v0, v4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 1764
    .line 1765
    goto :goto_d

    .line 1766
    :cond_17
    iget-object v0, v4, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 1767
    .line 1768
    const-string v2, "99998"

    .line 1769
    .line 1770
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1771
    .line 1772
    .line 1773
    move-result v0

    .line 1774
    if-eqz v0, :cond_18

    .line 1775
    .line 1776
    sget-object v0, Lpe/hf/black20/ChannelListActivity;->y0:Ljava/util/ArrayList;

    .line 1777
    .line 1778
    iput-object v0, v4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 1779
    .line 1780
    goto :goto_d

    .line 1781
    :cond_18
    iget-object v0, v4, Lpe/hf/black20/ChannelListActivity;->g0:Ljava/lang/String;

    .line 1782
    .line 1783
    sget-object v2, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 1784
    .line 1785
    iget-object v3, v4, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 1786
    .line 1787
    const/4 v5, 0x0

    .line 1788
    invoke-static {v1, v5, v0, v2, v3}, Lz4/q0;->u(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v0

    .line 1792
    iput-object v0, v4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 1793
    .line 1794
    :goto_d
    return-void

    .line 1795
    :pswitch_2
    move-object v4, v5

    .line 1796
    const-string v0, "ORT_WHICH_CAT"

    .line 1797
    .line 1798
    const-string v1, "TV"

    .line 1799
    .line 1800
    const-string v2, "RADIO"

    .line 1801
    .line 1802
    invoke-static {v0, v1, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1803
    .line 1804
    .line 1805
    move-result v0

    .line 1806
    if-eqz v0, :cond_19

    .line 1807
    .line 1808
    iget-object v0, v4, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 1809
    .line 1810
    invoke-virtual {v0, v2}, Lc7/d;->j0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1811
    .line 1812
    .line 1813
    move-result-object v0

    .line 1814
    sput-object v0, Lpe/hf/black20/ChannelListActivity;->v0:Ljava/util/ArrayList;

    .line 1815
    .line 1816
    goto :goto_e

    .line 1817
    :cond_19
    iget-object v0, v4, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 1818
    .line 1819
    invoke-virtual {v0, v1}, Lc7/d;->j0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1820
    .line 1821
    .line 1822
    move-result-object v0

    .line 1823
    sput-object v0, Lpe/hf/black20/ChannelListActivity;->v0:Ljava/util/ArrayList;

    .line 1824
    .line 1825
    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    .line 1826
    .line 1827
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1828
    .line 1829
    .line 1830
    iput-object v0, v4, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 1831
    .line 1832
    iget-object v0, v4, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 1833
    .line 1834
    invoke-static {v0}, Lz4/q0;->t(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v0

    .line 1838
    iput-object v0, v4, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 1839
    .line 1840
    return-void

    .line 1841
    :pswitch_3
    move-object/from16 v21, v3

    .line 1842
    .line 1843
    move-object v4, v5

    .line 1844
    move-object v6, v8

    .line 1845
    move-object v5, v11

    .line 1846
    move-object v3, v13

    .line 1847
    move-object/from16 v0, v36

    .line 1848
    .line 1849
    move-object/from16 v36, v1

    .line 1850
    .line 1851
    move-object v13, v12

    .line 1852
    move-object/from16 v12, v32

    .line 1853
    .line 1854
    move-object/from16 v1, v35

    .line 1855
    .line 1856
    move-object/from16 v32, v14

    .line 1857
    .line 1858
    move-object/from16 v14, v31

    .line 1859
    .line 1860
    new-instance v8, Ljava/util/ArrayList;

    .line 1861
    .line 1862
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1863
    .line 1864
    .line 1865
    iput-object v8, v4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 1866
    .line 1867
    new-instance v8, Ljava/util/ArrayList;

    .line 1868
    .line 1869
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1870
    .line 1871
    .line 1872
    iget-object v8, v4, Lpe/hf/black20/ChannelListActivity;->f0:Ljava/lang/String;

    .line 1873
    .line 1874
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1875
    .line 1876
    .line 1877
    move-result v8

    .line 1878
    iget-object v10, v4, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 1879
    .line 1880
    if-eqz v8, :cond_1a

    .line 1881
    .line 1882
    iget-object v0, v4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 1883
    .line 1884
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1885
    .line 1886
    .line 1887
    iget-object v0, v4, Lpe/hf/black20/ChannelListActivity;->g0:Ljava/lang/String;

    .line 1888
    .line 1889
    sget-object v25, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 1890
    .line 1891
    const/16 v23, 0x1

    .line 1892
    .line 1893
    const-string v26, "0"

    .line 1894
    .line 1895
    const-string v27, "0"

    .line 1896
    .line 1897
    move-object/from16 v22, v10

    .line 1898
    .line 1899
    move-object/from16 v24, v0

    .line 1900
    .line 1901
    invoke-static/range {v22 .. v27}, La7/b;->e(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1902
    .line 1903
    .line 1904
    move-result-object v0

    .line 1905
    iput-object v0, v4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 1906
    .line 1907
    iput-object v9, v4, Lpe/hf/black20/ChannelListActivity;->f0:Ljava/lang/String;

    .line 1908
    .line 1909
    goto/16 :goto_15

    .line 1910
    .line 1911
    :cond_1a
    iget-object v8, v4, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 1912
    .line 1913
    move-object/from16 v9, v21

    .line 1914
    .line 1915
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1916
    .line 1917
    .line 1918
    move-result v8

    .line 1919
    if-eqz v8, :cond_1b

    .line 1920
    .line 1921
    iget-object v0, v4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 1922
    .line 1923
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1924
    .line 1925
    .line 1926
    iget-object v0, v4, Lpe/hf/black20/ChannelListActivity;->g0:Ljava/lang/String;

    .line 1927
    .line 1928
    sget-object v25, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 1929
    .line 1930
    const/16 v23, 0x0

    .line 1931
    .line 1932
    const-string v26, "00000"

    .line 1933
    .line 1934
    const-string v27, "0"

    .line 1935
    .line 1936
    move-object/from16 v22, v10

    .line 1937
    .line 1938
    move-object/from16 v24, v0

    .line 1939
    .line 1940
    invoke-static/range {v22 .. v27}, La7/b;->e(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1941
    .line 1942
    .line 1943
    move-result-object v0

    .line 1944
    iput-object v0, v4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 1945
    .line 1946
    goto/16 :goto_15

    .line 1947
    .line 1948
    :cond_1b
    iget-object v8, v4, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 1949
    .line 1950
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1951
    .line 1952
    .line 1953
    move-result v6

    .line 1954
    if-eqz v6, :cond_1c

    .line 1955
    .line 1956
    iget-object v0, v4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 1957
    .line 1958
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1959
    .line 1960
    .line 1961
    iget-object v0, v4, Lpe/hf/black20/ChannelListActivity;->g0:Ljava/lang/String;

    .line 1962
    .line 1963
    sget-object v25, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 1964
    .line 1965
    const/16 v23, 0x0

    .line 1966
    .line 1967
    const-string v26, "99999"

    .line 1968
    .line 1969
    const-string v27, "0"

    .line 1970
    .line 1971
    move-object/from16 v22, v10

    .line 1972
    .line 1973
    move-object/from16 v24, v0

    .line 1974
    .line 1975
    invoke-static/range {v22 .. v27}, La7/b;->e(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1976
    .line 1977
    .line 1978
    move-result-object v0

    .line 1979
    iput-object v0, v4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 1980
    .line 1981
    goto/16 :goto_15

    .line 1982
    .line 1983
    :cond_1c
    iget-object v6, v4, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 1984
    .line 1985
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1986
    .line 1987
    .line 1988
    move-result v2

    .line 1989
    if-eqz v2, :cond_24

    .line 1990
    .line 1991
    iget-object v2, v4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 1992
    .line 1993
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1994
    .line 1995
    .line 1996
    iget-object v2, v4, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 1997
    .line 1998
    iget-object v6, v2, Lc7/d;->N:Ljava/util/ArrayList;

    .line 1999
    .line 2000
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2001
    .line 2002
    .line 2003
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2004
    .line 2005
    .line 2006
    move-result-object v2

    .line 2007
    :try_start_0
    const-string v8, "SELECT * FROM resume GROUP BY player"

    .line 2008
    .line 2009
    const/4 v9, 0x0

    .line 2010
    invoke-virtual {v2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 2011
    .line 2012
    .line 2013
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2014
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2015
    .line 2016
    .line 2017
    move-result v8

    .line 2018
    if-eqz v8, :cond_1e

    .line 2019
    .line 2020
    :cond_1d
    new-instance v8, Lh7/g;

    .line 2021
    .line 2022
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 2023
    .line 2024
    .line 2025
    const/4 v9, 0x0

    .line 2026
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 2027
    .line 2028
    .line 2029
    const/4 v9, 0x1

    .line 2030
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 2031
    .line 2032
    .line 2033
    move-result-object v11

    .line 2034
    iput-object v11, v8, Lh7/g;->a:Ljava/lang/String;

    .line 2035
    .line 2036
    const/4 v9, 0x2

    .line 2037
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v9

    .line 2041
    iput-object v9, v8, Lh7/g;->b:Ljava/lang/String;

    .line 2042
    .line 2043
    const/4 v9, 0x3

    .line 2044
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 2045
    .line 2046
    .line 2047
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2048
    .line 2049
    .line 2050
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 2051
    .line 2052
    .line 2053
    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2054
    if-nez v8, :cond_1d

    .line 2055
    .line 2056
    goto :goto_f

    .line 2057
    :catchall_0
    nop

    .line 2058
    goto :goto_10

    .line 2059
    :cond_1e
    :goto_f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2060
    .line 2061
    .line 2062
    goto :goto_11

    .line 2063
    :catchall_1
    nop

    .line 2064
    const/4 v2, 0x0

    .line 2065
    :goto_10
    if-eqz v2, :cond_1f

    .line 2066
    .line 2067
    goto :goto_f

    .line 2068
    :cond_1f
    :goto_11
    iput-object v6, v4, Lpe/hf/black20/ChannelListActivity;->L:Ljava/util/ArrayList;

    .line 2069
    .line 2070
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 2071
    .line 2072
    .line 2073
    move-result v2

    .line 2074
    if-lez v2, :cond_25

    .line 2075
    .line 2076
    sget-object v25, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 2077
    .line 2078
    const-string v26, "0"

    .line 2079
    .line 2080
    const-string v27, "0"

    .line 2081
    .line 2082
    const/16 v23, 0x1

    .line 2083
    .line 2084
    const-string v24, "all"

    .line 2085
    .line 2086
    move-object/from16 v22, v10

    .line 2087
    .line 2088
    invoke-static/range {v22 .. v27}, La7/b;->e(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2089
    .line 2090
    .line 2091
    move-result-object v2

    .line 2092
    const/4 v6, 0x0

    .line 2093
    :goto_12
    iget-object v8, v4, Lpe/hf/black20/ChannelListActivity;->L:Ljava/util/ArrayList;

    .line 2094
    .line 2095
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 2096
    .line 2097
    .line 2098
    move-result v8

    .line 2099
    if-ge v6, v8, :cond_25

    .line 2100
    .line 2101
    iget-object v8, v4, Lpe/hf/black20/ChannelListActivity;->L:Ljava/util/ArrayList;

    .line 2102
    .line 2103
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v8

    .line 2107
    check-cast v8, Lh7/g;

    .line 2108
    .line 2109
    iget-object v8, v8, Lh7/g;->b:Ljava/lang/String;

    .line 2110
    .line 2111
    move-object/from16 v9, v36

    .line 2112
    .line 2113
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 2114
    .line 2115
    .line 2116
    move-result-object v8

    .line 2117
    const/4 v10, 0x0

    .line 2118
    aget-object v11, v8, v10

    .line 2119
    .line 2120
    invoke-static {v3, v5, v11}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2121
    .line 2122
    .line 2123
    move-result v10

    .line 2124
    if-eqz v10, :cond_23

    .line 2125
    .line 2126
    const/4 v10, 0x0

    .line 2127
    :goto_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2128
    .line 2129
    .line 2130
    move-result v11

    .line 2131
    if-ge v10, v11, :cond_23

    .line 2132
    .line 2133
    move-object/from16 v36, v9

    .line 2134
    .line 2135
    const/4 v11, 0x1

    .line 2136
    aget-object v9, v8, v11

    .line 2137
    .line 2138
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2139
    .line 2140
    .line 2141
    move-result-object v11

    .line 2142
    check-cast v11, Ljava/util/HashMap;

    .line 2143
    .line 2144
    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    .line 2146
    .line 2147
    move-result-object v11

    .line 2148
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2149
    .line 2150
    .line 2151
    move-result v9

    .line 2152
    if-eqz v9, :cond_22

    .line 2153
    .line 2154
    move-object/from16 v9, v32

    .line 2155
    .line 2156
    invoke-static {v9, v13, v13}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2157
    .line 2158
    .line 2159
    move-result v11

    .line 2160
    move-object/from16 p1, v8

    .line 2161
    .line 2162
    const-string v8, "episode_run_time"

    .line 2163
    .line 2164
    const-string v9, "youtube_trailer"

    .line 2165
    .line 2166
    move-object/from16 v33, v13

    .line 2167
    .line 2168
    const-string v13, "backdrop_path"

    .line 2169
    .line 2170
    move/from16 v16, v6

    .line 2171
    .line 2172
    const-string v6, "last_modified"

    .line 2173
    .line 2174
    move-object/from16 v18, v8

    .line 2175
    .line 2176
    const-string v8, "releaseDate"

    .line 2177
    .line 2178
    move-object/from16 v19, v9

    .line 2179
    .line 2180
    const-string v9, "genre"

    .line 2181
    .line 2182
    move-object/from16 v20, v13

    .line 2183
    .line 2184
    const-string v13, "director"

    .line 2185
    .line 2186
    move-object/from16 v31, v14

    .line 2187
    .line 2188
    const-string v14, "cast"

    .line 2189
    .line 2190
    move-object/from16 v21, v12

    .line 2191
    .line 2192
    const-string v12, "plot"

    .line 2193
    .line 2194
    move-object/from16 v22, v6

    .line 2195
    .line 2196
    const-string v6, "cover"

    .line 2197
    .line 2198
    move-object/from16 v23, v8

    .line 2199
    .line 2200
    const-string v8, "series_id"

    .line 2201
    .line 2202
    if-eqz v11, :cond_21

    .line 2203
    .line 2204
    iget-object v11, v4, Lpe/hf/black20/ChannelListActivity;->P:Lc7/b;

    .line 2205
    .line 2206
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2207
    .line 2208
    .line 2209
    move-result-object v24

    .line 2210
    move-object/from16 v28, v4

    .line 2211
    .line 2212
    move-object/from16 v4, v24

    .line 2213
    .line 2214
    check-cast v4, Ljava/util/HashMap;

    .line 2215
    .line 2216
    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2217
    .line 2218
    .line 2219
    move-result-object v4

    .line 2220
    check-cast v4, Ljava/lang/String;

    .line 2221
    .line 2222
    move-object/from16 v24, v15

    .line 2223
    .line 2224
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 2225
    .line 2226
    .line 2227
    move-result-object v15

    .line 2228
    invoke-virtual {v15, v3, v5}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2229
    .line 2230
    .line 2231
    move-result-object v15

    .line 2232
    move-object/from16 v34, v3

    .line 2233
    .line 2234
    move-object/from16 v3, v17

    .line 2235
    .line 2236
    invoke-virtual {v11, v4, v3, v15}, Lc7/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2237
    .line 2238
    .line 2239
    move-result-object v4

    .line 2240
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2241
    .line 2242
    .line 2243
    move-result v4

    .line 2244
    if-nez v4, :cond_20

    .line 2245
    .line 2246
    new-instance v4, Ljava/util/HashMap;

    .line 2247
    .line 2248
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2249
    .line 2250
    .line 2251
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2252
    .line 2253
    .line 2254
    move-result-object v11

    .line 2255
    check-cast v11, Ljava/util/HashMap;

    .line 2256
    .line 2257
    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    .line 2259
    .line 2260
    move-result-object v11

    .line 2261
    check-cast v11, Ljava/lang/String;

    .line 2262
    .line 2263
    invoke-virtual {v4, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2264
    .line 2265
    .line 2266
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2267
    .line 2268
    .line 2269
    move-result-object v11

    .line 2270
    check-cast v11, Ljava/util/HashMap;

    .line 2271
    .line 2272
    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    .line 2274
    .line 2275
    move-result-object v11

    .line 2276
    check-cast v11, Ljava/lang/String;

    .line 2277
    .line 2278
    invoke-virtual {v4, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2279
    .line 2280
    .line 2281
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2282
    .line 2283
    .line 2284
    move-result-object v11

    .line 2285
    check-cast v11, Ljava/util/HashMap;

    .line 2286
    .line 2287
    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    .line 2289
    .line 2290
    move-result-object v11

    .line 2291
    check-cast v11, Ljava/lang/String;

    .line 2292
    .line 2293
    invoke-virtual {v4, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2294
    .line 2295
    .line 2296
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2297
    .line 2298
    .line 2299
    move-result-object v8

    .line 2300
    check-cast v8, Ljava/util/HashMap;

    .line 2301
    .line 2302
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    .line 2304
    .line 2305
    move-result-object v8

    .line 2306
    check-cast v8, Ljava/lang/String;

    .line 2307
    .line 2308
    invoke-virtual {v4, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2309
    .line 2310
    .line 2311
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2312
    .line 2313
    .line 2314
    move-result-object v6

    .line 2315
    check-cast v6, Ljava/util/HashMap;

    .line 2316
    .line 2317
    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2318
    .line 2319
    .line 2320
    move-result-object v6

    .line 2321
    check-cast v6, Ljava/lang/String;

    .line 2322
    .line 2323
    invoke-virtual {v4, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2324
    .line 2325
    .line 2326
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2327
    .line 2328
    .line 2329
    move-result-object v6

    .line 2330
    check-cast v6, Ljava/util/HashMap;

    .line 2331
    .line 2332
    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2333
    .line 2334
    .line 2335
    move-result-object v6

    .line 2336
    check-cast v6, Ljava/lang/String;

    .line 2337
    .line 2338
    invoke-virtual {v4, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2339
    .line 2340
    .line 2341
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2342
    .line 2343
    .line 2344
    move-result-object v6

    .line 2345
    check-cast v6, Ljava/util/HashMap;

    .line 2346
    .line 2347
    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2348
    .line 2349
    .line 2350
    move-result-object v6

    .line 2351
    check-cast v6, Ljava/lang/String;

    .line 2352
    .line 2353
    invoke-virtual {v4, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2354
    .line 2355
    .line 2356
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2357
    .line 2358
    .line 2359
    move-result-object v6

    .line 2360
    check-cast v6, Ljava/util/HashMap;

    .line 2361
    .line 2362
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2363
    .line 2364
    .line 2365
    move-result-object v6

    .line 2366
    check-cast v6, Ljava/lang/String;

    .line 2367
    .line 2368
    invoke-virtual {v4, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2369
    .line 2370
    .line 2371
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2372
    .line 2373
    .line 2374
    move-result-object v6

    .line 2375
    check-cast v6, Ljava/util/HashMap;

    .line 2376
    .line 2377
    move-object/from16 v11, v23

    .line 2378
    .line 2379
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    .line 2381
    .line 2382
    move-result-object v6

    .line 2383
    check-cast v6, Ljava/lang/String;

    .line 2384
    .line 2385
    invoke-virtual {v4, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2386
    .line 2387
    .line 2388
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2389
    .line 2390
    .line 2391
    move-result-object v6

    .line 2392
    check-cast v6, Ljava/util/HashMap;

    .line 2393
    .line 2394
    move-object/from16 v15, v22

    .line 2395
    .line 2396
    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2397
    .line 2398
    .line 2399
    move-result-object v6

    .line 2400
    check-cast v6, Ljava/lang/String;

    .line 2401
    .line 2402
    invoke-virtual {v4, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2403
    .line 2404
    .line 2405
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2406
    .line 2407
    .line 2408
    move-result-object v6

    .line 2409
    check-cast v6, Ljava/util/HashMap;

    .line 2410
    .line 2411
    move-object/from16 v8, v21

    .line 2412
    .line 2413
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    .line 2415
    .line 2416
    move-result-object v6

    .line 2417
    check-cast v6, Ljava/lang/String;

    .line 2418
    .line 2419
    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    .line 2421
    .line 2422
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2423
    .line 2424
    .line 2425
    move-result-object v6

    .line 2426
    check-cast v6, Ljava/util/HashMap;

    .line 2427
    .line 2428
    move-object/from16 v9, v31

    .line 2429
    .line 2430
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2431
    .line 2432
    .line 2433
    move-result-object v6

    .line 2434
    check-cast v6, Ljava/lang/String;

    .line 2435
    .line 2436
    invoke-virtual {v4, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2437
    .line 2438
    .line 2439
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2440
    .line 2441
    .line 2442
    move-result-object v6

    .line 2443
    check-cast v6, Ljava/util/HashMap;

    .line 2444
    .line 2445
    move-object/from16 v11, v20

    .line 2446
    .line 2447
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2448
    .line 2449
    .line 2450
    move-result-object v6

    .line 2451
    check-cast v6, Ljava/lang/String;

    .line 2452
    .line 2453
    invoke-virtual {v4, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2454
    .line 2455
    .line 2456
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2457
    .line 2458
    .line 2459
    move-result-object v6

    .line 2460
    check-cast v6, Ljava/util/HashMap;

    .line 2461
    .line 2462
    move-object/from16 v11, v19

    .line 2463
    .line 2464
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    .line 2466
    .line 2467
    move-result-object v6

    .line 2468
    check-cast v6, Ljava/lang/String;

    .line 2469
    .line 2470
    invoke-virtual {v4, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2471
    .line 2472
    .line 2473
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2474
    .line 2475
    .line 2476
    move-result-object v6

    .line 2477
    check-cast v6, Ljava/util/HashMap;

    .line 2478
    .line 2479
    move-object/from16 v11, v18

    .line 2480
    .line 2481
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2482
    .line 2483
    .line 2484
    move-result-object v6

    .line 2485
    check-cast v6, Ljava/lang/String;

    .line 2486
    .line 2487
    invoke-virtual {v4, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2488
    .line 2489
    .line 2490
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2491
    .line 2492
    .line 2493
    move-result-object v6

    .line 2494
    check-cast v6, Ljava/util/HashMap;

    .line 2495
    .line 2496
    move-object/from16 v11, v24

    .line 2497
    .line 2498
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2499
    .line 2500
    .line 2501
    move-result-object v6

    .line 2502
    check-cast v6, Ljava/lang/String;

    .line 2503
    .line 2504
    invoke-virtual {v4, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2505
    .line 2506
    .line 2507
    move-object/from16 v6, v28

    .line 2508
    .line 2509
    iget-object v12, v6, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 2510
    .line 2511
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2512
    .line 2513
    .line 2514
    move-object/from16 v17, v3

    .line 2515
    .line 2516
    move-object/from16 v31, v5

    .line 2517
    .line 2518
    move-object v3, v6

    .line 2519
    move-object/from16 v35, v7

    .line 2520
    .line 2521
    move-object v4, v8

    .line 2522
    move-object v5, v9

    .line 2523
    move-object v14, v11

    .line 2524
    goto/16 :goto_14

    .line 2525
    .line 2526
    :cond_20
    move-object/from16 v17, v3

    .line 2527
    .line 2528
    move-object/from16 v35, v7

    .line 2529
    .line 2530
    move-object/from16 v4, v21

    .line 2531
    .line 2532
    move-object/from16 v14, v24

    .line 2533
    .line 2534
    move-object/from16 v3, v28

    .line 2535
    .line 2536
    move-object/from16 v37, v31

    .line 2537
    .line 2538
    move-object/from16 v31, v5

    .line 2539
    .line 2540
    move-object/from16 v5, v37

    .line 2541
    .line 2542
    goto/16 :goto_14

    .line 2543
    .line 2544
    :cond_21
    move-object/from16 v34, v3

    .line 2545
    .line 2546
    move-object/from16 v28, v4

    .line 2547
    .line 2548
    move-object/from16 v35, v7

    .line 2549
    .line 2550
    move-object/from16 v24, v15

    .line 2551
    .line 2552
    move-object/from16 v3, v20

    .line 2553
    .line 2554
    move-object/from16 v4, v21

    .line 2555
    .line 2556
    move-object/from16 v15, v22

    .line 2557
    .line 2558
    move-object/from16 v11, v23

    .line 2559
    .line 2560
    move-object/from16 v37, v31

    .line 2561
    .line 2562
    move-object/from16 v31, v5

    .line 2563
    .line 2564
    move-object/from16 v5, v37

    .line 2565
    .line 2566
    new-instance v7, Ljava/util/HashMap;

    .line 2567
    .line 2568
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2569
    .line 2570
    .line 2571
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2572
    .line 2573
    .line 2574
    move-result-object v20

    .line 2575
    move-object/from16 v21, v3

    .line 2576
    .line 2577
    move-object/from16 v3, v20

    .line 2578
    .line 2579
    check-cast v3, Ljava/util/HashMap;

    .line 2580
    .line 2581
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2582
    .line 2583
    .line 2584
    move-result-object v3

    .line 2585
    check-cast v3, Ljava/lang/String;

    .line 2586
    .line 2587
    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2588
    .line 2589
    .line 2590
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2591
    .line 2592
    .line 2593
    move-result-object v3

    .line 2594
    check-cast v3, Ljava/util/HashMap;

    .line 2595
    .line 2596
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2597
    .line 2598
    .line 2599
    move-result-object v3

    .line 2600
    check-cast v3, Ljava/lang/String;

    .line 2601
    .line 2602
    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2603
    .line 2604
    .line 2605
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2606
    .line 2607
    .line 2608
    move-result-object v3

    .line 2609
    check-cast v3, Ljava/util/HashMap;

    .line 2610
    .line 2611
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2612
    .line 2613
    .line 2614
    move-result-object v3

    .line 2615
    check-cast v3, Ljava/lang/String;

    .line 2616
    .line 2617
    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2618
    .line 2619
    .line 2620
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2621
    .line 2622
    .line 2623
    move-result-object v3

    .line 2624
    check-cast v3, Ljava/util/HashMap;

    .line 2625
    .line 2626
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2627
    .line 2628
    .line 2629
    move-result-object v3

    .line 2630
    check-cast v3, Ljava/lang/String;

    .line 2631
    .line 2632
    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2633
    .line 2634
    .line 2635
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2636
    .line 2637
    .line 2638
    move-result-object v3

    .line 2639
    check-cast v3, Ljava/util/HashMap;

    .line 2640
    .line 2641
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2642
    .line 2643
    .line 2644
    move-result-object v3

    .line 2645
    check-cast v3, Ljava/lang/String;

    .line 2646
    .line 2647
    invoke-virtual {v7, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2648
    .line 2649
    .line 2650
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2651
    .line 2652
    .line 2653
    move-result-object v3

    .line 2654
    check-cast v3, Ljava/util/HashMap;

    .line 2655
    .line 2656
    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2657
    .line 2658
    .line 2659
    move-result-object v3

    .line 2660
    check-cast v3, Ljava/lang/String;

    .line 2661
    .line 2662
    invoke-virtual {v7, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2663
    .line 2664
    .line 2665
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2666
    .line 2667
    .line 2668
    move-result-object v3

    .line 2669
    check-cast v3, Ljava/util/HashMap;

    .line 2670
    .line 2671
    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2672
    .line 2673
    .line 2674
    move-result-object v3

    .line 2675
    check-cast v3, Ljava/lang/String;

    .line 2676
    .line 2677
    invoke-virtual {v7, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2678
    .line 2679
    .line 2680
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2681
    .line 2682
    .line 2683
    move-result-object v3

    .line 2684
    check-cast v3, Ljava/util/HashMap;

    .line 2685
    .line 2686
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2687
    .line 2688
    .line 2689
    move-result-object v3

    .line 2690
    check-cast v3, Ljava/lang/String;

    .line 2691
    .line 2692
    invoke-virtual {v7, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2693
    .line 2694
    .line 2695
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2696
    .line 2697
    .line 2698
    move-result-object v3

    .line 2699
    check-cast v3, Ljava/util/HashMap;

    .line 2700
    .line 2701
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2702
    .line 2703
    .line 2704
    move-result-object v3

    .line 2705
    check-cast v3, Ljava/lang/String;

    .line 2706
    .line 2707
    invoke-virtual {v7, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2708
    .line 2709
    .line 2710
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2711
    .line 2712
    .line 2713
    move-result-object v3

    .line 2714
    check-cast v3, Ljava/util/HashMap;

    .line 2715
    .line 2716
    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2717
    .line 2718
    .line 2719
    move-result-object v3

    .line 2720
    check-cast v3, Ljava/lang/String;

    .line 2721
    .line 2722
    invoke-virtual {v7, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2723
    .line 2724
    .line 2725
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2726
    .line 2727
    .line 2728
    move-result-object v3

    .line 2729
    check-cast v3, Ljava/util/HashMap;

    .line 2730
    .line 2731
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2732
    .line 2733
    .line 2734
    move-result-object v3

    .line 2735
    check-cast v3, Ljava/lang/String;

    .line 2736
    .line 2737
    invoke-virtual {v7, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2738
    .line 2739
    .line 2740
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2741
    .line 2742
    .line 2743
    move-result-object v3

    .line 2744
    check-cast v3, Ljava/util/HashMap;

    .line 2745
    .line 2746
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2747
    .line 2748
    .line 2749
    move-result-object v3

    .line 2750
    check-cast v3, Ljava/lang/String;

    .line 2751
    .line 2752
    invoke-virtual {v7, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2753
    .line 2754
    .line 2755
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2756
    .line 2757
    .line 2758
    move-result-object v3

    .line 2759
    check-cast v3, Ljava/util/HashMap;

    .line 2760
    .line 2761
    move-object/from16 v6, v21

    .line 2762
    .line 2763
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2764
    .line 2765
    .line 2766
    move-result-object v3

    .line 2767
    check-cast v3, Ljava/lang/String;

    .line 2768
    .line 2769
    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2770
    .line 2771
    .line 2772
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2773
    .line 2774
    .line 2775
    move-result-object v3

    .line 2776
    check-cast v3, Ljava/util/HashMap;

    .line 2777
    .line 2778
    move-object/from16 v6, v19

    .line 2779
    .line 2780
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2781
    .line 2782
    .line 2783
    move-result-object v3

    .line 2784
    check-cast v3, Ljava/lang/String;

    .line 2785
    .line 2786
    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2787
    .line 2788
    .line 2789
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2790
    .line 2791
    .line 2792
    move-result-object v3

    .line 2793
    check-cast v3, Ljava/util/HashMap;

    .line 2794
    .line 2795
    move-object/from16 v6, v18

    .line 2796
    .line 2797
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2798
    .line 2799
    .line 2800
    move-result-object v3

    .line 2801
    check-cast v3, Ljava/lang/String;

    .line 2802
    .line 2803
    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2804
    .line 2805
    .line 2806
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2807
    .line 2808
    .line 2809
    move-result-object v3

    .line 2810
    check-cast v3, Ljava/util/HashMap;

    .line 2811
    .line 2812
    move-object/from16 v14, v24

    .line 2813
    .line 2814
    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2815
    .line 2816
    .line 2817
    move-result-object v3

    .line 2818
    check-cast v3, Ljava/lang/String;

    .line 2819
    .line 2820
    invoke-virtual {v7, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2821
    .line 2822
    .line 2823
    move-object/from16 v3, v28

    .line 2824
    .line 2825
    iget-object v6, v3, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 2826
    .line 2827
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2828
    .line 2829
    .line 2830
    goto :goto_14

    .line 2831
    :cond_22
    move-object/from16 v34, v3

    .line 2832
    .line 2833
    move-object v3, v4

    .line 2834
    move-object/from16 v31, v5

    .line 2835
    .line 2836
    move/from16 v16, v6

    .line 2837
    .line 2838
    move-object/from16 v35, v7

    .line 2839
    .line 2840
    move-object/from16 p1, v8

    .line 2841
    .line 2842
    move-object v4, v12

    .line 2843
    move-object/from16 v33, v13

    .line 2844
    .line 2845
    move-object v5, v14

    .line 2846
    move-object v14, v15

    .line 2847
    :goto_14
    add-int/lit8 v10, v10, 0x1

    .line 2848
    .line 2849
    move-object/from16 v8, p1

    .line 2850
    .line 2851
    move-object v12, v4

    .line 2852
    move-object v15, v14

    .line 2853
    move/from16 v6, v16

    .line 2854
    .line 2855
    move-object/from16 v13, v33

    .line 2856
    .line 2857
    move-object/from16 v7, v35

    .line 2858
    .line 2859
    move-object/from16 v9, v36

    .line 2860
    .line 2861
    move-object v4, v3

    .line 2862
    move-object v14, v5

    .line 2863
    move-object/from16 v5, v31

    .line 2864
    .line 2865
    move-object/from16 v3, v34

    .line 2866
    .line 2867
    goto/16 :goto_13

    .line 2868
    .line 2869
    :cond_23
    move-object/from16 v34, v3

    .line 2870
    .line 2871
    move-object v3, v4

    .line 2872
    move-object/from16 v31, v5

    .line 2873
    .line 2874
    move/from16 v16, v6

    .line 2875
    .line 2876
    move-object/from16 v35, v7

    .line 2877
    .line 2878
    move-object/from16 v36, v9

    .line 2879
    .line 2880
    move-object v4, v12

    .line 2881
    move-object/from16 v33, v13

    .line 2882
    .line 2883
    move-object v5, v14

    .line 2884
    move-object v14, v15

    .line 2885
    add-int/lit8 v6, v16, 0x1

    .line 2886
    .line 2887
    move-object v12, v4

    .line 2888
    move-object v15, v14

    .line 2889
    move-object/from16 v13, v33

    .line 2890
    .line 2891
    move-object/from16 v7, v35

    .line 2892
    .line 2893
    move-object v4, v3

    .line 2894
    move-object v14, v5

    .line 2895
    move-object/from16 v5, v31

    .line 2896
    .line 2897
    move-object/from16 v3, v34

    .line 2898
    .line 2899
    goto/16 :goto_12

    .line 2900
    .line 2901
    :cond_24
    move-object v3, v4

    .line 2902
    iget-object v0, v3, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 2903
    .line 2904
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2905
    .line 2906
    .line 2907
    sget-object v25, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 2908
    .line 2909
    iget-object v0, v3, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 2910
    .line 2911
    const-string v26, "0"

    .line 2912
    .line 2913
    const/16 v23, 0x0

    .line 2914
    .line 2915
    const-string v24, "all"

    .line 2916
    .line 2917
    move-object/from16 v22, v10

    .line 2918
    .line 2919
    move-object/from16 v27, v0

    .line 2920
    .line 2921
    invoke-static/range {v22 .. v27}, La7/b;->e(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2922
    .line 2923
    .line 2924
    move-result-object v0

    .line 2925
    iput-object v0, v3, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 2926
    .line 2927
    :cond_25
    :goto_15
    return-void

    .line 2928
    :pswitch_4
    move-object v4, v3

    .line 2929
    move-object v3, v5

    .line 2930
    move-object v6, v8

    .line 2931
    move-object/from16 v33, v12

    .line 2932
    .line 2933
    move-object/from16 v34, v13

    .line 2934
    .line 2935
    move-object/from16 v5, v20

    .line 2936
    .line 2937
    move-object/from16 v1, v21

    .line 2938
    .line 2939
    move-object/from16 v8, v22

    .line 2940
    .line 2941
    move-object/from16 v12, v23

    .line 2942
    .line 2943
    move-object/from16 v20, v24

    .line 2944
    .line 2945
    move-object/from16 v10, v25

    .line 2946
    .line 2947
    move-object v13, v7

    .line 2948
    move-object v7, v14

    .line 2949
    move-object v14, v15

    .line 2950
    move-object v15, v11

    .line 2951
    move-object/from16 v11, v26

    .line 2952
    .line 2953
    iget-object v0, v3, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 2954
    .line 2955
    move-object/from16 v35, v13

    .line 2956
    .line 2957
    move-object/from16 v13, v17

    .line 2958
    .line 2959
    invoke-virtual {v0, v13}, Lc7/d;->j0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2960
    .line 2961
    .line 2962
    move-result-object v0

    .line 2963
    sput-object v0, Lpe/hf/black20/ChannelListActivity;->v0:Ljava/util/ArrayList;

    .line 2964
    .line 2965
    new-instance v0, Ljava/util/ArrayList;

    .line 2966
    .line 2967
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2968
    .line 2969
    .line 2970
    iput-object v0, v3, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 2971
    .line 2972
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2973
    .line 2974
    .line 2975
    iget-object v0, v3, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 2976
    .line 2977
    move-object/from16 v24, v3

    .line 2978
    .line 2979
    new-instance v3, Lc7/d;

    .line 2980
    .line 2981
    invoke-direct {v3, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 2982
    .line 2983
    .line 2984
    move-object/from16 v17, v13

    .line 2985
    .line 2986
    new-instance v13, Lc7/b;

    .line 2987
    .line 2988
    move-object/from16 v32, v7

    .line 2989
    .line 2990
    const/4 v7, 0x1

    .line 2991
    invoke-direct {v13, v0, v7}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 2992
    .line 2993
    .line 2994
    new-instance v7, Lc7/b;

    .line 2995
    .line 2996
    move-object/from16 v21, v13

    .line 2997
    .line 2998
    const/4 v13, 0x0

    .line 2999
    invoke-direct {v7, v0, v13}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 3000
    .line 3001
    .line 3002
    invoke-virtual {v0, v11, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 3003
    .line 3004
    .line 3005
    move-result-object v11

    .line 3006
    sget-object v13, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 3007
    .line 3008
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3009
    .line 3010
    .line 3011
    move-result v9

    .line 3012
    if-eqz v9, :cond_27

    .line 3013
    .line 3014
    const/4 v9, 0x0

    .line 3015
    invoke-interface {v11, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3016
    .line 3017
    .line 3018
    move-result-object v13

    .line 3019
    move-object/from16 v9, v20

    .line 3020
    .line 3021
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3022
    .line 3023
    .line 3024
    move-result v13

    .line 3025
    if-nez v13, :cond_27

    .line 3026
    .line 3027
    const/4 v13, 0x0

    .line 3028
    invoke-interface {v11, v10, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3029
    .line 3030
    .line 3031
    move-result-object v9

    .line 3032
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3033
    .line 3034
    .line 3035
    move-result v9

    .line 3036
    if-nez v9, :cond_27

    .line 3037
    .line 3038
    invoke-interface {v11, v10, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3039
    .line 3040
    .line 3041
    move-result-object v9

    .line 3042
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3043
    .line 3044
    .line 3045
    move-result v9

    .line 3046
    if-eqz v9, :cond_26

    .line 3047
    .line 3048
    goto :goto_16

    .line 3049
    :cond_26
    move-object/from16 v9, v18

    .line 3050
    .line 3051
    goto :goto_17

    .line 3052
    :cond_27
    :goto_16
    move-object/from16 v9, v20

    .line 3053
    .line 3054
    :goto_17
    new-instance v10, Ljava/util/ArrayList;

    .line 3055
    .line 3056
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3057
    .line 3058
    .line 3059
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 3060
    .line 3061
    .line 3062
    invoke-virtual {v3}, Lc7/d;->n0()Ljava/util/ArrayList;

    .line 3063
    .line 3064
    .line 3065
    move-result-object v3

    .line 3066
    new-instance v10, Ljava/util/ArrayList;

    .line 3067
    .line 3068
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3069
    .line 3070
    .line 3071
    const/4 v11, 0x0

    .line 3072
    :goto_18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 3073
    .line 3074
    .line 3075
    move-result v12

    .line 3076
    if-ge v11, v12, :cond_2e

    .line 3077
    .line 3078
    if-nez v11, :cond_28

    .line 3079
    .line 3080
    new-instance v12, Ljava/util/HashMap;

    .line 3081
    .line 3082
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 3083
    .line 3084
    .line 3085
    invoke-virtual {v12, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3086
    .line 3087
    .line 3088
    move-object/from16 v23, v6

    .line 3089
    .line 3090
    const v13, 0x7f1301cc

    .line 3091
    .line 3092
    .line 3093
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 3094
    .line 3095
    .line 3096
    move-result-object v6

    .line 3097
    invoke-virtual {v12, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3098
    .line 3099
    .line 3100
    invoke-virtual {v12, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3101
    .line 3102
    .line 3103
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3104
    .line 3105
    .line 3106
    new-instance v6, Ljava/util/HashMap;

    .line 3107
    .line 3108
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3109
    .line 3110
    .line 3111
    invoke-virtual {v6, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3112
    .line 3113
    .line 3114
    const v12, 0x7f13020b

    .line 3115
    .line 3116
    .line 3117
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 3118
    .line 3119
    .line 3120
    move-result-object v13

    .line 3121
    invoke-virtual {v6, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3122
    .line 3123
    .line 3124
    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3125
    .line 3126
    .line 3127
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3128
    .line 3129
    .line 3130
    new-instance v6, Ljava/util/HashMap;

    .line 3131
    .line 3132
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3133
    .line 3134
    .line 3135
    invoke-virtual {v6, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3136
    .line 3137
    .line 3138
    move-object/from16 v13, v19

    .line 3139
    .line 3140
    invoke-virtual {v6, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3141
    .line 3142
    .line 3143
    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3144
    .line 3145
    .line 3146
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3147
    .line 3148
    .line 3149
    :goto_19
    move-object/from16 v6, v32

    .line 3150
    .line 3151
    move-object/from16 v12, v33

    .line 3152
    .line 3153
    goto :goto_1a

    .line 3154
    :cond_28
    move-object/from16 v23, v6

    .line 3155
    .line 3156
    move-object/from16 v13, v19

    .line 3157
    .line 3158
    goto :goto_19

    .line 3159
    :goto_1a
    invoke-static {v6, v12, v12}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3160
    .line 3161
    .line 3162
    move-result v19

    .line 3163
    move-object/from16 v20, v0

    .line 3164
    .line 3165
    const-string v0, "Series"

    .line 3166
    .line 3167
    if-eqz v19, :cond_2b

    .line 3168
    .line 3169
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3170
    .line 3171
    .line 3172
    move-result-object v19

    .line 3173
    move-object/from16 v22, v1

    .line 3174
    .line 3175
    move-object/from16 v1, v19

    .line 3176
    .line 3177
    check-cast v1, Lh7/a;

    .line 3178
    .line 3179
    iget-object v1, v1, Lh7/a;->a:Ljava/lang/String;

    .line 3180
    .line 3181
    move-object/from16 v19, v2

    .line 3182
    .line 3183
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 3184
    .line 3185
    .line 3186
    move-result-object v2

    .line 3187
    move-object/from16 v33, v12

    .line 3188
    .line 3189
    move-object/from16 v12, v34

    .line 3190
    .line 3191
    invoke-virtual {v2, v12, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3192
    .line 3193
    .line 3194
    move-result-object v2

    .line 3195
    move-object/from16 v25, v4

    .line 3196
    .line 3197
    move-object/from16 v32, v6

    .line 3198
    .line 3199
    move-object/from16 v4, v17

    .line 3200
    .line 3201
    move-object/from16 v6, v21

    .line 3202
    .line 3203
    invoke-virtual {v6, v1, v4, v2}, Lc7/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3204
    .line 3205
    .line 3206
    move-result-object v1

    .line 3207
    move-object/from16 v2, v35

    .line 3208
    .line 3209
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3210
    .line 3211
    .line 3212
    move-result v1

    .line 3213
    if-nez v1, :cond_2a

    .line 3214
    .line 3215
    move-object/from16 v1, v18

    .line 3216
    .line 3217
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3218
    .line 3219
    .line 3220
    move-result v17

    .line 3221
    if-eqz v17, :cond_29

    .line 3222
    .line 3223
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3224
    .line 3225
    .line 3226
    move-result-object v17

    .line 3227
    move-object/from16 v18, v4

    .line 3228
    .line 3229
    move-object/from16 v4, v17

    .line 3230
    .line 3231
    check-cast v4, Lh7/a;

    .line 3232
    .line 3233
    iget-object v4, v4, Lh7/a;->b:Ljava/lang/String;

    .line 3234
    .line 3235
    invoke-virtual {v7, v4, v0}, Lc7/b;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3236
    .line 3237
    .line 3238
    move-result-object v0

    .line 3239
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3240
    .line 3241
    .line 3242
    move-result v0

    .line 3243
    if-eqz v0, :cond_2d

    .line 3244
    .line 3245
    new-instance v0, Ljava/util/HashMap;

    .line 3246
    .line 3247
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3248
    .line 3249
    .line 3250
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3251
    .line 3252
    .line 3253
    move-result-object v4

    .line 3254
    check-cast v4, Lh7/a;

    .line 3255
    .line 3256
    iget-object v4, v4, Lh7/a;->a:Ljava/lang/String;

    .line 3257
    .line 3258
    invoke-virtual {v0, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3259
    .line 3260
    .line 3261
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3262
    .line 3263
    .line 3264
    move-result-object v4

    .line 3265
    check-cast v4, Lh7/a;

    .line 3266
    .line 3267
    iget-object v4, v4, Lh7/a;->b:Ljava/lang/String;

    .line 3268
    .line 3269
    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3270
    .line 3271
    .line 3272
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3273
    .line 3274
    .line 3275
    move-result-object v4

    .line 3276
    check-cast v4, Lh7/a;

    .line 3277
    .line 3278
    iget-object v4, v4, Lh7/a;->c:Ljava/lang/String;

    .line 3279
    .line 3280
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3281
    .line 3282
    .line 3283
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3284
    .line 3285
    .line 3286
    goto/16 :goto_1b

    .line 3287
    .line 3288
    :cond_29
    move-object/from16 v18, v4

    .line 3289
    .line 3290
    new-instance v0, Ljava/util/HashMap;

    .line 3291
    .line 3292
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3293
    .line 3294
    .line 3295
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3296
    .line 3297
    .line 3298
    move-result-object v4

    .line 3299
    check-cast v4, Lh7/a;

    .line 3300
    .line 3301
    iget-object v4, v4, Lh7/a;->a:Ljava/lang/String;

    .line 3302
    .line 3303
    invoke-virtual {v0, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3304
    .line 3305
    .line 3306
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3307
    .line 3308
    .line 3309
    move-result-object v4

    .line 3310
    check-cast v4, Lh7/a;

    .line 3311
    .line 3312
    iget-object v4, v4, Lh7/a;->b:Ljava/lang/String;

    .line 3313
    .line 3314
    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3315
    .line 3316
    .line 3317
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3318
    .line 3319
    .line 3320
    move-result-object v4

    .line 3321
    check-cast v4, Lh7/a;

    .line 3322
    .line 3323
    iget-object v4, v4, Lh7/a;->c:Ljava/lang/String;

    .line 3324
    .line 3325
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3326
    .line 3327
    .line 3328
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3329
    .line 3330
    .line 3331
    goto/16 :goto_1b

    .line 3332
    .line 3333
    :cond_2a
    move-object/from16 v1, v18

    .line 3334
    .line 3335
    move-object/from16 v18, v4

    .line 3336
    .line 3337
    goto/16 :goto_1b

    .line 3338
    .line 3339
    :cond_2b
    move-object/from16 v22, v1

    .line 3340
    .line 3341
    move-object/from16 v19, v2

    .line 3342
    .line 3343
    move-object/from16 v25, v4

    .line 3344
    .line 3345
    move-object/from16 v32, v6

    .line 3346
    .line 3347
    move-object/from16 v33, v12

    .line 3348
    .line 3349
    move-object/from16 v1, v18

    .line 3350
    .line 3351
    move-object/from16 v6, v21

    .line 3352
    .line 3353
    move-object/from16 v12, v34

    .line 3354
    .line 3355
    move-object/from16 v2, v35

    .line 3356
    .line 3357
    move-object/from16 v18, v17

    .line 3358
    .line 3359
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3360
    .line 3361
    .line 3362
    move-result v4

    .line 3363
    if-eqz v4, :cond_2c

    .line 3364
    .line 3365
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3366
    .line 3367
    .line 3368
    move-result-object v4

    .line 3369
    check-cast v4, Lh7/a;

    .line 3370
    .line 3371
    iget-object v4, v4, Lh7/a;->b:Ljava/lang/String;

    .line 3372
    .line 3373
    invoke-virtual {v7, v4, v0}, Lc7/b;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3374
    .line 3375
    .line 3376
    move-result-object v0

    .line 3377
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3378
    .line 3379
    .line 3380
    move-result v0

    .line 3381
    if-eqz v0, :cond_2d

    .line 3382
    .line 3383
    new-instance v0, Ljava/util/HashMap;

    .line 3384
    .line 3385
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3386
    .line 3387
    .line 3388
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3389
    .line 3390
    .line 3391
    move-result-object v4

    .line 3392
    check-cast v4, Lh7/a;

    .line 3393
    .line 3394
    iget-object v4, v4, Lh7/a;->a:Ljava/lang/String;

    .line 3395
    .line 3396
    invoke-virtual {v0, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3397
    .line 3398
    .line 3399
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3400
    .line 3401
    .line 3402
    move-result-object v4

    .line 3403
    check-cast v4, Lh7/a;

    .line 3404
    .line 3405
    iget-object v4, v4, Lh7/a;->b:Ljava/lang/String;

    .line 3406
    .line 3407
    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3408
    .line 3409
    .line 3410
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3411
    .line 3412
    .line 3413
    move-result-object v4

    .line 3414
    check-cast v4, Lh7/a;

    .line 3415
    .line 3416
    iget-object v4, v4, Lh7/a;->c:Ljava/lang/String;

    .line 3417
    .line 3418
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3419
    .line 3420
    .line 3421
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3422
    .line 3423
    .line 3424
    goto :goto_1b

    .line 3425
    :cond_2c
    new-instance v0, Ljava/util/HashMap;

    .line 3426
    .line 3427
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3428
    .line 3429
    .line 3430
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3431
    .line 3432
    .line 3433
    move-result-object v4

    .line 3434
    check-cast v4, Lh7/a;

    .line 3435
    .line 3436
    iget-object v4, v4, Lh7/a;->a:Ljava/lang/String;

    .line 3437
    .line 3438
    invoke-virtual {v0, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3439
    .line 3440
    .line 3441
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3442
    .line 3443
    .line 3444
    move-result-object v4

    .line 3445
    check-cast v4, Lh7/a;

    .line 3446
    .line 3447
    iget-object v4, v4, Lh7/a;->b:Ljava/lang/String;

    .line 3448
    .line 3449
    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3450
    .line 3451
    .line 3452
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3453
    .line 3454
    .line 3455
    move-result-object v4

    .line 3456
    check-cast v4, Lh7/a;

    .line 3457
    .line 3458
    iget-object v4, v4, Lh7/a;->c:Ljava/lang/String;

    .line 3459
    .line 3460
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3461
    .line 3462
    .line 3463
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3464
    .line 3465
    .line 3466
    :cond_2d
    :goto_1b
    add-int/lit8 v11, v11, 0x1

    .line 3467
    .line 3468
    move-object/from16 v35, v2

    .line 3469
    .line 3470
    move-object/from16 v21, v6

    .line 3471
    .line 3472
    move-object/from16 v34, v12

    .line 3473
    .line 3474
    move-object/from16 v17, v18

    .line 3475
    .line 3476
    move-object/from16 v2, v19

    .line 3477
    .line 3478
    move-object/from16 v0, v20

    .line 3479
    .line 3480
    move-object/from16 v6, v23

    .line 3481
    .line 3482
    move-object/from16 v4, v25

    .line 3483
    .line 3484
    move-object/from16 v18, v1

    .line 3485
    .line 3486
    move-object/from16 v19, v13

    .line 3487
    .line 3488
    move-object/from16 v1, v22

    .line 3489
    .line 3490
    goto/16 :goto_18

    .line 3491
    .line 3492
    :cond_2e
    move-object/from16 v0, v24

    .line 3493
    .line 3494
    iput-object v10, v0, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 3495
    .line 3496
    return-void

    .line 3497
    :pswitch_5
    move-object/from16 v24, v5

    .line 3498
    .line 3499
    move-object v9, v7

    .line 3500
    move-object v6, v10

    .line 3501
    move-object v2, v12

    .line 3502
    move-object v12, v13

    .line 3503
    move-object v13, v14

    .line 3504
    move-object v14, v15

    .line 3505
    move-object/from16 v10, v29

    .line 3506
    .line 3507
    move-object/from16 v5, v31

    .line 3508
    .line 3509
    move-object/from16 v8, v32

    .line 3510
    .line 3511
    move-object/from16 v7, v33

    .line 3512
    .line 3513
    move-object/from16 v3, v34

    .line 3514
    .line 3515
    move-object/from16 v1, v35

    .line 3516
    .line 3517
    move-object/from16 v0, v36

    .line 3518
    .line 3519
    move-object v15, v11

    .line 3520
    move-object/from16 v11, v30

    .line 3521
    .line 3522
    new-instance v16, Ljava/util/ArrayList;

    .line 3523
    .line 3524
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 3525
    .line 3526
    .line 3527
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3528
    .line 3529
    .line 3530
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 3531
    .line 3532
    .line 3533
    move-object/from16 v29, v10

    .line 3534
    .line 3535
    move-object/from16 v10, v24

    .line 3536
    .line 3537
    move-object/from16 v24, v14

    .line 3538
    .line 3539
    iget-object v14, v10, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 3540
    .line 3541
    move-object/from16 v16, v10

    .line 3542
    .line 3543
    sget-object v10, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 3544
    .line 3545
    move-object/from16 v30, v11

    .line 3546
    .line 3547
    new-instance v11, Lc7/d;

    .line 3548
    .line 3549
    invoke-direct {v11, v14}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 3550
    .line 3551
    .line 3552
    move-object/from16 v31, v5

    .line 3553
    .line 3554
    new-instance v5, Lc7/b;

    .line 3555
    .line 3556
    move-object/from16 v32, v8

    .line 3557
    .line 3558
    const/4 v8, 0x1

    .line 3559
    invoke-direct {v5, v14, v8}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 3560
    .line 3561
    .line 3562
    new-instance v8, Ljava/util/ArrayList;

    .line 3563
    .line 3564
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3565
    .line 3566
    .line 3567
    new-instance v14, Ljava/util/ArrayList;

    .line 3568
    .line 3569
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3570
    .line 3571
    .line 3572
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 3573
    .line 3574
    .line 3575
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 3576
    .line 3577
    .line 3578
    move-result-object v14

    .line 3579
    invoke-virtual {v14, v12, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3580
    .line 3581
    .line 3582
    move-result-object v14

    .line 3583
    invoke-virtual {v11, v10, v14}, Lc7/d;->t0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 3584
    .line 3585
    .line 3586
    move-result-object v10

    .line 3587
    const/4 v11, 0x0

    .line 3588
    :goto_1c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 3589
    .line 3590
    .line 3591
    move-result v14

    .line 3592
    if-ge v11, v14, :cond_31

    .line 3593
    .line 3594
    invoke-static {v13, v2, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3595
    .line 3596
    .line 3597
    move-result v14

    .line 3598
    if-eqz v14, :cond_30

    .line 3599
    .line 3600
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3601
    .line 3602
    .line 3603
    move-result-object v14

    .line 3604
    check-cast v14, Lh7/j;

    .line 3605
    .line 3606
    iget-object v14, v14, Lh7/j;->i:Ljava/lang/String;

    .line 3607
    .line 3608
    move-object/from16 v33, v2

    .line 3609
    .line 3610
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 3611
    .line 3612
    .line 3613
    move-result-object v2

    .line 3614
    invoke-virtual {v2, v12, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3615
    .line 3616
    .line 3617
    move-result-object v2

    .line 3618
    invoke-virtual {v5, v14, v6, v2}, Lc7/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3619
    .line 3620
    .line 3621
    move-result-object v2

    .line 3622
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3623
    .line 3624
    .line 3625
    move-result v2

    .line 3626
    if-nez v2, :cond_2f

    .line 3627
    .line 3628
    new-instance v2, Ljava/util/HashMap;

    .line 3629
    .line 3630
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3631
    .line 3632
    .line 3633
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3634
    .line 3635
    .line 3636
    move-result-object v14

    .line 3637
    check-cast v14, Lh7/j;

    .line 3638
    .line 3639
    iget-object v14, v14, Lh7/j;->a:Ljava/lang/String;

    .line 3640
    .line 3641
    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3642
    .line 3643
    .line 3644
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3645
    .line 3646
    .line 3647
    move-result-object v14

    .line 3648
    check-cast v14, Lh7/j;

    .line 3649
    .line 3650
    iget-object v14, v14, Lh7/j;->b:Ljava/lang/String;

    .line 3651
    .line 3652
    invoke-virtual {v2, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3653
    .line 3654
    .line 3655
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3656
    .line 3657
    .line 3658
    move-result-object v14

    .line 3659
    check-cast v14, Lh7/j;

    .line 3660
    .line 3661
    iget-object v14, v14, Lh7/j;->c:Ljava/lang/String;

    .line 3662
    .line 3663
    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3664
    .line 3665
    .line 3666
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3667
    .line 3668
    .line 3669
    move-result-object v14

    .line 3670
    check-cast v14, Lh7/j;

    .line 3671
    .line 3672
    iget-object v14, v14, Lh7/j;->d:Ljava/lang/String;

    .line 3673
    .line 3674
    invoke-virtual {v2, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3675
    .line 3676
    .line 3677
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3678
    .line 3679
    .line 3680
    move-result-object v14

    .line 3681
    check-cast v14, Lh7/j;

    .line 3682
    .line 3683
    iget-object v14, v14, Lh7/j;->e:Ljava/lang/String;

    .line 3684
    .line 3685
    invoke-virtual {v2, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3686
    .line 3687
    .line 3688
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3689
    .line 3690
    .line 3691
    move-result-object v14

    .line 3692
    check-cast v14, Lh7/j;

    .line 3693
    .line 3694
    iget-object v14, v14, Lh7/j;->f:Ljava/lang/String;

    .line 3695
    .line 3696
    move-object/from16 p1, v5

    .line 3697
    .line 3698
    move-object/from16 v5, v32

    .line 3699
    .line 3700
    invoke-virtual {v2, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3701
    .line 3702
    .line 3703
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3704
    .line 3705
    .line 3706
    move-result-object v14

    .line 3707
    check-cast v14, Lh7/j;

    .line 3708
    .line 3709
    iget-object v14, v14, Lh7/j;->g:Ljava/lang/String;

    .line 3710
    .line 3711
    move-object/from16 v17, v6

    .line 3712
    .line 3713
    move-object/from16 v6, v31

    .line 3714
    .line 3715
    invoke-virtual {v2, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3716
    .line 3717
    .line 3718
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3719
    .line 3720
    .line 3721
    move-result-object v14

    .line 3722
    check-cast v14, Lh7/j;

    .line 3723
    .line 3724
    iget-object v14, v14, Lh7/j;->h:Ljava/lang/String;

    .line 3725
    .line 3726
    move-object/from16 v35, v9

    .line 3727
    .line 3728
    move-object/from16 v9, v30

    .line 3729
    .line 3730
    invoke-virtual {v2, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3731
    .line 3732
    .line 3733
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3734
    .line 3735
    .line 3736
    move-result-object v14

    .line 3737
    check-cast v14, Lh7/j;

    .line 3738
    .line 3739
    iget-object v14, v14, Lh7/j;->i:Ljava/lang/String;

    .line 3740
    .line 3741
    move-object/from16 v34, v12

    .line 3742
    .line 3743
    move-object/from16 v12, v24

    .line 3744
    .line 3745
    invoke-virtual {v2, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3746
    .line 3747
    .line 3748
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3749
    .line 3750
    .line 3751
    move-result-object v14

    .line 3752
    check-cast v14, Lh7/j;

    .line 3753
    .line 3754
    iget-object v14, v14, Lh7/j;->j:Ljava/lang/String;

    .line 3755
    .line 3756
    move-object/from16 v32, v13

    .line 3757
    .line 3758
    move-object/from16 v13, v29

    .line 3759
    .line 3760
    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3761
    .line 3762
    .line 3763
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3764
    .line 3765
    .line 3766
    move-result-object v14

    .line 3767
    check-cast v14, Lh7/j;

    .line 3768
    .line 3769
    iget-object v14, v14, Lh7/j;->k:Ljava/lang/String;

    .line 3770
    .line 3771
    move-object/from16 v31, v15

    .line 3772
    .line 3773
    move-object/from16 v15, v28

    .line 3774
    .line 3775
    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3776
    .line 3777
    .line 3778
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3779
    .line 3780
    .line 3781
    move-result-object v14

    .line 3782
    check-cast v14, Lh7/j;

    .line 3783
    .line 3784
    iget-object v14, v14, Lh7/j;->l:Ljava/lang/String;

    .line 3785
    .line 3786
    move-object/from16 v28, v15

    .line 3787
    .line 3788
    move-object/from16 v15, v27

    .line 3789
    .line 3790
    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3791
    .line 3792
    .line 3793
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3794
    .line 3795
    .line 3796
    :goto_1d
    move-object/from16 v36, v0

    .line 3797
    .line 3798
    move-object/from16 v0, v28

    .line 3799
    .line 3800
    goto/16 :goto_1e

    .line 3801
    .line 3802
    :cond_2f
    move-object/from16 p1, v5

    .line 3803
    .line 3804
    move-object/from16 v17, v6

    .line 3805
    .line 3806
    move-object/from16 v35, v9

    .line 3807
    .line 3808
    move-object/from16 v34, v12

    .line 3809
    .line 3810
    move-object/from16 v12, v24

    .line 3811
    .line 3812
    move-object/from16 v9, v30

    .line 3813
    .line 3814
    move-object/from16 v6, v31

    .line 3815
    .line 3816
    move-object/from16 v5, v32

    .line 3817
    .line 3818
    move-object/from16 v32, v13

    .line 3819
    .line 3820
    move-object/from16 v31, v15

    .line 3821
    .line 3822
    move-object/from16 v15, v27

    .line 3823
    .line 3824
    move-object/from16 v13, v29

    .line 3825
    .line 3826
    goto :goto_1d

    .line 3827
    :cond_30
    move-object/from16 v33, v2

    .line 3828
    .line 3829
    move-object/from16 p1, v5

    .line 3830
    .line 3831
    move-object/from16 v17, v6

    .line 3832
    .line 3833
    move-object/from16 v35, v9

    .line 3834
    .line 3835
    move-object/from16 v34, v12

    .line 3836
    .line 3837
    move-object/from16 v12, v24

    .line 3838
    .line 3839
    move-object/from16 v9, v30

    .line 3840
    .line 3841
    move-object/from16 v6, v31

    .line 3842
    .line 3843
    move-object/from16 v5, v32

    .line 3844
    .line 3845
    move-object/from16 v32, v13

    .line 3846
    .line 3847
    move-object/from16 v31, v15

    .line 3848
    .line 3849
    move-object/from16 v15, v27

    .line 3850
    .line 3851
    move-object/from16 v13, v29

    .line 3852
    .line 3853
    new-instance v2, Ljava/util/HashMap;

    .line 3854
    .line 3855
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3856
    .line 3857
    .line 3858
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3859
    .line 3860
    .line 3861
    move-result-object v14

    .line 3862
    check-cast v14, Lh7/j;

    .line 3863
    .line 3864
    iget-object v14, v14, Lh7/j;->a:Ljava/lang/String;

    .line 3865
    .line 3866
    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3867
    .line 3868
    .line 3869
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3870
    .line 3871
    .line 3872
    move-result-object v14

    .line 3873
    check-cast v14, Lh7/j;

    .line 3874
    .line 3875
    iget-object v14, v14, Lh7/j;->b:Ljava/lang/String;

    .line 3876
    .line 3877
    invoke-virtual {v2, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3878
    .line 3879
    .line 3880
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3881
    .line 3882
    .line 3883
    move-result-object v14

    .line 3884
    check-cast v14, Lh7/j;

    .line 3885
    .line 3886
    iget-object v14, v14, Lh7/j;->c:Ljava/lang/String;

    .line 3887
    .line 3888
    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3889
    .line 3890
    .line 3891
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3892
    .line 3893
    .line 3894
    move-result-object v14

    .line 3895
    check-cast v14, Lh7/j;

    .line 3896
    .line 3897
    iget-object v14, v14, Lh7/j;->d:Ljava/lang/String;

    .line 3898
    .line 3899
    invoke-virtual {v2, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3900
    .line 3901
    .line 3902
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3903
    .line 3904
    .line 3905
    move-result-object v14

    .line 3906
    check-cast v14, Lh7/j;

    .line 3907
    .line 3908
    iget-object v14, v14, Lh7/j;->e:Ljava/lang/String;

    .line 3909
    .line 3910
    invoke-virtual {v2, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3911
    .line 3912
    .line 3913
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3914
    .line 3915
    .line 3916
    move-result-object v14

    .line 3917
    check-cast v14, Lh7/j;

    .line 3918
    .line 3919
    iget-object v14, v14, Lh7/j;->f:Ljava/lang/String;

    .line 3920
    .line 3921
    invoke-virtual {v2, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3922
    .line 3923
    .line 3924
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3925
    .line 3926
    .line 3927
    move-result-object v14

    .line 3928
    check-cast v14, Lh7/j;

    .line 3929
    .line 3930
    iget-object v14, v14, Lh7/j;->g:Ljava/lang/String;

    .line 3931
    .line 3932
    invoke-virtual {v2, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3933
    .line 3934
    .line 3935
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3936
    .line 3937
    .line 3938
    move-result-object v14

    .line 3939
    check-cast v14, Lh7/j;

    .line 3940
    .line 3941
    iget-object v14, v14, Lh7/j;->h:Ljava/lang/String;

    .line 3942
    .line 3943
    invoke-virtual {v2, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3944
    .line 3945
    .line 3946
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3947
    .line 3948
    .line 3949
    move-result-object v14

    .line 3950
    check-cast v14, Lh7/j;

    .line 3951
    .line 3952
    iget-object v14, v14, Lh7/j;->i:Ljava/lang/String;

    .line 3953
    .line 3954
    invoke-virtual {v2, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3955
    .line 3956
    .line 3957
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3958
    .line 3959
    .line 3960
    move-result-object v14

    .line 3961
    check-cast v14, Lh7/j;

    .line 3962
    .line 3963
    iget-object v14, v14, Lh7/j;->j:Ljava/lang/String;

    .line 3964
    .line 3965
    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3966
    .line 3967
    .line 3968
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3969
    .line 3970
    .line 3971
    move-result-object v14

    .line 3972
    check-cast v14, Lh7/j;

    .line 3973
    .line 3974
    iget-object v14, v14, Lh7/j;->k:Ljava/lang/String;

    .line 3975
    .line 3976
    move-object/from16 v36, v0

    .line 3977
    .line 3978
    move-object/from16 v0, v28

    .line 3979
    .line 3980
    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3981
    .line 3982
    .line 3983
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3984
    .line 3985
    .line 3986
    move-result-object v14

    .line 3987
    check-cast v14, Lh7/j;

    .line 3988
    .line 3989
    iget-object v14, v14, Lh7/j;->l:Ljava/lang/String;

    .line 3990
    .line 3991
    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3992
    .line 3993
    .line 3994
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3995
    .line 3996
    .line 3997
    :goto_1e
    add-int/lit8 v11, v11, 0x1

    .line 3998
    .line 3999
    move-object/from16 v28, v0

    .line 4000
    .line 4001
    move-object/from16 v30, v9

    .line 4002
    .line 4003
    move-object/from16 v24, v12

    .line 4004
    .line 4005
    move-object/from16 v29, v13

    .line 4006
    .line 4007
    move-object/from16 v27, v15

    .line 4008
    .line 4009
    move-object/from16 v15, v31

    .line 4010
    .line 4011
    move-object/from16 v13, v32

    .line 4012
    .line 4013
    move-object/from16 v2, v33

    .line 4014
    .line 4015
    move-object/from16 v12, v34

    .line 4016
    .line 4017
    move-object/from16 v9, v35

    .line 4018
    .line 4019
    move-object/from16 v0, v36

    .line 4020
    .line 4021
    move-object/from16 v32, v5

    .line 4022
    .line 4023
    move-object/from16 v31, v6

    .line 4024
    .line 4025
    move-object/from16 v6, v17

    .line 4026
    .line 4027
    move-object/from16 v5, p1

    .line 4028
    .line 4029
    goto/16 :goto_1c

    .line 4030
    .line 4031
    :cond_31
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4032
    .line 4033
    .line 4034
    return-void

    .line 4035
    :pswitch_6
    move-object/from16 v16, v5

    .line 4036
    .line 4037
    new-instance v0, Ljava/util/ArrayList;

    .line 4038
    .line 4039
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4040
    .line 4041
    .line 4042
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4043
    .line 4044
    .line 4045
    move-object/from16 v0, v16

    .line 4046
    .line 4047
    iget-object v1, v0, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 4048
    .line 4049
    sget-object v2, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 4050
    .line 4051
    invoke-static {v1, v2}, Lz4/q0;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4052
    .line 4053
    .line 4054
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4055
    .line 4056
    .line 4057
    return-void

    .line 4058
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lb7/D;->b()V

    .line 4059
    .line 4060
    .line 4061
    return-void

    .line 4062
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Void;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb7/D;->a:I

    .line 4
    .line 5
    const-string v2, "ORT_isLoadLastLiveTVChannel"

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const-string v5, "Not Found!"

    .line 9
    .line 10
    const-string v6, "category_id"

    .line 11
    .line 12
    const-string v7, "category_name"

    .line 13
    .line 14
    const-string v10, "99999"

    .line 15
    .line 16
    const-string v11, "ORT_SELECTED_POS"

    .line 17
    .line 18
    const-string v12, "yes"

    .line 19
    .line 20
    const-string v13, ""

    .line 21
    .line 22
    const-string v14, "ORT_PROFILE_ID"

    .line 23
    .line 24
    const-string v15, "ORT_CAT_NAME"

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v8, 0x4

    .line 28
    iget-object v9, v0, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    .line 29
    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 37
    .line 38
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lb7/G;

    .line 42
    .line 43
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v1, v4, v9, v2}, Lb7/G;-><init>(ILpe/hf/black20/ChannelListActivity;Ljava/util/ArrayList;)V

    .line 46
    .line 47
    .line 48
    sget-object v2, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    .line 52
    .line 53
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 54
    .line 55
    new-instance v2, Lb7/F;

    .line 56
    .line 57
    invoke-direct {v2, v0, v3}, Lb7/F;-><init>(Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 68
    .line 69
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 73
    .line 74
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2, v14, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3, v14, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v3, "_vod"

    .line 99
    .line 100
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v1, v2, v3}, Lc7/d;->v0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_0

    .line 116
    .line 117
    iput-object v10, v9, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 120
    .line 121
    const v2, 0x7f1301cc

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    iput-object v3, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iget-object v3, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v2, v15, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 137
    .line 138
    .line 139
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 140
    .line 141
    const v3, 0x7f1301cc

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 152
    .line 153
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 154
    .line 155
    .line 156
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1, v4, v11}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_0
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    const/4 v2, 0x1

    .line 171
    if-le v1, v2, :cond_1

    .line 172
    .line 173
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Ljava/util/HashMap;

    .line 180
    .line 181
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Ljava/lang/String;

    .line 186
    .line 187
    iput-object v1, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v1, v15, v2}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 196
    .line 197
    .line 198
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 199
    .line 200
    const/4 v2, 0x1

    .line 201
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Ljava/util/HashMap;

    .line 206
    .line 207
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Ljava/lang/String;

    .line 212
    .line 213
    iput-object v1, v9, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 214
    .line 215
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 216
    .line 217
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    const/4 v2, 0x1

    .line 227
    invoke-virtual {v1, v2, v11}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 228
    .line 229
    .line 230
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 233
    .line 234
    .line 235
    goto :goto_0

    .line 236
    :cond_1
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 237
    .line 238
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    :goto_0
    invoke-static {v9}, Lpe/hf/black20/ChannelListActivity;->b(Lpe/hf/black20/ChannelListActivity;)V

    .line 242
    .line 243
    .line 244
    new-instance v1, Lb7/t;

    .line 245
    .line 246
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-direct {v1, v4, v9, v2}, Lb7/t;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    .line 249
    .line 250
    .line 251
    sget-object v2, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 252
    .line 253
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    .line 255
    .line 256
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 257
    .line 258
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 259
    .line 260
    .line 261
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 262
    .line 263
    new-instance v2, Lb7/f;

    .line 264
    .line 265
    const/4 v3, 0x3

    .line 266
    invoke-direct {v2, v0, v3}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 270
    .line 271
    .line 272
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 273
    .line 274
    new-instance v2, Lb7/F;

    .line 275
    .line 276
    const/4 v3, 0x2

    .line 277
    invoke-direct {v2, v0, v3}, Lb7/F;-><init>(Ljava/lang/Object;I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :pswitch_1
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 288
    .line 289
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 293
    .line 294
    const-string v3, "99998"

    .line 295
    .line 296
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_2

    .line 301
    .line 302
    iput-object v3, v9, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 303
    .line 304
    const-string v1, "RECENT SEARCH"

    .line 305
    .line 306
    iput-object v1, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 307
    .line 308
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    iget-object v3, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v1, v15, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 315
    .line 316
    .line 317
    new-instance v1, Lb7/G;

    .line 318
    .line 319
    sget-object v3, Lpe/hf/black20/ChannelListActivity;->y0:Ljava/util/ArrayList;

    .line 320
    .line 321
    const/4 v5, 0x1

    .line 322
    invoke-direct {v1, v5, v9, v3}, Lb7/G;-><init>(ILpe/hf/black20/ChannelListActivity;Ljava/util/ArrayList;)V

    .line 323
    .line 324
    .line 325
    goto :goto_1

    .line 326
    :cond_2
    const/4 v5, 0x1

    .line 327
    new-instance v1, Lb7/G;

    .line 328
    .line 329
    iget-object v3, v9, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 330
    .line 331
    invoke-direct {v1, v5, v9, v3}, Lb7/G;-><init>(ILpe/hf/black20/ChannelListActivity;Ljava/util/ArrayList;)V

    .line 332
    .line 333
    .line 334
    :goto_1
    sget-object v3, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 335
    .line 336
    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 337
    .line 338
    .line 339
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {v1, v2, v4}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-nez v1, :cond_3

    .line 348
    .line 349
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->e0:Landroid/widget/FrameLayout;

    .line 350
    .line 351
    const/16 v2, 0x8

    .line 352
    .line 353
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 354
    .line 355
    .line 356
    :cond_3
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 357
    .line 358
    new-instance v2, Lb7/F;

    .line 359
    .line 360
    const/4 v3, 0x1

    .line 361
    invoke-direct {v2, v0, v3}, Lb7/F;-><init>(Ljava/lang/Object;I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 365
    .line 366
    .line 367
    return-void

    .line 368
    :pswitch_2
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 372
    .line 373
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 374
    .line 375
    .line 376
    new-instance v1, Lb7/t;

    .line 377
    .line 378
    iget-object v3, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 379
    .line 380
    invoke-direct {v1, v4, v9, v3}, Lb7/t;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    .line 381
    .line 382
    .line 383
    sget-object v3, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 384
    .line 385
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 386
    .line 387
    .line 388
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    const-string v3, "ORT_WHICH_CAT"

    .line 393
    .line 394
    const-string v8, "TV"

    .line 395
    .line 396
    invoke-virtual {v1, v3, v8}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    iget-object v4, v9, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 405
    .line 406
    const-string v0, "CATCHUP"

    .line 407
    .line 408
    move-object/from16 p1, v0

    .line 409
    .line 410
    const-string v0, "RADIO"

    .line 411
    .line 412
    if-eqz v1, :cond_8

    .line 413
    .line 414
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    move-object/from16 v16, v0

    .line 419
    .line 420
    const/4 v0, 0x0

    .line 421
    invoke-virtual {v1, v2, v0}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-eqz v1, :cond_4

    .line 426
    .line 427
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    const-string v1, "ORT_LAST_CATEGORY_ID"

    .line 432
    .line 433
    invoke-virtual {v0, v1, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    iput-object v0, v9, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 438
    .line 439
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    const-string v1, "ORT_LAST_CATEGORY_NAME"

    .line 444
    .line 445
    invoke-virtual {v0, v1, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    iput-object v0, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 450
    .line 451
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 456
    .line 457
    invoke-virtual {v0, v15, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 458
    .line 459
    .line 460
    iget-object v0, v9, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 461
    .line 462
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 463
    .line 464
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    .line 466
    .line 467
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    const/4 v1, 0x5

    .line 472
    invoke-virtual {v0, v1, v11}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 473
    .line 474
    .line 475
    new-instance v0, Landroid/content/Intent;

    .line 476
    .line 477
    const-class v1, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 478
    .line 479
    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 480
    .line 481
    .line 482
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    const-string v2, "ORT_LAST_STREAM_URL"

    .line 487
    .line 488
    invoke-virtual {v1, v2, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    const-string v2, "streamurl"

    .line 493
    .line 494
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    .line 496
    .line 497
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    const-string v2, "ORT_LAST_CHANNEL_NAME"

    .line 502
    .line 503
    invoke-virtual {v1, v2, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    const-string v2, "name"

    .line 508
    .line 509
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    .line 511
    .line 512
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    const-string v2, "ORT_LAST_STREAM_ID"

    .line 517
    .line 518
    invoke-virtual {v1, v2, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    const-string v2, "stream_id"

    .line 523
    .line 524
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    .line 526
    .line 527
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    const-string v2, "ORT_LAST_CHANNEL_POS"

    .line 532
    .line 533
    invoke-virtual {v1, v2, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    const-string v2, "position"

    .line 538
    .line 539
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 543
    .line 544
    .line 545
    :goto_2
    move-object/from16 v0, p1

    .line 546
    .line 547
    move-object/from16 v1, v16

    .line 548
    .line 549
    goto/16 :goto_5

    .line 550
    .line 551
    :cond_4
    iget-object v0, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 552
    .line 553
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    const/4 v1, 0x2

    .line 558
    if-le v0, v1, :cond_7

    .line 559
    .line 560
    iget-object v0, v9, Lpe/hf/black20/ChannelListActivity;->h0:Ljava/lang/String;

    .line 561
    .line 562
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    if-eqz v0, :cond_5

    .line 567
    .line 568
    iput-object v10, v9, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 569
    .line 570
    const v0, 0x7f1301cc

    .line 571
    .line 572
    .line 573
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    iput-object v1, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 578
    .line 579
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 584
    .line 585
    invoke-virtual {v0, v15, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 586
    .line 587
    .line 588
    iget-object v0, v9, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 589
    .line 590
    const v1, 0x7f1301cc

    .line 591
    .line 592
    .line 593
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    .line 599
    .line 600
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    const/4 v1, 0x0

    .line 605
    invoke-virtual {v0, v1, v11}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 606
    .line 607
    .line 608
    goto :goto_2

    .line 609
    :cond_5
    iget-object v0, v9, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 610
    .line 611
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    invoke-virtual {v1, v14, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    .line 620
    .line 621
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    .line 623
    .line 624
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 625
    .line 626
    .line 627
    move-result-object v5

    .line 628
    invoke-virtual {v5, v14, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v5

    .line 632
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    const-string v5, "_live"

    .line 636
    .line 637
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    invoke-virtual {v0, v1, v2}, Lc7/d;->v0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    if-eqz v0, :cond_6

    .line 653
    .line 654
    iput-object v10, v9, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 655
    .line 656
    const v0, 0x7f1301cc

    .line 657
    .line 658
    .line 659
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    iput-object v1, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 664
    .line 665
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 670
    .line 671
    invoke-virtual {v0, v15, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 672
    .line 673
    .line 674
    iget-object v0, v9, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 675
    .line 676
    const v1, 0x7f1301cc

    .line 677
    .line 678
    .line 679
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    .line 685
    .line 686
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    const/4 v1, 0x0

    .line 691
    invoke-virtual {v0, v1, v11}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 692
    .line 693
    .line 694
    goto/16 :goto_2

    .line 695
    .line 696
    :cond_6
    iget-object v0, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 697
    .line 698
    const/4 v1, 0x2

    .line 699
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    check-cast v0, Ljava/util/HashMap;

    .line 704
    .line 705
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    check-cast v0, Ljava/lang/String;

    .line 710
    .line 711
    iput-object v0, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 712
    .line 713
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 718
    .line 719
    invoke-virtual {v0, v15, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 720
    .line 721
    .line 722
    iget-object v0, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 723
    .line 724
    const/4 v1, 0x2

    .line 725
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    check-cast v0, Ljava/util/HashMap;

    .line 730
    .line 731
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    check-cast v0, Ljava/lang/String;

    .line 736
    .line 737
    iput-object v0, v9, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 738
    .line 739
    iget-object v0, v9, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 740
    .line 741
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 742
    .line 743
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    .line 745
    .line 746
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    const/4 v1, 0x2

    .line 751
    invoke-virtual {v0, v1, v11}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 752
    .line 753
    .line 754
    goto/16 :goto_2

    .line 755
    .line 756
    :cond_7
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-virtual {v0, v15, v8}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 761
    .line 762
    .line 763
    iget-object v0, v9, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 764
    .line 765
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    .line 767
    .line 768
    goto/16 :goto_2

    .line 769
    .line 770
    :cond_8
    move-object/from16 v16, v0

    .line 771
    .line 772
    move-object/from16 v0, p1

    .line 773
    .line 774
    invoke-static {v3, v8, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 775
    .line 776
    .line 777
    move-result v1

    .line 778
    if-nez v1, :cond_a

    .line 779
    .line 780
    move-object/from16 v1, v16

    .line 781
    .line 782
    invoke-static {v3, v8, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 783
    .line 784
    .line 785
    move-result v2

    .line 786
    if-eqz v2, :cond_9

    .line 787
    .line 788
    :goto_3
    const/4 v10, 0x0

    .line 789
    goto :goto_4

    .line 790
    :cond_9
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 791
    .line 792
    const/4 v5, 0x0

    .line 793
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v2

    .line 797
    check-cast v2, Ljava/util/HashMap;

    .line 798
    .line 799
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v2

    .line 803
    check-cast v2, Ljava/lang/String;

    .line 804
    .line 805
    iput-object v2, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 806
    .line 807
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 808
    .line 809
    .line 810
    move-result-object v2

    .line 811
    iget-object v5, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 812
    .line 813
    invoke-virtual {v2, v15, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 814
    .line 815
    .line 816
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 817
    .line 818
    const/4 v5, 0x0

    .line 819
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v2

    .line 823
    check-cast v2, Ljava/util/HashMap;

    .line 824
    .line 825
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object v2

    .line 829
    check-cast v2, Ljava/lang/String;

    .line 830
    .line 831
    iput-object v2, v9, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 832
    .line 833
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 834
    .line 835
    iget-object v5, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 836
    .line 837
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    .line 839
    .line 840
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 841
    .line 842
    .line 843
    move-result-object v2

    .line 844
    const/4 v10, 0x0

    .line 845
    invoke-virtual {v2, v10, v11}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 846
    .line 847
    .line 848
    goto :goto_5

    .line 849
    :cond_a
    move-object/from16 v1, v16

    .line 850
    .line 851
    goto :goto_3

    .line 852
    :goto_4
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 853
    .line 854
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 855
    .line 856
    .line 857
    move-result v2

    .line 858
    if-lez v2, :cond_b

    .line 859
    .line 860
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 861
    .line 862
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v2

    .line 866
    check-cast v2, Ljava/util/HashMap;

    .line 867
    .line 868
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v2

    .line 872
    check-cast v2, Ljava/lang/String;

    .line 873
    .line 874
    iput-object v2, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 875
    .line 876
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 877
    .line 878
    .line 879
    move-result-object v2

    .line 880
    iget-object v5, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 881
    .line 882
    invoke-virtual {v2, v15, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 883
    .line 884
    .line 885
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 886
    .line 887
    const/4 v5, 0x0

    .line 888
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    check-cast v2, Ljava/util/HashMap;

    .line 893
    .line 894
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v2

    .line 898
    check-cast v2, Ljava/lang/String;

    .line 899
    .line 900
    iput-object v2, v9, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 901
    .line 902
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 903
    .line 904
    iget-object v5, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 905
    .line 906
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    .line 908
    .line 909
    goto :goto_5

    .line 910
    :cond_b
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 911
    .line 912
    .line 913
    move-result-object v2

    .line 914
    invoke-virtual {v2, v15, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 915
    .line 916
    .line 917
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 918
    .line 919
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    .line 921
    .line 922
    :goto_5
    sget-object v2, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 923
    .line 924
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 925
    .line 926
    .line 927
    new-instance v2, Lb7/D;

    .line 928
    .line 929
    const/4 v5, 0x6

    .line 930
    invoke-direct {v2, v9, v5}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    .line 931
    .line 932
    .line 933
    const/4 v5, 0x0

    .line 934
    new-array v6, v5, [Ljava/lang/Void;

    .line 935
    .line 936
    invoke-virtual {v2, v6}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 937
    .line 938
    .line 939
    sget-object v2, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 940
    .line 941
    new-instance v6, Lb7/f;

    .line 942
    .line 943
    const/4 v7, 0x2

    .line 944
    move-object v10, v0

    .line 945
    move-object/from16 v0, p0

    .line 946
    .line 947
    invoke-direct {v6, v0, v7}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v2, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 951
    .line 952
    .line 953
    sget-object v2, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 954
    .line 955
    new-instance v6, Lb7/F;

    .line 956
    .line 957
    invoke-direct {v6, v0, v5}, Lb7/F;-><init>(Ljava/lang/Object;I)V

    .line 958
    .line 959
    .line 960
    invoke-virtual {v2, v6}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 961
    .line 962
    .line 963
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 964
    .line 965
    .line 966
    move-result-object v2

    .line 967
    invoke-virtual {v2, v3, v8}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v2

    .line 971
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 972
    .line 973
    .line 974
    move-result v2

    .line 975
    if-nez v2, :cond_c

    .line 976
    .line 977
    const-string v2, "FAV"

    .line 978
    .line 979
    invoke-static {v3, v8, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 980
    .line 981
    .line 982
    move-result v2

    .line 983
    if-nez v2, :cond_c

    .line 984
    .line 985
    invoke-static {v3, v8, v10}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 986
    .line 987
    .line 988
    move-result v2

    .line 989
    if-nez v2, :cond_c

    .line 990
    .line 991
    invoke-static {v3, v8, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 992
    .line 993
    .line 994
    move-result v1

    .line 995
    if-eqz v1, :cond_d

    .line 996
    .line 997
    :cond_c
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->H:Landroid/content/SharedPreferences;

    .line 998
    .line 999
    const-string v2, "tv_arraylist_search"

    .line 1000
    .line 1001
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v1

    .line 1005
    if-eqz v1, :cond_d

    .line 1006
    .line 1007
    invoke-static {v4}, Lpe/hf/black20/util/Methods;->L(Landroid/app/Activity;)Ljava/util/ArrayList;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v1

    .line 1011
    sput-object v1, Lpe/hf/black20/ChannelListActivity;->y0:Ljava/util/ArrayList;

    .line 1012
    .line 1013
    :cond_d
    return-void

    .line 1014
    :pswitch_3
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1015
    .line 1016
    .line 1017
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 1018
    .line 1019
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    .line 1021
    .line 1022
    new-instance v1, Lb7/G;

    .line 1023
    .line 1024
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 1025
    .line 1026
    const/4 v3, 0x2

    .line 1027
    invoke-direct {v1, v3, v9, v2}, Lb7/G;-><init>(ILpe/hf/black20/ChannelListActivity;Ljava/util/ArrayList;)V

    .line 1028
    .line 1029
    .line 1030
    sget-object v2, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 1031
    .line 1032
    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1033
    .line 1034
    .line 1035
    return-void

    .line 1036
    :pswitch_4
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1037
    .line 1038
    .line 1039
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 1040
    .line 1041
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    .line 1043
    .line 1044
    new-instance v1, Lb7/t;

    .line 1045
    .line 1046
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 1047
    .line 1048
    const/4 v3, 0x0

    .line 1049
    invoke-direct {v1, v3, v9, v2}, Lb7/t;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    .line 1050
    .line 1051
    .line 1052
    sget-object v2, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 1053
    .line 1054
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1055
    .line 1056
    .line 1057
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 1058
    .line 1059
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v2

    .line 1063
    invoke-virtual {v2, v14, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v2

    .line 1067
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1068
    .line 1069
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1070
    .line 1071
    .line 1072
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v4

    .line 1076
    invoke-virtual {v4, v14, v13}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v4

    .line 1080
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    const-string v4, "_series"

    .line 1084
    .line 1085
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v3

    .line 1092
    invoke-virtual {v1, v2, v3}, Lc7/d;->v0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v1

    .line 1096
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1097
    .line 1098
    .line 1099
    move-result v1

    .line 1100
    if-eqz v1, :cond_e

    .line 1101
    .line 1102
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 1103
    .line 1104
    const/4 v2, 0x0

    .line 1105
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1106
    .line 1107
    .line 1108
    iput-object v10, v9, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 1109
    .line 1110
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 1111
    .line 1112
    const v2, 0x7f1301cc

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v3

    .line 1119
    iput-object v3, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 1120
    .line 1121
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v2

    .line 1125
    iget-object v3, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 1126
    .line 1127
    invoke-virtual {v2, v15, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 1128
    .line 1129
    .line 1130
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 1131
    .line 1132
    const v3, 0x7f1301cc

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v1

    .line 1139
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    .line 1141
    .line 1142
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v1

    .line 1146
    const/4 v2, 0x0

    .line 1147
    invoke-virtual {v1, v2, v11}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 1148
    .line 1149
    .line 1150
    goto :goto_6

    .line 1151
    :cond_e
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 1152
    .line 1153
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1154
    .line 1155
    .line 1156
    move-result v1

    .line 1157
    const/4 v2, 0x1

    .line 1158
    if-le v1, v2, :cond_f

    .line 1159
    .line 1160
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 1161
    .line 1162
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1163
    .line 1164
    .line 1165
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v1

    .line 1169
    invoke-virtual {v1, v2, v11}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 1170
    .line 1171
    .line 1172
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 1173
    .line 1174
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v1

    .line 1178
    check-cast v1, Ljava/util/HashMap;

    .line 1179
    .line 1180
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v1

    .line 1184
    check-cast v1, Ljava/lang/String;

    .line 1185
    .line 1186
    iput-object v1, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 1187
    .line 1188
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v1

    .line 1192
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 1193
    .line 1194
    invoke-virtual {v1, v15, v2}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 1195
    .line 1196
    .line 1197
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 1198
    .line 1199
    const/4 v2, 0x1

    .line 1200
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v1

    .line 1204
    check-cast v1, Ljava/util/HashMap;

    .line 1205
    .line 1206
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v1

    .line 1210
    check-cast v1, Ljava/lang/String;

    .line 1211
    .line 1212
    iput-object v1, v9, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 1213
    .line 1214
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 1215
    .line 1216
    iget-object v2, v9, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 1217
    .line 1218
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    .line 1220
    .line 1221
    goto :goto_6

    .line 1222
    :cond_f
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 1223
    .line 1224
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    .line 1226
    .line 1227
    :goto_6
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 1228
    .line 1229
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1230
    .line 1231
    .line 1232
    invoke-static {v9}, Lpe/hf/black20/ChannelListActivity;->b(Lpe/hf/black20/ChannelListActivity;)V

    .line 1233
    .line 1234
    .line 1235
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 1236
    .line 1237
    new-instance v2, Lb7/f;

    .line 1238
    .line 1239
    const/4 v3, 0x1

    .line 1240
    invoke-direct {v2, v0, v3}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1244
    .line 1245
    .line 1246
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 1247
    .line 1248
    new-instance v2, Lb7/E;

    .line 1249
    .line 1250
    const/4 v4, 0x0

    .line 1251
    invoke-direct {v2, v0, v4}, Lb7/E;-><init>(Lb7/D;I)V

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1255
    .line 1256
    .line 1257
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 1258
    .line 1259
    new-instance v2, Lb7/E;

    .line 1260
    .line 1261
    invoke-direct {v2, v0, v3}, Lb7/E;-><init>(Lb7/D;I)V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1265
    .line 1266
    .line 1267
    return-void

    .line 1268
    :pswitch_5
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1269
    .line 1270
    .line 1271
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 1272
    .line 1273
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    .line 1275
    .line 1276
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 1277
    .line 1278
    invoke-virtual {v1}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 1279
    .line 1280
    .line 1281
    return-void

    .line 1282
    :pswitch_6
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1283
    .line 1284
    .line 1285
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 1286
    .line 1287
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1288
    .line 1289
    .line 1290
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 1291
    .line 1292
    invoke-virtual {v1}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 1293
    .line 1294
    .line 1295
    return-void

    .line 1296
    :pswitch_7
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1297
    .line 1298
    .line 1299
    iget-object v1, v9, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 1300
    .line 1301
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1302
    .line 1303
    .line 1304
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 1305
    .line 1306
    invoke-virtual {v1}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 1307
    .line 1308
    .line 1309
    return-void

    .line 1310
    nop

    .line 1311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lb7/D;->a:I

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
    invoke-virtual {p0, p1}, Lb7/D;->a([Ljava/lang/Void;)V

    .line 10
    .line 11
    .line 12
    return-object v1

    .line 13
    :pswitch_0
    check-cast p1, [Ljava/lang/Void;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lb7/D;->a([Ljava/lang/Void;)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :pswitch_1
    check-cast p1, [Ljava/lang/Void;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lb7/D;->a([Ljava/lang/Void;)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :pswitch_2
    check-cast p1, [Ljava/lang/Void;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lb7/D;->a([Ljava/lang/Void;)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :pswitch_3
    check-cast p1, [Ljava/lang/Void;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lb7/D;->a([Ljava/lang/Void;)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_4
    check-cast p1, [Ljava/lang/Void;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lb7/D;->a([Ljava/lang/Void;)V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :pswitch_5
    check-cast p1, [Ljava/lang/Void;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lb7/D;->a([Ljava/lang/Void;)V

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :pswitch_6
    check-cast p1, [Ljava/lang/Void;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lb7/D;->a([Ljava/lang/Void;)V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :pswitch_7
    check-cast p1, [Ljava/lang/Void;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lb7/D;->a([Ljava/lang/Void;)V

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCancelled()V
    .locals 3

    .line 1
    iget v0, p0, Lb7/D;->a:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    iget-object v2, p0, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_1
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_2
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_3
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_4
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lb7/D;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Void;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lb7/D;->c(Ljava/lang/Void;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lb7/D;->c(Ljava/lang/Void;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast p1, Ljava/lang/Void;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lb7/D;->c(Ljava/lang/Void;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    check-cast p1, Ljava/lang/Void;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lb7/D;->c(Ljava/lang/Void;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    check-cast p1, Ljava/lang/Void;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lb7/D;->c(Ljava/lang/Void;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_4
    check-cast p1, Ljava/lang/Void;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lb7/D;->c(Ljava/lang/Void;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_5
    check-cast p1, Ljava/lang/Void;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lb7/D;->c(Ljava/lang/Void;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_6
    check-cast p1, Ljava/lang/Void;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lb7/D;->c(Ljava/lang/Void;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_7
    check-cast p1, Ljava/lang/Void;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lb7/D;->c(Ljava/lang/Void;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreExecute()V
    .locals 3

    .line 1
    iget v0, p0, Lb7/D;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

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
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, v2, Lpe/hf/black20/ChannelListActivity;->g0:Ljava/lang/String;

    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 31
    .line 32
    .line 33
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 40
    .line 41
    .line 42
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, v2, Lpe/hf/black20/ChannelListActivity;->g0:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->f0:Ljava/lang/String;

    .line 60
    .line 61
    const-string v1, "yes"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    const-string v0, "RECENT SEARCH"

    .line 70
    .line 71
    iput-object v0, v2, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 72
    .line 73
    const-string v0, "99998"

    .line 74
    .line 75
    iput-object v0, v2, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v1, "ORT_SELECTED_POS"

    .line 82
    .line 83
    const/4 v2, 0x1

    .line 84
    invoke-virtual {v0, v2, v1}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 85
    .line 86
    .line 87
    :cond_0
    return-void

    .line 88
    :pswitch_2
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 89
    .line 90
    .line 91
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_3
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 98
    .line 99
    .line 100
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, v2, Lpe/hf/black20/ChannelListActivity;->g0:Ljava/lang/String;

    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_4
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 119
    .line 120
    .line 121
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :pswitch_5
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 128
    .line 129
    .line 130
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :pswitch_6
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 137
    .line 138
    .line 139
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :pswitch_7
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 146
    .line 147
    .line 148
    iget-object v0, v2, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
