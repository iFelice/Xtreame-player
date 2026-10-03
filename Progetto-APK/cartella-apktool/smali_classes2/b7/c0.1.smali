.class public final Lb7/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lb7/t0;


# direct methods
.method public synthetic constructor <init>(Lb7/t0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/c0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/c0;->H:Lb7/t0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb7/c0;->G:I

    .line 4
    .line 5
    const-string v2, "24"

    .line 6
    .line 7
    const-string v3, "otr"

    .line 8
    .line 9
    const-string v4, "XCIPTV_TAG"

    .line 10
    .line 11
    const-string v5, "xtreamcodes"

    .line 12
    .line 13
    const-string v6, "ORT_WHICH_PANEL"

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    iget-object v9, v0, Lb7/c0;->H:Lb7/t0;

    .line 18
    .line 19
    const/4 v10, 0x1

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    invoke-static {v6, v5, v5}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-static {v6, v5, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v1, "ezserver"

    .line 37
    .line 38
    invoke-static {v6, v5, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_a

    .line 43
    .line 44
    const-string v1, "Loding EPG EZServer"

    .line 45
    .line 46
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    new-instance v1, Lb7/f0;

    .line 50
    .line 51
    invoke-direct {v1, v9}, Lb7/f0;-><init>(Lb7/t0;)V

    .line 52
    .line 53
    .line 54
    new-array v2, v8, [Ljava/lang/Void;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    .line 58
    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :cond_1
    :goto_0
    const-string v1, "Loding EPG XC"

    .line 62
    .line 63
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    sget v1, Lb7/t0;->V1:I

    .line 67
    .line 68
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lpe/hf/black20/util/Methods;->F()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    new-instance v1, Lr0/b;

    .line 75
    .line 76
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-direct {v1, v3, v10}, Lr0/b;-><init>(Landroid/content/Context;I)V

    .line 81
    .line 82
    .line 83
    iget-object v3, v9, Lb7/t0;->K1:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Lr0/b;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    const/4 v6, 0x4

    .line 99
    if-le v5, v6, :cond_2

    .line 100
    .line 101
    const/16 v5, 0xa

    .line 102
    .line 103
    invoke-static {v5, v3}, Lpe/hf/black20/util/Methods;->n(ILjava/lang/String;)[Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 108
    .line 109
    .line 110
    aget-object v4, v3, v8

    .line 111
    .line 112
    aget-object v3, v3, v10

    .line 113
    .line 114
    iget-object v5, v9, Lb7/t0;->K1:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v1, v4, v3, v5}, Lr0/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-lez v1, :cond_9

    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-ge v8, v3, :cond_8

    .line 132
    .line 133
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Ld7/g;

    .line 141
    .line 142
    iget-object v3, v3, Ld7/g;->a:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {v3}, Lpe/hf/black20/util/Methods;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    check-cast v5, Ld7/g;

    .line 156
    .line 157
    iget-object v5, v5, Ld7/g;->b:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    const/4 v6, 0x2

    .line 164
    if-le v1, v6, :cond_3

    .line 165
    .line 166
    goto/16 :goto_4

    .line 167
    .line 168
    :cond_3
    const-string v6, "12"

    .line 169
    .line 170
    const-string v7, "ORT_TIME_FORMAT"

    .line 171
    .line 172
    const-string v11, " - "

    .line 173
    .line 174
    const-string v12, "yyyyMMddHHmmss"

    .line 175
    .line 176
    if-nez v1, :cond_5

    .line 177
    .line 178
    iget-object v13, v9, Lb7/t0;->A1:Landroid/widget/TextView;

    .line 179
    .line 180
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    check-cast v14, Ld7/g;

    .line 185
    .line 186
    iget-object v14, v14, Ld7/g;->d:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    iget-object v13, v9, Lb7/t0;->C1:Landroid/widget/TextView;

    .line 192
    .line 193
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v14

    .line 197
    check-cast v14, Ld7/g;

    .line 198
    .line 199
    iget-object v14, v14, Ld7/g;->e:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 205
    .line 206
    .line 207
    move-result-object v13

    .line 208
    invoke-virtual {v13, v7, v6}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v13

    .line 212
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v13

    .line 216
    if-eqz v13, :cond_4

    .line 217
    .line 218
    new-instance v13, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 224
    .line 225
    .line 226
    move-result-object v14

    .line 227
    invoke-static {v14, v3, v12}, Lpe/hf/black20/util/Methods;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-static {v3, v5, v12}, Lpe/hf/black20/util/Methods;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    goto :goto_2

    .line 253
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-static {v3}, Lpe/hf/black20/util/Methods;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    :goto_2
    iget-object v5, v9, Lb7/t0;->B1:Landroid/widget/TextView;

    .line 280
    .line 281
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    .line 283
    .line 284
    :cond_5
    if-ne v1, v10, :cond_7

    .line 285
    .line 286
    iget-object v3, v9, Lb7/t0;->D1:Landroid/widget/TextView;

    .line 287
    .line 288
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    check-cast v5, Ld7/g;

    .line 293
    .line 294
    iget-object v5, v5, Ld7/g;->d:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    .line 299
    iget-object v3, v9, Lb7/t0;->F1:Landroid/widget/TextView;

    .line 300
    .line 301
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    check-cast v5, Ld7/g;

    .line 306
    .line 307
    iget-object v5, v5, Ld7/g;->e:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v3, v7, v6}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    if-eqz v3, :cond_6

    .line 325
    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 336
    .line 337
    .line 338
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    check-cast v6, Ld7/g;

    .line 343
    .line 344
    iget-object v6, v6, Ld7/g;->a:Ljava/lang/String;

    .line 345
    .line 346
    invoke-static {v6}, Lpe/hf/black20/util/Methods;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    invoke-static {v5, v6, v12}, Lpe/hf/black20/util/Methods;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 365
    .line 366
    .line 367
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    check-cast v6, Ld7/g;

    .line 372
    .line 373
    iget-object v6, v6, Ld7/g;->b:Ljava/lang/String;

    .line 374
    .line 375
    invoke-static {v6}, Lpe/hf/black20/util/Methods;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    invoke-static {v5, v6, v12}, Lpe/hf/black20/util/Methods;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    goto :goto_3

    .line 391
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 397
    .line 398
    .line 399
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    check-cast v5, Ld7/g;

    .line 404
    .line 405
    iget-object v5, v5, Ld7/g;->a:Ljava/lang/String;

    .line 406
    .line 407
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v5

    .line 411
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 422
    .line 423
    .line 424
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    check-cast v5, Ld7/g;

    .line 429
    .line 430
    iget-object v5, v5, Ld7/g;->b:Ljava/lang/String;

    .line 431
    .line 432
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    :goto_3
    iget-object v5, v9, Lb7/t0;->E1:Landroid/widget/TextView;

    .line 448
    .line 449
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    .line 451
    .line 452
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 453
    .line 454
    add-int/lit8 v8, v8, 0x1

    .line 455
    .line 456
    goto/16 :goto_1

    .line 457
    .line 458
    :cond_8
    :goto_4
    if-nez v1, :cond_a

    .line 459
    .line 460
    :cond_9
    invoke-virtual {v9}, Lb7/t0;->Z()V

    .line 461
    .line 462
    .line 463
    iget-object v1, v9, Lb7/t0;->A1:Landroid/widget/TextView;

    .line 464
    .line 465
    const-string v2, "TV Guide not available for this Channel."

    .line 466
    .line 467
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    .line 469
    .line 470
    :cond_a
    :goto_5
    return-void

    .line 471
    :pswitch_0
    const-string v1, "Loding movie info"

    .line 472
    .line 473
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-virtual {v1, v6, v5}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-eqz v1, :cond_b

    .line 489
    .line 490
    new-instance v1, Lb7/f0;

    .line 491
    .line 492
    invoke-direct {v1, v9, v7}, Lb7/f0;-><init>(Lb7/t0;Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    new-array v2, v8, [Ljava/lang/Void;

    .line 496
    .line 497
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 498
    .line 499
    .line 500
    goto :goto_6

    .line 501
    :cond_b
    invoke-static {v6, v5, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    if-eqz v1, :cond_c

    .line 506
    .line 507
    sget v1, Lb7/t0;->V1:I

    .line 508
    .line 509
    invoke-virtual {v9}, Lb7/t0;->Y()V

    .line 510
    .line 511
    .line 512
    goto :goto_6

    .line 513
    :cond_c
    new-instance v1, Lb7/f0;

    .line 514
    .line 515
    invoke-direct {v1, v9, v7}, Lb7/f0;-><init>(Lb7/t0;Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    new-array v2, v8, [Ljava/lang/Void;

    .line 519
    .line 520
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 521
    .line 522
    .line 523
    :goto_6
    return-void

    .line 524
    :pswitch_1
    iget-object v1, v9, Lb7/t0;->P0:Landroid/os/Handler;

    .line 525
    .line 526
    iget-object v3, v9, Lb7/t0;->Q0:Lb7/c0;

    .line 527
    .line 528
    const-wide/16 v4, 0x3e8

    .line 529
    .line 530
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 531
    .line 532
    .line 533
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 534
    .line 535
    const-string v3, "EEEE, d MMM yyyy"

    .line 536
    .line 537
    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    iget-object v3, v9, Lb7/t0;->R0:Ljava/lang/String;

    .line 541
    .line 542
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    if-eqz v2, :cond_d

    .line 547
    .line 548
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 549
    .line 550
    const-string v3, "HH:mm:ss"

    .line 551
    .line 552
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    goto :goto_7

    .line 556
    :cond_d
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 557
    .line 558
    const-string v3, "hh:mm:ss aaa"

    .line 559
    .line 560
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    :goto_7
    iget-object v3, v9, Lb7/t0;->L0:Landroid/widget/TextView;

    .line 564
    .line 565
    new-instance v4, Ljava/util/Date;

    .line 566
    .line 567
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    .line 576
    .line 577
    iget-object v1, v9, Lb7/t0;->M0:Landroid/widget/TextView;

    .line 578
    .line 579
    new-instance v3, Ljava/util/Date;

    .line 580
    .line 581
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    .line 590
    .line 591
    return-void

    .line 592
    :pswitch_2
    new-instance v1, Ljava/util/ArrayList;

    .line 593
    .line 594
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .line 596
    .line 597
    iput-object v1, v9, Lb7/t0;->Z0:Ljava/util/ArrayList;

    .line 598
    .line 599
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 600
    .line 601
    .line 602
    iget-object v1, v9, Lb7/t0;->f1:Ljava/util/ArrayList;

    .line 603
    .line 604
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 605
    .line 606
    .line 607
    iget-object v1, v9, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 608
    .line 609
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 610
    .line 611
    .line 612
    iget-object v1, v9, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 613
    .line 614
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 615
    .line 616
    .line 617
    iget-object v1, v9, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 618
    .line 619
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 620
    .line 621
    .line 622
    iget-object v1, v9, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 623
    .line 624
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 625
    .line 626
    .line 627
    iget-object v1, v9, Lb7/t0;->c1:Ljava/util/ArrayList;

    .line 628
    .line 629
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 630
    .line 631
    .line 632
    iget-object v1, v9, Lb7/t0;->m1:Ljava/util/ArrayList;

    .line 633
    .line 634
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 635
    .line 636
    .line 637
    iget-object v2, v9, Lb7/t0;->n1:Ljava/util/ArrayList;

    .line 638
    .line 639
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 640
    .line 641
    .line 642
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 643
    .line 644
    .line 645
    move-result-object v3

    .line 646
    const-string v4, "ORT_WHICH_CAT"

    .line 647
    .line 648
    const-string v5, "TV"

    .line 649
    .line 650
    invoke-virtual {v3, v4, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 651
    .line 652
    .line 653
    iget-object v3, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 654
    .line 655
    const-string v4, "btn_noti"

    .line 656
    .line 657
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 658
    .line 659
    .line 660
    move-result v3

    .line 661
    const-string v5, "no"

    .line 662
    .line 663
    const/16 v6, 0x8

    .line 664
    .line 665
    if-eqz v3, :cond_e

    .line 666
    .line 667
    iget-object v3, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 668
    .line 669
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    move-result v3

    .line 677
    if-eqz v3, :cond_e

    .line 678
    .line 679
    iget-object v3, v9, Lb7/t0;->T0:Landroid/widget/ImageButton;

    .line 680
    .line 681
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 682
    .line 683
    .line 684
    :cond_e
    iget-object v3, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 685
    .line 686
    const-string v4, "btn_rec"

    .line 687
    .line 688
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 689
    .line 690
    .line 691
    move-result v3

    .line 692
    if-eqz v3, :cond_f

    .line 693
    .line 694
    iget-object v3, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 695
    .line 696
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v3

    .line 700
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result v3

    .line 704
    if-eqz v3, :cond_f

    .line 705
    .line 706
    iget-object v3, v9, Lb7/t0;->U0:Landroid/widget/ImageButton;

    .line 707
    .line 708
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 709
    .line 710
    .line 711
    :cond_f
    iget-object v3, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 712
    .line 713
    const-string v4, "hide_recording"

    .line 714
    .line 715
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 716
    .line 717
    .line 718
    move-result v3

    .line 719
    const-string v5, "yes"

    .line 720
    .line 721
    if-eqz v3, :cond_10

    .line 722
    .line 723
    iget-object v3, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 724
    .line 725
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 730
    .line 731
    .line 732
    move-result v3

    .line 733
    if-eqz v3, :cond_10

    .line 734
    .line 735
    iget-object v3, v9, Lb7/t0;->U0:Landroid/widget/ImageButton;

    .line 736
    .line 737
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 738
    .line 739
    .line 740
    :cond_10
    sget-object v3, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 741
    .line 742
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 743
    .line 744
    .line 745
    move-result v3

    .line 746
    const-string v4, "default"

    .line 747
    .line 748
    const-string v5, "ASC"

    .line 749
    .line 750
    const-string v6, "ORT_PROFILE_ID"

    .line 751
    .line 752
    const-string v11, ""

    .line 753
    .line 754
    if-eqz v3, :cond_11

    .line 755
    .line 756
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    invoke-static {v3, v4}, Lz4/q0;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 761
    .line 762
    .line 763
    move-result-object v3

    .line 764
    iput-object v3, v9, Lb7/t0;->f1:Ljava/util/ArrayList;

    .line 765
    .line 766
    iget-object v3, v9, Lb7/t0;->E0:Lc7/d;

    .line 767
    .line 768
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 769
    .line 770
    .line 771
    move-result-object v7

    .line 772
    invoke-virtual {v7, v6, v11}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v7

    .line 776
    invoke-virtual {v3, v5, v7}, Lc7/d;->t0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 777
    .line 778
    .line 779
    move-result-object v3

    .line 780
    iput-object v3, v9, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 781
    .line 782
    iget-object v3, v9, Lb7/t0;->E0:Lc7/d;

    .line 783
    .line 784
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 785
    .line 786
    .line 787
    move-result-object v7

    .line 788
    invoke-virtual {v7, v6, v11}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v7

    .line 792
    invoke-virtual {v3, v5, v7}, Lc7/d;->o0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 793
    .line 794
    .line 795
    move-result-object v3

    .line 796
    iput-object v3, v9, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 797
    .line 798
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 799
    .line 800
    .line 801
    move-result-object v12

    .line 802
    const-string v16, "00000"

    .line 803
    .line 804
    const-string v17, ""

    .line 805
    .line 806
    const/4 v13, 0x0

    .line 807
    const-string v14, "all"

    .line 808
    .line 809
    const-string v15, "NEW"

    .line 810
    .line 811
    invoke-static/range {v12 .. v17}, Ly4/k;->M(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 812
    .line 813
    .line 814
    move-result-object v3

    .line 815
    iput-object v3, v9, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 816
    .line 817
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 818
    .line 819
    .line 820
    move-result-object v12

    .line 821
    const-string v16, "0000"

    .line 822
    .line 823
    const-string v17, "0"

    .line 824
    .line 825
    const/4 v13, 0x0

    .line 826
    const-string v14, "all"

    .line 827
    .line 828
    const-string v15, "NEW"

    .line 829
    .line 830
    invoke-static/range {v12 .. v17}, La7/b;->e(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 831
    .line 832
    .line 833
    move-result-object v3

    .line 834
    iput-object v3, v9, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 835
    .line 836
    const/4 v3, 0x1

    .line 837
    const/4 v7, 0x1

    .line 838
    const/4 v12, 0x1

    .line 839
    goto/16 :goto_9

    .line 840
    .line 841
    :cond_11
    iget-object v3, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 842
    .line 843
    const-string v12, "XCIPTV_WHICH_PORTAL_SELECTED"

    .line 844
    .line 845
    invoke-interface {v3, v12, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v3

    .line 849
    const-string v13, "1"

    .line 850
    .line 851
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 852
    .line 853
    .line 854
    move-result v3

    .line 855
    const-string v13, "Yes"

    .line 856
    .line 857
    if-eqz v3, :cond_13

    .line 858
    .line 859
    iget-object v3, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 860
    .line 861
    const-string v12, "btn_live"

    .line 862
    .line 863
    invoke-interface {v3, v12, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v3

    .line 867
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 868
    .line 869
    .line 870
    move-result v3

    .line 871
    iget-object v12, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 872
    .line 873
    const-string v14, "btn_vod"

    .line 874
    .line 875
    invoke-interface {v12, v14, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v12

    .line 879
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    move-result v12

    .line 883
    iget-object v14, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 884
    .line 885
    const-string v15, "btn_series"

    .line 886
    .line 887
    invoke-interface {v14, v15, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v7

    .line 891
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 892
    .line 893
    .line 894
    move-result v7

    .line 895
    if-eqz v7, :cond_12

    .line 896
    .line 897
    :goto_8
    const/4 v7, 0x1

    .line 898
    goto/16 :goto_9

    .line 899
    .line 900
    :cond_12
    const/4 v7, 0x0

    .line 901
    goto/16 :goto_9

    .line 902
    .line 903
    :cond_13
    iget-object v3, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 904
    .line 905
    invoke-interface {v3, v12, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v3

    .line 909
    const-string v14, "2"

    .line 910
    .line 911
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 912
    .line 913
    .line 914
    move-result v3

    .line 915
    if-eqz v3, :cond_14

    .line 916
    .line 917
    iget-object v3, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 918
    .line 919
    const-string v12, "btn_live2"

    .line 920
    .line 921
    invoke-interface {v3, v12, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v3

    .line 925
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 926
    .line 927
    .line 928
    move-result v3

    .line 929
    iget-object v12, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 930
    .line 931
    const-string v14, "btn_vod2"

    .line 932
    .line 933
    invoke-interface {v12, v14, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v12

    .line 937
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    move-result v12

    .line 941
    iget-object v14, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 942
    .line 943
    const-string v15, "btn_series2"

    .line 944
    .line 945
    invoke-interface {v14, v15, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v7

    .line 949
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 950
    .line 951
    .line 952
    move-result v7

    .line 953
    if-eqz v7, :cond_12

    .line 954
    .line 955
    goto :goto_8

    .line 956
    :cond_14
    iget-object v3, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 957
    .line 958
    invoke-interface {v3, v12, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v3

    .line 962
    const-string v14, "3"

    .line 963
    .line 964
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 965
    .line 966
    .line 967
    move-result v3

    .line 968
    if-eqz v3, :cond_15

    .line 969
    .line 970
    iget-object v3, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 971
    .line 972
    const-string v12, "btn_live3"

    .line 973
    .line 974
    invoke-interface {v3, v12, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v3

    .line 978
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 979
    .line 980
    .line 981
    move-result v3

    .line 982
    iget-object v12, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 983
    .line 984
    const-string v14, "btn_vod3"

    .line 985
    .line 986
    invoke-interface {v12, v14, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v12

    .line 990
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 991
    .line 992
    .line 993
    move-result v12

    .line 994
    iget-object v14, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 995
    .line 996
    const-string v15, "btn_series3"

    .line 997
    .line 998
    invoke-interface {v14, v15, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v7

    .line 1002
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v7

    .line 1006
    if-eqz v7, :cond_12

    .line 1007
    .line 1008
    goto :goto_8

    .line 1009
    :cond_15
    iget-object v3, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 1010
    .line 1011
    invoke-interface {v3, v12, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v3

    .line 1015
    const-string v14, "4"

    .line 1016
    .line 1017
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1018
    .line 1019
    .line 1020
    move-result v3

    .line 1021
    if-eqz v3, :cond_16

    .line 1022
    .line 1023
    iget-object v3, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 1024
    .line 1025
    const-string v12, "btn_live4"

    .line 1026
    .line 1027
    invoke-interface {v3, v12, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v3

    .line 1031
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1032
    .line 1033
    .line 1034
    move-result v3

    .line 1035
    iget-object v12, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 1036
    .line 1037
    const-string v14, "btn_vod4"

    .line 1038
    .line 1039
    invoke-interface {v12, v14, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v12

    .line 1043
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1044
    .line 1045
    .line 1046
    move-result v12

    .line 1047
    iget-object v14, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 1048
    .line 1049
    const-string v15, "btn_series4"

    .line 1050
    .line 1051
    invoke-interface {v14, v15, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v7

    .line 1055
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1056
    .line 1057
    .line 1058
    move-result v7

    .line 1059
    if-eqz v7, :cond_12

    .line 1060
    .line 1061
    goto/16 :goto_8

    .line 1062
    .line 1063
    :cond_16
    iget-object v3, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 1064
    .line 1065
    invoke-interface {v3, v12, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v3

    .line 1069
    const-string v12, "5"

    .line 1070
    .line 1071
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1072
    .line 1073
    .line 1074
    move-result v3

    .line 1075
    if-eqz v3, :cond_17

    .line 1076
    .line 1077
    iget-object v3, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 1078
    .line 1079
    const-string v12, "btn_live5"

    .line 1080
    .line 1081
    invoke-interface {v3, v12, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v3

    .line 1085
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v3

    .line 1089
    iget-object v12, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 1090
    .line 1091
    const-string v14, "btn_vod5"

    .line 1092
    .line 1093
    invoke-interface {v12, v14, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v12

    .line 1097
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1098
    .line 1099
    .line 1100
    move-result v12

    .line 1101
    iget-object v14, v9, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 1102
    .line 1103
    const-string v15, "btn_series5"

    .line 1104
    .line 1105
    invoke-interface {v14, v15, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v7

    .line 1109
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1110
    .line 1111
    .line 1112
    move-result v7

    .line 1113
    if-eqz v7, :cond_12

    .line 1114
    .line 1115
    goto/16 :goto_8

    .line 1116
    .line 1117
    :cond_17
    const/4 v3, 0x0

    .line 1118
    const/4 v7, 0x0

    .line 1119
    const/4 v12, 0x0

    .line 1120
    :goto_9
    if-eqz v3, :cond_18

    .line 1121
    .line 1122
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v13

    .line 1126
    invoke-static {v13, v4}, Lz4/q0;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v4

    .line 1130
    iput-object v4, v9, Lb7/t0;->f1:Ljava/util/ArrayList;

    .line 1131
    .line 1132
    :cond_18
    if-eqz v12, :cond_19

    .line 1133
    .line 1134
    iget-object v4, v9, Lb7/t0;->E0:Lc7/d;

    .line 1135
    .line 1136
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v13

    .line 1140
    invoke-virtual {v13, v6, v11}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v13

    .line 1144
    invoke-virtual {v4, v5, v13}, Lc7/d;->t0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v4

    .line 1148
    iput-object v4, v9, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 1149
    .line 1150
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v13

    .line 1154
    const-string v17, "00000"

    .line 1155
    .line 1156
    const-string v18, ""

    .line 1157
    .line 1158
    const/4 v14, 0x0

    .line 1159
    const-string v15, "all"

    .line 1160
    .line 1161
    const-string v16, "NEW"

    .line 1162
    .line 1163
    invoke-static/range {v13 .. v18}, Ly4/k;->M(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v4

    .line 1167
    iput-object v4, v9, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 1168
    .line 1169
    :cond_19
    if-eqz v7, :cond_1a

    .line 1170
    .line 1171
    iget-object v4, v9, Lb7/t0;->E0:Lc7/d;

    .line 1172
    .line 1173
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v13

    .line 1177
    invoke-virtual {v13, v6, v11}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v13

    .line 1181
    invoke-virtual {v4, v5, v13}, Lc7/d;->o0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v4

    .line 1185
    iput-object v4, v9, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 1186
    .line 1187
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v13

    .line 1191
    const-string v17, "00000"

    .line 1192
    .line 1193
    const-string v18, "0"

    .line 1194
    .line 1195
    const/4 v14, 0x0

    .line 1196
    const-string v15, "all"

    .line 1197
    .line 1198
    const-string v16, "NEW"

    .line 1199
    .line 1200
    invoke-static/range {v13 .. v18}, La7/b;->e(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v4

    .line 1204
    iput-object v4, v9, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 1205
    .line 1206
    :cond_1a
    iget-object v4, v9, Lb7/t0;->E0:Lc7/d;

    .line 1207
    .line 1208
    invoke-virtual {v4}, Lc7/d;->E0()Ljava/util/ArrayList;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v4

    .line 1212
    iput-object v4, v9, Lb7/t0;->c1:Ljava/util/ArrayList;

    .line 1213
    .line 1214
    const-string v5, "rating_5based"

    .line 1215
    .line 1216
    const-string v13, "rating"

    .line 1217
    .line 1218
    const-string v14, "name"

    .line 1219
    .line 1220
    const-string v15, "num"

    .line 1221
    .line 1222
    const-string v10, "-"

    .line 1223
    .line 1224
    const-string v8, "category_id"

    .line 1225
    .line 1226
    if-eqz v12, :cond_1c

    .line 1227
    .line 1228
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1229
    .line 1230
    .line 1231
    move-result v4

    .line 1232
    if-lez v4, :cond_1c

    .line 1233
    .line 1234
    const/4 v4, 0x0

    .line 1235
    :goto_a
    iget-object v12, v9, Lb7/t0;->c1:Ljava/util/ArrayList;

    .line 1236
    .line 1237
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 1238
    .line 1239
    .line 1240
    move-result v12

    .line 1241
    if-ge v4, v12, :cond_1c

    .line 1242
    .line 1243
    iget-object v12, v9, Lb7/t0;->c1:Ljava/util/ArrayList;

    .line 1244
    .line 1245
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v12

    .line 1249
    check-cast v12, Lh7/g;

    .line 1250
    .line 1251
    iget-object v12, v12, Lh7/g;->a:Ljava/lang/String;

    .line 1252
    .line 1253
    invoke-virtual {v12, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v12

    .line 1257
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v0

    .line 1261
    invoke-virtual {v0, v6, v11}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v0

    .line 1265
    move/from16 v18, v3

    .line 1266
    .line 1267
    const/16 v17, 0x0

    .line 1268
    .line 1269
    aget-object v3, v12, v17

    .line 1270
    .line 1271
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1272
    .line 1273
    .line 1274
    move-result v0

    .line 1275
    if-eqz v0, :cond_1b

    .line 1276
    .line 1277
    new-instance v0, Ljava/util/ArrayList;

    .line 1278
    .line 1279
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1280
    .line 1281
    .line 1282
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v0

    .line 1289
    const/4 v3, 0x1

    .line 1290
    aget-object v12, v12, v3

    .line 1291
    .line 1292
    invoke-static {v0, v12}, Ly4/k;->L(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v0

    .line 1296
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1297
    .line 1298
    .line 1299
    move-result v12

    .line 1300
    if-lez v12, :cond_1b

    .line 1301
    .line 1302
    new-instance v12, Ljava/util/HashMap;

    .line 1303
    .line 1304
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1305
    .line 1306
    .line 1307
    const/4 v3, 0x0

    .line 1308
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v17

    .line 1312
    move-object/from16 v3, v17

    .line 1313
    .line 1314
    check-cast v3, Ljava/util/HashMap;

    .line 1315
    .line 1316
    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v3

    .line 1320
    check-cast v3, Ljava/lang/String;

    .line 1321
    .line 1322
    invoke-virtual {v12, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    .line 1324
    .line 1325
    const/4 v3, 0x0

    .line 1326
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v17

    .line 1330
    move-object/from16 v3, v17

    .line 1331
    .line 1332
    check-cast v3, Ljava/util/HashMap;

    .line 1333
    .line 1334
    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v3

    .line 1338
    check-cast v3, Ljava/lang/String;

    .line 1339
    .line 1340
    invoke-virtual {v12, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    .line 1342
    .line 1343
    const/4 v3, 0x0

    .line 1344
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v17

    .line 1348
    move-object/from16 v3, v17

    .line 1349
    .line 1350
    check-cast v3, Ljava/util/HashMap;

    .line 1351
    .line 1352
    move-object/from16 v19, v2

    .line 1353
    .line 1354
    const-string v2, "stream_type"

    .line 1355
    .line 1356
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v3

    .line 1360
    check-cast v3, Ljava/lang/String;

    .line 1361
    .line 1362
    invoke-virtual {v12, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    .line 1364
    .line 1365
    const/4 v2, 0x0

    .line 1366
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v3

    .line 1370
    check-cast v3, Ljava/util/HashMap;

    .line 1371
    .line 1372
    const-string v2, "stream_id"

    .line 1373
    .line 1374
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v3

    .line 1378
    check-cast v3, Ljava/lang/String;

    .line 1379
    .line 1380
    invoke-virtual {v12, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    .line 1382
    .line 1383
    const/4 v2, 0x0

    .line 1384
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v3

    .line 1388
    check-cast v3, Ljava/util/HashMap;

    .line 1389
    .line 1390
    const-string v2, "stream_icon"

    .line 1391
    .line 1392
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v3

    .line 1396
    check-cast v3, Ljava/lang/String;

    .line 1397
    .line 1398
    invoke-virtual {v12, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    const/4 v2, 0x0

    .line 1402
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v3

    .line 1406
    check-cast v3, Ljava/util/HashMap;

    .line 1407
    .line 1408
    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v3

    .line 1412
    check-cast v3, Ljava/lang/String;

    .line 1413
    .line 1414
    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v3

    .line 1421
    check-cast v3, Ljava/util/HashMap;

    .line 1422
    .line 1423
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v3

    .line 1427
    check-cast v3, Ljava/lang/String;

    .line 1428
    .line 1429
    invoke-virtual {v12, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v3

    .line 1436
    check-cast v3, Ljava/util/HashMap;

    .line 1437
    .line 1438
    const-string v2, "added"

    .line 1439
    .line 1440
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v3

    .line 1444
    check-cast v3, Ljava/lang/String;

    .line 1445
    .line 1446
    invoke-virtual {v12, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    .line 1448
    .line 1449
    const/4 v2, 0x0

    .line 1450
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v3

    .line 1454
    check-cast v3, Ljava/util/HashMap;

    .line 1455
    .line 1456
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v3

    .line 1460
    check-cast v3, Ljava/lang/String;

    .line 1461
    .line 1462
    invoke-virtual {v12, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    .line 1464
    .line 1465
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v3

    .line 1469
    check-cast v3, Ljava/util/HashMap;

    .line 1470
    .line 1471
    const-string v2, "container_extension"

    .line 1472
    .line 1473
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v3

    .line 1477
    check-cast v3, Ljava/lang/String;

    .line 1478
    .line 1479
    invoke-virtual {v12, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    .line 1481
    .line 1482
    const/4 v2, 0x0

    .line 1483
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v3

    .line 1487
    check-cast v3, Ljava/util/HashMap;

    .line 1488
    .line 1489
    const-string v2, "custom_sid"

    .line 1490
    .line 1491
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v3

    .line 1495
    check-cast v3, Ljava/lang/String;

    .line 1496
    .line 1497
    invoke-virtual {v12, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    .line 1499
    .line 1500
    const/4 v2, 0x0

    .line 1501
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v0

    .line 1505
    check-cast v0, Ljava/util/HashMap;

    .line 1506
    .line 1507
    const-string v2, "direct_source"

    .line 1508
    .line 1509
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v0

    .line 1513
    check-cast v0, Ljava/lang/String;

    .line 1514
    .line 1515
    invoke-virtual {v12, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    .line 1517
    .line 1518
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    .line 1520
    .line 1521
    goto :goto_b

    .line 1522
    :cond_1b
    move-object/from16 v19, v2

    .line 1523
    .line 1524
    :goto_b
    add-int/lit8 v4, v4, 0x1

    .line 1525
    .line 1526
    move-object/from16 v0, p0

    .line 1527
    .line 1528
    move/from16 v3, v18

    .line 1529
    .line 1530
    move-object/from16 v2, v19

    .line 1531
    .line 1532
    goto/16 :goto_a

    .line 1533
    .line 1534
    :cond_1c
    move-object/from16 v19, v2

    .line 1535
    .line 1536
    move/from16 v18, v3

    .line 1537
    .line 1538
    if-eqz v7, :cond_1e

    .line 1539
    .line 1540
    iget-object v0, v9, Lb7/t0;->c1:Ljava/util/ArrayList;

    .line 1541
    .line 1542
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1543
    .line 1544
    .line 1545
    move-result v0

    .line 1546
    if-lez v0, :cond_1e

    .line 1547
    .line 1548
    const/4 v0, 0x0

    .line 1549
    :goto_c
    iget-object v2, v9, Lb7/t0;->c1:Ljava/util/ArrayList;

    .line 1550
    .line 1551
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1552
    .line 1553
    .line 1554
    move-result v2

    .line 1555
    if-ge v0, v2, :cond_1e

    .line 1556
    .line 1557
    iget-object v2, v9, Lb7/t0;->c1:Ljava/util/ArrayList;

    .line 1558
    .line 1559
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v2

    .line 1563
    check-cast v2, Lh7/g;

    .line 1564
    .line 1565
    iget-object v2, v2, Lh7/g;->a:Ljava/lang/String;

    .line 1566
    .line 1567
    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v2

    .line 1571
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v3

    .line 1575
    invoke-virtual {v3, v6, v11}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v3

    .line 1579
    const/4 v4, 0x0

    .line 1580
    aget-object v2, v2, v4

    .line 1581
    .line 1582
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1583
    .line 1584
    .line 1585
    move-result v2

    .line 1586
    if-eqz v2, :cond_1d

    .line 1587
    .line 1588
    iget-object v2, v9, Lb7/t0;->c1:Ljava/util/ArrayList;

    .line 1589
    .line 1590
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v2

    .line 1594
    check-cast v2, Lh7/g;

    .line 1595
    .line 1596
    iget-object v2, v2, Lh7/g;->b:Ljava/lang/String;

    .line 1597
    .line 1598
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1599
    .line 1600
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1601
    .line 1602
    .line 1603
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v4

    .line 1607
    invoke-virtual {v4, v6, v11}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v4

    .line 1611
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1615
    .line 1616
    .line 1617
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v3

    .line 1621
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1622
    .line 1623
    .line 1624
    move-result v2

    .line 1625
    if-eqz v2, :cond_1d

    .line 1626
    .line 1627
    iget-object v2, v9, Lb7/t0;->c1:Ljava/util/ArrayList;

    .line 1628
    .line 1629
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v2

    .line 1633
    check-cast v2, Lh7/g;

    .line 1634
    .line 1635
    iget-object v2, v2, Lh7/g;->b:Ljava/lang/String;

    .line 1636
    .line 1637
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1638
    .line 1639
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1640
    .line 1641
    .line 1642
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v4

    .line 1646
    invoke-virtual {v4, v6, v11}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v4

    .line 1650
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    .line 1652
    .line 1653
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    .line 1655
    .line 1656
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v3

    .line 1660
    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v2

    .line 1664
    new-instance v3, Ljava/util/ArrayList;

    .line 1665
    .line 1666
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1667
    .line 1668
    .line 1669
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1670
    .line 1671
    .line 1672
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v3

    .line 1676
    invoke-static {v3, v2}, La7/b;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v2

    .line 1680
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1681
    .line 1682
    .line 1683
    move-result v3

    .line 1684
    if-lez v3, :cond_1d

    .line 1685
    .line 1686
    new-instance v3, Ljava/util/HashMap;

    .line 1687
    .line 1688
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1689
    .line 1690
    .line 1691
    const/4 v4, 0x0

    .line 1692
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v7

    .line 1696
    check-cast v7, Ljava/util/HashMap;

    .line 1697
    .line 1698
    invoke-virtual {v7, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v7

    .line 1702
    check-cast v7, Ljava/lang/String;

    .line 1703
    .line 1704
    invoke-virtual {v3, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    .line 1706
    .line 1707
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v7

    .line 1711
    check-cast v7, Ljava/util/HashMap;

    .line 1712
    .line 1713
    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v7

    .line 1717
    check-cast v7, Ljava/lang/String;

    .line 1718
    .line 1719
    invoke-virtual {v3, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    .line 1721
    .line 1722
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v7

    .line 1726
    check-cast v7, Ljava/util/HashMap;

    .line 1727
    .line 1728
    const-string v12, "series_id"

    .line 1729
    .line 1730
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v7

    .line 1734
    check-cast v7, Ljava/lang/String;

    .line 1735
    .line 1736
    invoke-virtual {v3, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    .line 1738
    .line 1739
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1740
    .line 1741
    .line 1742
    move-result-object v7

    .line 1743
    check-cast v7, Ljava/util/HashMap;

    .line 1744
    .line 1745
    const-string v12, "cover"

    .line 1746
    .line 1747
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v7

    .line 1751
    check-cast v7, Ljava/lang/String;

    .line 1752
    .line 1753
    invoke-virtual {v3, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    .line 1755
    .line 1756
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1757
    .line 1758
    .line 1759
    move-result-object v7

    .line 1760
    check-cast v7, Ljava/util/HashMap;

    .line 1761
    .line 1762
    const-string v12, "plot"

    .line 1763
    .line 1764
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v7

    .line 1768
    check-cast v7, Ljava/lang/String;

    .line 1769
    .line 1770
    invoke-virtual {v3, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    .line 1772
    .line 1773
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1774
    .line 1775
    .line 1776
    move-result-object v7

    .line 1777
    check-cast v7, Ljava/util/HashMap;

    .line 1778
    .line 1779
    const-string v12, "cast"

    .line 1780
    .line 1781
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v7

    .line 1785
    check-cast v7, Ljava/lang/String;

    .line 1786
    .line 1787
    invoke-virtual {v3, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    .line 1789
    .line 1790
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v7

    .line 1794
    check-cast v7, Ljava/util/HashMap;

    .line 1795
    .line 1796
    const-string v12, "director"

    .line 1797
    .line 1798
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v7

    .line 1802
    check-cast v7, Ljava/lang/String;

    .line 1803
    .line 1804
    invoke-virtual {v3, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    .line 1806
    .line 1807
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v7

    .line 1811
    check-cast v7, Ljava/util/HashMap;

    .line 1812
    .line 1813
    const-string v12, "genre"

    .line 1814
    .line 1815
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    .line 1817
    .line 1818
    move-result-object v7

    .line 1819
    check-cast v7, Ljava/lang/String;

    .line 1820
    .line 1821
    invoke-virtual {v3, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    .line 1823
    .line 1824
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v7

    .line 1828
    check-cast v7, Ljava/util/HashMap;

    .line 1829
    .line 1830
    const-string v12, "releaseDate"

    .line 1831
    .line 1832
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v7

    .line 1836
    check-cast v7, Ljava/lang/String;

    .line 1837
    .line 1838
    invoke-virtual {v3, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    .line 1840
    .line 1841
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v7

    .line 1845
    check-cast v7, Ljava/util/HashMap;

    .line 1846
    .line 1847
    const-string v12, "last_modified"

    .line 1848
    .line 1849
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    .line 1851
    .line 1852
    move-result-object v7

    .line 1853
    check-cast v7, Ljava/lang/String;

    .line 1854
    .line 1855
    invoke-virtual {v3, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    .line 1857
    .line 1858
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v7

    .line 1862
    check-cast v7, Ljava/util/HashMap;

    .line 1863
    .line 1864
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v7

    .line 1868
    check-cast v7, Ljava/lang/String;

    .line 1869
    .line 1870
    invoke-virtual {v3, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    .line 1872
    .line 1873
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v7

    .line 1877
    check-cast v7, Ljava/util/HashMap;

    .line 1878
    .line 1879
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    .line 1881
    .line 1882
    move-result-object v7

    .line 1883
    check-cast v7, Ljava/lang/String;

    .line 1884
    .line 1885
    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    .line 1887
    .line 1888
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v7

    .line 1892
    check-cast v7, Ljava/util/HashMap;

    .line 1893
    .line 1894
    const-string v12, "backdrop_path"

    .line 1895
    .line 1896
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1897
    .line 1898
    .line 1899
    move-result-object v7

    .line 1900
    check-cast v7, Ljava/lang/String;

    .line 1901
    .line 1902
    invoke-virtual {v3, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    .line 1904
    .line 1905
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v7

    .line 1909
    check-cast v7, Ljava/util/HashMap;

    .line 1910
    .line 1911
    const-string v12, "youtube_trailer"

    .line 1912
    .line 1913
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    .line 1915
    .line 1916
    move-result-object v7

    .line 1917
    check-cast v7, Ljava/lang/String;

    .line 1918
    .line 1919
    invoke-virtual {v3, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    .line 1921
    .line 1922
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v7

    .line 1926
    check-cast v7, Ljava/util/HashMap;

    .line 1927
    .line 1928
    const-string v12, "episode_run_time"

    .line 1929
    .line 1930
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    .line 1932
    .line 1933
    move-result-object v7

    .line 1934
    check-cast v7, Ljava/lang/String;

    .line 1935
    .line 1936
    invoke-virtual {v3, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    .line 1938
    .line 1939
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1940
    .line 1941
    .line 1942
    move-result-object v2

    .line 1943
    check-cast v2, Ljava/util/HashMap;

    .line 1944
    .line 1945
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v2

    .line 1949
    check-cast v2, Ljava/lang/String;

    .line 1950
    .line 1951
    invoke-virtual {v3, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    .line 1953
    .line 1954
    move-object/from16 v2, v19

    .line 1955
    .line 1956
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1957
    .line 1958
    .line 1959
    goto :goto_d

    .line 1960
    :cond_1d
    move-object/from16 v2, v19

    .line 1961
    .line 1962
    const/4 v4, 0x0

    .line 1963
    :goto_d
    add-int/lit8 v0, v0, 0x1

    .line 1964
    .line 1965
    move-object/from16 v19, v2

    .line 1966
    .line 1967
    goto/16 :goto_c

    .line 1968
    .line 1969
    :cond_1e
    move-object/from16 v2, v19

    .line 1970
    .line 1971
    iget-object v0, v9, Lb7/t0;->f1:Ljava/util/ArrayList;

    .line 1972
    .line 1973
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1974
    .line 1975
    .line 1976
    move-result v0

    .line 1977
    const-string v3, "0"

    .line 1978
    .line 1979
    const-string v4, "parent_id"

    .line 1980
    .line 1981
    const-string v5, "category_name"

    .line 1982
    .line 1983
    if-lez v0, :cond_1f

    .line 1984
    .line 1985
    const-string v0, "MY FAVORITE TV CHANNELS"

    .line 1986
    .line 1987
    const-string v6, "0000001"

    .line 1988
    .line 1989
    invoke-static {v5, v0, v8, v6}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 1990
    .line 1991
    .line 1992
    move-result-object v0

    .line 1993
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    .line 1995
    .line 1996
    iget-object v6, v9, Lb7/t0;->Z0:Ljava/util/ArrayList;

    .line 1997
    .line 1998
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1999
    .line 2000
    .line 2001
    new-instance v0, Ljava/util/ArrayList;

    .line 2002
    .line 2003
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2004
    .line 2005
    .line 2006
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2007
    .line 2008
    .line 2009
    :cond_1f
    iget-object v0, v9, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 2010
    .line 2011
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2012
    .line 2013
    .line 2014
    move-result v0

    .line 2015
    if-lez v0, :cond_20

    .line 2016
    .line 2017
    const-string v0, "MY MOVIES"

    .line 2018
    .line 2019
    const-string v6, "0000002"

    .line 2020
    .line 2021
    invoke-static {v5, v0, v8, v6}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v0

    .line 2025
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    .line 2027
    .line 2028
    iget-object v6, v9, Lb7/t0;->Z0:Ljava/util/ArrayList;

    .line 2029
    .line 2030
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2031
    .line 2032
    .line 2033
    :cond_20
    iget-object v0, v9, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 2034
    .line 2035
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2036
    .line 2037
    .line 2038
    move-result v0

    .line 2039
    if-lez v0, :cond_21

    .line 2040
    .line 2041
    const-string v0, "MY TV SHOWS"

    .line 2042
    .line 2043
    const-string v6, "0000003"

    .line 2044
    .line 2045
    invoke-static {v5, v0, v8, v6}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 2046
    .line 2047
    .line 2048
    move-result-object v0

    .line 2049
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    .line 2051
    .line 2052
    iget-object v6, v9, Lb7/t0;->Z0:Ljava/util/ArrayList;

    .line 2053
    .line 2054
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2055
    .line 2056
    .line 2057
    :cond_21
    iget-object v0, v9, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 2058
    .line 2059
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2060
    .line 2061
    .line 2062
    move-result v0

    .line 2063
    if-lez v0, :cond_22

    .line 2064
    .line 2065
    const-string v0, "NEW MOVIES"

    .line 2066
    .line 2067
    const-string v6, "0000004"

    .line 2068
    .line 2069
    invoke-static {v5, v0, v8, v6}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 2070
    .line 2071
    .line 2072
    move-result-object v0

    .line 2073
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2074
    .line 2075
    .line 2076
    iget-object v6, v9, Lb7/t0;->Z0:Ljava/util/ArrayList;

    .line 2077
    .line 2078
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2079
    .line 2080
    .line 2081
    :cond_22
    iget-object v0, v9, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 2082
    .line 2083
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2084
    .line 2085
    .line 2086
    move-result v0

    .line 2087
    if-lez v0, :cond_23

    .line 2088
    .line 2089
    const-string v0, "NEW TV SHOWS"

    .line 2090
    .line 2091
    const-string v6, "0000005"

    .line 2092
    .line 2093
    invoke-static {v5, v0, v8, v6}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 2094
    .line 2095
    .line 2096
    move-result-object v0

    .line 2097
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    .line 2099
    .line 2100
    iget-object v6, v9, Lb7/t0;->Z0:Ljava/util/ArrayList;

    .line 2101
    .line 2102
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2103
    .line 2104
    .line 2105
    :cond_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2106
    .line 2107
    .line 2108
    move-result v0

    .line 2109
    if-lez v0, :cond_24

    .line 2110
    .line 2111
    const-string v0, "CONTINUE WATCHING MOVIES"

    .line 2112
    .line 2113
    const-string v1, "0000006"

    .line 2114
    .line 2115
    invoke-static {v5, v0, v8, v1}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 2116
    .line 2117
    .line 2118
    move-result-object v0

    .line 2119
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2120
    .line 2121
    .line 2122
    iget-object v1, v9, Lb7/t0;->Z0:Ljava/util/ArrayList;

    .line 2123
    .line 2124
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2125
    .line 2126
    .line 2127
    :cond_24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2128
    .line 2129
    .line 2130
    move-result v0

    .line 2131
    if-lez v0, :cond_25

    .line 2132
    .line 2133
    const-string v0, "CONTINUE WATCHING TV SHOWS"

    .line 2134
    .line 2135
    const-string v1, "0000007"

    .line 2136
    .line 2137
    invoke-static {v5, v0, v8, v1}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 2138
    .line 2139
    .line 2140
    move-result-object v0

    .line 2141
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    .line 2143
    .line 2144
    iget-object v1, v9, Lb7/t0;->Z0:Ljava/util/ArrayList;

    .line 2145
    .line 2146
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2147
    .line 2148
    .line 2149
    :cond_25
    invoke-virtual {v9}, LY/s;->j()LY/v;

    .line 2150
    .line 2151
    .line 2152
    move-result-object v0

    .line 2153
    if-nez v0, :cond_26

    .line 2154
    .line 2155
    move-object/from16 v3, p0

    .line 2156
    .line 2157
    goto :goto_e

    .line 2158
    :cond_26
    if-eqz v18, :cond_27

    .line 2159
    .line 2160
    iget-object v0, v9, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 2161
    .line 2162
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2163
    .line 2164
    .line 2165
    move-result v0

    .line 2166
    if-nez v0, :cond_27

    .line 2167
    .line 2168
    iget-object v0, v9, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 2169
    .line 2170
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2171
    .line 2172
    .line 2173
    move-result v0

    .line 2174
    if-nez v0, :cond_27

    .line 2175
    .line 2176
    iget-object v0, v9, Lb7/t0;->f1:Ljava/util/ArrayList;

    .line 2177
    .line 2178
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2179
    .line 2180
    .line 2181
    move-result v0

    .line 2182
    if-nez v0, :cond_27

    .line 2183
    .line 2184
    new-instance v0, Landroid/content/Intent;

    .line 2185
    .line 2186
    const-string v1, "load_tv_fragment"

    .line 2187
    .line 2188
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2189
    .line 2190
    .line 2191
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 2192
    .line 2193
    .line 2194
    move-result-object v1

    .line 2195
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2196
    .line 2197
    .line 2198
    :cond_27
    invoke-virtual {v9}, LY/s;->j()LY/v;

    .line 2199
    .line 2200
    .line 2201
    move-result-object v0

    .line 2202
    new-instance v1, Lcom/google/android/gms/internal/cast/X;

    .line 2203
    .line 2204
    const/16 v2, 0x10

    .line 2205
    .line 2206
    move-object/from16 v3, p0

    .line 2207
    .line 2208
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 2209
    .line 2210
    .line 2211
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2212
    .line 2213
    .line 2214
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
