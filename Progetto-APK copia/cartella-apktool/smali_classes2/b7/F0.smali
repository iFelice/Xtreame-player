.class public final Lb7/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:LO1/c0;

.field public final synthetic d:LO1/C;


# direct methods
.method public synthetic constructor <init>(IILO1/C;LO1/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/F0;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Lb7/F0;->d:LO1/C;

    .line 7
    .line 8
    iput-object p4, p0, Lb7/F0;->c:LO1/c0;

    .line 9
    .line 10
    iput p1, p0, Lb7/F0;->b:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb7/F0;->a:I

    .line 4
    .line 5
    const-string v2, "name"

    .line 6
    .line 7
    const-string v3, ")"

    .line 8
    .line 9
    const-string v4, " ("

    .line 10
    .line 11
    const-string v5, "\u2b50"

    .line 12
    .line 13
    const-string v6, ""

    .line 14
    .line 15
    const-string v7, "rating"

    .line 16
    .line 17
    iget v8, v0, Lb7/F0;->b:I

    .line 18
    .line 19
    const v9, 0x7f080906

    .line 20
    .line 21
    .line 22
    iget-object v10, v0, Lb7/F0;->d:LO1/C;

    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    const v12, 0x7f080904

    .line 26
    .line 27
    .line 28
    const/16 v13, 0x8

    .line 29
    .line 30
    iget-object v14, v0, Lb7/F0;->c:LO1/c0;

    .line 31
    .line 32
    const/4 v15, 0x1

    .line 33
    packed-switch v1, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    if-nez p2, :cond_0

    .line 37
    .line 38
    check-cast v14, Lb7/R0;

    .line 39
    .line 40
    iget-object v1, v14, Lb7/R0;->a0:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v14, Lb7/R0;->d0:Landroidx/cardview/widget/CardView;

    .line 46
    .line 47
    invoke-virtual {v1, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_0
    check-cast v14, Lb7/R0;

    .line 53
    .line 54
    iget-object v1, v14, Lb7/R0;->a0:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    check-cast v10, LD1/q;

    .line 60
    .line 61
    iget-object v1, v10, LD1/q;->M:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Lb7/S0;

    .line 64
    .line 65
    invoke-static {v1}, Lb7/S0;->U(Lb7/S0;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v14, Lb7/R0;->d0:Landroidx/cardview/widget/CardView;

    .line 69
    .line 70
    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    .line 72
    .line 73
    sput-boolean v11, Lpe/hf/black20/ORPlayerMainActivity;->G0:Z

    .line 74
    .line 75
    iget-object v1, v10, LD1/q;->J:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    iget-object v12, v10, LD1/q;->M:Ljava/lang/Object;

    .line 96
    .line 97
    if-lez v9, :cond_1

    .line 98
    .line 99
    invoke-virtual {v1, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    :goto_0
    if-ge v11, v1, :cond_1

    .line 108
    .line 109
    invoke-static {v6, v5}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    move-object v9, v12

    .line 114
    check-cast v9, Lb7/S0;

    .line 115
    .line 116
    iget-object v9, v9, Lb7/S0;->T0:Landroid/widget/TextView;

    .line 117
    .line 118
    invoke-static {v6, v4}, La/r;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    iget-object v14, v10, LD1/q;->J:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v14, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v14

    .line 130
    check-cast v14, Ljava/util/HashMap;

    .line 131
    .line 132
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v14

    .line 136
    check-cast v14, Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v13

    .line 148
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    add-int/lit8 v11, v11, 0x1

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_1
    move-object v1, v12

    .line 155
    check-cast v1, Lb7/S0;

    .line 156
    .line 157
    invoke-static {v1}, Lb7/S0;->T(Lb7/S0;)V

    .line 158
    .line 159
    .line 160
    move-object v1, v12

    .line 161
    check-cast v1, Lb7/S0;

    .line 162
    .line 163
    iget-object v1, v1, Lb7/S0;->S0:Landroid/widget/TextView;

    .line 164
    .line 165
    iget-object v3, v10, LD1/q;->J:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v3, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    check-cast v3, Ljava/util/HashMap;

    .line 174
    .line 175
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    check-cast v2, Ljava/lang/CharSequence;

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    move-object v1, v12

    .line 185
    check-cast v1, Lb7/S0;

    .line 186
    .line 187
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget-object v2, v10, LD1/q;->J:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v2, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Ljava/util/HashMap;

    .line 204
    .line 205
    const-string v3, "stream_icon"

    .line 206
    .line 207
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    check-cast v2, Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v1}, LL2/a;->b()LL2/a;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Lcom/bumptech/glide/l;

    .line 222
    .line 223
    const v2, 0x7f08053d

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v2}, LL2/a;->f(I)LL2/a;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    check-cast v1, Lcom/bumptech/glide/l;

    .line 231
    .line 232
    move-object v2, v12

    .line 233
    check-cast v2, Lb7/S0;

    .line 234
    .line 235
    iget-object v2, v2, Lb7/S0;->d1:LN2/a;

    .line 236
    .line 237
    invoke-static {v2}, LG2/c;->b(LN2/a;)LG2/c;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    move-object v2, v12

    .line 246
    check-cast v2, Lb7/S0;

    .line 247
    .line 248
    iget-object v2, v2, Lb7/S0;->R0:Landroid/widget/ImageView;

    .line 249
    .line 250
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 251
    .line 252
    .line 253
    move-object v1, v12

    .line 254
    check-cast v1, Lb7/S0;

    .line 255
    .line 256
    iget-object v2, v10, LD1/q;->J:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v2, Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    check-cast v2, Ljava/util/HashMap;

    .line 265
    .line 266
    const-string v3, "stream_id"

    .line 267
    .line 268
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    check-cast v2, Ljava/lang/String;

    .line 273
    .line 274
    iput-object v2, v1, Lb7/S0;->f1:Ljava/lang/String;

    .line 275
    .line 276
    check-cast v12, Lb7/S0;

    .line 277
    .line 278
    iget-object v1, v10, LD1/q;->J:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v1, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    check-cast v1, Ljava/util/HashMap;

    .line 287
    .line 288
    const-string v2, "custom_sid"

    .line 289
    .line 290
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    check-cast v1, Ljava/lang/String;

    .line 295
    .line 296
    iput-object v1, v12, Lb7/S0;->g1:Ljava/lang/String;

    .line 297
    .line 298
    :goto_1
    return-void

    .line 299
    :pswitch_0
    if-nez p2, :cond_2

    .line 300
    .line 301
    check-cast v14, Lb7/H0;

    .line 302
    .line 303
    iget-object v1, v14, Lb7/H0;->a0:Landroid/widget/TextView;

    .line 304
    .line 305
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 306
    .line 307
    .line 308
    iget-object v1, v14, Lb7/H0;->d0:Landroidx/cardview/widget/CardView;

    .line 309
    .line 310
    invoke-virtual {v1, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_4

    .line 314
    .line 315
    :cond_2
    check-cast v14, Lb7/H0;

    .line 316
    .line 317
    iget-object v1, v14, Lb7/H0;->a0:Landroid/widget/TextView;

    .line 318
    .line 319
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 320
    .line 321
    .line 322
    iget-object v1, v14, Lb7/H0;->d0:Landroidx/cardview/widget/CardView;

    .line 323
    .line 324
    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 325
    .line 326
    .line 327
    sput-boolean v11, Lpe/hf/black20/ORPlayerMainActivity;->G0:Z

    .line 328
    .line 329
    check-cast v10, LD1/q;

    .line 330
    .line 331
    iget-object v1, v10, LD1/q;->M:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v1, Lb7/I0;

    .line 334
    .line 335
    iget-object v1, v1, Lb7/I0;->X0:Landroid/widget/TextView;

    .line 336
    .line 337
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    .line 339
    .line 340
    iget-object v1, v10, LD1/q;->M:Ljava/lang/Object;

    .line 341
    .line 342
    move-object v9, v1

    .line 343
    check-cast v9, Lb7/I0;

    .line 344
    .line 345
    iget-object v9, v9, Lb7/I0;->Y0:Landroid/widget/TextView;

    .line 346
    .line 347
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    .line 349
    .line 350
    move-object v9, v1

    .line 351
    check-cast v9, Lb7/I0;

    .line 352
    .line 353
    iget-object v9, v9, Lb7/I0;->a1:Landroid/widget/TextView;

    .line 354
    .line 355
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    .line 357
    .line 358
    move-object v9, v1

    .line 359
    check-cast v9, Lb7/I0;

    .line 360
    .line 361
    iget-object v9, v9, Lb7/I0;->Z0:Landroid/widget/TextView;

    .line 362
    .line 363
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    .line 365
    .line 366
    move-object v9, v1

    .line 367
    check-cast v9, Lb7/I0;

    .line 368
    .line 369
    iget-object v9, v9, Lb7/I0;->W0:Landroid/widget/TextView;

    .line 370
    .line 371
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    .line 373
    .line 374
    move-object v9, v1

    .line 375
    check-cast v9, Lb7/I0;

    .line 376
    .line 377
    iget-object v9, v9, Lb7/I0;->V0:Landroid/widget/TextView;

    .line 378
    .line 379
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    .line 381
    .line 382
    move-object v9, v1

    .line 383
    check-cast v9, Lb7/I0;

    .line 384
    .line 385
    iget-object v9, v9, Lb7/I0;->U0:Landroid/widget/TextView;

    .line 386
    .line 387
    iget-object v12, v10, LD1/q;->J:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast v12, Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v12

    .line 395
    check-cast v12, Ljava/util/HashMap;

    .line 396
    .line 397
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    check-cast v2, Ljava/lang/String;

    .line 402
    .line 403
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    .line 409
    .line 410
    iget-object v2, v10, LD1/q;->J:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast v2, Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    check-cast v2, Ljava/util/HashMap;

    .line 419
    .line 420
    const-string v9, "backdrop_path"

    .line 421
    .line 422
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    check-cast v2, Ljava/lang/String;

    .line 427
    .line 428
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    if-eqz v2, :cond_3

    .line 433
    .line 434
    move-object v2, v1

    .line 435
    check-cast v2, Lb7/I0;

    .line 436
    .line 437
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-static {v2}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    iget-object v9, v10, LD1/q;->J:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v9, Ljava/util/ArrayList;

    .line 448
    .line 449
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v9

    .line 453
    check-cast v9, Ljava/util/HashMap;

    .line 454
    .line 455
    const-string v12, "cover"

    .line 456
    .line 457
    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v9

    .line 461
    check-cast v9, Ljava/lang/String;

    .line 462
    .line 463
    invoke-virtual {v2, v9}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    invoke-virtual {v2}, LL2/a;->b()LL2/a;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    check-cast v2, Lcom/bumptech/glide/l;

    .line 472
    .line 473
    move-object v9, v1

    .line 474
    check-cast v9, Lb7/I0;

    .line 475
    .line 476
    iget-object v9, v9, Lb7/I0;->q1:LN2/a;

    .line 477
    .line 478
    invoke-static {v9}, LG2/c;->b(LN2/a;)LG2/c;

    .line 479
    .line 480
    .line 481
    move-result-object v9

    .line 482
    invoke-virtual {v2, v9}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    move-object v9, v1

    .line 487
    check-cast v9, Lb7/I0;

    .line 488
    .line 489
    iget-object v9, v9, Lb7/I0;->T0:Landroid/widget/ImageView;

    .line 490
    .line 491
    invoke-virtual {v2, v9}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 492
    .line 493
    .line 494
    goto :goto_2

    .line 495
    :cond_3
    move-object v2, v1

    .line 496
    check-cast v2, Lb7/I0;

    .line 497
    .line 498
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-static {v2}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    iget-object v12, v10, LD1/q;->J:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast v12, Ljava/util/ArrayList;

    .line 509
    .line 510
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v12

    .line 514
    check-cast v12, Ljava/util/HashMap;

    .line 515
    .line 516
    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v9

    .line 520
    check-cast v9, Ljava/lang/String;

    .line 521
    .line 522
    invoke-virtual {v2, v9}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-virtual {v2}, LL2/a;->b()LL2/a;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    check-cast v2, Lcom/bumptech/glide/l;

    .line 531
    .line 532
    move-object v9, v1

    .line 533
    check-cast v9, Lb7/I0;

    .line 534
    .line 535
    iget-object v9, v9, Lb7/I0;->q1:LN2/a;

    .line 536
    .line 537
    invoke-static {v9}, LG2/c;->b(LN2/a;)LG2/c;

    .line 538
    .line 539
    .line 540
    move-result-object v9

    .line 541
    invoke-virtual {v2, v9}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    move-object v9, v1

    .line 546
    check-cast v9, Lb7/I0;

    .line 547
    .line 548
    iget-object v9, v9, Lb7/I0;->T0:Landroid/widget/ImageView;

    .line 549
    .line 550
    invoke-virtual {v2, v9}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 551
    .line 552
    .line 553
    :goto_2
    iget-object v2, v10, LD1/q;->J:Ljava/lang/Object;

    .line 554
    .line 555
    check-cast v2, Ljava/util/ArrayList;

    .line 556
    .line 557
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    check-cast v2, Ljava/util/HashMap;

    .line 562
    .line 563
    const-string v9, "series_id"

    .line 564
    .line 565
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    check-cast v2, Ljava/lang/String;

    .line 570
    .line 571
    iput-object v2, v10, LD1/q;->L:Ljava/lang/Object;

    .line 572
    .line 573
    move-object v2, v1

    .line 574
    check-cast v2, Lb7/I0;

    .line 575
    .line 576
    iget-object v2, v2, Lb7/I0;->X0:Landroid/widget/TextView;

    .line 577
    .line 578
    iget-object v9, v10, LD1/q;->J:Ljava/lang/Object;

    .line 579
    .line 580
    check-cast v9, Ljava/util/ArrayList;

    .line 581
    .line 582
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v9

    .line 586
    check-cast v9, Ljava/util/HashMap;

    .line 587
    .line 588
    const-string v12, "genre"

    .line 589
    .line 590
    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v9

    .line 594
    check-cast v9, Ljava/lang/CharSequence;

    .line 595
    .line 596
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    .line 598
    .line 599
    move-object v2, v1

    .line 600
    check-cast v2, Lb7/I0;

    .line 601
    .line 602
    iget-object v2, v2, Lb7/I0;->Y0:Landroid/widget/TextView;

    .line 603
    .line 604
    iget-object v9, v10, LD1/q;->J:Ljava/lang/Object;

    .line 605
    .line 606
    check-cast v9, Ljava/util/ArrayList;

    .line 607
    .line 608
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v9

    .line 612
    check-cast v9, Ljava/util/HashMap;

    .line 613
    .line 614
    const-string v12, "plot"

    .line 615
    .line 616
    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v9

    .line 620
    check-cast v9, Ljava/lang/CharSequence;

    .line 621
    .line 622
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    .line 624
    .line 625
    move-object v2, v1

    .line 626
    check-cast v2, Lb7/I0;

    .line 627
    .line 628
    iget-object v2, v2, Lb7/I0;->a1:Landroid/widget/TextView;

    .line 629
    .line 630
    iget-object v9, v10, LD1/q;->J:Ljava/lang/Object;

    .line 631
    .line 632
    check-cast v9, Ljava/util/ArrayList;

    .line 633
    .line 634
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v9

    .line 638
    check-cast v9, Ljava/util/HashMap;

    .line 639
    .line 640
    const-string v12, "cast"

    .line 641
    .line 642
    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v9

    .line 646
    check-cast v9, Ljava/lang/CharSequence;

    .line 647
    .line 648
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    .line 650
    .line 651
    iget-object v2, v10, LD1/q;->J:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v2, Ljava/util/ArrayList;

    .line 654
    .line 655
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v2

    .line 659
    check-cast v2, Ljava/util/HashMap;

    .line 660
    .line 661
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    check-cast v2, Ljava/lang/String;

    .line 666
    .line 667
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 668
    .line 669
    .line 670
    move-result v9

    .line 671
    if-lez v9, :cond_4

    .line 672
    .line 673
    invoke-virtual {v2, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v2

    .line 677
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    :goto_3
    if-ge v11, v2, :cond_4

    .line 682
    .line 683
    invoke-static {v6, v5}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v6

    .line 687
    move-object v9, v1

    .line 688
    check-cast v9, Lb7/I0;

    .line 689
    .line 690
    iget-object v9, v9, Lb7/I0;->V0:Landroid/widget/TextView;

    .line 691
    .line 692
    invoke-static {v6, v4}, La/r;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    move-result-object v12

    .line 696
    iget-object v14, v10, LD1/q;->J:Ljava/lang/Object;

    .line 697
    .line 698
    check-cast v14, Ljava/util/ArrayList;

    .line 699
    .line 700
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v14

    .line 704
    check-cast v14, Ljava/util/HashMap;

    .line 705
    .line 706
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v14

    .line 710
    check-cast v14, Ljava/lang/String;

    .line 711
    .line 712
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v12

    .line 722
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    .line 724
    .line 725
    add-int/lit8 v11, v11, 0x1

    .line 726
    .line 727
    goto :goto_3

    .line 728
    :cond_4
    iget-object v2, v10, LD1/q;->J:Ljava/lang/Object;

    .line 729
    .line 730
    check-cast v2, Ljava/util/ArrayList;

    .line 731
    .line 732
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    check-cast v2, Ljava/util/HashMap;

    .line 737
    .line 738
    const-string v3, "releaseDate"

    .line 739
    .line 740
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    check-cast v2, Ljava/lang/String;

    .line 745
    .line 746
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 747
    .line 748
    .line 749
    move-result v3

    .line 750
    if-le v3, v13, :cond_5

    .line 751
    .line 752
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    :cond_5
    check-cast v1, Lb7/I0;

    .line 757
    .line 758
    iget-object v1, v1, Lb7/I0;->W0:Landroid/widget/TextView;

    .line 759
    .line 760
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    .line 762
    .line 763
    :goto_4
    return-void

    .line 764
    nop

    .line 765
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
