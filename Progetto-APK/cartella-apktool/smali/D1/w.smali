.class public final synthetic LD1/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LD1/B;


# direct methods
.method public synthetic constructor <init>(LD1/B;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LD1/w;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LD1/w;->H:LD1/B;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, LD1/w;->G:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, p0, LD1/w;->H:LD1/B;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, v4, LD1/B;->f:Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz v0, :cond_8

    .line 14
    .line 15
    iget-object v5, v4, LD1/B;->g:Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    iget-object v6, v4, LD1/B;->a:LD1/v;

    .line 22
    .line 23
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    sub-int/2addr v7, v8

    .line 32
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    sub-int/2addr v7, v6

    .line 37
    :goto_0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-le v6, v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    sub-int/2addr v6, v1

    .line 48
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v1, v4, LD1/B;->k:Landroid/view/View;

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    const/16 v6, 0x8

    .line 64
    .line 65
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object v6, v4, LD1/B;->i:Landroid/view/ViewGroup;

    .line 69
    .line 70
    invoke-static {v6}, LD1/B;->d(Landroid/view/View;)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    sub-int/2addr v8, v3

    .line 79
    const/4 v9, 0x0

    .line 80
    :goto_1
    if-ge v9, v8, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    invoke-static {v10}, LD1/B;->d(Landroid/view/View;)I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    add-int/2addr v6, v10

    .line 91
    add-int/lit8 v9, v9, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    if-le v6, v7, :cond_7

    .line 95
    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, LD1/B;->d(Landroid/view/View;)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    add-int/2addr v6, v1

    .line 106
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    :goto_2
    if-ge v4, v8, :cond_6

    .line 113
    .line 114
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    invoke-static {v9}, LD1/B;->d(Landroid/view/View;)I

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    sub-int/2addr v6, v10

    .line 123
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    if-gt v6, v7, :cond_5

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_6
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-nez v4, :cond_8

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 143
    .line 144
    .line 145
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-ge v2, v0, :cond_8

    .line 150
    .line 151
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    sub-int/2addr v0, v3

    .line 156
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    check-cast v4, Landroid/view/View;

    .line 161
    .line 162
    invoke-virtual {v5, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v2, v2, 0x1

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_7
    iget-object v0, v4, LD1/B;->h:Landroid/view/ViewGroup;

    .line 169
    .line 170
    if-eqz v0, :cond_8

    .line 171
    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_8

    .line 177
    .line 178
    iget-object v0, v4, LD1/B;->r:Landroid/animation/ValueAnimator;

    .line 179
    .line 180
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-nez v1, :cond_8

    .line 185
    .line 186
    iget-object v1, v4, LD1/B;->q:Landroid/animation/ValueAnimator;

    .line 187
    .line 188
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 192
    .line 193
    .line 194
    :cond_8
    :goto_5
    return-void

    .line 195
    :pswitch_0
    iget-object v0, v4, LD1/B;->e:Landroid/view/ViewGroup;

    .line 196
    .line 197
    const/4 v1, 0x4

    .line 198
    if-eqz v0, :cond_a

    .line 199
    .line 200
    iget-boolean v5, v4, LD1/B;->A:Z

    .line 201
    .line 202
    if-eqz v5, :cond_9

    .line 203
    .line 204
    const/4 v5, 0x0

    .line 205
    goto :goto_6

    .line 206
    :cond_9
    const/4 v5, 0x4

    .line 207
    :goto_6
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    :cond_a
    iget-object v0, v4, LD1/B;->j:Landroid/view/View;

    .line 211
    .line 212
    if-eqz v0, :cond_12

    .line 213
    .line 214
    iget-object v5, v4, LD1/B;->a:LD1/v;

    .line 215
    .line 216
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    const v6, 0x7f0700d4

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 232
    .line 233
    if-eqz v6, :cond_c

    .line 234
    .line 235
    iget-boolean v7, v4, LD1/B;->A:Z

    .line 236
    .line 237
    if-eqz v7, :cond_b

    .line 238
    .line 239
    const/4 v5, 0x0

    .line 240
    :cond_b
    iput v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 241
    .line 242
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    .line 244
    .line 245
    :cond_c
    instance-of v5, v0, LD1/e;

    .line 246
    .line 247
    if-eqz v5, :cond_12

    .line 248
    .line 249
    check-cast v0, LD1/e;

    .line 250
    .line 251
    iget-boolean v5, v4, LD1/B;->A:Z

    .line 252
    .line 253
    const/4 v6, 0x0

    .line 254
    iget-object v7, v0, LD1/e;->G:Landroid/graphics/Rect;

    .line 255
    .line 256
    if-eqz v5, :cond_e

    .line 257
    .line 258
    iget-object v5, v0, LD1/e;->n0:Landroid/animation/ValueAnimator;

    .line 259
    .line 260
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-eqz v8, :cond_d

    .line 265
    .line 266
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 267
    .line 268
    .line 269
    :cond_d
    iput-boolean v3, v0, LD1/e;->p0:Z

    .line 270
    .line 271
    iput v6, v0, LD1/e;->o0:F

    .line 272
    .line 273
    invoke-virtual {v0, v7}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 274
    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_e
    iget v5, v4, LD1/B;->z:I

    .line 278
    .line 279
    if-ne v5, v3, :cond_10

    .line 280
    .line 281
    iget-object v3, v0, LD1/e;->n0:Landroid/animation/ValueAnimator;

    .line 282
    .line 283
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    if-eqz v5, :cond_f

    .line 288
    .line 289
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 290
    .line 291
    .line 292
    :cond_f
    iput-boolean v2, v0, LD1/e;->p0:Z

    .line 293
    .line 294
    iput v6, v0, LD1/e;->o0:F

    .line 295
    .line 296
    invoke-virtual {v0, v7}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 297
    .line 298
    .line 299
    goto :goto_7

    .line 300
    :cond_10
    const/4 v3, 0x3

    .line 301
    if-eq v5, v3, :cond_12

    .line 302
    .line 303
    iget-object v3, v0, LD1/e;->n0:Landroid/animation/ValueAnimator;

    .line 304
    .line 305
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    if-eqz v5, :cond_11

    .line 310
    .line 311
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 312
    .line 313
    .line 314
    :cond_11
    iput-boolean v2, v0, LD1/e;->p0:Z

    .line 315
    .line 316
    const/high16 v3, 0x3f800000    # 1.0f

    .line 317
    .line 318
    iput v3, v0, LD1/e;->o0:F

    .line 319
    .line 320
    invoke-virtual {v0, v7}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 321
    .line 322
    .line 323
    :cond_12
    :goto_7
    iget-object v0, v4, LD1/B;->y:Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    if-eqz v3, :cond_14

    .line 334
    .line 335
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    check-cast v3, Landroid/view/View;

    .line 340
    .line 341
    iget-boolean v5, v4, LD1/B;->A:Z

    .line 342
    .line 343
    if-eqz v5, :cond_13

    .line 344
    .line 345
    invoke-static {v3}, LD1/B;->k(Landroid/view/View;)Z

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    if-eqz v5, :cond_13

    .line 350
    .line 351
    const/4 v5, 0x4

    .line 352
    goto :goto_9

    .line 353
    :cond_13
    const/4 v5, 0x0

    .line 354
    :goto_9
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 355
    .line 356
    .line 357
    goto :goto_8

    .line 358
    :cond_14
    return-void

    .line 359
    :pswitch_1
    invoke-virtual {v4, v1}, LD1/B;->j(I)V

    .line 360
    .line 361
    .line 362
    return-void

    .line 363
    :pswitch_2
    iget-object v0, v4, LD1/B;->l:Landroid/animation/AnimatorSet;

    .line 364
    .line 365
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 366
    .line 367
    .line 368
    iget-object v0, v4, LD1/B;->u:LD1/w;

    .line 369
    .line 370
    const-wide/16 v1, 0x7d0

    .line 371
    .line 372
    invoke-virtual {v4, v0, v1, v2}, LD1/B;->f(LD1/w;J)V

    .line 373
    .line 374
    .line 375
    return-void

    .line 376
    :pswitch_3
    iget-object v0, v4, LD1/B;->m:Landroid/animation/AnimatorSet;

    .line 377
    .line 378
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 379
    .line 380
    .line 381
    return-void

    .line 382
    :pswitch_4
    iget-object v0, v4, LD1/B;->n:Landroid/animation/AnimatorSet;

    .line 383
    .line 384
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 385
    .line 386
    .line 387
    return-void

    .line 388
    :pswitch_5
    invoke-virtual {v4}, LD1/B;->l()V

    .line 389
    .line 390
    .line 391
    return-void

    .line 392
    nop

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
