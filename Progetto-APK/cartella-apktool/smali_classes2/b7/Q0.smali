.class public final Lb7/Q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lb7/R0;

.field public final synthetic I:Ljava/lang/String;

.field public final synthetic J:Ljava/lang/String;

.field public final synthetic K:I

.field public final synthetic L:LD1/q;


# direct methods
.method public constructor <init>(LD1/q;ILb7/R0;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb7/Q0;->L:LD1/q;

    .line 5
    .line 6
    iput p2, p0, Lb7/Q0;->G:I

    .line 7
    .line 8
    iput-object p3, p0, Lb7/Q0;->H:Lb7/R0;

    .line 9
    .line 10
    iput-object p4, p0, Lb7/Q0;->I:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lb7/Q0;->J:Ljava/lang/String;

    .line 13
    .line 14
    iput p6, p0, Lb7/Q0;->K:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "ORT_remoteLongPressORPlayerVODFragment"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const-string v2, "name"

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    const-string v4, "stream_id"

    .line 17
    .line 18
    iget-object v5, p0, Lb7/Q0;->L:LD1/q;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v0, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 27
    .line 28
    .line 29
    iget-object p1, v5, LD1/q;->J:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    iget v0, p0, Lb7/Q0;->G:I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/util/HashMap;

    .line 40
    .line 41
    iput-object p1, v5, LD1/q;->K:Ljava/lang/Object;

    .line 42
    .line 43
    iget-object p1, v5, LD1/q;->M:Ljava/lang/Object;

    .line 44
    .line 45
    move-object v0, p1

    .line 46
    check-cast v0, Lb7/S0;

    .line 47
    .line 48
    iget-object v0, v0, Lb7/S0;->k1:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v7, "\"stream_id\":\""

    .line 53
    .line 54
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v7, v5, LD1/q;->K:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v7, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v7, "\""

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v6, 0x1

    .line 84
    iget-object v7, p0, Lb7/Q0;->H:Lb7/R0;

    .line 85
    .line 86
    const-string v8, "_vod"

    .line 87
    .line 88
    const-string v9, "ORT_PROFILE_ID"

    .line 89
    .line 90
    if-eqz v0, :cond_0

    .line 91
    .line 92
    move-object v0, p1

    .line 93
    check-cast v0, Lb7/S0;

    .line 94
    .line 95
    iget-object v0, v0, Lb7/S0;->E0:Lc7/d;

    .line 96
    .line 97
    iget-object v1, v5, LD1/q;->K:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v1, Ljava/util/HashMap;

    .line 100
    .line 101
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-virtual {v10, v9, v3}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v0, v1, v3, v8}, Lc7/d;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, v7, Lb7/R0;->c0:Landroid/widget/ImageView;

    .line 119
    .line 120
    iget-object v1, v5, LD1/q;->K:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v1, Ljava/util/HashMap;

    .line 123
    .line 124
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Landroid/widget/ImageView;

    .line 133
    .line 134
    const/16 v1, 0x8

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    move-object v0, p1

    .line 140
    check-cast v0, Lb7/S0;

    .line 141
    .line 142
    invoke-virtual {v0}, LY/s;->l()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    iget-object v3, v5, LD1/q;->K:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v3, Ljava/util/HashMap;

    .line 154
    .line 155
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v2, " - has been removed from Favorites"

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_0
    move-object v0, p1

    .line 182
    check-cast v0, Lb7/S0;

    .line 183
    .line 184
    iget-object v0, v0, Lb7/S0;->E0:Lc7/d;

    .line 185
    .line 186
    iget-object v10, v5, LD1/q;->K:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v10, Ljava/util/HashMap;

    .line 189
    .line 190
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    check-cast v10, Ljava/lang/String;

    .line 195
    .line 196
    new-instance v11, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    invoke-virtual {v12, v9, v3}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-virtual {v0, v10, v3}, Lc7/d;->f0(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    move-object v0, p1

    .line 223
    check-cast v0, Lb7/S0;

    .line 224
    .line 225
    invoke-virtual {v0}, LY/s;->l()Landroid/content/Context;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    iget-object v8, v5, LD1/q;->K:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v8, Ljava/util/HashMap;

    .line 237
    .line 238
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    check-cast v2, Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v2, " - has been added to Favorites"

    .line 248
    .line 249
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 261
    .line 262
    .line 263
    iget-object v0, v7, Lb7/R0;->c0:Landroid/widget/ImageView;

    .line 264
    .line 265
    iget-object v2, v5, LD1/q;->K:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v2, Ljava/util/HashMap;

    .line 268
    .line 269
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Landroid/widget/ImageView;

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    :goto_0
    check-cast p1, Lb7/S0;

    .line 283
    .line 284
    invoke-virtual {p1}, Lb7/S0;->X()V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_3

    .line 288
    .line 289
    :cond_1
    new-instance p1, Lc7/d;

    .line 290
    .line 291
    iget-object v0, v5, LD1/q;->M:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast v0, Lb7/S0;

    .line 294
    .line 295
    invoke-virtual {v0}, LY/s;->l()Landroid/content/Context;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-direct {p1, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 300
    .line 301
    .line 302
    iget-object p1, v5, LD1/q;->M:Ljava/lang/Object;

    .line 303
    .line 304
    move-object v0, p1

    .line 305
    check-cast v0, Lb7/S0;

    .line 306
    .line 307
    invoke-virtual {v0}, LY/s;->l()Landroid/content/Context;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    const-string v6, "pe.hf.black20"

    .line 312
    .line 313
    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    iput-object v0, v5, LD1/q;->L:Ljava/lang/Object;

    .line 318
    .line 319
    const-string v0, "ORT_VOD_PORTAL"

    .line 320
    .line 321
    const-string v1, "no"

    .line 322
    .line 323
    invoke-static {v0, v1, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    const-string v7, "ORT_PROFILE_SERVER"

    .line 328
    .line 329
    if-nez v6, :cond_2

    .line 330
    .line 331
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    invoke-virtual {v6, v0, v1}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    goto :goto_1

    .line 340
    :cond_2
    invoke-static {v7, v3}, Lcom/google/protobuf/U2;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    :goto_1
    const-string v1, "/movie/"

    .line 345
    .line 346
    invoke-static {v0, v1}, La/r;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    iget-object v1, p0, Lb7/Q0;->I:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v1, "/"

    .line 356
    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    iget-object v6, p0, Lb7/Q0;->J:Ljava/lang/String;

    .line 361
    .line 362
    invoke-static {v0, v6, v1}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    const-string v6, "VOD"

    .line 371
    .line 372
    const-string v8, "ORT_WHICH_CAT"

    .line 373
    .line 374
    invoke-virtual {v1, v8, v6}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 375
    .line 376
    .line 377
    iget-object v1, v5, LD1/q;->J:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v1, Ljava/util/ArrayList;

    .line 380
    .line 381
    iget v6, p0, Lb7/Q0;->K:I

    .line 382
    .line 383
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    check-cast v1, Ljava/util/HashMap;

    .line 388
    .line 389
    iput-object v1, v5, LD1/q;->K:Ljava/lang/Object;

    .line 390
    .line 391
    new-instance v1, Landroid/content/Intent;

    .line 392
    .line 393
    move-object v8, p1

    .line 394
    check-cast v8, Lb7/S0;

    .line 395
    .line 396
    invoke-virtual {v8}, LY/s;->l()Landroid/content/Context;

    .line 397
    .line 398
    .line 399
    move-result-object v8

    .line 400
    const-class v9, Lpe/hf/black20/MovieInfoActivity;

    .line 401
    .line 402
    invoke-direct {v1, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    .line 404
    .line 405
    iget-object v8, v5, LD1/q;->K:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v8, Ljava/util/HashMap;

    .line 408
    .line 409
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v8

    .line 413
    check-cast v8, Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    .line 417
    .line 418
    iget-object v2, v5, LD1/q;->K:Ljava/lang/Object;

    .line 419
    .line 420
    check-cast v2, Ljava/util/HashMap;

    .line 421
    .line 422
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    check-cast v2, Ljava/lang/String;

    .line 427
    .line 428
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    .line 430
    .line 431
    iget-object v2, v5, LD1/q;->K:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v2, Ljava/util/HashMap;

    .line 434
    .line 435
    const-string v8, "stream_icon"

    .line 436
    .line 437
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    check-cast v2, Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    .line 445
    .line 446
    iget-object v2, v5, LD1/q;->K:Ljava/lang/Object;

    .line 447
    .line 448
    check-cast v2, Ljava/util/HashMap;

    .line 449
    .line 450
    const-string v9, "direct_source"

    .line 451
    .line 452
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    check-cast v2, Ljava/lang/String;

    .line 457
    .line 458
    const-string v10, "http"

    .line 459
    .line 460
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    const-string v10, "streamurl"

    .line 465
    .line 466
    if-eqz v2, :cond_3

    .line 467
    .line 468
    iget-object v0, v5, LD1/q;->K:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast v0, Ljava/util/HashMap;

    .line 471
    .line 472
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    check-cast v0, Ljava/lang/String;

    .line 477
    .line 478
    invoke-virtual {v1, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    .line 480
    .line 481
    goto :goto_2

    .line 482
    :cond_3
    invoke-static {v0}, Lcom/google/protobuf/U2;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    iget-object v2, v5, LD1/q;->K:Ljava/lang/Object;

    .line 487
    .line 488
    check-cast v2, Ljava/util/HashMap;

    .line 489
    .line 490
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    check-cast v2, Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v2, "."

    .line 500
    .line 501
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    iget-object v2, v5, LD1/q;->K:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast v2, Ljava/util/HashMap;

    .line 507
    .line 508
    const-string v4, "container_extension"

    .line 509
    .line 510
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    check-cast v2, Ljava/lang/String;

    .line 515
    .line 516
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-virtual {v1, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    .line 525
    .line 526
    :goto_2
    const-string v0, "ORT_WHICH_PANEL"

    .line 527
    .line 528
    const-string v2, "xtreamcodes"

    .line 529
    .line 530
    const-string v4, "ezserver"

    .line 531
    .line 532
    invoke-static {v0, v2, v4}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 533
    .line 534
    .line 535
    move-result v4

    .line 536
    if-eqz v4, :cond_5

    .line 537
    .line 538
    iget-object v4, v5, LD1/q;->K:Ljava/lang/Object;

    .line 539
    .line 540
    check-cast v4, Ljava/util/HashMap;

    .line 541
    .line 542
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    check-cast v4, Ljava/lang/String;

    .line 547
    .line 548
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    move-result v4

    .line 552
    if-nez v4, :cond_4

    .line 553
    .line 554
    iget-object v4, v5, LD1/q;->K:Ljava/lang/Object;

    .line 555
    .line 556
    check-cast v4, Ljava/util/HashMap;

    .line 557
    .line 558
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v4

    .line 562
    check-cast v4, Ljava/lang/String;

    .line 563
    .line 564
    const-string v8, " "

    .line 565
    .line 566
    const-string v9, "%20"

    .line 567
    .line 568
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    const-string v8, "\\\\"

    .line 573
    .line 574
    invoke-virtual {v4, v8, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 579
    .line 580
    .line 581
    move-result-object v8

    .line 582
    invoke-virtual {v8, v7, v3}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    invoke-static {v3}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    const-string v7, "http://:"

    .line 591
    .line 592
    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    :cond_4
    const-string v4, "poster"

    .line 597
    .line 598
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    .line 600
    .line 601
    :cond_5
    const-string v3, "otr"

    .line 602
    .line 603
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    if-eqz v0, :cond_6

    .line 608
    .line 609
    move-object v0, p1

    .line 610
    check-cast v0, Lb7/S0;

    .line 611
    .line 612
    iget-object v2, v5, LD1/q;->K:Ljava/lang/Object;

    .line 613
    .line 614
    check-cast v2, Ljava/util/HashMap;

    .line 615
    .line 616
    const-string v3, "custom_sid"

    .line 617
    .line 618
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    check-cast v2, Ljava/lang/String;

    .line 623
    .line 624
    iput-object v2, v0, Lb7/S0;->g1:Ljava/lang/String;

    .line 625
    .line 626
    move-object v0, p1

    .line 627
    check-cast v0, Lb7/S0;

    .line 628
    .line 629
    iget-object v0, v0, Lb7/S0;->g1:Ljava/lang/String;

    .line 630
    .line 631
    const-string v2, "packageid"

    .line 632
    .line 633
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    .line 635
    .line 636
    :cond_6
    const-string v0, "position"

    .line 637
    .line 638
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    .line 644
    .line 645
    check-cast p1, Lb7/S0;

    .line 646
    .line 647
    invoke-virtual {p1}, LY/s;->l()Landroid/content/Context;

    .line 648
    .line 649
    .line 650
    move-result-object p1

    .line 651
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 652
    .line 653
    .line 654
    :goto_3
    return-void
.end method
