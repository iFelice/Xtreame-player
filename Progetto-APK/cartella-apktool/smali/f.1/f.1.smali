.class public final Lf/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lf/f;->G:I

    .line 5
    .line 6
    iput-object p2, p0, Lf/f;->I:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lf/f;->H:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget v3, v0, Lf/f;->G:I

    .line 8
    .line 9
    const-string v4, "FAV"

    .line 10
    .line 11
    const-string v6, "TV"

    .line 12
    .line 13
    const-string v7, "ORT_WHICH_CAT"

    .line 14
    .line 15
    const-string v8, "all"

    .line 16
    .line 17
    const/4 v9, 0x1

    .line 18
    const-string v10, "fav"

    .line 19
    .line 20
    const/4 v11, 0x0

    .line 21
    const-string v12, "id"

    .line 22
    .line 23
    const/16 v13, 0x8

    .line 24
    .line 25
    iget-object v14, v0, Lf/f;->H:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v15, v0, Lf/f;->I:Ljava/lang/Object;

    .line 28
    .line 29
    packed-switch v3, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    check-cast v15, Lb7/S0;

    .line 33
    .line 34
    iget-object v3, v15, Lb7/S0;->E0:Lc7/d;

    .line 35
    .line 36
    check-cast v14, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Lc7/d;->h0(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v15}, Lb7/S0;->S(Lb7/S0;)V

    .line 54
    .line 55
    .line 56
    iput-boolean v11, v15, Lb7/S0;->j1:Z

    .line 57
    .line 58
    invoke-virtual {v15, v1, v9}, Lb7/S0;->Z(Landroid/view/View;Z)V

    .line 59
    .line 60
    .line 61
    iput-object v10, v15, Lb7/S0;->e1:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v15, v8}, Lb7/S0;->W(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v15, Lb7/S0;->v1:Landroid/widget/FrameLayout;

    .line 67
    .line 68
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_0
    const-string v3, "ORT_PROFILE_USERNAME"

    .line 73
    .line 74
    const-string v8, ""

    .line 75
    .line 76
    invoke-static {v3, v8}, Lcom/google/protobuf/U2;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const-string v12, "ORT_PROFILE_PASSWORD"

    .line 81
    .line 82
    invoke-static {v12, v8}, Lcom/google/protobuf/U2;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const-string v9, "ORT_remoteLongPressORPlayerTVFragment"

    .line 91
    .line 92
    invoke-virtual {v5, v9, v11}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    const-string v9, "name"

    .line 97
    .line 98
    const-string v11, "stream_id"

    .line 99
    .line 100
    if-eqz v5, :cond_1

    .line 101
    .line 102
    const v3, 0x7f0b0292

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v15, Lb7/M0;

    .line 110
    .line 111
    iget-object v3, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Landroid/widget/ImageView;

    .line 128
    .line 129
    iget-object v3, v15, Lb7/M0;->I0:Lc7/d;

    .line 130
    .line 131
    iget-object v4, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Ljava/util/HashMap;

    .line 138
    .line 139
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    check-cast v4, Ljava/lang/String;

    .line 144
    .line 145
    iget-object v5, v15, Lb7/M0;->J0:Lh7/i;

    .line 146
    .line 147
    iget-object v5, v5, Lh7/i;->a:Ljava/lang/String;

    .line 148
    .line 149
    const-string v6, "_live"

    .line 150
    .line 151
    invoke-virtual {v3, v4, v5, v6}, Lc7/d;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const-string v4, "yes"

    .line 156
    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    const-string v4, "ORT_PROFILE_ID"

    .line 162
    .line 163
    if-eqz v3, :cond_0

    .line 164
    .line 165
    iget-object v3, v15, Lb7/M0;->I0:Lc7/d;

    .line 166
    .line 167
    iget-object v5, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    check-cast v5, Ljava/util/HashMap;

    .line 174
    .line 175
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    check-cast v5, Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v7, v4, v8}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v3, v5, v4, v6}, Lc7/d;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v15}, LY/s;->l()Landroid/content/Context;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    iget-object v4, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    check-cast v2, Ljava/util/HashMap;

    .line 211
    .line 212
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    check-cast v2, Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v2, " - has been removed from Favorites"

    .line 222
    .line 223
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    const/4 v3, 0x1

    .line 231
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_3

    .line 239
    .line 240
    :cond_0
    iget-object v3, v15, Lb7/M0;->I0:Lc7/d;

    .line 241
    .line 242
    iget-object v5, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    check-cast v5, Ljava/util/HashMap;

    .line 249
    .line 250
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    check-cast v5, Ljava/lang/String;

    .line 255
    .line 256
    new-instance v7, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    invoke-virtual {v10, v4, v8}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-virtual {v3, v5, v4}, Lc7/d;->f0(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    const/4 v3, 0x0

    .line 283
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v15}, LY/s;->l()Landroid/content/Context;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    iget-object v4, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    check-cast v2, Ljava/util/HashMap;

    .line 302
    .line 303
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    check-cast v2, Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v2, " - has been added to Favorites"

    .line 313
    .line 314
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    const/4 v3, 0x1

    .line 322
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_3

    .line 330
    .line 331
    :cond_1
    check-cast v15, Lb7/M0;

    .line 332
    .line 333
    iput v2, v15, Lb7/M0;->S0:I

    .line 334
    .line 335
    check-cast v14, Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-eqz v1, :cond_2

    .line 342
    .line 343
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v15}, LY/s;->l()Landroid/content/Context;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    const v10, 0x7f1301cc

    .line 352
    .line 353
    .line 354
    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    const-string v10, "ORT_CAT_NAME"

    .line 359
    .line 360
    invoke-virtual {v1, v10, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 361
    .line 362
    .line 363
    :cond_2
    invoke-static {v7, v6, v6}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    const-string v5, "position"

    .line 368
    .line 369
    const-class v10, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 370
    .line 371
    const-string v13, "streamFormat"

    .line 372
    .line 373
    const-string v14, "."

    .line 374
    .line 375
    const-string v0, "/live/"

    .line 376
    .line 377
    move-object/from16 p4, v4

    .line 378
    .line 379
    const-string v4, "ORT_PROFILE_SERVER"

    .line 380
    .line 381
    move-object/from16 v16, v6

    .line 382
    .line 383
    const-string v6, "streamurl"

    .line 384
    .line 385
    move-object/from16 v17, v7

    .line 386
    .line 387
    const-string v7, "/"

    .line 388
    .line 389
    move-object/from16 p2, v5

    .line 390
    .line 391
    const-string v5, "direct_source"

    .line 392
    .line 393
    if-eqz v1, :cond_4

    .line 394
    .line 395
    new-instance v1, Landroid/content/Intent;

    .line 396
    .line 397
    move-object/from16 p4, v9

    .line 398
    .line 399
    invoke-virtual {v15}, LY/s;->l()Landroid/content/Context;

    .line 400
    .line 401
    .line 402
    move-result-object v9

    .line 403
    invoke-direct {v1, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    .line 405
    .line 406
    iget-object v9, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 407
    .line 408
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v9

    .line 412
    check-cast v9, Ljava/util/HashMap;

    .line 413
    .line 414
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v9

    .line 418
    check-cast v9, Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v9

    .line 424
    if-eqz v9, :cond_3

    .line 425
    .line 426
    new-instance v5, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 432
    .line 433
    .line 434
    move-result-object v9

    .line 435
    invoke-virtual {v9, v4, v8}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v4

    .line 439
    invoke-static {v4}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-static {v5, v7, v12, v7}, Lcom/google/protobuf/U2;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-static {v0}, Lcom/google/protobuf/U2;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    iget-object v3, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 461
    .line 462
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    check-cast v3, Ljava/util/HashMap;

    .line 467
    .line 468
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    check-cast v3, Ljava/lang/String;

    .line 473
    .line 474
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    iget-object v3, v15, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 481
    .line 482
    const/4 v4, 0x0

    .line 483
    invoke-static {v3, v13, v4, v0}, Lcom/google/protobuf/U2;->h(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    .line 489
    .line 490
    goto :goto_0

    .line 491
    :cond_3
    iget-object v0, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 492
    .line 493
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    check-cast v0, Ljava/util/HashMap;

    .line 498
    .line 499
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    check-cast v0, Ljava/lang/String;

    .line 504
    .line 505
    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    .line 507
    .line 508
    :goto_0
    iget-object v0, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 509
    .line 510
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    check-cast v0, Ljava/util/HashMap;

    .line 515
    .line 516
    move-object/from16 v9, p4

    .line 517
    .line 518
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    check-cast v0, Ljava/lang/String;

    .line 523
    .line 524
    invoke-virtual {v1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    .line 526
    .line 527
    iget-object v0, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 528
    .line 529
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    check-cast v0, Ljava/util/HashMap;

    .line 534
    .line 535
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    check-cast v0, Ljava/lang/String;

    .line 540
    .line 541
    invoke-virtual {v1, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    .line 543
    .line 544
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    move-object/from16 v2, p2

    .line 549
    .line 550
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v15}, LY/s;->l()Landroid/content/Context;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_3

    .line 561
    .line 562
    :cond_4
    move-object/from16 v18, p2

    .line 563
    .line 564
    move-object/from16 v1, p4

    .line 565
    .line 566
    move-object/from16 p2, v6

    .line 567
    .line 568
    move-object/from16 p4, v9

    .line 569
    .line 570
    move-object/from16 v9, v16

    .line 571
    .line 572
    move-object/from16 v6, v17

    .line 573
    .line 574
    invoke-static {v6, v9, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 575
    .line 576
    .line 577
    move-result v1

    .line 578
    if-eqz v1, :cond_6

    .line 579
    .line 580
    new-instance v1, Lorg/json/JSONArray;

    .line 581
    .line 582
    iget-object v6, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 583
    .line 584
    invoke-direct {v1, v6}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 585
    .line 586
    .line 587
    new-instance v1, Landroid/content/Intent;

    .line 588
    .line 589
    invoke-virtual {v15}, LY/s;->l()Landroid/content/Context;

    .line 590
    .line 591
    .line 592
    move-result-object v6

    .line 593
    invoke-direct {v1, v6, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 594
    .line 595
    .line 596
    iget-object v6, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 597
    .line 598
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v6

    .line 602
    check-cast v6, Ljava/util/HashMap;

    .line 603
    .line 604
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v6

    .line 608
    check-cast v6, Ljava/lang/String;

    .line 609
    .line 610
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-result v6

    .line 614
    if-eqz v6, :cond_5

    .line 615
    .line 616
    new-instance v5, Ljava/lang/StringBuilder;

    .line 617
    .line 618
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    .line 620
    .line 621
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 622
    .line 623
    .line 624
    move-result-object v6

    .line 625
    invoke-virtual {v6, v4, v8}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    invoke-static {v4}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-static {v5, v7, v12, v7}, Lcom/google/protobuf/U2;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    invoke-static {v0}, Lcom/google/protobuf/U2;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    iget-object v3, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 651
    .line 652
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    check-cast v3, Ljava/util/HashMap;

    .line 657
    .line 658
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    check-cast v3, Ljava/lang/String;

    .line 663
    .line 664
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    iget-object v3, v15, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 671
    .line 672
    const/4 v4, 0x0

    .line 673
    invoke-static {v3, v13, v4, v0}, Lcom/google/protobuf/U2;->h(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    move-object/from16 v3, p2

    .line 678
    .line 679
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    .line 681
    .line 682
    goto :goto_1

    .line 683
    :cond_5
    move-object/from16 v3, p2

    .line 684
    .line 685
    iget-object v0, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 686
    .line 687
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    check-cast v0, Ljava/util/HashMap;

    .line 692
    .line 693
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    check-cast v0, Ljava/lang/String;

    .line 698
    .line 699
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    .line 701
    .line 702
    :goto_1
    iget-object v0, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 703
    .line 704
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    check-cast v0, Ljava/util/HashMap;

    .line 709
    .line 710
    move-object/from16 v10, p4

    .line 711
    .line 712
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    check-cast v0, Ljava/lang/String;

    .line 717
    .line 718
    invoke-virtual {v1, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    .line 720
    .line 721
    iget-object v0, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 722
    .line 723
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    check-cast v0, Ljava/util/HashMap;

    .line 728
    .line 729
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    check-cast v0, Ljava/lang/String;

    .line 734
    .line 735
    invoke-virtual {v1, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    .line 737
    .line 738
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    move-object/from16 v2, v18

    .line 743
    .line 744
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v15}, LY/s;->l()Landroid/content/Context;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 752
    .line 753
    .line 754
    goto/16 :goto_3

    .line 755
    .line 756
    :cond_6
    move-object/from16 v10, p4

    .line 757
    .line 758
    const-string v1, "CATCHUP"

    .line 759
    .line 760
    invoke-static {v6, v9, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 761
    .line 762
    .line 763
    move-result v1

    .line 764
    move-object/from16 p2, v13

    .line 765
    .line 766
    const-string v13, "stream_icon"

    .line 767
    .line 768
    if-eqz v1, :cond_7

    .line 769
    .line 770
    new-instance v0, Landroid/content/Intent;

    .line 771
    .line 772
    invoke-virtual {v15}, LY/s;->l()Landroid/content/Context;

    .line 773
    .line 774
    .line 775
    move-result-object v1

    .line 776
    const-class v3, Lpe/hf/black20/CatchupActivity;

    .line 777
    .line 778
    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 779
    .line 780
    .line 781
    iget-object v1, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 782
    .line 783
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v1

    .line 787
    check-cast v1, Ljava/util/HashMap;

    .line 788
    .line 789
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v1

    .line 793
    check-cast v1, Ljava/lang/String;

    .line 794
    .line 795
    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 796
    .line 797
    .line 798
    iget-object v1, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 799
    .line 800
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    move-result-object v1

    .line 804
    check-cast v1, Ljava/util/HashMap;

    .line 805
    .line 806
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    check-cast v1, Ljava/lang/String;

    .line 811
    .line 812
    invoke-virtual {v0, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    .line 814
    .line 815
    iget-object v1, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 816
    .line 817
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    check-cast v1, Ljava/util/HashMap;

    .line 822
    .line 823
    const-string v3, "tv_archive_duration"

    .line 824
    .line 825
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object v1

    .line 829
    check-cast v1, Ljava/lang/String;

    .line 830
    .line 831
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    .line 833
    .line 834
    iget-object v1, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 835
    .line 836
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    check-cast v1, Ljava/util/HashMap;

    .line 841
    .line 842
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v1

    .line 846
    check-cast v1, Ljava/lang/String;

    .line 847
    .line 848
    const-string v2, "icon"

    .line 849
    .line 850
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    .line 852
    .line 853
    invoke-virtual {v15}, LY/s;->l()Landroid/content/Context;

    .line 854
    .line 855
    .line 856
    move-result-object v1

    .line 857
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 858
    .line 859
    .line 860
    goto/16 :goto_3

    .line 861
    .line 862
    :cond_7
    const-string v1, "RADIO"

    .line 863
    .line 864
    invoke-static {v6, v9, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 865
    .line 866
    .line 867
    move-result v1

    .line 868
    if-eqz v1, :cond_9

    .line 869
    .line 870
    new-instance v1, Landroid/content/Intent;

    .line 871
    .line 872
    invoke-virtual {v15}, LY/s;->l()Landroid/content/Context;

    .line 873
    .line 874
    .line 875
    move-result-object v6

    .line 876
    const-class v9, Lpe/hf/black20/RadioPlayerActivity;

    .line 877
    .line 878
    invoke-direct {v1, v6, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 879
    .line 880
    .line 881
    iget-object v6, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 882
    .line 883
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v6

    .line 887
    check-cast v6, Ljava/util/HashMap;

    .line 888
    .line 889
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object v6

    .line 893
    check-cast v6, Ljava/lang/String;

    .line 894
    .line 895
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 896
    .line 897
    .line 898
    move-result v6

    .line 899
    const-string v9, "stream"

    .line 900
    .line 901
    if-eqz v6, :cond_8

    .line 902
    .line 903
    new-instance v5, Ljava/lang/StringBuilder;

    .line 904
    .line 905
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 906
    .line 907
    .line 908
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 909
    .line 910
    .line 911
    move-result-object v6

    .line 912
    invoke-virtual {v6, v4, v8}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v4

    .line 916
    invoke-static {v4}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v4

    .line 920
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    .line 928
    .line 929
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    .line 931
    .line 932
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    .line 934
    .line 935
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    iget-object v0, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 939
    .line 940
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    check-cast v0, Ljava/util/HashMap;

    .line 945
    .line 946
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    check-cast v0, Ljava/lang/String;

    .line 951
    .line 952
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    .line 954
    .line 955
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    iget-object v0, v15, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 959
    .line 960
    move-object/from16 v4, p2

    .line 961
    .line 962
    const/4 v3, 0x0

    .line 963
    invoke-static {v0, v4, v3, v5}, Lcom/google/protobuf/U2;->h(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    invoke-virtual {v1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 968
    .line 969
    .line 970
    goto :goto_2

    .line 971
    :cond_8
    iget-object v0, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 972
    .line 973
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    check-cast v0, Ljava/util/HashMap;

    .line 978
    .line 979
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    check-cast v0, Ljava/lang/String;

    .line 984
    .line 985
    invoke-virtual {v1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    .line 987
    .line 988
    :goto_2
    iget-object v0, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 989
    .line 990
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    check-cast v0, Ljava/util/HashMap;

    .line 995
    .line 996
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-result-object v0

    .line 1000
    check-cast v0, Ljava/lang/String;

    .line 1001
    .line 1002
    const-string v3, "radioname"

    .line 1003
    .line 1004
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    .line 1006
    .line 1007
    iget-object v0, v15, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 1008
    .line 1009
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    check-cast v0, Ljava/util/HashMap;

    .line 1014
    .line 1015
    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    check-cast v0, Ljava/lang/String;

    .line 1020
    .line 1021
    invoke-virtual {v1, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v15}, LY/s;->l()Landroid/content/Context;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1029
    .line 1030
    .line 1031
    :cond_9
    :goto_3
    return-void

    .line 1032
    :pswitch_1
    check-cast v15, Lb7/M0;

    .line 1033
    .line 1034
    iget-object v0, v15, Lb7/M0;->I0:Lc7/d;

    .line 1035
    .line 1036
    check-cast v14, Ljava/util/ArrayList;

    .line 1037
    .line 1038
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v1

    .line 1042
    check-cast v1, Ljava/util/HashMap;

    .line 1043
    .line 1044
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v1

    .line 1048
    check-cast v1, Ljava/lang/String;

    .line 1049
    .line 1050
    invoke-virtual {v0, v1}, Lc7/d;->h0(Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    invoke-static {v15}, Lb7/M0;->S(Lb7/M0;)V

    .line 1054
    .line 1055
    .line 1056
    iget-object v0, v15, Lb7/M0;->Q0:Landroid/widget/EditText;

    .line 1057
    .line 1058
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v0

    .line 1062
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v0

    .line 1066
    invoke-virtual {v15, v10, v0}, Lb7/M0;->U(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    .line 1068
    .line 1069
    iget-object v0, v15, Lb7/M0;->a1:Landroid/widget/FrameLayout;

    .line 1070
    .line 1071
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1072
    .line 1073
    .line 1074
    iget-object v0, v15, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 1075
    .line 1076
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1077
    .line 1078
    .line 1079
    return-void

    .line 1080
    :pswitch_2
    check-cast v15, Lb7/I0;

    .line 1081
    .line 1082
    iget-object v0, v15, Lb7/I0;->E0:Lc7/d;

    .line 1083
    .line 1084
    check-cast v14, Ljava/util/ArrayList;

    .line 1085
    .line 1086
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v1

    .line 1090
    check-cast v1, Ljava/util/HashMap;

    .line 1091
    .line 1092
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v1

    .line 1096
    check-cast v1, Ljava/lang/String;

    .line 1097
    .line 1098
    invoke-virtual {v0, v1}, Lc7/d;->h0(Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    invoke-static {v15}, Lb7/I0;->S(Lb7/I0;)V

    .line 1102
    .line 1103
    .line 1104
    const/4 v0, 0x0

    .line 1105
    iput-boolean v0, v15, Lb7/I0;->o1:Z

    .line 1106
    .line 1107
    iput-object v10, v15, Lb7/I0;->p1:Ljava/lang/String;

    .line 1108
    .line 1109
    invoke-virtual {v15, v8}, Lb7/I0;->U(Ljava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    iget-object v0, v15, Lb7/I0;->w1:Landroid/widget/FrameLayout;

    .line 1113
    .line 1114
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    .line 1116
    .line 1117
    return-void

    .line 1118
    :pswitch_3
    move-object v1, v4

    .line 1119
    move-object v9, v6

    .line 1120
    move-object v6, v7

    .line 1121
    check-cast v15, Lpe/hf/black20/ChannelListActivity;

    .line 1122
    .line 1123
    iget-object v0, v15, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 1124
    .line 1125
    check-cast v14, Ljava/util/ArrayList;

    .line 1126
    .line 1127
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v2

    .line 1131
    check-cast v2, Ljava/util/HashMap;

    .line 1132
    .line 1133
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v2

    .line 1137
    check-cast v2, Ljava/lang/String;

    .line 1138
    .line 1139
    invoke-virtual {v0, v2}, Lc7/d;->h0(Ljava/lang/String;)V

    .line 1140
    .line 1141
    .line 1142
    invoke-static {v15}, Lpe/hf/black20/ChannelListActivity;->a(Lpe/hf/black20/ChannelListActivity;)V

    .line 1143
    .line 1144
    .line 1145
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v0

    .line 1149
    invoke-virtual {v0, v6, v9}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v0

    .line 1153
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1154
    .line 1155
    .line 1156
    move-result v0

    .line 1157
    if-nez v0, :cond_a

    .line 1158
    .line 1159
    invoke-static {v6, v9, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1160
    .line 1161
    .line 1162
    move-result v0

    .line 1163
    if-eqz v0, :cond_b

    .line 1164
    .line 1165
    :cond_a
    const/4 v2, 0x0

    .line 1166
    goto :goto_4

    .line 1167
    :cond_b
    const-string v0, "VOD"

    .line 1168
    .line 1169
    invoke-static {v6, v9, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1170
    .line 1171
    .line 1172
    move-result v0

    .line 1173
    if-eqz v0, :cond_c

    .line 1174
    .line 1175
    new-instance v0, Lb7/D;

    .line 1176
    .line 1177
    const/4 v1, 0x0

    .line 1178
    invoke-direct {v0, v15, v1}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;Lb7/A;)V

    .line 1179
    .line 1180
    .line 1181
    const/4 v2, 0x0

    .line 1182
    new-array v1, v2, [Ljava/lang/Void;

    .line 1183
    .line 1184
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1185
    .line 1186
    .line 1187
    goto :goto_5

    .line 1188
    :cond_c
    const/4 v1, 0x0

    .line 1189
    const/4 v2, 0x0

    .line 1190
    const-string v0, "SERIES"

    .line 1191
    .line 1192
    invoke-static {v6, v9, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result v0

    .line 1196
    if-eqz v0, :cond_d

    .line 1197
    .line 1198
    new-instance v0, Lb7/D;

    .line 1199
    .line 1200
    invoke-direct {v0, v15, v1}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;Lb7/y;)V

    .line 1201
    .line 1202
    .line 1203
    new-array v1, v2, [Ljava/lang/Void;

    .line 1204
    .line 1205
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1206
    .line 1207
    .line 1208
    goto :goto_5

    .line 1209
    :goto_4
    new-instance v0, Lb7/D;

    .line 1210
    .line 1211
    const/4 v1, 0x6

    .line 1212
    invoke-direct {v0, v15, v1}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    .line 1213
    .line 1214
    .line 1215
    new-array v1, v2, [Ljava/lang/Void;

    .line 1216
    .line 1217
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1218
    .line 1219
    .line 1220
    :cond_d
    :goto_5
    iget-object v0, v15, Lpe/hf/black20/ChannelListActivity;->n0:Landroid/widget/FrameLayout;

    .line 1221
    .line 1222
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    .line 1224
    .line 1225
    return-void

    .line 1226
    :pswitch_4
    check-cast v15, Ll/T;

    .line 1227
    .line 1228
    iget-object v0, v15, Ll/T;->m0:Ll/W;

    .line 1229
    .line 1230
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 1231
    .line 1232
    .line 1233
    iget-object v0, v15, Ll/T;->m0:Ll/W;

    .line 1234
    .line 1235
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v3

    .line 1239
    if-eqz v3, :cond_e

    .line 1240
    .line 1241
    iget-object v3, v15, Ll/T;->j0:Landroid/widget/ListAdapter;

    .line 1242
    .line 1243
    invoke-interface {v3, v2}, Landroid/widget/Adapter;->getItemId(I)J

    .line 1244
    .line 1245
    .line 1246
    move-result-wide v3

    .line 1247
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1248
    .line 1249
    .line 1250
    :cond_e
    invoke-virtual {v15}, Ll/M0;->dismiss()V

    .line 1251
    .line 1252
    .line 1253
    return-void

    .line 1254
    :pswitch_5
    check-cast v15, Lf/g;

    .line 1255
    .line 1256
    iget-object v0, v15, Lf/g;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 1257
    .line 1258
    check-cast v14, Lf/j;

    .line 1259
    .line 1260
    iget-object v1, v14, Lf/j;->b:Lf/M;

    .line 1261
    .line 1262
    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1263
    .line 1264
    .line 1265
    iget-boolean v0, v15, Lf/g;->n:Z

    .line 1266
    .line 1267
    if-nez v0, :cond_f

    .line 1268
    .line 1269
    iget-object v0, v14, Lf/j;->b:Lf/M;

    .line 1270
    .line 1271
    invoke-virtual {v0}, Lf/M;->dismiss()V

    .line 1272
    .line 1273
    .line 1274
    :cond_f
    return-void

    .line 1275
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
