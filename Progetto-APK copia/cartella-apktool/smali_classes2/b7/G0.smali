.class public final Lb7/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:I

.field public final synthetic I:LO1/c0;

.field public final synthetic J:LO1/C;


# direct methods
.method public synthetic constructor <init>(IILO1/C;LO1/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/G0;->G:I

    .line 5
    .line 6
    iput-object p3, p0, Lb7/G0;->J:LO1/C;

    .line 7
    .line 8
    iput p1, p0, Lb7/G0;->H:I

    .line 9
    .line 10
    iput-object p4, p0, Lb7/G0;->I:LO1/c0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb7/G0;->G:I

    .line 4
    .line 5
    const-string v3, " - has been added to Favorites"

    .line 6
    .line 7
    const-string v4, " - has been removed from Favorites"

    .line 8
    .line 9
    const/16 v5, 0x8

    .line 10
    .line 11
    const-string v6, "ORT_PROFILE_ID"

    .line 12
    .line 13
    const-string v7, ""

    .line 14
    .line 15
    iget-object v8, v0, Lb7/G0;->I:LO1/c0;

    .line 16
    .line 17
    const-string v9, "name"

    .line 18
    .line 19
    const-string v10, "\""

    .line 20
    .line 21
    iget v11, v0, Lb7/G0;->H:I

    .line 22
    .line 23
    iget-object v12, v0, Lb7/G0;->J:LO1/C;

    .line 24
    .line 25
    const/4 v13, 0x1

    .line 26
    packed-switch v1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    check-cast v12, LD1/q;

    .line 30
    .line 31
    iget-object v1, v12, LD1/q;->J:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/util/HashMap;

    .line 40
    .line 41
    iput-object v1, v12, LD1/q;->K:Ljava/lang/Object;

    .line 42
    .line 43
    iget-object v1, v12, LD1/q;->M:Ljava/lang/Object;

    .line 44
    .line 45
    move-object v11, v1

    .line 46
    check-cast v11, Lb7/S0;

    .line 47
    .line 48
    iget-object v11, v11, Lb7/S0;->k1:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v14, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v15, "\"stream_id\":\""

    .line 53
    .line 54
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v15, v12, LD1/q;->K:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v15, Ljava/util/HashMap;

    .line 60
    .line 61
    const-string v2, "stream_id"

    .line 62
    .line 63
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v15

    .line 67
    check-cast v15, Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    const-string v11, "_vod"

    .line 84
    .line 85
    if-eqz v10, :cond_0

    .line 86
    .line 87
    move-object v3, v1

    .line 88
    check-cast v3, Lb7/S0;

    .line 89
    .line 90
    iget-object v3, v3, Lb7/S0;->E0:Lc7/d;

    .line 91
    .line 92
    iget-object v10, v12, LD1/q;->K:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v10, Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    check-cast v10, Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    invoke-virtual {v14, v6, v7}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v3, v10, v6, v11}, Lc7/d;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    check-cast v8, Lb7/R0;

    .line 114
    .line 115
    iget-object v3, v8, Lb7/R0;->c0:Landroid/widget/ImageView;

    .line 116
    .line 117
    iget-object v6, v12, LD1/q;->K:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v6, Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Landroid/widget/ImageView;

    .line 130
    .line 131
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    move-object v2, v1

    .line 135
    check-cast v2, Lb7/S0;

    .line 136
    .line 137
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    iget-object v5, v12, LD1/q;->K:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v5, Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    check-cast v5, Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-static {v2, v3, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_0
    move-object v4, v1

    .line 175
    check-cast v4, Lb7/S0;

    .line 176
    .line 177
    iget-object v4, v4, Lb7/S0;->E0:Lc7/d;

    .line 178
    .line 179
    iget-object v5, v12, LD1/q;->K:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v5, Ljava/util/HashMap;

    .line 182
    .line 183
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    check-cast v5, Ljava/lang/String;

    .line 188
    .line 189
    new-instance v10, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 195
    .line 196
    .line 197
    move-result-object v14

    .line 198
    invoke-virtual {v14, v6, v7}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-virtual {v4, v5, v6}, Lc7/d;->f0(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    move-object v4, v1

    .line 216
    check-cast v4, Lb7/S0;

    .line 217
    .line 218
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-object v6, v12, LD1/q;->K:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v6, Ljava/util/HashMap;

    .line 230
    .line 231
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    check-cast v6, Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-static {v4, v3, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 252
    .line 253
    .line 254
    check-cast v8, Lb7/R0;

    .line 255
    .line 256
    iget-object v3, v8, Lb7/R0;->c0:Landroid/widget/ImageView;

    .line 257
    .line 258
    iget-object v4, v12, LD1/q;->K:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v4, Ljava/util/HashMap;

    .line 261
    .line 262
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    check-cast v2, Landroid/widget/ImageView;

    .line 271
    .line 272
    const/4 v3, 0x0

    .line 273
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    .line 275
    .line 276
    :goto_0
    check-cast v1, Lb7/S0;

    .line 277
    .line 278
    invoke-virtual {v1}, Lb7/S0;->X()V

    .line 279
    .line 280
    .line 281
    return v13

    .line 282
    :pswitch_0
    check-cast v12, LD1/q;

    .line 283
    .line 284
    iget-object v1, v12, LD1/q;->J:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v1, Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    check-cast v1, Ljava/util/HashMap;

    .line 293
    .line 294
    iput-object v1, v12, LD1/q;->K:Ljava/lang/Object;

    .line 295
    .line 296
    iget-object v1, v12, LD1/q;->M:Ljava/lang/Object;

    .line 297
    .line 298
    move-object v2, v1

    .line 299
    check-cast v2, Lb7/I0;

    .line 300
    .line 301
    iget-object v2, v2, Lb7/I0;->r1:Ljava/lang/String;

    .line 302
    .line 303
    new-instance v11, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    const-string v14, "\"series_id\":\""

    .line 306
    .line 307
    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iget-object v14, v12, LD1/q;->K:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast v14, Ljava/util/HashMap;

    .line 313
    .line 314
    const-string v15, "series_id"

    .line 315
    .line 316
    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v14

    .line 320
    check-cast v14, Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v10

    .line 332
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    const-string v10, "_series"

    .line 337
    .line 338
    if-eqz v2, :cond_1

    .line 339
    .line 340
    move-object v2, v1

    .line 341
    check-cast v2, Lb7/I0;

    .line 342
    .line 343
    iget-object v2, v2, Lb7/I0;->E0:Lc7/d;

    .line 344
    .line 345
    iget-object v3, v12, LD1/q;->K:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v3, Ljava/util/HashMap;

    .line 348
    .line 349
    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    check-cast v3, Ljava/lang/String;

    .line 354
    .line 355
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 356
    .line 357
    .line 358
    move-result-object v11

    .line 359
    invoke-virtual {v11, v6, v7}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    invoke-virtual {v2, v3, v6, v10}, Lc7/d;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    check-cast v8, Lb7/H0;

    .line 367
    .line 368
    iget-object v2, v8, Lb7/H0;->c0:Landroid/widget/ImageView;

    .line 369
    .line 370
    iget-object v3, v12, LD1/q;->K:Ljava/lang/Object;

    .line 371
    .line 372
    check-cast v3, Ljava/util/HashMap;

    .line 373
    .line 374
    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    check-cast v2, Landroid/widget/ImageView;

    .line 383
    .line 384
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    .line 386
    .line 387
    move-object v2, v1

    .line 388
    check-cast v2, Lb7/I0;

    .line 389
    .line 390
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    iget-object v5, v12, LD1/q;->K:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v5, Ljava/util/HashMap;

    .line 402
    .line 403
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    check-cast v5, Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-static {v2, v3, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 424
    .line 425
    .line 426
    goto :goto_1

    .line 427
    :cond_1
    move-object v2, v1

    .line 428
    check-cast v2, Lb7/I0;

    .line 429
    .line 430
    iget-object v2, v2, Lb7/I0;->E0:Lc7/d;

    .line 431
    .line 432
    iget-object v4, v12, LD1/q;->K:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v4, Ljava/util/HashMap;

    .line 435
    .line 436
    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    check-cast v4, Ljava/lang/String;

    .line 441
    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 448
    .line 449
    .line 450
    move-result-object v11

    .line 451
    invoke-virtual {v11, v6, v7}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    invoke-virtual {v2, v4, v5}, Lc7/d;->f0(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    check-cast v8, Lb7/H0;

    .line 469
    .line 470
    iget-object v2, v8, Lb7/H0;->c0:Landroid/widget/ImageView;

    .line 471
    .line 472
    iget-object v4, v12, LD1/q;->K:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast v4, Ljava/util/HashMap;

    .line 475
    .line 476
    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    check-cast v2, Landroid/widget/ImageView;

    .line 485
    .line 486
    const/4 v4, 0x0

    .line 487
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 488
    .line 489
    .line 490
    move-object v2, v1

    .line 491
    check-cast v2, Lb7/I0;

    .line 492
    .line 493
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .line 501
    .line 502
    iget-object v5, v12, LD1/q;->K:Ljava/lang/Object;

    .line 503
    .line 504
    check-cast v5, Ljava/util/HashMap;

    .line 505
    .line 506
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    check-cast v5, Ljava/lang/String;

    .line 511
    .line 512
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    invoke-static {v2, v3, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 527
    .line 528
    .line 529
    :goto_1
    check-cast v1, Lb7/I0;

    .line 530
    .line 531
    invoke-virtual {v1}, Lb7/I0;->T()V

    .line 532
    .line 533
    .line 534
    return v13

    .line 535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
