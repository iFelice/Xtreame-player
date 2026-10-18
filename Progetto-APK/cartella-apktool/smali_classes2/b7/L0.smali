.class public final Lb7/L0;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public c:Ljava/util/HashMap;

.field public final synthetic d:Lb7/M0;


# direct methods
.method public constructor <init>(Lb7/M0;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb7/L0;->d:Lb7/M0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lb7/L0;->c:Ljava/util/HashMap;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lb7/L0;->a:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p3, p0, Lb7/L0;->b:Ljava/util/ArrayList;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb7/L0;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Lc7/d;

    .line 6
    .line 7
    iget-object v3, v0, Lb7/L0;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v2, v3}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "layout_inflater"

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/view/LayoutInflater;

    .line 19
    .line 20
    const v4, 0x7f0e00f2

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    move-object/from16 v6, p3

    .line 25
    .line 26
    invoke-virtual {v2, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v4, v0, Lb7/L0;->b:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Ljava/util/HashMap;

    .line 37
    .line 38
    iput-object v4, v0, Lb7/L0;->c:Ljava/util/HashMap;

    .line 39
    .line 40
    const v4, 0x7f0b051d

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Landroid/widget/TextView;

    .line 48
    .line 49
    const v6, 0x7f0b028b

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Landroid/widget/ImageView;

    .line 57
    .line 58
    const v7, 0x7f0b0292

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Landroid/widget/ImageView;

    .line 66
    .line 67
    const/16 v8, 0x8

    .line 68
    .line 69
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object v9, v0, Lb7/L0;->c:Ljava/util/HashMap;

    .line 73
    .line 74
    const-string v10, "stream_id"

    .line 75
    .line 76
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-virtual {v7, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object v9, Lb7/M0;->e1:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 90
    .line 91
    sget v11, Lb7/M0;->i1:I

    .line 92
    .line 93
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 94
    .line 95
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 96
    .line 97
    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    const-string v11, "ORT_isDemo"

    .line 105
    .line 106
    invoke-virtual {v9, v11, v5}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    const v11, 0x7f08086d

    .line 111
    .line 112
    .line 113
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    const-string v13, "ORT_PROFILE_SERVER"

    .line 118
    .line 119
    const-string v14, "http://:"

    .line 120
    .line 121
    const-string v15, "\\\\"

    .line 122
    .line 123
    const-string v8, "%20"

    .line 124
    .line 125
    const-string v5, " "

    .line 126
    .line 127
    const-string v11, "stream_icon"

    .line 128
    .line 129
    move-object/from16 v16, v2

    .line 130
    .line 131
    const-string v2, ""

    .line 132
    .line 133
    if-eqz v9, :cond_1

    .line 134
    .line 135
    new-instance v9, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    move-object/from16 v17, v7

    .line 138
    .line 139
    const-string v7, "Channel "

    .line 140
    .line 141
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    iget-object v4, v0, Lb7/L0;->c:Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    check-cast v4, Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    const/4 v7, 0x6

    .line 171
    if-eqz v4, :cond_0

    .line 172
    .line 173
    invoke-static {v3}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v2, v12}, Lcom/bumptech/glide/n;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v2}, LL2/a;->b()LL2/a;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Lcom/bumptech/glide/l;

    .line 186
    .line 187
    const/16 v3, 0x9

    .line 188
    .line 189
    invoke-virtual {v2, v7, v3}, LL2/a;->l(II)LL2/a;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    check-cast v2, Lcom/bumptech/glide/l;

    .line 194
    .line 195
    invoke-virtual {v2, v6}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_0
    iget-object v4, v0, Lb7/L0;->c:Ljava/util/HashMap;

    .line 201
    .line 202
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    check-cast v4, Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual {v4, v15, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-virtual {v5, v13, v2}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v4, v14, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    :try_start_0
    invoke-static {v3}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v2}, LL2/a;->b()LL2/a;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    check-cast v2, Lcom/bumptech/glide/l;

    .line 245
    .line 246
    invoke-virtual {v2, v7, v7}, LL2/a;->l(II)LL2/a;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    check-cast v2, Lcom/bumptech/glide/l;

    .line 251
    .line 252
    const v3, 0x7f08086d

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v3}, LL2/a;->f(I)LL2/a;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    check-cast v2, Lcom/bumptech/glide/l;

    .line 260
    .line 261
    invoke-virtual {v2, v6}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .line 263
    .line 264
    goto :goto_0

    .line 265
    :cond_1
    move-object/from16 v17, v7

    .line 266
    .line 267
    iget-object v7, v0, Lb7/L0;->c:Ljava/util/HashMap;

    .line 268
    .line 269
    const-string v9, "name"

    .line 270
    .line 271
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    check-cast v7, Ljava/lang/CharSequence;

    .line 276
    .line 277
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    .line 279
    .line 280
    iget-object v4, v0, Lb7/L0;->c:Ljava/util/HashMap;

    .line 281
    .line 282
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    check-cast v4, Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-eqz v4, :cond_2

    .line 293
    .line 294
    invoke-static {v3}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v2, v12}, Lcom/bumptech/glide/n;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-virtual {v2}, LL2/a;->g()LL2/a;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    check-cast v2, Lcom/bumptech/glide/l;

    .line 307
    .line 308
    invoke-virtual {v2, v6}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 309
    .line 310
    .line 311
    goto :goto_0

    .line 312
    :cond_2
    iget-object v4, v0, Lb7/L0;->c:Ljava/util/HashMap;

    .line 313
    .line 314
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    check-cast v4, Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    invoke-virtual {v4, v15, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    invoke-virtual {v5, v13, v2}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v4, v14, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    :try_start_1
    invoke-static {v3}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-virtual {v2}, LL2/a;->g()LL2/a;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    check-cast v2, Lcom/bumptech/glide/l;

    .line 357
    .line 358
    const v3, 0x7f08086d

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2, v3}, LL2/a;->f(I)LL2/a;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    check-cast v2, Lcom/bumptech/glide/l;

    .line 366
    .line 367
    invoke-virtual {v2, v6}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 368
    .line 369
    .line 370
    :catch_0
    :goto_0
    iget-object v2, v0, Lb7/L0;->d:Lb7/M0;

    .line 371
    .line 372
    iget-object v3, v2, Lb7/M0;->I0:Lc7/d;

    .line 373
    .line 374
    iget-object v4, v2, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 375
    .line 376
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    check-cast v1, Ljava/util/HashMap;

    .line 381
    .line 382
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    check-cast v1, Ljava/lang/String;

    .line 387
    .line 388
    iget-object v2, v2, Lb7/M0;->J0:Lh7/i;

    .line 389
    .line 390
    iget-object v2, v2, Lh7/i;->a:Ljava/lang/String;

    .line 391
    .line 392
    const-string v4, "_live"

    .line 393
    .line 394
    invoke-virtual {v3, v1, v2, v4}, Lc7/d;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    const-string v2, "yes"

    .line 399
    .line 400
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-eqz v1, :cond_3

    .line 405
    .line 406
    move-object/from16 v7, v17

    .line 407
    .line 408
    const/4 v1, 0x0

    .line 409
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    .line 411
    .line 412
    goto :goto_1

    .line 413
    :cond_3
    move-object/from16 v7, v17

    .line 414
    .line 415
    const/16 v1, 0x8

    .line 416
    .line 417
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    .line 419
    .line 420
    :goto_1
    return-object v16
.end method
