.class public final Lb7/i0;
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
    iput p3, p0, Lb7/i0;->I:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p3, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p3, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p3, v0, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Lb7/i0;->L:Lb7/t0;

    .line 13
    .line 14
    invoke-direct {p0}, LO1/C;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance p1, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 23
    .line 24
    iput-object p2, p0, Lb7/i0;->J:Ljava/util/ArrayList;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iput-object p1, p0, Lb7/i0;->L:Lb7/t0;

    .line 28
    .line 29
    invoke-direct {p0}, LO1/C;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance p1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 38
    .line 39
    iput-object p2, p0, Lb7/i0;->J:Ljava/util/ArrayList;

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iput-object p1, p0, Lb7/i0;->L:Lb7/t0;

    .line 43
    .line 44
    invoke-direct {p0}, LO1/C;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance p1, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 53
    .line 54
    iput-object p2, p0, Lb7/i0;->J:Ljava/util/ArrayList;

    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    iput-object p1, p0, Lb7/i0;->L:Lb7/t0;

    .line 58
    .line 59
    invoke-direct {p0}, LO1/C;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance p1, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 68
    .line 69
    iput-object p2, p0, Lb7/i0;->J:Ljava/util/ArrayList;

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lb7/i0;->I:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb7/i0;->J:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lb7/i0;->J:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lb7/i0;->J:Ljava/util/ArrayList;

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
    :pswitch_2
    iget-object v0, p0, Lb7/i0;->J:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
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
    iget v2, v0, Lb7/i0;->I:I

    .line 6
    .line 7
    const v5, 0x7f080904

    .line 8
    .line 9
    .line 10
    const/16 v6, 0x8

    .line 11
    .line 12
    const/16 v7, 0x9

    .line 13
    .line 14
    const v8, 0x7f0809c4

    .line 15
    .line 16
    .line 17
    const-string v9, "ORT_isDemo"

    .line 18
    .line 19
    const-string v10, "name"

    .line 20
    .line 21
    const-string v11, "stream_id"

    .line 22
    .line 23
    iget-object v12, v0, Lb7/i0;->L:Lb7/t0;

    .line 24
    .line 25
    const-string v13, "stream_icon"

    .line 26
    .line 27
    const/4 v14, 0x6

    .line 28
    const/4 v15, 0x0

    .line 29
    const/4 v3, 0x1

    .line 30
    packed-switch v2, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    move-object/from16 v2, p1

    .line 34
    .line 35
    check-cast v2, Lb7/p0;

    .line 36
    .line 37
    iget-object v4, v0, Lb7/i0;->J:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/util/HashMap;

    .line 44
    .line 45
    iput-object v4, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4, v9, v15}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_0

    .line 56
    .line 57
    invoke-virtual {v12}, LY/s;->l()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v4}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget-object v7, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    check-cast v7, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v4, v7}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4, v8}, LL2/a;->f(I)LL2/a;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Lcom/bumptech/glide/l;

    .line 82
    .line 83
    invoke-virtual {v4}, LL2/a;->b()LL2/a;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Lcom/bumptech/glide/l;

    .line 88
    .line 89
    iget-object v7, v2, Lb7/p0;->b0:Landroid/widget/ImageView;

    .line 90
    .line 91
    invoke-virtual {v4, v7}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v12}, LY/s;->l()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v4}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    iget-object v8, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    check-cast v8, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v4, v8}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v4, v14, v7}, LL2/a;->l(II)LL2/a;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Lcom/bumptech/glide/l;

    .line 120
    .line 121
    invoke-virtual {v4}, LL2/a;->b()LL2/a;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    check-cast v4, Lcom/bumptech/glide/l;

    .line 126
    .line 127
    iget-object v7, v2, Lb7/p0;->b0:Landroid/widget/ImageView;

    .line 128
    .line 129
    invoke-virtual {v4, v7}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 130
    .line 131
    .line 132
    :goto_0
    iget-object v4, v2, Lb7/p0;->c0:Landroid/widget/ImageView;

    .line 133
    .line 134
    iget-object v7, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 135
    .line 136
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-virtual {v4, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    iget-object v4, v2, Lb7/p0;->c0:Landroid/widget/ImageView;

    .line 144
    .line 145
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    iget-object v4, v2, Lb7/p0;->d0:Landroidx/cardview/widget/CardView;

    .line 149
    .line 150
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 155
    .line 156
    iget v8, v12, Lb7/t0;->K0:I

    .line 157
    .line 158
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 159
    .line 160
    iget v8, v12, Lb7/t0;->J0:I

    .line 161
    .line 162
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 163
    .line 164
    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 171
    .line 172
    .line 173
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v2, Lb7/p0;->a0:Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    iget-object v3, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 186
    .line 187
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, Ljava/lang/CharSequence;

    .line 192
    .line 193
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    new-instance v1, Lb7/j0;

    .line 197
    .line 198
    invoke-direct {v1, v14, v0, v2}, Lb7/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 202
    .line 203
    .line 204
    new-instance v1, Lf/c;

    .line 205
    .line 206
    const/16 v2, 0x11

    .line 207
    .line 208
    invoke-direct {v1, v0, v2}, Lf/c;-><init>(Ljava/lang/Object;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :pswitch_0
    move-object/from16 v2, p1

    .line 216
    .line 217
    check-cast v2, Lb7/o0;

    .line 218
    .line 219
    iget-object v4, v0, Lb7/i0;->J:Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    check-cast v4, Ljava/util/HashMap;

    .line 226
    .line 227
    iput-object v4, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 228
    .line 229
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v4, v9, v15}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-nez v4, :cond_1

    .line 238
    .line 239
    invoke-virtual {v12}, LY/s;->l()Landroid/content/Context;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-static {v4}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    iget-object v7, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 248
    .line 249
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    check-cast v7, Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v4, v7}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-virtual {v4, v8}, LL2/a;->f(I)LL2/a;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    check-cast v4, Lcom/bumptech/glide/l;

    .line 264
    .line 265
    invoke-virtual {v4}, LL2/a;->b()LL2/a;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    check-cast v4, Lcom/bumptech/glide/l;

    .line 270
    .line 271
    iget-object v7, v2, Lb7/o0;->b0:Landroid/widget/ImageView;

    .line 272
    .line 273
    invoke-virtual {v4, v7}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 274
    .line 275
    .line 276
    goto :goto_1

    .line 277
    :cond_1
    invoke-virtual {v12}, LY/s;->l()Landroid/content/Context;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-static {v4}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    iget-object v8, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 286
    .line 287
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    check-cast v8, Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v4, v8}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-virtual {v4, v14, v7}, LL2/a;->l(II)LL2/a;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    check-cast v4, Lcom/bumptech/glide/l;

    .line 302
    .line 303
    invoke-virtual {v4}, LL2/a;->b()LL2/a;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    check-cast v4, Lcom/bumptech/glide/l;

    .line 308
    .line 309
    iget-object v7, v2, Lb7/o0;->b0:Landroid/widget/ImageView;

    .line 310
    .line 311
    invoke-virtual {v4, v7}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 312
    .line 313
    .line 314
    :goto_1
    iget-object v4, v2, Lb7/o0;->c0:Landroid/widget/ImageView;

    .line 315
    .line 316
    iget-object v7, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 317
    .line 318
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    invoke-virtual {v4, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    iget-object v4, v2, Lb7/o0;->c0:Landroid/widget/ImageView;

    .line 326
    .line 327
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    .line 329
    .line 330
    iget-object v4, v2, Lb7/o0;->d0:Landroidx/cardview/widget/CardView;

    .line 331
    .line 332
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 337
    .line 338
    iget v8, v12, Lb7/t0;->K0:I

    .line 339
    .line 340
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 341
    .line 342
    iget v8, v12, Lb7/t0;->J0:I

    .line 343
    .line 344
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 345
    .line 346
    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v4, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 353
    .line 354
    .line 355
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    iget-object v1, v2, Lb7/o0;->a0:Landroid/widget/TextView;

    .line 363
    .line 364
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    iget-object v3, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 368
    .line 369
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    check-cast v3, Ljava/lang/CharSequence;

    .line 374
    .line 375
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    .line 377
    .line 378
    new-instance v1, Lb7/j0;

    .line 379
    .line 380
    const/4 v3, 0x5

    .line 381
    invoke-direct {v1, v3, v0, v2}, Lb7/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 385
    .line 386
    .line 387
    new-instance v1, Lf/c;

    .line 388
    .line 389
    const/16 v2, 0x10

    .line 390
    .line 391
    invoke-direct {v1, v0, v2}, Lf/c;-><init>(Ljava/lang/Object;I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    .line 396
    .line 397
    return-void

    .line 398
    :pswitch_1
    move-object/from16 v2, p1

    .line 399
    .line 400
    check-cast v2, Lb7/n0;

    .line 401
    .line 402
    iget-object v4, v0, Lb7/i0;->J:Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    check-cast v4, Ljava/util/HashMap;

    .line 409
    .line 410
    iput-object v4, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 411
    .line 412
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    invoke-virtual {v4, v9, v15}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-nez v4, :cond_2

    .line 421
    .line 422
    invoke-virtual {v12}, LY/s;->l()Landroid/content/Context;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    invoke-static {v4}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    iget-object v7, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 431
    .line 432
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    check-cast v7, Ljava/lang/String;

    .line 437
    .line 438
    invoke-virtual {v4, v7}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    invoke-virtual {v4, v8}, LL2/a;->f(I)LL2/a;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    check-cast v4, Lcom/bumptech/glide/l;

    .line 447
    .line 448
    invoke-virtual {v4}, LL2/a;->b()LL2/a;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    check-cast v4, Lcom/bumptech/glide/l;

    .line 453
    .line 454
    iget-object v7, v2, Lb7/n0;->b0:Landroid/widget/ImageView;

    .line 455
    .line 456
    invoke-virtual {v4, v7}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 457
    .line 458
    .line 459
    goto :goto_2

    .line 460
    :cond_2
    invoke-virtual {v12}, LY/s;->l()Landroid/content/Context;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    invoke-static {v4}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    iget-object v8, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 469
    .line 470
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v8

    .line 474
    check-cast v8, Ljava/lang/String;

    .line 475
    .line 476
    invoke-virtual {v4, v8}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    invoke-virtual {v4, v14, v7}, LL2/a;->l(II)LL2/a;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    check-cast v4, Lcom/bumptech/glide/l;

    .line 485
    .line 486
    invoke-virtual {v4}, LL2/a;->b()LL2/a;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    check-cast v4, Lcom/bumptech/glide/l;

    .line 491
    .line 492
    iget-object v7, v2, Lb7/n0;->b0:Landroid/widget/ImageView;

    .line 493
    .line 494
    invoke-virtual {v4, v7}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 495
    .line 496
    .line 497
    :goto_2
    iget-object v4, v2, Lb7/n0;->c0:Landroid/widget/ImageView;

    .line 498
    .line 499
    iget-object v7, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 500
    .line 501
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v7

    .line 505
    invoke-virtual {v4, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    iget-object v4, v2, Lb7/n0;->c0:Landroid/widget/ImageView;

    .line 509
    .line 510
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    .line 512
    .line 513
    iget-object v4, v2, Lb7/n0;->d0:Landroidx/cardview/widget/CardView;

    .line 514
    .line 515
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 516
    .line 517
    .line 518
    move-result-object v7

    .line 519
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 520
    .line 521
    iget v8, v12, Lb7/t0;->K0:I

    .line 522
    .line 523
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 524
    .line 525
    iget v8, v12, Lb7/t0;->J0:I

    .line 526
    .line 527
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 528
    .line 529
    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    .line 531
    .line 532
    iget-object v7, v2, Lb7/n0;->a0:Landroid/widget/TextView;

    .line 533
    .line 534
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 535
    .line 536
    .line 537
    iget-object v6, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 538
    .line 539
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v6

    .line 543
    check-cast v6, Ljava/lang/CharSequence;

    .line 544
    .line 545
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v4, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 552
    .line 553
    .line 554
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 559
    .line 560
    .line 561
    new-instance v1, Lb7/j0;

    .line 562
    .line 563
    const/4 v5, 0x4

    .line 564
    invoke-direct {v1, v5, v0, v2}, Lb7/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 568
    .line 569
    .line 570
    new-instance v1, Lf/c;

    .line 571
    .line 572
    const/16 v2, 0xf

    .line 573
    .line 574
    invoke-direct {v1, v0, v2}, Lf/c;-><init>(Ljava/lang/Object;I)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    .line 579
    .line 580
    new-instance v1, Lb7/l0;

    .line 581
    .line 582
    invoke-direct {v1, v0, v3}, Lb7/l0;-><init>(Ljava/lang/Object;I)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 586
    .line 587
    .line 588
    return-void

    .line 589
    :pswitch_2
    move-object/from16 v2, p1

    .line 590
    .line 591
    check-cast v2, Lb7/e0;

    .line 592
    .line 593
    iget-object v4, v0, Lb7/i0;->J:Ljava/util/ArrayList;

    .line 594
    .line 595
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    check-cast v1, Ljava/util/HashMap;

    .line 600
    .line 601
    iput-object v1, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 602
    .line 603
    iget-object v4, v2, Lb7/e0;->a0:Landroid/widget/TextView;

    .line 604
    .line 605
    const-string v5, "category_name"

    .line 606
    .line 607
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    check-cast v1, Ljava/lang/String;

    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    .line 619
    .line 620
    iget-object v1, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 621
    .line 622
    const-string v4, "category_id"

    .line 623
    .line 624
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    check-cast v1, Ljava/lang/String;

    .line 629
    .line 630
    const-string v5, "0000001"

    .line 631
    .line 632
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    move-result v1

    .line 636
    iget-object v2, v2, Lb7/e0;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 637
    .line 638
    if-eqz v1, :cond_3

    .line 639
    .line 640
    new-instance v1, Lb7/k0;

    .line 641
    .line 642
    invoke-virtual {v12}, LY/s;->l()Landroid/content/Context;

    .line 643
    .line 644
    .line 645
    iget-object v3, v12, Lb7/t0;->f1:Ljava/util/ArrayList;

    .line 646
    .line 647
    invoke-direct {v1, v12, v3}, Lb7/k0;-><init>(Lb7/t0;Ljava/util/ArrayList;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LO1/C;)V

    .line 651
    .line 652
    .line 653
    new-instance v1, Lb7/h0;

    .line 654
    .line 655
    invoke-direct {v1, v15}, Lb7/h0;-><init>(I)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->j(LO1/P;)V

    .line 659
    .line 660
    .line 661
    goto/16 :goto_5

    .line 662
    .line 663
    :cond_3
    iget-object v1, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 664
    .line 665
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    check-cast v1, Ljava/lang/String;

    .line 670
    .line 671
    const-string v5, "0000002"

    .line 672
    .line 673
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    move-result v1

    .line 677
    const-string v5, "rating_5based"

    .line 678
    .line 679
    const-string v6, "rating"

    .line 680
    .line 681
    const-string v7, "num"

    .line 682
    .line 683
    const/4 v8, 0x2

    .line 684
    if-eqz v1, :cond_5

    .line 685
    .line 686
    :goto_3
    iget-object v1, v12, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 687
    .line 688
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 689
    .line 690
    .line 691
    move-result v1

    .line 692
    iget-object v9, v12, Lb7/t0;->i1:Ljava/util/ArrayList;

    .line 693
    .line 694
    if-ge v15, v1, :cond_4

    .line 695
    .line 696
    new-instance v1, Ljava/util/HashMap;

    .line 697
    .line 698
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 699
    .line 700
    .line 701
    iget-object v14, v12, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 702
    .line 703
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v14

    .line 707
    check-cast v14, Lh7/j;

    .line 708
    .line 709
    iget-object v14, v14, Lh7/j;->a:Ljava/lang/String;

    .line 710
    .line 711
    invoke-virtual {v1, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    iget-object v14, v12, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 715
    .line 716
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v14

    .line 720
    check-cast v14, Lh7/j;

    .line 721
    .line 722
    iget-object v14, v14, Lh7/j;->b:Ljava/lang/String;

    .line 723
    .line 724
    invoke-virtual {v1, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    iget-object v14, v12, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 728
    .line 729
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v14

    .line 733
    check-cast v14, Lh7/j;

    .line 734
    .line 735
    iget-object v14, v14, Lh7/j;->c:Ljava/lang/String;

    .line 736
    .line 737
    const-string v3, "stream_type"

    .line 738
    .line 739
    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    iget-object v3, v12, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 743
    .line 744
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v3

    .line 748
    check-cast v3, Lh7/j;

    .line 749
    .line 750
    iget-object v3, v3, Lh7/j;->d:Ljava/lang/String;

    .line 751
    .line 752
    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    iget-object v3, v12, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 756
    .line 757
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v3

    .line 761
    check-cast v3, Lh7/j;

    .line 762
    .line 763
    iget-object v3, v3, Lh7/j;->e:Ljava/lang/String;

    .line 764
    .line 765
    invoke-virtual {v1, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    iget-object v3, v12, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 769
    .line 770
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v3

    .line 774
    check-cast v3, Lh7/j;

    .line 775
    .line 776
    iget-object v3, v3, Lh7/j;->f:Ljava/lang/String;

    .line 777
    .line 778
    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    iget-object v3, v12, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 782
    .line 783
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    check-cast v3, Lh7/j;

    .line 788
    .line 789
    iget-object v3, v3, Lh7/j;->g:Ljava/lang/String;

    .line 790
    .line 791
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    iget-object v3, v12, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 795
    .line 796
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v3

    .line 800
    check-cast v3, Lh7/j;

    .line 801
    .line 802
    iget-object v3, v3, Lh7/j;->h:Ljava/lang/String;

    .line 803
    .line 804
    const-string v14, "added"

    .line 805
    .line 806
    invoke-virtual {v1, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    iget-object v3, v12, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 810
    .line 811
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v3

    .line 815
    check-cast v3, Lh7/j;

    .line 816
    .line 817
    iget-object v3, v3, Lh7/j;->i:Ljava/lang/String;

    .line 818
    .line 819
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    iget-object v3, v12, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 823
    .line 824
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    check-cast v3, Lh7/j;

    .line 829
    .line 830
    iget-object v3, v3, Lh7/j;->j:Ljava/lang/String;

    .line 831
    .line 832
    const-string v14, "container_extension"

    .line 833
    .line 834
    invoke-virtual {v1, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    iget-object v3, v12, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 838
    .line 839
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v3

    .line 843
    check-cast v3, Lh7/j;

    .line 844
    .line 845
    iget-object v3, v3, Lh7/j;->k:Ljava/lang/String;

    .line 846
    .line 847
    const-string v14, "custom_sid"

    .line 848
    .line 849
    invoke-virtual {v1, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    iget-object v3, v12, Lb7/t0;->g1:Ljava/util/ArrayList;

    .line 853
    .line 854
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v3

    .line 858
    check-cast v3, Lh7/j;

    .line 859
    .line 860
    iget-object v3, v3, Lh7/j;->l:Ljava/lang/String;

    .line 861
    .line 862
    const-string v14, "direct_source"

    .line 863
    .line 864
    invoke-virtual {v1, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    .line 869
    .line 870
    add-int/lit8 v15, v15, 0x1

    .line 871
    .line 872
    const/4 v3, 0x1

    .line 873
    goto/16 :goto_3

    .line 874
    .line 875
    :cond_4
    new-instance v1, Lb7/i0;

    .line 876
    .line 877
    invoke-virtual {v12}, LY/s;->l()Landroid/content/Context;

    .line 878
    .line 879
    .line 880
    invoke-direct {v1, v12, v9, v8}, Lb7/i0;-><init>(Lb7/t0;Ljava/util/ArrayList;I)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LO1/C;)V

    .line 884
    .line 885
    .line 886
    new-instance v1, Lb7/h0;

    .line 887
    .line 888
    const/4 v3, 0x1

    .line 889
    invoke-direct {v1, v3}, Lb7/h0;-><init>(I)V

    .line 890
    .line 891
    .line 892
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->j(LO1/P;)V

    .line 893
    .line 894
    .line 895
    goto/16 :goto_5

    .line 896
    .line 897
    :cond_5
    iget-object v1, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 898
    .line 899
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    move-result-object v1

    .line 903
    check-cast v1, Ljava/lang/String;

    .line 904
    .line 905
    const-string v3, "0000003"

    .line 906
    .line 907
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 908
    .line 909
    .line 910
    move-result v1

    .line 911
    if-eqz v1, :cond_7

    .line 912
    .line 913
    :goto_4
    iget-object v1, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 914
    .line 915
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 916
    .line 917
    .line 918
    move-result v1

    .line 919
    iget-object v3, v12, Lb7/t0;->k1:Ljava/util/ArrayList;

    .line 920
    .line 921
    if-ge v15, v1, :cond_6

    .line 922
    .line 923
    new-instance v1, Ljava/util/HashMap;

    .line 924
    .line 925
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 926
    .line 927
    .line 928
    iget-object v9, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 929
    .line 930
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    move-result-object v9

    .line 934
    check-cast v9, Lh7/h;

    .line 935
    .line 936
    iget-object v9, v9, Lh7/h;->a:Ljava/lang/String;

    .line 937
    .line 938
    invoke-virtual {v1, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    iget-object v9, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 942
    .line 943
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    move-result-object v9

    .line 947
    check-cast v9, Lh7/h;

    .line 948
    .line 949
    iget-object v9, v9, Lh7/h;->b:Ljava/lang/String;

    .line 950
    .line 951
    invoke-virtual {v1, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    iget-object v9, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 955
    .line 956
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    move-result-object v9

    .line 960
    check-cast v9, Lh7/h;

    .line 961
    .line 962
    iget-object v9, v9, Lh7/h;->c:Ljava/lang/String;

    .line 963
    .line 964
    const-string v11, "series_id"

    .line 965
    .line 966
    invoke-virtual {v1, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    iget-object v9, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 970
    .line 971
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v9

    .line 975
    check-cast v9, Lh7/h;

    .line 976
    .line 977
    iget-object v9, v9, Lh7/h;->d:Ljava/lang/String;

    .line 978
    .line 979
    const-string v11, "cover"

    .line 980
    .line 981
    invoke-virtual {v1, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    iget-object v9, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 985
    .line 986
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    move-result-object v9

    .line 990
    check-cast v9, Lh7/h;

    .line 991
    .line 992
    iget-object v9, v9, Lh7/h;->e:Ljava/lang/String;

    .line 993
    .line 994
    const-string v11, "plot"

    .line 995
    .line 996
    invoke-virtual {v1, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    iget-object v9, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 1000
    .line 1001
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v9

    .line 1005
    check-cast v9, Lh7/h;

    .line 1006
    .line 1007
    iget-object v9, v9, Lh7/h;->f:Ljava/lang/String;

    .line 1008
    .line 1009
    const-string v11, "cast"

    .line 1010
    .line 1011
    invoke-virtual {v1, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    iget-object v9, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 1015
    .line 1016
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v9

    .line 1020
    check-cast v9, Lh7/h;

    .line 1021
    .line 1022
    iget-object v9, v9, Lh7/h;->g:Ljava/lang/String;

    .line 1023
    .line 1024
    const-string v11, "director"

    .line 1025
    .line 1026
    invoke-virtual {v1, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    iget-object v9, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 1030
    .line 1031
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v9

    .line 1035
    check-cast v9, Lh7/h;

    .line 1036
    .line 1037
    iget-object v9, v9, Lh7/h;->h:Ljava/lang/String;

    .line 1038
    .line 1039
    const-string v11, "genre"

    .line 1040
    .line 1041
    invoke-virtual {v1, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    iget-object v9, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 1045
    .line 1046
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v9

    .line 1050
    check-cast v9, Lh7/h;

    .line 1051
    .line 1052
    iget-object v9, v9, Lh7/h;->i:Ljava/lang/String;

    .line 1053
    .line 1054
    const-string v11, "releaseDate"

    .line 1055
    .line 1056
    invoke-virtual {v1, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    .line 1058
    .line 1059
    iget-object v9, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 1060
    .line 1061
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v9

    .line 1065
    check-cast v9, Lh7/h;

    .line 1066
    .line 1067
    iget-object v9, v9, Lh7/h;->j:Ljava/lang/String;

    .line 1068
    .line 1069
    const-string v11, "last_modified"

    .line 1070
    .line 1071
    invoke-virtual {v1, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    iget-object v9, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 1075
    .line 1076
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v9

    .line 1080
    check-cast v9, Lh7/h;

    .line 1081
    .line 1082
    iget-object v9, v9, Lh7/h;->k:Ljava/lang/String;

    .line 1083
    .line 1084
    invoke-virtual {v1, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    .line 1086
    .line 1087
    iget-object v9, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 1088
    .line 1089
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v9

    .line 1093
    check-cast v9, Lh7/h;

    .line 1094
    .line 1095
    iget-object v9, v9, Lh7/h;->l:Ljava/lang/String;

    .line 1096
    .line 1097
    invoke-virtual {v1, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    .line 1099
    .line 1100
    iget-object v9, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 1101
    .line 1102
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v9

    .line 1106
    check-cast v9, Lh7/h;

    .line 1107
    .line 1108
    iget-object v9, v9, Lh7/h;->m:Ljava/lang/String;

    .line 1109
    .line 1110
    const-string v11, "backdrop_path"

    .line 1111
    .line 1112
    invoke-virtual {v1, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    .line 1114
    .line 1115
    iget-object v9, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 1116
    .line 1117
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v9

    .line 1121
    check-cast v9, Lh7/h;

    .line 1122
    .line 1123
    iget-object v9, v9, Lh7/h;->n:Ljava/lang/String;

    .line 1124
    .line 1125
    const-string v11, "youtube_trailer"

    .line 1126
    .line 1127
    invoke-virtual {v1, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    iget-object v9, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 1131
    .line 1132
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v9

    .line 1136
    check-cast v9, Lh7/h;

    .line 1137
    .line 1138
    iget-object v9, v9, Lh7/h;->o:Ljava/lang/String;

    .line 1139
    .line 1140
    const-string v11, "episode_run_time"

    .line 1141
    .line 1142
    invoke-virtual {v1, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    .line 1144
    .line 1145
    iget-object v9, v12, Lb7/t0;->h1:Ljava/util/ArrayList;

    .line 1146
    .line 1147
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v9

    .line 1151
    check-cast v9, Lh7/h;

    .line 1152
    .line 1153
    iget-object v9, v9, Lh7/h;->p:Ljava/lang/String;

    .line 1154
    .line 1155
    invoke-virtual {v1, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    .line 1160
    .line 1161
    add-int/lit8 v15, v15, 0x1

    .line 1162
    .line 1163
    goto/16 :goto_4

    .line 1164
    .line 1165
    :cond_6
    new-instance v1, Lb7/m0;

    .line 1166
    .line 1167
    invoke-virtual {v12}, LY/s;->l()Landroid/content/Context;

    .line 1168
    .line 1169
    .line 1170
    const/4 v4, 0x1

    .line 1171
    invoke-direct {v1, v12, v3, v4}, Lb7/m0;-><init>(Lb7/t0;Ljava/util/ArrayList;I)V

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LO1/C;)V

    .line 1175
    .line 1176
    .line 1177
    new-instance v1, Lb7/h0;

    .line 1178
    .line 1179
    invoke-direct {v1, v8}, Lb7/h0;-><init>(I)V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->j(LO1/P;)V

    .line 1183
    .line 1184
    .line 1185
    goto/16 :goto_5

    .line 1186
    .line 1187
    :cond_7
    iget-object v1, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 1188
    .line 1189
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v1

    .line 1193
    check-cast v1, Ljava/lang/String;

    .line 1194
    .line 1195
    const-string v3, "0000004"

    .line 1196
    .line 1197
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1198
    .line 1199
    .line 1200
    move-result v1

    .line 1201
    if-eqz v1, :cond_8

    .line 1202
    .line 1203
    new-instance v1, Lb7/i0;

    .line 1204
    .line 1205
    invoke-virtual {v12}, LY/s;->l()Landroid/content/Context;

    .line 1206
    .line 1207
    .line 1208
    iget-object v3, v12, Lb7/t0;->j1:Ljava/util/ArrayList;

    .line 1209
    .line 1210
    const/4 v4, 0x3

    .line 1211
    invoke-direct {v1, v12, v3, v4}, Lb7/i0;-><init>(Lb7/t0;Ljava/util/ArrayList;I)V

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LO1/C;)V

    .line 1215
    .line 1216
    .line 1217
    new-instance v1, Lb7/h0;

    .line 1218
    .line 1219
    invoke-direct {v1, v4}, Lb7/h0;-><init>(I)V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->j(LO1/P;)V

    .line 1223
    .line 1224
    .line 1225
    goto/16 :goto_5

    .line 1226
    .line 1227
    :cond_8
    iget-object v1, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 1228
    .line 1229
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v1

    .line 1233
    check-cast v1, Ljava/lang/String;

    .line 1234
    .line 1235
    const-string v3, "0000005"

    .line 1236
    .line 1237
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1238
    .line 1239
    .line 1240
    move-result v1

    .line 1241
    if-eqz v1, :cond_9

    .line 1242
    .line 1243
    new-instance v1, Lb7/m0;

    .line 1244
    .line 1245
    invoke-virtual {v12}, LY/s;->l()Landroid/content/Context;

    .line 1246
    .line 1247
    .line 1248
    iget-object v3, v12, Lb7/t0;->l1:Ljava/util/ArrayList;

    .line 1249
    .line 1250
    invoke-direct {v1, v12, v3, v8}, Lb7/m0;-><init>(Lb7/t0;Ljava/util/ArrayList;I)V

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LO1/C;)V

    .line 1254
    .line 1255
    .line 1256
    new-instance v1, Lb7/h0;

    .line 1257
    .line 1258
    const/4 v3, 0x4

    .line 1259
    invoke-direct {v1, v3}, Lb7/h0;-><init>(I)V

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->j(LO1/P;)V

    .line 1263
    .line 1264
    .line 1265
    goto :goto_5

    .line 1266
    :cond_9
    iget-object v1, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 1267
    .line 1268
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v1

    .line 1272
    check-cast v1, Ljava/lang/String;

    .line 1273
    .line 1274
    const-string v3, "0000006"

    .line 1275
    .line 1276
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1277
    .line 1278
    .line 1279
    move-result v1

    .line 1280
    if-eqz v1, :cond_a

    .line 1281
    .line 1282
    new-instance v1, Lb7/i0;

    .line 1283
    .line 1284
    invoke-virtual {v12}, LY/s;->l()Landroid/content/Context;

    .line 1285
    .line 1286
    .line 1287
    iget-object v3, v12, Lb7/t0;->m1:Ljava/util/ArrayList;

    .line 1288
    .line 1289
    const/4 v4, 0x1

    .line 1290
    invoke-direct {v1, v12, v3, v4}, Lb7/i0;-><init>(Lb7/t0;Ljava/util/ArrayList;I)V

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LO1/C;)V

    .line 1294
    .line 1295
    .line 1296
    new-instance v1, Lb7/h0;

    .line 1297
    .line 1298
    const/4 v3, 0x5

    .line 1299
    invoke-direct {v1, v3}, Lb7/h0;-><init>(I)V

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->j(LO1/P;)V

    .line 1303
    .line 1304
    .line 1305
    goto :goto_5

    .line 1306
    :cond_a
    iget-object v1, v0, Lb7/i0;->K:Ljava/util/HashMap;

    .line 1307
    .line 1308
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v1

    .line 1312
    check-cast v1, Ljava/lang/String;

    .line 1313
    .line 1314
    const-string v3, "0000007"

    .line 1315
    .line 1316
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1317
    .line 1318
    .line 1319
    move-result v1

    .line 1320
    if-eqz v1, :cond_b

    .line 1321
    .line 1322
    new-instance v1, Lb7/m0;

    .line 1323
    .line 1324
    invoke-virtual {v12}, LY/s;->l()Landroid/content/Context;

    .line 1325
    .line 1326
    .line 1327
    iget-object v3, v12, Lb7/t0;->n1:Ljava/util/ArrayList;

    .line 1328
    .line 1329
    invoke-direct {v1, v12, v3, v15}, Lb7/m0;-><init>(Lb7/t0;Ljava/util/ArrayList;I)V

    .line 1330
    .line 1331
    .line 1332
    sget v3, Lb7/t0;->V1:I

    .line 1333
    .line 1334
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LO1/C;)V

    .line 1335
    .line 1336
    .line 1337
    new-instance v1, Lb7/h0;

    .line 1338
    .line 1339
    invoke-direct {v1, v14}, Lb7/h0;-><init>(I)V

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->j(LO1/P;)V

    .line 1343
    .line 1344
    .line 1345
    :cond_b
    :goto_5
    return-void

    .line 1346
    nop

    .line 1347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView;I)LO1/c0;
    .locals 6

    .line 1
    iget p2, p0, Lb7/i0;->I:I

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
    const v4, 0x7f0e00fa

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x0

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
    invoke-virtual {p2, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Lb7/p0;

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
    iput-object v3, p2, Lb7/p0;->a0:Landroid/widget/TextView;

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
    iput-object v2, p2, Lb7/p0;->b0:Landroid/widget/ImageView;

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
    iput-object v1, p2, Lb7/p0;->c0:Landroid/widget/ImageView;

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
    iput-object p1, p2, Lb7/p0;->d0:Landroidx/cardview/widget/CardView;

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
    invoke-virtual {p2, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance p2, Lb7/o0;

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
    iput-object v3, p2, Lb7/o0;->a0:Landroid/widget/TextView;

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
    iput-object v2, p2, Lb7/o0;->b0:Landroid/widget/ImageView;

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
    iput-object v1, p2, Lb7/o0;->c0:Landroid/widget/ImageView;

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
    iput-object p1, p2, Lb7/o0;->d0:Landroidx/cardview/widget/CardView;

    .line 120
    .line 121
    return-object p2

    .line 122
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p2, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    new-instance p2, Lb7/n0;

    .line 135
    .line 136
    invoke-direct {p2, p1}, LO1/c0;-><init>(Landroid/view/View;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    check-cast v4, Landroid/widget/TextView;

    .line 144
    .line 145
    iput-object v4, p2, Lb7/n0;->a0:Landroid/widget/TextView;

    .line 146
    .line 147
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Landroid/widget/ImageView;

    .line 152
    .line 153
    iput-object v2, p2, Lb7/n0;->b0:Landroid/widget/ImageView;

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Landroid/widget/ImageView;

    .line 160
    .line 161
    iput-object v1, p2, Lb7/n0;->c0:Landroid/widget/ImageView;

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 168
    .line 169
    iput-object v0, p2, Lb7/n0;->d0:Landroidx/cardview/widget/CardView;

    .line 170
    .line 171
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Landroid/widget/TextView;

    .line 176
    .line 177
    iput-object p1, p2, Lb7/n0;->a0:Landroid/widget/TextView;

    .line 178
    .line 179
    return-object p2

    .line 180
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    const v0, 0x7f0e00f9

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v0, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    new-instance p2, Lb7/e0;

    .line 196
    .line 197
    invoke-direct {p2, p1}, LO1/c0;-><init>(Landroid/view/View;)V

    .line 198
    .line 199
    .line 200
    const v0, 0x7f0b0510

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Landroid/widget/TextView;

    .line 208
    .line 209
    iput-object v0, p2, Lb7/e0;->a0:Landroid/widget/TextView;

    .line 210
    .line 211
    const v0, 0x7f0b0423

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 219
    .line 220
    iput-object p1, p2, Lb7/e0;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 221
    .line 222
    new-instance v0, Lpe/hf/black20/util/ORPlayerLinearLayoutManager;

    .line 223
    .line 224
    iget-object v1, p0, Lb7/i0;->L:Lb7/t0;

    .line 225
    .line 226
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    invoke-direct {v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LO1/L;)V

    .line 233
    .line 234
    .line 235
    return-object p2

    .line 236
    nop

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
