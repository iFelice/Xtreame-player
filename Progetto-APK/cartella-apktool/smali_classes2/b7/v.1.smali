.class public final Lb7/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:I

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LD1/q;Lb7/H0;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lb7/v;->G:I

    .line 4
    iput-object p1, p0, Lb7/v;->J:Ljava/lang/Object;

    iput-object p2, p0, Lb7/v;->I:Ljava/lang/Object;

    iput p3, p0, Lb7/v;->H:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/AdapterView$OnItemLongClickListener;ILandroid/app/AlertDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lb7/v;->G:I

    iput-object p1, p0, Lb7/v;->J:Ljava/lang/Object;

    iput p2, p0, Lb7/v;->H:I

    iput-object p3, p0, Lb7/v;->I:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    iget p1, p0, Lb7/v;->G:I

    .line 2
    .line 3
    const-string v0, "id"

    .line 4
    .line 5
    iget-object v1, p0, Lb7/v;->I:Ljava/lang/Object;

    .line 6
    .line 7
    iget v2, p0, Lb7/v;->H:I

    .line 8
    .line 9
    iget-object v3, p0, Lb7/v;->J:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v3, Lb7/w;

    .line 15
    .line 16
    iget-object p1, v3, Lb7/w;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lb7/S0;

    .line 19
    .line 20
    iget-object p1, p1, Lb7/S0;->E0:Lc7/d;

    .line 21
    .line 22
    iget-object v4, v3, Lb7/w;->b:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lc7/d;->M0(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, v3, Lb7/w;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lb7/S0;

    .line 42
    .line 43
    invoke-static {p1}, Lb7/S0;->S(Lb7/S0;)V

    .line 44
    .line 45
    .line 46
    check-cast v1, Landroid/app/AlertDialog;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_0
    check-cast v3, Lb7/w;

    .line 53
    .line 54
    iget-object p1, v3, Lb7/w;->c:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lb7/M0;

    .line 57
    .line 58
    iget-object p1, p1, Lb7/M0;->I0:Lc7/d;

    .line 59
    .line 60
    iget-object v4, v3, Lb7/w;->b:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lc7/d;->M0(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, v3, Lb7/w;->c:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, Lb7/M0;

    .line 80
    .line 81
    invoke-static {p1}, Lb7/M0;->S(Lb7/M0;)V

    .line 82
    .line 83
    .line 84
    check-cast v1, Landroid/app/AlertDialog;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_1
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string v0, "ORT_remoteLongPressORPlayerSeriesFragment"

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    invoke-virtual {p1, v0, v4}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    const-string v5, "name"

    .line 102
    .line 103
    const-string v6, "series_id"

    .line 104
    .line 105
    if-eqz p1, :cond_1

    .line 106
    .line 107
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1, v0, v4}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 112
    .line 113
    .line 114
    check-cast v3, LD1/q;

    .line 115
    .line 116
    iget-object p1, v3, LD1/q;->M:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p1, Lb7/I0;

    .line 119
    .line 120
    iget-object p1, p1, Lb7/I0;->r1:Ljava/lang/String;

    .line 121
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v2, "\"series_id\":\""

    .line 125
    .line 126
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v2, v3, LD1/q;->K:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v2, Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v2, "\""

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    iget-object v0, v3, LD1/q;->M:Ljava/lang/Object;

    .line 156
    .line 157
    const/4 v2, 0x1

    .line 158
    const-string v7, "_series"

    .line 159
    .line 160
    const-string v8, ""

    .line 161
    .line 162
    const-string v9, "ORT_PROFILE_ID"

    .line 163
    .line 164
    if-eqz p1, :cond_0

    .line 165
    .line 166
    move-object p1, v0

    .line 167
    check-cast p1, Lb7/I0;

    .line 168
    .line 169
    iget-object p1, p1, Lb7/I0;->E0:Lc7/d;

    .line 170
    .line 171
    iget-object v4, v3, LD1/q;->K:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v4, Ljava/util/HashMap;

    .line 174
    .line 175
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    check-cast v4, Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    invoke-virtual {v10, v9, v8}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-virtual {p1, v4, v8, v7}, Lc7/d;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    check-cast v1, Lb7/H0;

    .line 193
    .line 194
    iget-object p1, v1, Lb7/H0;->c0:Landroid/widget/ImageView;

    .line 195
    .line 196
    iget-object v1, v3, LD1/q;->K:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v1, Ljava/util/HashMap;

    .line 199
    .line 200
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Landroid/widget/ImageView;

    .line 209
    .line 210
    const/16 v1, 0x8

    .line 211
    .line 212
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    move-object p1, v0

    .line 216
    check-cast p1, Lb7/I0;

    .line 217
    .line 218
    invoke-virtual {p1}, LY/s;->l()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-object v3, v3, LD1/q;->K:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v3, Ljava/util/HashMap;

    .line 230
    .line 231
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    check-cast v3, Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v3, " - has been removed from Favorites"

    .line 241
    .line 242
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 254
    .line 255
    .line 256
    goto :goto_0

    .line 257
    :cond_0
    move-object p1, v0

    .line 258
    check-cast p1, Lb7/I0;

    .line 259
    .line 260
    iget-object p1, p1, Lb7/I0;->E0:Lc7/d;

    .line 261
    .line 262
    iget-object v10, v3, LD1/q;->K:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v10, Ljava/util/HashMap;

    .line 265
    .line 266
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v10

    .line 270
    check-cast v10, Ljava/lang/String;

    .line 271
    .line 272
    new-instance v11, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 278
    .line 279
    .line 280
    move-result-object v12

    .line 281
    invoke-virtual {v12, v9, v8}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    invoke-virtual {p1, v10, v7}, Lc7/d;->f0(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    check-cast v1, Lb7/H0;

    .line 299
    .line 300
    iget-object p1, v1, Lb7/H0;->c0:Landroid/widget/ImageView;

    .line 301
    .line 302
    iget-object v1, v3, LD1/q;->K:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v1, Ljava/util/HashMap;

    .line 305
    .line 306
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    check-cast p1, Landroid/widget/ImageView;

    .line 315
    .line 316
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    move-object p1, v0

    .line 320
    check-cast p1, Lb7/I0;

    .line 321
    .line 322
    invoke-virtual {p1}, LY/s;->l()Landroid/content/Context;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    iget-object v3, v3, LD1/q;->K:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v3, Ljava/util/HashMap;

    .line 334
    .line 335
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    check-cast v3, Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v3, " - has been added to Favorites"

    .line 345
    .line 346
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 358
    .line 359
    .line 360
    :goto_0
    check-cast v0, Lb7/I0;

    .line 361
    .line 362
    invoke-virtual {v0}, Lb7/I0;->T()V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_1

    .line 366
    .line 367
    :cond_1
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    const-string v0, "ORT_WHICH_CAT"

    .line 372
    .line 373
    const-string v1, "SERIES"

    .line 374
    .line 375
    invoke-virtual {p1, v0, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 376
    .line 377
    .line 378
    check-cast v3, LD1/q;

    .line 379
    .line 380
    iget-object p1, v3, LD1/q;->J:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast p1, Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    check-cast p1, Ljava/util/HashMap;

    .line 389
    .line 390
    iput-object p1, v3, LD1/q;->K:Ljava/lang/Object;

    .line 391
    .line 392
    new-instance p1, Landroid/content/Intent;

    .line 393
    .line 394
    iget-object v0, v3, LD1/q;->M:Ljava/lang/Object;

    .line 395
    .line 396
    move-object v1, v0

    .line 397
    check-cast v1, Lb7/I0;

    .line 398
    .line 399
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    const-class v2, Lpe/hf/black20/SeriesActivity;

    .line 404
    .line 405
    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    .line 407
    .line 408
    iget-object v1, v3, LD1/q;->K:Ljava/lang/Object;

    .line 409
    .line 410
    check-cast v1, Ljava/util/HashMap;

    .line 411
    .line 412
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    check-cast v1, Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    .line 420
    .line 421
    iget-object v1, v3, LD1/q;->K:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v1, Ljava/util/HashMap;

    .line 424
    .line 425
    const-string v2, "cover"

    .line 426
    .line 427
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    check-cast v1, Ljava/lang/String;

    .line 432
    .line 433
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    .line 435
    .line 436
    iget-object v1, v3, LD1/q;->K:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v1, Ljava/util/HashMap;

    .line 439
    .line 440
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    check-cast v1, Ljava/lang/String;

    .line 445
    .line 446
    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    .line 448
    .line 449
    iget-object v1, v3, LD1/q;->K:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast v1, Ljava/util/HashMap;

    .line 452
    .line 453
    const-string v2, "episode_run_time"

    .line 454
    .line 455
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    check-cast v1, Ljava/lang/String;

    .line 460
    .line 461
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    .line 463
    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .line 468
    .line 469
    move-object v2, v0

    .line 470
    check-cast v2, Lb7/I0;

    .line 471
    .line 472
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    const v4, 0x7f13020a

    .line 477
    .line 478
    .line 479
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    const-string v2, ": "

    .line 487
    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    iget-object v4, v3, LD1/q;->K:Ljava/lang/Object;

    .line 492
    .line 493
    check-cast v4, Ljava/util/HashMap;

    .line 494
    .line 495
    const-string v5, "rating"

    .line 496
    .line 497
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    check-cast v4, Ljava/lang/String;

    .line 502
    .line 503
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    const-string v4, "  "

    .line 507
    .line 508
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    move-object v4, v0

    .line 512
    check-cast v4, Lb7/I0;

    .line 513
    .line 514
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    const v5, 0x7f1301d0

    .line 519
    .line 520
    .line 521
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v4

    .line 525
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    iget-object v4, v3, LD1/q;->K:Ljava/lang/Object;

    .line 532
    .line 533
    check-cast v4, Ljava/util/HashMap;

    .line 534
    .line 535
    const-string v5, "genre"

    .line 536
    .line 537
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    check-cast v4, Ljava/lang/String;

    .line 542
    .line 543
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    const-string v4, " "

    .line 547
    .line 548
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    move-object v4, v0

    .line 552
    check-cast v4, Lb7/I0;

    .line 553
    .line 554
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    const v5, 0x7f1301be

    .line 559
    .line 560
    .line 561
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    iget-object v2, v3, LD1/q;->K:Ljava/lang/Object;

    .line 572
    .line 573
    check-cast v2, Ljava/util/HashMap;

    .line 574
    .line 575
    const-string v3, "releaseDate"

    .line 576
    .line 577
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    check-cast v2, Ljava/lang/String;

    .line 582
    .line 583
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    const-string v2, "program_desc"

    .line 591
    .line 592
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    .line 594
    .line 595
    check-cast v0, Lb7/I0;

    .line 596
    .line 597
    invoke-virtual {v0}, LY/s;->l()Landroid/content/Context;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 602
    .line 603
    .line 604
    :goto_1
    return-void

    .line 605
    :pswitch_2
    check-cast v3, Lb7/w;

    .line 606
    .line 607
    iget-object p1, v3, Lb7/w;->c:Ljava/lang/Object;

    .line 608
    .line 609
    check-cast p1, Lb7/I0;

    .line 610
    .line 611
    iget-object p1, p1, Lb7/I0;->E0:Lc7/d;

    .line 612
    .line 613
    iget-object v4, v3, Lb7/w;->b:Ljava/util/ArrayList;

    .line 614
    .line 615
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    check-cast v2, Ljava/util/HashMap;

    .line 620
    .line 621
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    check-cast v0, Ljava/lang/String;

    .line 626
    .line 627
    invoke-virtual {p1, v0}, Lc7/d;->M0(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    iget-object p1, v3, Lb7/w;->c:Ljava/lang/Object;

    .line 631
    .line 632
    check-cast p1, Lb7/I0;

    .line 633
    .line 634
    invoke-static {p1}, Lb7/I0;->S(Lb7/I0;)V

    .line 635
    .line 636
    .line 637
    check-cast v1, Landroid/app/AlertDialog;

    .line 638
    .line 639
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 640
    .line 641
    .line 642
    return-void

    .line 643
    :pswitch_3
    check-cast v3, Lb7/w;

    .line 644
    .line 645
    iget-object p1, v3, Lb7/w;->c:Ljava/lang/Object;

    .line 646
    .line 647
    check-cast p1, Lpe/hf/black20/ChannelListActivity;

    .line 648
    .line 649
    iget-object p1, p1, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 650
    .line 651
    iget-object v4, v3, Lb7/w;->b:Ljava/util/ArrayList;

    .line 652
    .line 653
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    check-cast v2, Ljava/util/HashMap;

    .line 658
    .line 659
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    check-cast v0, Ljava/lang/String;

    .line 664
    .line 665
    invoke-virtual {p1, v0}, Lc7/d;->M0(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    iget-object p1, v3, Lb7/w;->c:Ljava/lang/Object;

    .line 669
    .line 670
    check-cast p1, Lpe/hf/black20/ChannelListActivity;

    .line 671
    .line 672
    invoke-static {p1}, Lpe/hf/black20/ChannelListActivity;->a(Lpe/hf/black20/ChannelListActivity;)V

    .line 673
    .line 674
    .line 675
    check-cast v1, Landroid/app/AlertDialog;

    .line 676
    .line 677
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 678
    .line 679
    .line 680
    return-void

    .line 681
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
