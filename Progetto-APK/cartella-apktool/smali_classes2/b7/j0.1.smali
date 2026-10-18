.class public final Lb7/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lb7/j0;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lb7/j0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lb7/j0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 13

    .line 1
    iget v0, p0, Lb7/j0;->a:I

    .line 2
    .line 3
    const-string v1, "cont"

    .line 4
    .line 5
    const-string v2, "fav"

    .line 6
    .line 7
    const-string v3, "new"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const-string v5, "Movie "

    .line 11
    .line 12
    const-string v6, "ORT_isDemo"

    .line 13
    .line 14
    iget-object v7, p0, Lb7/j0;->c:Ljava/lang/Object;

    .line 15
    .line 16
    const v8, 0x7f080906

    .line 17
    .line 18
    .line 19
    const v9, 0x7f080904

    .line 20
    .line 21
    .line 22
    const/16 v10, 0x8

    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    iget-object v12, p0, Lb7/j0;->b:Ljava/lang/Object;

    .line 26
    .line 27
    packed-switch v0, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    check-cast v12, Landroid/widget/Button;

    .line 33
    .line 34
    check-cast v7, Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 35
    .line 36
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const p2, 0x7f060100

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {v12, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    check-cast v12, Landroid/widget/Button;

    .line 52
    .line 53
    invoke-virtual {v12, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void

    .line 57
    :pswitch_0
    if-nez p2, :cond_1

    .line 58
    .line 59
    check-cast v12, Lb7/w1;

    .line 60
    .line 61
    iget-object p1, v12, Lb7/w1;->a0:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, v12, Lb7/w1;->d0:Landroidx/cardview/widget/CardView;

    .line 67
    .line 68
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2, v6, v11}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_2

    .line 93
    .line 94
    move-object p2, v12

    .line 95
    check-cast p2, Lb7/w1;

    .line 96
    .line 97
    iget-object p2, p2, Lb7/w1;->a0:Landroid/widget/TextView;

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    check-cast v12, Lb7/w1;

    .line 119
    .line 120
    iget-object p1, v12, Lb7/w1;->a0:Landroid/widget/TextView;

    .line 121
    .line 122
    invoke-virtual {p1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    iget-object p1, v12, Lb7/w1;->d0:Landroidx/cardview/widget/CardView;

    .line 126
    .line 127
    invoke-virtual {p1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    .line 129
    .line 130
    :goto_1
    return-void

    .line 131
    :pswitch_1
    if-nez p2, :cond_3

    .line 132
    .line 133
    check-cast v12, Lb7/s0;

    .line 134
    .line 135
    iget-object p1, v12, Lb7/s0;->a0:Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, v12, Lb7/s0;->d0:Landroidx/cardview/widget/CardView;

    .line 141
    .line 142
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p2, v6, v11}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    if-eqz p2, :cond_4

    .line 167
    .line 168
    move-object p2, v12

    .line 169
    check-cast p2, Lb7/s0;

    .line 170
    .line 171
    iget-object p2, p2, Lb7/s0;->a0:Landroid/widget/TextView;

    .line 172
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    :cond_4
    check-cast v12, Lb7/s0;

    .line 193
    .line 194
    iget-object p1, v12, Lb7/s0;->a0:Landroid/widget/TextView;

    .line 195
    .line 196
    invoke-virtual {p1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    iget-object p1, v12, Lb7/s0;->d0:Landroidx/cardview/widget/CardView;

    .line 200
    .line 201
    invoke-virtual {p1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 202
    .line 203
    .line 204
    :goto_2
    return-void

    .line 205
    :pswitch_2
    if-nez p2, :cond_5

    .line 206
    .line 207
    check-cast v12, Lb7/u1;

    .line 208
    .line 209
    iget-object p1, v12, Lb7/u1;->a0:Landroid/widget/TextView;

    .line 210
    .line 211
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    iget-object p1, v12, Lb7/u1;->d0:Landroidx/cardview/widget/CardView;

    .line 215
    .line 216
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_5
    check-cast v12, Lb7/u1;

    .line 221
    .line 222
    iget-object p1, v12, Lb7/u1;->a0:Landroid/widget/TextView;

    .line 223
    .line 224
    invoke-virtual {p1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    iget-object p1, v12, Lb7/u1;->d0:Landroidx/cardview/widget/CardView;

    .line 228
    .line 229
    invoke-virtual {p1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 230
    .line 231
    .line 232
    :goto_3
    return-void

    .line 233
    :pswitch_3
    if-eqz p2, :cond_6

    .line 234
    .line 235
    check-cast v12, Landroid/widget/Button;

    .line 236
    .line 237
    const-string p1, "#049BA7"

    .line 238
    .line 239
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    invoke-virtual {v12, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 244
    .line 245
    .line 246
    check-cast v7, Lb7/M0;

    .line 247
    .line 248
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_6
    check-cast v12, Landroid/widget/Button;

    .line 253
    .line 254
    invoke-virtual {v12, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 255
    .line 256
    .line 257
    check-cast v7, Lb7/M0;

    .line 258
    .line 259
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    :goto_4
    return-void

    .line 263
    :pswitch_4
    if-nez p2, :cond_7

    .line 264
    .line 265
    check-cast v12, Lb7/p0;

    .line 266
    .line 267
    iget-object p1, v12, Lb7/p0;->a0:Landroid/widget/TextView;

    .line 268
    .line 269
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 270
    .line 271
    .line 272
    iget-object p1, v12, Lb7/p0;->d0:Landroidx/cardview/widget/CardView;

    .line 273
    .line 274
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    invoke-virtual {p2, v6, v11}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 295
    .line 296
    .line 297
    move-result p2

    .line 298
    if-eqz p2, :cond_8

    .line 299
    .line 300
    move-object p2, v12

    .line 301
    check-cast p2, Lb7/p0;

    .line 302
    .line 303
    iget-object p2, p2, Lb7/p0;->a0:Landroid/widget/TextView;

    .line 304
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .line 323
    .line 324
    :cond_8
    check-cast v12, Lb7/p0;

    .line 325
    .line 326
    iget-object p2, v12, Lb7/p0;->a0:Landroid/widget/TextView;

    .line 327
    .line 328
    invoke-virtual {p2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 329
    .line 330
    .line 331
    iget-object p2, v12, Lb7/p0;->d0:Landroidx/cardview/widget/CardView;

    .line 332
    .line 333
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 334
    .line 335
    .line 336
    check-cast v7, Lb7/i0;

    .line 337
    .line 338
    iget-object p2, v7, Lb7/i0;->L:Lb7/t0;

    .line 339
    .line 340
    invoke-static {p2, v11}, Lb7/t0;->W(Lb7/t0;Z)V

    .line 341
    .line 342
    .line 343
    iget-object p2, v7, Lb7/i0;->L:Lb7/t0;

    .line 344
    .line 345
    invoke-static {p2, v4}, Lb7/t0;->X(Lb7/t0;Z)V

    .line 346
    .line 347
    .line 348
    invoke-static {p2, v3, p1}, Lb7/t0;->T(Lb7/t0;Ljava/lang/String;I)V

    .line 349
    .line 350
    .line 351
    :goto_5
    return-void

    .line 352
    :pswitch_5
    if-nez p2, :cond_9

    .line 353
    .line 354
    check-cast v12, Lb7/o0;

    .line 355
    .line 356
    iget-object p1, v12, Lb7/o0;->a0:Landroid/widget/TextView;

    .line 357
    .line 358
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 359
    .line 360
    .line 361
    iget-object p1, v12, Lb7/o0;->d0:Landroidx/cardview/widget/CardView;

    .line 362
    .line 363
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 364
    .line 365
    .line 366
    goto :goto_6

    .line 367
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    invoke-virtual {p2, v6, v11}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 384
    .line 385
    .line 386
    move-result p2

    .line 387
    if-eqz p2, :cond_a

    .line 388
    .line 389
    move-object p2, v12

    .line 390
    check-cast p2, Lb7/o0;

    .line 391
    .line 392
    iget-object p2, p2, Lb7/o0;->a0:Landroid/widget/TextView;

    .line 393
    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    .line 412
    .line 413
    :cond_a
    check-cast v12, Lb7/o0;

    .line 414
    .line 415
    iget-object p2, v12, Lb7/o0;->a0:Landroid/widget/TextView;

    .line 416
    .line 417
    invoke-virtual {p2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 418
    .line 419
    .line 420
    iget-object p2, v12, Lb7/o0;->d0:Landroidx/cardview/widget/CardView;

    .line 421
    .line 422
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 423
    .line 424
    .line 425
    check-cast v7, Lb7/i0;

    .line 426
    .line 427
    iget-object p2, v7, Lb7/i0;->L:Lb7/t0;

    .line 428
    .line 429
    invoke-static {p2, v11}, Lb7/t0;->W(Lb7/t0;Z)V

    .line 430
    .line 431
    .line 432
    iget-object p2, v7, Lb7/i0;->L:Lb7/t0;

    .line 433
    .line 434
    invoke-static {p2, v4}, Lb7/t0;->X(Lb7/t0;Z)V

    .line 435
    .line 436
    .line 437
    invoke-static {p2, v2, p1}, Lb7/t0;->T(Lb7/t0;Ljava/lang/String;I)V

    .line 438
    .line 439
    .line 440
    :goto_6
    return-void

    .line 441
    :pswitch_6
    if-nez p2, :cond_b

    .line 442
    .line 443
    check-cast v12, Lb7/n0;

    .line 444
    .line 445
    iget-object p1, v12, Lb7/n0;->a0:Landroid/widget/TextView;

    .line 446
    .line 447
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 448
    .line 449
    .line 450
    iget-object p1, v12, Lb7/n0;->d0:Landroidx/cardview/widget/CardView;

    .line 451
    .line 452
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 453
    .line 454
    .line 455
    goto :goto_7

    .line 456
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 465
    .line 466
    .line 467
    move-result p1

    .line 468
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 469
    .line 470
    .line 471
    move-result-object p2

    .line 472
    invoke-virtual {p2, v6, v11}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 473
    .line 474
    .line 475
    move-result p2

    .line 476
    if-eqz p2, :cond_c

    .line 477
    .line 478
    move-object p2, v12

    .line 479
    check-cast p2, Lb7/n0;

    .line 480
    .line 481
    iget-object p2, p2, Lb7/n0;->a0:Landroid/widget/TextView;

    .line 482
    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    .line 501
    .line 502
    :cond_c
    check-cast v12, Lb7/n0;

    .line 503
    .line 504
    iget-object p2, v12, Lb7/n0;->a0:Landroid/widget/TextView;

    .line 505
    .line 506
    invoke-virtual {p2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 507
    .line 508
    .line 509
    iget-object p2, v12, Lb7/n0;->d0:Landroidx/cardview/widget/CardView;

    .line 510
    .line 511
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 512
    .line 513
    .line 514
    check-cast v7, Lb7/i0;

    .line 515
    .line 516
    iget-object p2, v7, Lb7/i0;->L:Lb7/t0;

    .line 517
    .line 518
    invoke-static {p2, v11}, Lb7/t0;->W(Lb7/t0;Z)V

    .line 519
    .line 520
    .line 521
    iget-object p2, v7, Lb7/i0;->L:Lb7/t0;

    .line 522
    .line 523
    invoke-static {p2, v4}, Lb7/t0;->X(Lb7/t0;Z)V

    .line 524
    .line 525
    .line 526
    invoke-static {p2, v1, p1}, Lb7/t0;->T(Lb7/t0;Ljava/lang/String;I)V

    .line 527
    .line 528
    .line 529
    :goto_7
    return-void

    .line 530
    :pswitch_7
    if-nez p2, :cond_d

    .line 531
    .line 532
    check-cast v12, Lb7/s0;

    .line 533
    .line 534
    iget-object p1, v12, Lb7/s0;->a0:Landroid/widget/TextView;

    .line 535
    .line 536
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 537
    .line 538
    .line 539
    iget-object p1, v12, Lb7/s0;->d0:Landroidx/cardview/widget/CardView;

    .line 540
    .line 541
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 542
    .line 543
    .line 544
    goto :goto_8

    .line 545
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 554
    .line 555
    .line 556
    move-result p1

    .line 557
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 558
    .line 559
    .line 560
    move-result-object p2

    .line 561
    invoke-virtual {p2, v6, v11}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 562
    .line 563
    .line 564
    move-result p2

    .line 565
    if-eqz p2, :cond_e

    .line 566
    .line 567
    move-object p2, v12

    .line 568
    check-cast p2, Lb7/s0;

    .line 569
    .line 570
    iget-object p2, p2, Lb7/s0;->a0:Landroid/widget/TextView;

    .line 571
    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    .line 590
    .line 591
    :cond_e
    check-cast v12, Lb7/s0;

    .line 592
    .line 593
    iget-object p2, v12, Lb7/s0;->a0:Landroid/widget/TextView;

    .line 594
    .line 595
    invoke-virtual {p2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 596
    .line 597
    .line 598
    iget-object p2, v12, Lb7/s0;->d0:Landroidx/cardview/widget/CardView;

    .line 599
    .line 600
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 601
    .line 602
    .line 603
    check-cast v7, Lb7/m0;

    .line 604
    .line 605
    iget-object p2, v7, Lb7/m0;->L:Lb7/t0;

    .line 606
    .line 607
    sget v0, Lb7/t0;->V1:I

    .line 608
    .line 609
    invoke-virtual {p2}, Lb7/t0;->Z()V

    .line 610
    .line 611
    .line 612
    iget-object p2, v7, Lb7/m0;->L:Lb7/t0;

    .line 613
    .line 614
    invoke-static {p2, v11}, Lb7/t0;->W(Lb7/t0;Z)V

    .line 615
    .line 616
    .line 617
    invoke-static {p2, v4}, Lb7/t0;->X(Lb7/t0;Z)V

    .line 618
    .line 619
    .line 620
    invoke-static {p2, v3, p1}, Lb7/t0;->S(Lb7/t0;Ljava/lang/String;I)V

    .line 621
    .line 622
    .line 623
    :goto_8
    return-void

    .line 624
    :pswitch_8
    if-nez p2, :cond_f

    .line 625
    .line 626
    check-cast v12, Lb7/r0;

    .line 627
    .line 628
    iget-object p1, v12, Lb7/r0;->a0:Landroid/widget/TextView;

    .line 629
    .line 630
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 631
    .line 632
    .line 633
    iget-object p1, v12, Lb7/r0;->d0:Landroidx/cardview/widget/CardView;

    .line 634
    .line 635
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 636
    .line 637
    .line 638
    goto :goto_9

    .line 639
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object p1

    .line 643
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object p1

    .line 647
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 648
    .line 649
    .line 650
    move-result p1

    .line 651
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 652
    .line 653
    .line 654
    move-result-object p2

    .line 655
    invoke-virtual {p2, v6, v11}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 656
    .line 657
    .line 658
    move-result p2

    .line 659
    if-eqz p2, :cond_10

    .line 660
    .line 661
    move-object p2, v12

    .line 662
    check-cast p2, Lb7/r0;

    .line 663
    .line 664
    iget-object p2, p2, Lb7/r0;->a0:Landroid/widget/TextView;

    .line 665
    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    .line 667
    .line 668
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    .line 684
    .line 685
    :cond_10
    check-cast v12, Lb7/r0;

    .line 686
    .line 687
    iget-object p2, v12, Lb7/r0;->a0:Landroid/widget/TextView;

    .line 688
    .line 689
    invoke-virtual {p2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 690
    .line 691
    .line 692
    iget-object p2, v12, Lb7/r0;->d0:Landroidx/cardview/widget/CardView;

    .line 693
    .line 694
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 695
    .line 696
    .line 697
    check-cast v7, Lb7/m0;

    .line 698
    .line 699
    iget-object p2, v7, Lb7/m0;->L:Lb7/t0;

    .line 700
    .line 701
    invoke-static {p2, v11}, Lb7/t0;->W(Lb7/t0;Z)V

    .line 702
    .line 703
    .line 704
    iget-object p2, v7, Lb7/m0;->L:Lb7/t0;

    .line 705
    .line 706
    invoke-static {p2, v4}, Lb7/t0;->X(Lb7/t0;Z)V

    .line 707
    .line 708
    .line 709
    invoke-static {p2, v2, p1}, Lb7/t0;->S(Lb7/t0;Ljava/lang/String;I)V

    .line 710
    .line 711
    .line 712
    :goto_9
    return-void

    .line 713
    :pswitch_9
    if-nez p2, :cond_11

    .line 714
    .line 715
    check-cast v12, Lb7/q0;

    .line 716
    .line 717
    iget-object p1, v12, Lb7/q0;->a0:Landroid/widget/TextView;

    .line 718
    .line 719
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 720
    .line 721
    .line 722
    iget-object p1, v12, Lb7/q0;->d0:Landroidx/cardview/widget/CardView;

    .line 723
    .line 724
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 725
    .line 726
    .line 727
    goto :goto_a

    .line 728
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object p1

    .line 732
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object p1

    .line 736
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 737
    .line 738
    .line 739
    move-result p1

    .line 740
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 741
    .line 742
    .line 743
    move-result-object p2

    .line 744
    invoke-virtual {p2, v6, v11}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 745
    .line 746
    .line 747
    move-result p2

    .line 748
    if-eqz p2, :cond_12

    .line 749
    .line 750
    move-object p2, v12

    .line 751
    check-cast p2, Lb7/q0;

    .line 752
    .line 753
    iget-object p2, p2, Lb7/q0;->a0:Landroid/widget/TextView;

    .line 754
    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    .line 756
    .line 757
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v2

    .line 764
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v0

    .line 771
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    .line 773
    .line 774
    :cond_12
    check-cast v12, Lb7/q0;

    .line 775
    .line 776
    iget-object p2, v12, Lb7/q0;->a0:Landroid/widget/TextView;

    .line 777
    .line 778
    invoke-virtual {p2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 779
    .line 780
    .line 781
    iget-object p2, v12, Lb7/q0;->d0:Landroidx/cardview/widget/CardView;

    .line 782
    .line 783
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 784
    .line 785
    .line 786
    check-cast v7, Lb7/m0;

    .line 787
    .line 788
    iget-object p2, v7, Lb7/m0;->L:Lb7/t0;

    .line 789
    .line 790
    invoke-static {p2, v11}, Lb7/t0;->W(Lb7/t0;Z)V

    .line 791
    .line 792
    .line 793
    iget-object p2, v7, Lb7/m0;->L:Lb7/t0;

    .line 794
    .line 795
    invoke-static {p2, v4}, Lb7/t0;->X(Lb7/t0;Z)V

    .line 796
    .line 797
    .line 798
    invoke-static {p2, v1, p1}, Lb7/t0;->S(Lb7/t0;Ljava/lang/String;I)V

    .line 799
    .line 800
    .line 801
    :goto_a
    return-void

    .line 802
    :pswitch_a
    if-nez p2, :cond_13

    .line 803
    .line 804
    check-cast v12, Lb7/g0;

    .line 805
    .line 806
    iget-object p1, v12, Lb7/g0;->a0:Landroid/widget/TextView;

    .line 807
    .line 808
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 809
    .line 810
    .line 811
    iget-object p1, v12, Lb7/g0;->d0:Landroidx/cardview/widget/CardView;

    .line 812
    .line 813
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 814
    .line 815
    .line 816
    check-cast v7, Lb7/k0;

    .line 817
    .line 818
    iget-object p1, v7, Lb7/k0;->N:LY/s;

    .line 819
    .line 820
    check-cast p1, Lb7/t0;

    .line 821
    .line 822
    sget p2, Lb7/t0;->V1:I

    .line 823
    .line 824
    invoke-virtual {p1}, Lb7/t0;->a0()V

    .line 825
    .line 826
    .line 827
    goto/16 :goto_b

    .line 828
    .line 829
    :cond_13
    check-cast v12, Lb7/g0;

    .line 830
    .line 831
    iget-object p2, v12, Lb7/g0;->d0:Landroidx/cardview/widget/CardView;

    .line 832
    .line 833
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 834
    .line 835
    .line 836
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object p1

    .line 840
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object p1

    .line 844
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 845
    .line 846
    .line 847
    move-result p1

    .line 848
    check-cast v7, Lb7/k0;

    .line 849
    .line 850
    iget-object p2, v7, Lb7/k0;->N:LY/s;

    .line 851
    .line 852
    check-cast p2, Lb7/t0;

    .line 853
    .line 854
    invoke-static {p2, v4}, Lb7/t0;->W(Lb7/t0;Z)V

    .line 855
    .line 856
    .line 857
    iget-object p2, v7, Lb7/k0;->N:LY/s;

    .line 858
    .line 859
    move-object v0, p2

    .line 860
    check-cast v0, Lb7/t0;

    .line 861
    .line 862
    invoke-static {v0, v11}, Lb7/t0;->X(Lb7/t0;Z)V

    .line 863
    .line 864
    .line 865
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    invoke-virtual {v0, v6, v11}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 870
    .line 871
    .line 872
    move-result v0

    .line 873
    const-string v1, "name"

    .line 874
    .line 875
    if-nez v0, :cond_15

    .line 876
    .line 877
    move-object v0, p2

    .line 878
    check-cast v0, Lb7/t0;

    .line 879
    .line 880
    iget-object v2, v0, Lb7/t0;->f1:Ljava/util/ArrayList;

    .line 881
    .line 882
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    check-cast v2, Ljava/util/HashMap;

    .line 887
    .line 888
    const-string v3, "epg_channel_id"

    .line 889
    .line 890
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v2

    .line 894
    check-cast v2, Ljava/lang/String;

    .line 895
    .line 896
    iput-object v2, v0, Lb7/t0;->K1:Ljava/lang/String;

    .line 897
    .line 898
    move-object v0, p2

    .line 899
    check-cast v0, Lb7/t0;

    .line 900
    .line 901
    iget-object v2, v0, Lb7/t0;->G1:Landroid/widget/TextView;

    .line 902
    .line 903
    iget-object v0, v0, Lb7/t0;->f1:Ljava/util/ArrayList;

    .line 904
    .line 905
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    check-cast v0, Ljava/util/HashMap;

    .line 910
    .line 911
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    check-cast v0, Ljava/lang/String;

    .line 916
    .line 917
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    .line 923
    .line 924
    move-object v0, p2

    .line 925
    check-cast v0, Lb7/t0;

    .line 926
    .line 927
    iget-object v2, v0, Lb7/t0;->f1:Ljava/util/ArrayList;

    .line 928
    .line 929
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    move-result-object p1

    .line 933
    check-cast p1, Ljava/util/HashMap;

    .line 934
    .line 935
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    move-result-object p1

    .line 939
    check-cast p1, Ljava/lang/String;

    .line 940
    .line 941
    iput-object p1, v0, Lb7/t0;->U1:Ljava/lang/String;

    .line 942
    .line 943
    iget-object p1, v12, Lb7/g0;->a0:Landroid/widget/TextView;

    .line 944
    .line 945
    invoke-virtual {p1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 946
    .line 947
    .line 948
    check-cast p2, Lb7/t0;

    .line 949
    .line 950
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 951
    .line 952
    .line 953
    sput-boolean v11, Lpe/hf/black20/ORPlayerMainActivity;->G0:Z

    .line 954
    .line 955
    iget-object p1, p2, Lb7/t0;->I1:Lb7/c0;

    .line 956
    .line 957
    if-eqz p1, :cond_14

    .line 958
    .line 959
    iget-object v0, p2, Lb7/t0;->H1:Landroid/os/Handler;

    .line 960
    .line 961
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 962
    .line 963
    .line 964
    iget-object p1, p2, Lb7/t0;->H1:Landroid/os/Handler;

    .line 965
    .line 966
    const/4 v0, 0x0

    .line 967
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 968
    .line 969
    .line 970
    :cond_14
    new-instance p1, Landroid/os/Handler;

    .line 971
    .line 972
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 973
    .line 974
    .line 975
    iput-object p1, p2, Lb7/t0;->H1:Landroid/os/Handler;

    .line 976
    .line 977
    new-instance v0, Lb7/c0;

    .line 978
    .line 979
    const/4 v1, 0x3

    .line 980
    invoke-direct {v0, p2, v1}, Lb7/c0;-><init>(Lb7/t0;I)V

    .line 981
    .line 982
    .line 983
    iput-object v0, p2, Lb7/t0;->I1:Lb7/c0;

    .line 984
    .line 985
    const-wide/16 v1, 0x3e8

    .line 986
    .line 987
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 988
    .line 989
    .line 990
    goto :goto_b

    .line 991
    :cond_15
    iget-object v0, v12, Lb7/g0;->a0:Landroid/widget/TextView;

    .line 992
    .line 993
    move-object v2, p2

    .line 994
    check-cast v2, Lb7/t0;

    .line 995
    .line 996
    iget-object v2, v2, Lb7/t0;->f1:Ljava/util/ArrayList;

    .line 997
    .line 998
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 999
    .line 1000
    .line 1001
    move-result-object v2

    .line 1002
    check-cast v2, Ljava/util/HashMap;

    .line 1003
    .line 1004
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v1

    .line 1008
    check-cast v1, Ljava/lang/CharSequence;

    .line 1009
    .line 1010
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    .line 1012
    .line 1013
    move-object v0, p2

    .line 1014
    check-cast v0, Lb7/t0;

    .line 1015
    .line 1016
    iget-object v0, v0, Lb7/t0;->G1:Landroid/widget/TextView;

    .line 1017
    .line 1018
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    const-string v2, "2131951753"

    .line 1021
    .line 1022
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object p1

    .line 1029
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object p1

    .line 1036
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    .line 1038
    .line 1039
    move-object p1, p2

    .line 1040
    check-cast p1, Lb7/t0;

    .line 1041
    .line 1042
    iget-object p1, p1, Lb7/t0;->A1:Landroid/widget/TextView;

    .line 1043
    .line 1044
    const-string v0, "Current Program Title"

    .line 1045
    .line 1046
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    .line 1048
    .line 1049
    move-object p1, p2

    .line 1050
    check-cast p1, Lb7/t0;

    .line 1051
    .line 1052
    iget-object p1, p1, Lb7/t0;->B1:Landroid/widget/TextView;

    .line 1053
    .line 1054
    const v0, 0x7f13008f

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1058
    .line 1059
    .line 1060
    move-object p1, p2

    .line 1061
    check-cast p1, Lb7/t0;

    .line 1062
    .line 1063
    iget-object p1, p1, Lb7/t0;->C1:Landroid/widget/TextView;

    .line 1064
    .line 1065
    const v0, 0x7f13008a

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1069
    .line 1070
    .line 1071
    move-object p1, p2

    .line 1072
    check-cast p1, Lb7/t0;

    .line 1073
    .line 1074
    iget-object p1, p1, Lb7/t0;->D1:Landroid/widget/TextView;

    .line 1075
    .line 1076
    const-string v1, "Next Program Title"

    .line 1077
    .line 1078
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    .line 1080
    .line 1081
    move-object p1, p2

    .line 1082
    check-cast p1, Lb7/t0;

    .line 1083
    .line 1084
    iget-object p1, p1, Lb7/t0;->E1:Landroid/widget/TextView;

    .line 1085
    .line 1086
    const v1, 0x7f130090

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1090
    .line 1091
    .line 1092
    check-cast p2, Lb7/t0;

    .line 1093
    .line 1094
    iget-object p1, p2, Lb7/t0;->F1:Landroid/widget/TextView;

    .line 1095
    .line 1096
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1097
    .line 1098
    .line 1099
    :goto_b
    return-void

    .line 1100
    nop

    .line 1101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
