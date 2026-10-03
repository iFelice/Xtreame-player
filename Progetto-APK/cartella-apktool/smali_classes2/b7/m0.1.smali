.class public final Lb7/m0;
.super LO1/C;
.source "SourceFile"


# instance fields
.field public final synthetic I:I

.field public final J:Ljava/util/ArrayList;

.field public K:Ljava/util/HashMap;

.field public final synthetic L:Lb7/t0;


# direct methods
.method public constructor <init>(Lb7/t0;Ljava/util/ArrayList;I)V
    .locals 1

    .line 1
    iput p3, p0, Lb7/m0;->I:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p3, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p3, v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lb7/m0;->L:Lb7/t0;

    .line 10
    .line 11
    invoke-direct {p0}, LO1/C;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 20
    .line 21
    iput-object p2, p0, Lb7/m0;->J:Ljava/util/ArrayList;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iput-object p1, p0, Lb7/m0;->L:Lb7/t0;

    .line 25
    .line 26
    invoke-direct {p0}, LO1/C;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 35
    .line 36
    iput-object p2, p0, Lb7/m0;->J:Ljava/util/ArrayList;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iput-object p1, p0, Lb7/m0;->L:Lb7/t0;

    .line 40
    .line 41
    invoke-direct {p0}, LO1/C;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 50
    .line 51
    iput-object p2, p0, Lb7/m0;->J:Ljava/util/ArrayList;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lb7/m0;->I:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb7/m0;->J:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lb7/m0;->J:Ljava/util/ArrayList;

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
    :pswitch_1
    iget-object v0, p0, Lb7/m0;->J:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(LO1/c0;I)V
    .locals 13

    .line 1
    iget v0, p0, Lb7/m0;->I:I

    .line 2
    .line 3
    const-string v1, "name"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const v3, 0x7f080904

    .line 7
    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    const-string v5, "series_id"

    .line 12
    .line 13
    const/16 v6, 0x9

    .line 14
    .line 15
    const/4 v7, 0x6

    .line 16
    const v8, 0x7f08086d

    .line 17
    .line 18
    .line 19
    iget-object v9, p0, Lb7/m0;->L:Lb7/t0;

    .line 20
    .line 21
    const-string v10, "cover"

    .line 22
    .line 23
    const/4 v11, 0x0

    .line 24
    const-string v12, "ORT_isDemo"

    .line 25
    .line 26
    packed-switch v0, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    check-cast p1, Lb7/s0;

    .line 30
    .line 31
    iget-object v0, p0, Lb7/m0;->J:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/HashMap;

    .line 38
    .line 39
    iput-object v0, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v12, v11}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v6, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, v8}, LL2/a;->f(I)LL2/a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/bumptech/glide/l;

    .line 76
    .line 77
    invoke-virtual {v0}, LL2/a;->b()LL2/a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/bumptech/glide/l;

    .line 82
    .line 83
    iget-object v6, p1, Lb7/s0;->b0:Landroid/widget/ImageView;

    .line 84
    .line 85
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v8, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    check-cast v8, Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v8}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0, v7, v6}, LL2/a;->l(II)LL2/a;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lcom/bumptech/glide/l;

    .line 114
    .line 115
    invoke-virtual {v0}, LL2/a;->b()LL2/a;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Lcom/bumptech/glide/l;

    .line 120
    .line 121
    iget-object v6, p1, Lb7/s0;->b0:Landroid/widget/ImageView;

    .line 122
    .line 123
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 124
    .line 125
    .line 126
    :goto_0
    iget-object v0, p1, Lb7/s0;->c0:Landroid/widget/ImageView;

    .line 127
    .line 128
    iget-object v6, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 129
    .line 130
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p1, Lb7/s0;->c0:Landroid/widget/ImageView;

    .line 138
    .line 139
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p1, Lb7/s0;->d0:Landroidx/cardview/widget/CardView;

    .line 143
    .line 144
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 148
    .line 149
    .line 150
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    iget-object p2, p1, Lb7/s0;->a0:Landroid/widget/TextView;

    .line 158
    .line 159
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    iget-object v2, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 163
    .line 164
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Ljava/lang/CharSequence;

    .line 169
    .line 170
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 178
    .line 179
    iget v1, v9, Lb7/t0;->K0:I

    .line 180
    .line 181
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 182
    .line 183
    iget v1, v9, Lb7/t0;->J0:I

    .line 184
    .line 185
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 186
    .line 187
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    .line 189
    .line 190
    new-instance p2, Lb7/j0;

    .line 191
    .line 192
    const/4 v1, 0x3

    .line 193
    invoke-direct {p2, v1, p0, p1}, Lb7/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 197
    .line 198
    .line 199
    new-instance p1, Lf/c;

    .line 200
    .line 201
    const/16 p2, 0xe

    .line 202
    .line 203
    invoke-direct {p1, p0, p2}, Lf/c;-><init>(Ljava/lang/Object;I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :pswitch_0
    check-cast p1, Lb7/r0;

    .line 211
    .line 212
    iget-object v0, p0, Lb7/m0;->J:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Ljava/util/HashMap;

    .line 219
    .line 220
    iput-object v0, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 221
    .line 222
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0, v12, v11}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_1

    .line 231
    .line 232
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    iget-object v6, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 241
    .line 242
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    check-cast v6, Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0, v8}, LL2/a;->f(I)LL2/a;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Lcom/bumptech/glide/l;

    .line 257
    .line 258
    invoke-virtual {v0}, LL2/a;->b()LL2/a;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Lcom/bumptech/glide/l;

    .line 263
    .line 264
    iget-object v6, p1, Lb7/r0;->b0:Landroid/widget/ImageView;

    .line 265
    .line 266
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 267
    .line 268
    .line 269
    goto :goto_1

    .line 270
    :cond_1
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    iget-object v8, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 279
    .line 280
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    check-cast v8, Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v0, v8}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v0, v7, v6}, LL2/a;->l(II)LL2/a;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Lcom/bumptech/glide/l;

    .line 295
    .line 296
    invoke-virtual {v0}, LL2/a;->b()LL2/a;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Lcom/bumptech/glide/l;

    .line 301
    .line 302
    iget-object v6, p1, Lb7/r0;->b0:Landroid/widget/ImageView;

    .line 303
    .line 304
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 305
    .line 306
    .line 307
    :goto_1
    iget-object v0, p1, Lb7/r0;->c0:Landroid/widget/ImageView;

    .line 308
    .line 309
    iget-object v6, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 310
    .line 311
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    iget-object v0, p1, Lb7/r0;->c0:Landroid/widget/ImageView;

    .line 319
    .line 320
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    .line 322
    .line 323
    iget-object v0, p1, Lb7/r0;->d0:Landroidx/cardview/widget/CardView;

    .line 324
    .line 325
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 329
    .line 330
    .line 331
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    iget-object p2, p1, Lb7/r0;->a0:Landroid/widget/TextView;

    .line 339
    .line 340
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 341
    .line 342
    .line 343
    iget-object v2, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 344
    .line 345
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    check-cast v1, Ljava/lang/CharSequence;

    .line 350
    .line 351
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 359
    .line 360
    iget v1, v9, Lb7/t0;->K0:I

    .line 361
    .line 362
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 363
    .line 364
    iget v1, v9, Lb7/t0;->J0:I

    .line 365
    .line 366
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 367
    .line 368
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    .line 370
    .line 371
    new-instance p2, Lb7/j0;

    .line 372
    .line 373
    const/4 v1, 0x2

    .line 374
    invoke-direct {p2, v1, p0, p1}, Lb7/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 378
    .line 379
    .line 380
    new-instance p1, Lf/c;

    .line 381
    .line 382
    const/16 p2, 0xd

    .line 383
    .line 384
    invoke-direct {p1, p0, p2}, Lf/c;-><init>(Ljava/lang/Object;I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    .line 389
    .line 390
    return-void

    .line 391
    :pswitch_1
    check-cast p1, Lb7/q0;

    .line 392
    .line 393
    iget-object v0, p0, Lb7/m0;->J:Ljava/util/ArrayList;

    .line 394
    .line 395
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    check-cast v0, Ljava/util/HashMap;

    .line 400
    .line 401
    iput-object v0, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 402
    .line 403
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-virtual {v0, v12, v11}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-nez v0, :cond_2

    .line 412
    .line 413
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    iget-object v6, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 422
    .line 423
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    check-cast v6, Ljava/lang/String;

    .line 428
    .line 429
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {v0, v8}, LL2/a;->f(I)LL2/a;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    check-cast v0, Lcom/bumptech/glide/l;

    .line 438
    .line 439
    invoke-virtual {v0}, LL2/a;->b()LL2/a;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    check-cast v0, Lcom/bumptech/glide/l;

    .line 444
    .line 445
    iget-object v6, p1, Lb7/q0;->b0:Landroid/widget/ImageView;

    .line 446
    .line 447
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 448
    .line 449
    .line 450
    goto :goto_2

    .line 451
    :cond_2
    invoke-virtual {v9}, LY/s;->l()Landroid/content/Context;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    iget-object v8, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 460
    .line 461
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v8

    .line 465
    check-cast v8, Ljava/lang/String;

    .line 466
    .line 467
    invoke-virtual {v0, v8}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-virtual {v0, v7, v6}, LL2/a;->l(II)LL2/a;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    check-cast v0, Lcom/bumptech/glide/l;

    .line 476
    .line 477
    invoke-virtual {v0}, LL2/a;->b()LL2/a;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    check-cast v0, Lcom/bumptech/glide/l;

    .line 482
    .line 483
    iget-object v6, p1, Lb7/q0;->b0:Landroid/widget/ImageView;

    .line 484
    .line 485
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 486
    .line 487
    .line 488
    :goto_2
    iget-object v0, p1, Lb7/q0;->c0:Landroid/widget/ImageView;

    .line 489
    .line 490
    iget-object v6, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 491
    .line 492
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v5

    .line 496
    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    iget-object v0, p1, Lb7/q0;->c0:Landroid/widget/ImageView;

    .line 500
    .line 501
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    .line 503
    .line 504
    iget-object v0, p1, Lb7/q0;->d0:Landroidx/cardview/widget/CardView;

    .line 505
    .line 506
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 510
    .line 511
    .line 512
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p2

    .line 516
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    iget-object p2, p1, Lb7/q0;->a0:Landroid/widget/TextView;

    .line 520
    .line 521
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 522
    .line 523
    .line 524
    iget-object v3, p0, Lb7/m0;->K:Ljava/util/HashMap;

    .line 525
    .line 526
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    check-cast v1, Ljava/lang/CharSequence;

    .line 531
    .line 532
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 536
    .line 537
    .line 538
    move-result-object p2

    .line 539
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 540
    .line 541
    iget v1, v9, Lb7/t0;->K0:I

    .line 542
    .line 543
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 544
    .line 545
    iget v1, v9, Lb7/t0;->J0:I

    .line 546
    .line 547
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 548
    .line 549
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    .line 551
    .line 552
    new-instance p2, Lb7/j0;

    .line 553
    .line 554
    invoke-direct {p2, v2, p0, p1}, Lb7/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 558
    .line 559
    .line 560
    new-instance p1, Lf/c;

    .line 561
    .line 562
    const/16 p2, 0xc

    .line 563
    .line 564
    invoke-direct {p1, p0, p2}, Lf/c;-><init>(Ljava/lang/Object;I)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    .line 569
    .line 570
    new-instance p1, Lb7/l0;

    .line 571
    .line 572
    invoke-direct {p1, p0, v11}, Lb7/l0;-><init>(Ljava/lang/Object;I)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 576
    .line 577
    .line 578
    return-void

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView;I)LO1/c0;
    .locals 6

    .line 1
    iget p2, p0, Lb7/m0;->I:I

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
    new-instance p2, Lb7/s0;

    .line 35
    .line 36
    invoke-direct {p2, p1}, Lb7/s0;-><init>(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    return-object p2

    .line 40
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2, v5, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance p2, Lb7/r0;

    .line 53
    .line 54
    invoke-direct {p2, p1}, LO1/c0;-><init>(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroid/widget/TextView;

    .line 62
    .line 63
    iput-object v3, p2, Lb7/r0;->a0:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroid/widget/ImageView;

    .line 70
    .line 71
    iput-object v2, p2, Lb7/r0;->b0:Landroid/widget/ImageView;

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Landroid/widget/ImageView;

    .line 78
    .line 79
    iput-object v1, p2, Lb7/r0;->c0:Landroid/widget/ImageView;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroidx/cardview/widget/CardView;

    .line 86
    .line 87
    iput-object p1, p2, Lb7/r0;->d0:Landroidx/cardview/widget/CardView;

    .line 88
    .line 89
    return-object p2

    .line 90
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p2, v5, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    new-instance p2, Lb7/q0;

    .line 103
    .line 104
    invoke-direct {p2, p1}, LO1/c0;-><init>(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Landroid/widget/TextView;

    .line 112
    .line 113
    iput-object v3, p2, Lb7/q0;->a0:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Landroid/widget/ImageView;

    .line 120
    .line 121
    iput-object v2, p2, Lb7/q0;->b0:Landroid/widget/ImageView;

    .line 122
    .line 123
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Landroid/widget/ImageView;

    .line 128
    .line 129
    iput-object v1, p2, Lb7/q0;->c0:Landroid/widget/ImageView;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Landroidx/cardview/widget/CardView;

    .line 136
    .line 137
    iput-object p1, p2, Lb7/q0;->d0:Landroidx/cardview/widget/CardView;

    .line 138
    .line 139
    return-object p2

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
