.class public final Lb7/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/F;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/F;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9

    .line 1
    const/4 p1, 0x0

    .line 2
    iget p4, p0, Lb7/F;->a:I

    .line 3
    .line 4
    const-string p5, "99999"

    .line 5
    .line 6
    const-string v0, "category_id"

    .line 7
    .line 8
    const-string v1, "_live"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "ORT_PROFILE_ID"

    .line 12
    .line 13
    const-string v4, ""

    .line 14
    .line 15
    const-string v5, "yes"

    .line 16
    .line 17
    const-string v6, "stream_id"

    .line 18
    .line 19
    iget-object v7, p0, Lb7/F;->b:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v8, 0x1

    .line 22
    packed-switch p4, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    const p1, 0x7f0b0292

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast v7, Lb7/M0;

    .line 33
    .line 34
    iget-object p2, v7, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/ImageView;

    .line 51
    .line 52
    iget-object p2, v7, Lb7/M0;->I0:Lc7/d;

    .line 53
    .line 54
    iget-object p4, v7, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    check-cast p4, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {p4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    check-cast p4, Ljava/lang/String;

    .line 67
    .line 68
    iget-object p5, v7, Lb7/M0;->J0:Lh7/i;

    .line 69
    .line 70
    iget-object p5, p5, Lh7/i;->a:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p2, p4, p5, v1}, Lc7/d;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    const-string p4, "name"

    .line 81
    .line 82
    if-eqz p2, :cond_0

    .line 83
    .line 84
    iget-object p2, v7, Lb7/M0;->I0:Lc7/d;

    .line 85
    .line 86
    iget-object p5, v7, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p5

    .line 92
    check-cast p5, Ljava/util/HashMap;

    .line 93
    .line 94
    invoke-virtual {p5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p5

    .line 98
    check-cast p5, Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, v3, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p2, p5, v0, v1}, Lc7/d;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/16 p2, 0x8

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7}, LY/s;->l()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    iget-object p5, v7, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    check-cast p3, Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    check-cast p3, Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string p3, " - has been removed from Favorites"

    .line 143
    .line 144
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-static {p1, p2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_0
    iget-object p2, v7, Lb7/M0;->I0:Lc7/d;

    .line 160
    .line 161
    iget-object p5, v7, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p5

    .line 167
    check-cast p5, Ljava/util/HashMap;

    .line 168
    .line 169
    invoke-virtual {p5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p5

    .line 173
    check-cast p5, Ljava/lang/String;

    .line 174
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v5, v3, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {p2, p5, v0}, Lc7/d;->f0(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7}, LY/s;->l()Landroid/content/Context;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    iget-object p5, v7, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    check-cast p3, Ljava/util/HashMap;

    .line 220
    .line 221
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p3

    .line 225
    check-cast p3, Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string p3, " - has been added to Favorites"

    .line 231
    .line 232
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    invoke-static {p1, p2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 244
    .line 245
    .line 246
    :goto_0
    return v8

    .line 247
    :pswitch_0
    check-cast v7, Lb7/D;

    .line 248
    .line 249
    iget-object p2, v7, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    .line 250
    .line 251
    iget-object p2, p2, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 252
    .line 253
    new-instance p4, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    const-string p5, "-"

    .line 259
    .line 260
    invoke-static {v3, v4, p4, p5}, Lcom/google/protobuf/U2;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object p5, v7, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    .line 264
    .line 265
    iget-object v0, p5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Ljava/util/HashMap;

    .line 272
    .line 273
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p4

    .line 286
    invoke-virtual {p2, p4}, Lc7/d;->A0(Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result p2

    .line 290
    if-lez p2, :cond_1

    .line 291
    .line 292
    iget-object p2, p5, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 293
    .line 294
    iget-object p4, p5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object p3

    .line 300
    check-cast p3, Ljava/util/HashMap;

    .line 301
    .line 302
    invoke-virtual {p3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object p3

    .line 306
    check-cast p3, Ljava/lang/String;

    .line 307
    .line 308
    invoke-static {p5, p2, p3}, Lpe/hf/black20/ChannelListActivity;->c(Lpe/hf/black20/ChannelListActivity;Lc7/d;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto :goto_1

    .line 312
    :cond_1
    iget-object p2, p5, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 313
    .line 314
    iget-object p4, p5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object p4

    .line 320
    check-cast p4, Ljava/util/HashMap;

    .line 321
    .line 322
    invoke-virtual {p4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object p4

    .line 326
    check-cast p4, Ljava/lang/String;

    .line 327
    .line 328
    iget-object v0, p5, Lpe/hf/black20/ChannelListActivity;->R:Lh7/i;

    .line 329
    .line 330
    iget-object v0, v0, Lh7/i;->a:Ljava/lang/String;

    .line 331
    .line 332
    const-string v1, "_vod"

    .line 333
    .line 334
    invoke-virtual {p2, p4, v0, v1}, Lc7/d;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p2

    .line 338
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result p2

    .line 342
    if-eqz p2, :cond_2

    .line 343
    .line 344
    iget-object p2, p5, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 345
    .line 346
    iget-object p4, p5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p3

    .line 352
    check-cast p3, Ljava/util/HashMap;

    .line 353
    .line 354
    invoke-virtual {p3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object p3

    .line 358
    check-cast p3, Ljava/lang/String;

    .line 359
    .line 360
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 361
    .line 362
    .line 363
    move-result-object p4

    .line 364
    invoke-virtual {p4, v3, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object p4

    .line 368
    invoke-virtual {p2, p3, p4, v1}, Lc7/d;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    goto :goto_1

    .line 372
    :cond_2
    iget-object p2, p5, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 373
    .line 374
    iget-object p4, p5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 375
    .line 376
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object p3

    .line 380
    check-cast p3, Ljava/util/HashMap;

    .line 381
    .line 382
    invoke-virtual {p3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object p3

    .line 386
    check-cast p3, Ljava/lang/String;

    .line 387
    .line 388
    new-instance p4, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v0, v3, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p4

    .line 411
    invoke-virtual {p2, p3, p4}, Lc7/d;->f0(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    :goto_1
    new-instance p2, Lb7/D;

    .line 415
    .line 416
    invoke-direct {p2, p5, p1}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;La/r;)V

    .line 417
    .line 418
    .line 419
    new-array p1, v2, [Ljava/lang/Void;

    .line 420
    .line 421
    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 422
    .line 423
    .line 424
    return v8

    .line 425
    :pswitch_1
    check-cast v7, Lb7/D;

    .line 426
    .line 427
    iget-object p1, v7, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    .line 428
    .line 429
    iget-object p1, p1, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    check-cast p1, Ljava/util/HashMap;

    .line 436
    .line 437
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    check-cast p1, Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result p1

    .line 447
    if-eqz p1, :cond_3

    .line 448
    .line 449
    iget-object p1, v7, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    .line 450
    .line 451
    invoke-static {p1}, Lpe/hf/black20/ChannelListActivity;->a(Lpe/hf/black20/ChannelListActivity;)V

    .line 452
    .line 453
    .line 454
    :cond_3
    return v8

    .line 455
    :pswitch_2
    check-cast v7, Lb7/D;

    .line 456
    .line 457
    iget-object p2, v7, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    .line 458
    .line 459
    iget-object p4, p2, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 460
    .line 461
    iget-object p2, p2, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 462
    .line 463
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object p2

    .line 467
    check-cast p2, Ljava/util/HashMap;

    .line 468
    .line 469
    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object p2

    .line 473
    check-cast p2, Ljava/lang/String;

    .line 474
    .line 475
    iget-object p5, v7, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    .line 476
    .line 477
    iget-object v0, p5, Lpe/hf/black20/ChannelListActivity;->R:Lh7/i;

    .line 478
    .line 479
    iget-object v0, v0, Lh7/i;->a:Ljava/lang/String;

    .line 480
    .line 481
    invoke-virtual {p4, p2, v0, v1}, Lc7/d;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object p2

    .line 485
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result p2

    .line 489
    if-eqz p2, :cond_4

    .line 490
    .line 491
    iget-object p2, p5, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 492
    .line 493
    iget-object p4, p5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 494
    .line 495
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object p3

    .line 499
    check-cast p3, Ljava/util/HashMap;

    .line 500
    .line 501
    invoke-virtual {p3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object p3

    .line 505
    check-cast p3, Ljava/lang/String;

    .line 506
    .line 507
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 508
    .line 509
    .line 510
    move-result-object p4

    .line 511
    invoke-virtual {p4, v3, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object p4

    .line 515
    invoke-virtual {p2, p3, p4, v1}, Lc7/d;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    goto :goto_2

    .line 519
    :cond_4
    iget-object p2, p5, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 520
    .line 521
    iget-object p4, p5, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 522
    .line 523
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object p3

    .line 527
    check-cast p3, Ljava/util/HashMap;

    .line 528
    .line 529
    invoke-virtual {p3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object p3

    .line 533
    check-cast p3, Ljava/lang/String;

    .line 534
    .line 535
    new-instance p4, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .line 539
    .line 540
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-virtual {v0, v3, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object p4

    .line 558
    invoke-virtual {p2, p3, p4}, Lc7/d;->f0(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    :goto_2
    new-instance p2, Lb7/D;

    .line 562
    .line 563
    invoke-direct {p2, p5, p1}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    new-array p1, v2, [Ljava/lang/Void;

    .line 567
    .line 568
    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 569
    .line 570
    .line 571
    return v8

    .line 572
    :pswitch_3
    check-cast v7, Lb7/D;

    .line 573
    .line 574
    iget-object p1, v7, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    .line 575
    .line 576
    iget-object p1, p1, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 577
    .line 578
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    check-cast p1, Ljava/util/HashMap;

    .line 583
    .line 584
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    check-cast p1, Ljava/lang/String;

    .line 589
    .line 590
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result p1

    .line 594
    if-eqz p1, :cond_5

    .line 595
    .line 596
    iget-object p1, v7, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    .line 597
    .line 598
    invoke-static {p1}, Lpe/hf/black20/ChannelListActivity;->a(Lpe/hf/black20/ChannelListActivity;)V

    .line 599
    .line 600
    .line 601
    :cond_5
    return v8

    .line 602
    nop

    .line 603
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
