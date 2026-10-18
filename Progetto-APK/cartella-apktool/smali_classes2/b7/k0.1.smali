.class public final Lb7/k0;
.super LO1/C;
.source "SourceFile"


# instance fields
.field public final synthetic I:I

.field public final J:Ljava/util/ArrayList;

.field public K:Ljava/util/HashMap;

.field public L:Ljava/lang/String;

.field public final M:LN2/a;

.field public final synthetic N:LY/s;


# direct methods
.method public constructor <init>(Lb7/A1;Ljava/util/ArrayList;)V
    .locals 2

    .line 8
    const/4 v0, 0x1

    iput v0, p0, Lb7/k0;->I:I

    .line 9
    iput-object p1, p0, Lb7/k0;->N:LY/s;

    invoke-direct {p0}, LO1/C;-><init>()V

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb7/k0;->K:Ljava/util/HashMap;

    .line 11
    const-string p1, ""

    iput-object p1, p0, Lb7/k0;->L:Ljava/lang/String;

    .line 12
    new-instance p1, LN2/a;

    const/16 v1, 0x12c

    invoke-direct {p1, v1, v0}, LN2/a;-><init>(IZ)V

    .line 13
    iput-object p1, p0, Lb7/k0;->M:LN2/a;

    .line 14
    iput-object p2, p0, Lb7/k0;->J:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lb7/t0;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb7/k0;->I:I

    .line 2
    iput-object p1, p0, Lb7/k0;->N:LY/s;

    invoke-direct {p0}, LO1/C;-><init>()V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb7/k0;->K:Ljava/util/HashMap;

    .line 4
    const-string p1, ""

    iput-object p1, p0, Lb7/k0;->L:Ljava/lang/String;

    .line 5
    new-instance p1, LN2/a;

    const/16 v0, 0x12c

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, LN2/a;-><init>(IZ)V

    .line 6
    iput-object p1, p0, Lb7/k0;->M:LN2/a;

    .line 7
    iput-object p2, p0, Lb7/k0;->J:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lb7/k0;->I:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb7/k0;->J:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :pswitch_0
    iget-object v0, p0, Lb7/k0;->J:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(LO1/c0;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const v2, 0x7f08086d

    .line 6
    .line 7
    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    iget v4, v0, Lb7/k0;->I:I

    .line 13
    .line 14
    const-string v5, "name"

    .line 15
    .line 16
    const-string v9, "stream_id"

    .line 17
    .line 18
    const-string v12, "ORT_isDemo"

    .line 19
    .line 20
    const-string v13, "http://:"

    .line 21
    .line 22
    const-string v14, "ORT_PROFILE_SERVER"

    .line 23
    .line 24
    const-string v15, "\\\\"

    .line 25
    .line 26
    const-string v6, "%20"

    .line 27
    .line 28
    const-string v7, " "

    .line 29
    .line 30
    iget-object v8, v0, Lb7/k0;->N:LY/s;

    .line 31
    .line 32
    const-string v10, ""

    .line 33
    .line 34
    const-string v2, "stream_icon"

    .line 35
    .line 36
    packed-switch v4, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    move-object/from16 v4, p1

    .line 40
    .line 41
    check-cast v4, Lb7/u1;

    .line 42
    .line 43
    iget-object v11, v0, Lb7/k0;->J:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v11

    .line 49
    check-cast v11, Ljava/util/HashMap;

    .line 50
    .line 51
    iput-object v11, v0, Lb7/k0;->K:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    check-cast v11, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    if-eqz v11, :cond_0

    .line 64
    .line 65
    move-object v2, v8

    .line 66
    check-cast v2, Lb7/A1;

    .line 67
    .line 68
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/n;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, LL2/a;->g()LL2/a;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lcom/bumptech/glide/l;

    .line 85
    .line 86
    iget-object v3, v0, Lb7/k0;->M:LN2/a;

    .line 87
    .line 88
    invoke-static {v3}, LG2/c;->b(LN2/a;)LG2/c;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-object v3, v4, Lb7/u1;->b0:Landroid/widget/ImageView;

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :cond_0
    iget-object v3, v0, Lb7/k0;->K:Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Ljava/lang/String;

    .line 110
    .line 111
    iput-object v2, v0, Lb7/k0;->L:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iput-object v2, v0, Lb7/k0;->L:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v2, v15, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    iput-object v2, v0, Lb7/k0;->L:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v3, v14, v10}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-static {v3}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v2, v13, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iput-object v2, v0, Lb7/k0;->L:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const/4 v3, 0x0

    .line 148
    invoke-virtual {v2, v12, v3}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-nez v2, :cond_1

    .line 153
    .line 154
    :try_start_0
    move-object v2, v8

    .line 155
    check-cast v2, Lb7/A1;

    .line 156
    .line 157
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v2}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    iget-object v3, v0, Lb7/k0;->L:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v2}, LL2/a;->g()LL2/a;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    check-cast v2, Lcom/bumptech/glide/l;

    .line 176
    .line 177
    iget-object v3, v0, Lb7/k0;->M:LN2/a;

    .line 178
    .line 179
    invoke-static {v3}, LG2/c;->b(LN2/a;)LG2/c;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    const v3, 0x7f08086d

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v3}, LL2/a;->f(I)LL2/a;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Lcom/bumptech/glide/l;

    .line 195
    .line 196
    iget-object v3, v4, Lb7/u1;->b0:Landroid/widget/ImageView;

    .line 197
    .line 198
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_1
    move-object v2, v8

    .line 203
    check-cast v2, Lb7/A1;

    .line 204
    .line 205
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {v2}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    iget-object v3, v0, Lb7/k0;->L:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    const/4 v3, 0x6

    .line 220
    invoke-virtual {v2, v3, v3}, LL2/a;->l(II)LL2/a;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Lcom/bumptech/glide/l;

    .line 225
    .line 226
    invoke-virtual {v2}, LL2/a;->b()LL2/a;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    check-cast v2, Lcom/bumptech/glide/l;

    .line 231
    .line 232
    iget-object v3, v4, Lb7/u1;->b0:Landroid/widget/ImageView;

    .line 233
    .line 234
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 235
    .line 236
    .line 237
    :catch_0
    :goto_0
    iget-object v2, v4, Lb7/u1;->c0:Landroid/widget/ImageView;

    .line 238
    .line 239
    iget-object v3, v0, Lb7/k0;->K:Ljava/util/HashMap;

    .line 240
    .line 241
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    iget-object v2, v4, Lb7/u1;->c0:Landroid/widget/ImageView;

    .line 249
    .line 250
    const/16 v3, 0x8

    .line 251
    .line 252
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    .line 254
    .line 255
    iget-object v2, v4, Lb7/u1;->d0:Landroidx/cardview/widget/CardView;

    .line 256
    .line 257
    const v6, 0x7f080904

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 261
    .line 262
    .line 263
    const/4 v6, 0x1

    .line 264
    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 265
    .line 266
    .line 267
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    iget-object v1, v4, Lb7/u1;->a0:Landroid/widget/TextView;

    .line 275
    .line 276
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 277
    .line 278
    .line 279
    iget-object v3, v0, Lb7/k0;->K:Ljava/util/HashMap;

    .line 280
    .line 281
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    check-cast v3, Ljava/lang/CharSequence;

    .line 286
    .line 287
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 295
    .line 296
    check-cast v8, Lb7/A1;

    .line 297
    .line 298
    iget v3, v8, Lb7/A1;->U0:I

    .line 299
    .line 300
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 301
    .line 302
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 303
    .line 304
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    .line 306
    .line 307
    new-instance v1, Lb7/j0;

    .line 308
    .line 309
    const/16 v3, 0x8

    .line 310
    .line 311
    invoke-direct {v1, v3, v0, v4}, Lb7/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 315
    .line 316
    .line 317
    new-instance v1, Lf/c;

    .line 318
    .line 319
    const/16 v3, 0x14

    .line 320
    .line 321
    invoke-direct {v1, v0, v3}, Lf/c;-><init>(Ljava/lang/Object;I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :pswitch_0
    move-object/from16 v4, p1

    .line 329
    .line 330
    check-cast v4, Lb7/g0;

    .line 331
    .line 332
    iget-object v11, v0, Lb7/k0;->J:Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    check-cast v11, Ljava/util/HashMap;

    .line 339
    .line 340
    iput-object v11, v0, Lb7/k0;->K:Ljava/util/HashMap;

    .line 341
    .line 342
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v11

    .line 346
    check-cast v11, Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v11

    .line 352
    if-eqz v11, :cond_2

    .line 353
    .line 354
    move-object v2, v8

    .line 355
    check-cast v2, Lb7/t0;

    .line 356
    .line 357
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-static {v2}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/n;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-virtual {v2}, LL2/a;->g()LL2/a;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    check-cast v2, Lcom/bumptech/glide/l;

    .line 374
    .line 375
    iget-object v3, v0, Lb7/k0;->M:LN2/a;

    .line 376
    .line 377
    invoke-static {v3}, LG2/c;->b(LN2/a;)LG2/c;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    iget-object v3, v4, Lb7/g0;->b0:Landroid/widget/ImageView;

    .line 386
    .line 387
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_1

    .line 391
    .line 392
    :cond_2
    iget-object v3, v0, Lb7/k0;->K:Ljava/util/HashMap;

    .line 393
    .line 394
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    check-cast v2, Ljava/lang/String;

    .line 399
    .line 400
    iput-object v2, v0, Lb7/k0;->L:Ljava/lang/String;

    .line 401
    .line 402
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    iput-object v2, v0, Lb7/k0;->L:Ljava/lang/String;

    .line 407
    .line 408
    invoke-virtual {v2, v15, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    iput-object v2, v0, Lb7/k0;->L:Ljava/lang/String;

    .line 413
    .line 414
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    invoke-virtual {v3, v14, v10}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    invoke-static {v3}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    invoke-virtual {v2, v13, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    iput-object v2, v0, Lb7/k0;->L:Ljava/lang/String;

    .line 431
    .line 432
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    const/4 v3, 0x0

    .line 437
    invoke-virtual {v2, v12, v3}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    if-nez v2, :cond_3

    .line 442
    .line 443
    :try_start_1
    move-object v2, v8

    .line 444
    check-cast v2, Lb7/t0;

    .line 445
    .line 446
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-static {v2}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    iget-object v3, v0, Lb7/k0;->L:Ljava/lang/String;

    .line 455
    .line 456
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-virtual {v2}, LL2/a;->g()LL2/a;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    check-cast v2, Lcom/bumptech/glide/l;

    .line 465
    .line 466
    iget-object v3, v0, Lb7/k0;->M:LN2/a;

    .line 467
    .line 468
    invoke-static {v3}, LG2/c;->b(LN2/a;)LG2/c;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    const v3, 0x7f08086d

    .line 477
    .line 478
    .line 479
    invoke-virtual {v2, v3}, LL2/a;->f(I)LL2/a;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    check-cast v2, Lcom/bumptech/glide/l;

    .line 484
    .line 485
    iget-object v3, v4, Lb7/g0;->b0:Landroid/widget/ImageView;

    .line 486
    .line 487
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 488
    .line 489
    .line 490
    goto :goto_1

    .line 491
    :cond_3
    move-object v2, v8

    .line 492
    check-cast v2, Lb7/t0;

    .line 493
    .line 494
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-static {v2}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    iget-object v3, v0, Lb7/k0;->L:Ljava/lang/String;

    .line 503
    .line 504
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    const/4 v3, 0x6

    .line 509
    invoke-virtual {v2, v3, v3}, LL2/a;->l(II)LL2/a;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    check-cast v2, Lcom/bumptech/glide/l;

    .line 514
    .line 515
    invoke-virtual {v2}, LL2/a;->b()LL2/a;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    check-cast v2, Lcom/bumptech/glide/l;

    .line 520
    .line 521
    iget-object v3, v4, Lb7/g0;->b0:Landroid/widget/ImageView;

    .line 522
    .line 523
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 524
    .line 525
    .line 526
    :catch_1
    :goto_1
    iget-object v2, v4, Lb7/g0;->c0:Landroid/widget/ImageView;

    .line 527
    .line 528
    iget-object v3, v0, Lb7/k0;->K:Ljava/util/HashMap;

    .line 529
    .line 530
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    iget-object v2, v4, Lb7/g0;->c0:Landroid/widget/ImageView;

    .line 538
    .line 539
    const/16 v3, 0x8

    .line 540
    .line 541
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    .line 543
    .line 544
    iget-object v2, v4, Lb7/g0;->d0:Landroidx/cardview/widget/CardView;

    .line 545
    .line 546
    const v6, 0x7f080904

    .line 547
    .line 548
    .line 549
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 550
    .line 551
    .line 552
    const/4 v6, 0x1

    .line 553
    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 554
    .line 555
    .line 556
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    iget-object v1, v4, Lb7/g0;->a0:Landroid/widget/TextView;

    .line 564
    .line 565
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 566
    .line 567
    .line 568
    iget-object v3, v0, Lb7/k0;->K:Ljava/util/HashMap;

    .line 569
    .line 570
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    check-cast v3, Ljava/lang/CharSequence;

    .line 575
    .line 576
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 584
    .line 585
    check-cast v8, Lb7/t0;

    .line 586
    .line 587
    iget v3, v8, Lb7/t0;->J0:I

    .line 588
    .line 589
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 590
    .line 591
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 592
    .line 593
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    .line 595
    .line 596
    new-instance v1, Lb7/j0;

    .line 597
    .line 598
    const/4 v3, 0x0

    .line 599
    invoke-direct {v1, v3, v0, v4}, Lb7/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 603
    .line 604
    .line 605
    new-instance v1, Lf/c;

    .line 606
    .line 607
    const/16 v3, 0xb

    .line 608
    .line 609
    invoke-direct {v1, v0, v3}, Lf/c;-><init>(Ljava/lang/Object;I)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    .line 614
    .line 615
    return-void

    .line 616
    nop

    .line 617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView;I)LO1/c0;
    .locals 6

    .line 1
    iget p2, p0, Lb7/k0;->I:I

    .line 2
    .line 3
    const v0, 0x7f0b0156

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0b0292

    .line 7
    .line 8
    .line 9
    const v2, 0x7f0b02a2

    .line 10
    .line 11
    .line 12
    const v3, 0x7f0b0553

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const v5, 0x7f0e00fa

    .line 17
    .line 18
    .line 19
    packed-switch p2, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2, v5, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Lb7/u1;

    .line 35
    .line 36
    invoke-direct {p2, p1}, LO1/c0;-><init>(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object v3, p2, Lb7/u1;->a0:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object v2, p2, Lb7/u1;->b0:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/widget/ImageView;

    .line 60
    .line 61
    iput-object v1, p2, Lb7/u1;->c0:Landroid/widget/ImageView;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroidx/cardview/widget/CardView;

    .line 68
    .line 69
    iput-object p1, p2, Lb7/u1;->d0:Landroidx/cardview/widget/CardView;

    .line 70
    .line 71
    return-object p2

    .line 72
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p2, v5, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance p2, Lb7/g0;

    .line 85
    .line 86
    invoke-direct {p2, p1}, LO1/c0;-><init>(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Landroid/widget/TextView;

    .line 94
    .line 95
    iput-object v3, p2, Lb7/g0;->a0:Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Landroid/widget/ImageView;

    .line 102
    .line 103
    iput-object v2, p2, Lb7/g0;->b0:Landroid/widget/ImageView;

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Landroid/widget/ImageView;

    .line 110
    .line 111
    iput-object v1, p2, Lb7/g0;->c0:Landroid/widget/ImageView;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Landroidx/cardview/widget/CardView;

    .line 118
    .line 119
    iput-object p1, p2, Lb7/g0;->d0:Landroidx/cardview/widget/CardView;

    .line 120
    .line 121
    return-object p2

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
