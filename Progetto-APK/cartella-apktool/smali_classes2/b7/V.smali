.class public final Lb7/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/MultiScreenActivityEXO;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/V;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/V;->H:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb7/V;->G:I

    .line 4
    .line 5
    const/16 v2, 0x55

    .line 6
    .line 7
    const-wide v3, 0x3fe1eb851eb851ecL    # 0.56

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const/16 v5, 0x5f

    .line 13
    .line 14
    const v6, 0x3f666666    # 0.9f

    .line 15
    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const v8, 0x7f0808e8

    .line 19
    .line 20
    .line 21
    const v9, 0x7f0808ef

    .line 22
    .line 23
    .line 24
    const/16 v10, 0x8

    .line 25
    .line 26
    const/4 v11, 0x1

    .line 27
    const/4 v12, 0x0

    .line 28
    iget-object v13, v0, Lb7/V;->H:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 29
    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    iget v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->B1:I

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 38
    .line 39
    if-eq v2, v11, :cond_0

    .line 40
    .line 41
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 42
    .line 43
    iget v3, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 44
    .line 45
    add-int/2addr v2, v3

    .line 46
    iget v3, v13, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 47
    .line 48
    add-int/2addr v2, v3

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 52
    .line 53
    if-lt v2, v1, :cond_0

    .line 54
    .line 55
    invoke-virtual {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->m()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string v1, "p4"

    .line 60
    .line 61
    iput-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->M0:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->c(Lpe/hf/black20/MultiScreenActivityEXO;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->B1:I

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 72
    .line 73
    if-eq v2, v11, :cond_1

    .line 74
    .line 75
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 76
    .line 77
    iget v3, v13, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 78
    .line 79
    add-int/2addr v2, v3

    .line 80
    iget v3, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 81
    .line 82
    add-int/2addr v2, v3

    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 86
    .line 87
    if-lt v2, v1, :cond_1

    .line 88
    .line 89
    invoke-virtual {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->m()V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    const-string v1, "p3"

    .line 94
    .line 95
    iput-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->M0:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->c(Lpe/hf/black20/MultiScreenActivityEXO;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void

    .line 101
    :pswitch_1
    iget v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->B1:I

    .line 102
    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 106
    .line 107
    if-eq v2, v11, :cond_2

    .line 108
    .line 109
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 110
    .line 111
    iget v3, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 112
    .line 113
    add-int/2addr v2, v3

    .line 114
    iget v3, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 115
    .line 116
    add-int/2addr v2, v3

    .line 117
    if-eqz v2, :cond_2

    .line 118
    .line 119
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 120
    .line 121
    if-lt v2, v1, :cond_2

    .line 122
    .line 123
    invoke-virtual {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->m()V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_2
    const-string v1, "p2"

    .line 128
    .line 129
    iput-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->M0:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->c(Lpe/hf/black20/MultiScreenActivityEXO;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    return-void

    .line 135
    :pswitch_2
    sget-object v1, Lpe/hf/black20/MultiScreenActivityEXO;->S1:Ls0/h;

    .line 136
    .line 137
    invoke-virtual {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->o()V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_3
    sget-object v1, Lpe/hf/black20/MultiScreenActivityEXO;->S1:Ls0/h;

    .line 142
    .line 143
    invoke-virtual {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->o()V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_4
    iget v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->B1:I

    .line 148
    .line 149
    if-eqz v1, :cond_3

    .line 150
    .line 151
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 152
    .line 153
    if-eq v2, v11, :cond_3

    .line 154
    .line 155
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 156
    .line 157
    iget v3, v13, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 158
    .line 159
    add-int/2addr v2, v3

    .line 160
    iget v3, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 161
    .line 162
    add-int/2addr v2, v3

    .line 163
    if-eqz v2, :cond_3

    .line 164
    .line 165
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 166
    .line 167
    if-lt v2, v1, :cond_3

    .line 168
    .line 169
    invoke-virtual {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->m()V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_3
    const-string v1, "p1"

    .line 174
    .line 175
    iput-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->M0:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->c(Lpe/hf/black20/MultiScreenActivityEXO;)V

    .line 178
    .line 179
    .line 180
    :goto_3
    return-void

    .line 181
    :pswitch_5
    sget-object v1, Lpe/hf/black20/MultiScreenActivityEXO;->S1:Ls0/h;

    .line 182
    .line 183
    invoke-virtual {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->o()V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :pswitch_6
    sget-object v1, Lpe/hf/black20/MultiScreenActivityEXO;->S1:Ls0/h;

    .line 188
    .line 189
    invoke-virtual {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->o()V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :pswitch_7
    sget-object v1, Lpe/hf/black20/MultiScreenActivityEXO;->S1:Ls0/h;

    .line 194
    .line 195
    invoke-virtual {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->o()V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :pswitch_8
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->k0:Landroid/widget/ImageButton;

    .line 200
    .line 201
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 202
    .line 203
    .line 204
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 205
    .line 206
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 210
    .line 211
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 215
    .line 216
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 220
    .line 221
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->w()V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :pswitch_9
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->j0:Landroid/widget/ImageButton;

    .line 229
    .line 230
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 231
    .line 232
    .line 233
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 234
    .line 235
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 239
    .line 240
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 244
    .line 245
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 249
    .line 250
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->w()V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :pswitch_a
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->i0:Landroid/widget/ImageButton;

    .line 258
    .line 259
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 260
    .line 261
    .line 262
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 263
    .line 264
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 268
    .line 269
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 273
    .line 274
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 278
    .line 279
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->w()V

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :pswitch_b
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->h0:Landroid/widget/ImageButton;

    .line 287
    .line 288
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 289
    .line 290
    .line 291
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 292
    .line 293
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 294
    .line 295
    .line 296
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 297
    .line 298
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 299
    .line 300
    .line 301
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 302
    .line 303
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 304
    .line 305
    .line 306
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 307
    .line 308
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->w()V

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :pswitch_c
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->h0:Landroid/widget/ImageButton;

    .line 316
    .line 317
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 318
    .line 319
    .line 320
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->f0:Landroid/widget/FrameLayout;

    .line 321
    .line 322
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 323
    .line 324
    .line 325
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->H0:Landroid/widget/Button;

    .line 326
    .line 327
    invoke-virtual {v1, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 328
    .line 329
    .line 330
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->I0:Landroid/widget/Button;

    .line 331
    .line 332
    invoke-virtual {v1, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 333
    .line 334
    .line 335
    iget v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->J0:I

    .line 336
    .line 337
    iget v5, v13, Lpe/hf/black20/MultiScreenActivityEXO;->K0:I

    .line 338
    .line 339
    div-int/lit8 v5, v5, 0x3

    .line 340
    .line 341
    int-to-double v6, v5

    .line 342
    mul-double v6, v6, v3

    .line 343
    .line 344
    double-to-int v6, v6

    .line 345
    sub-int v15, v1, v6

    .line 346
    .line 347
    int-to-double v7, v15

    .line 348
    const-wide v9, 0x3ffc7ae147ae147bL    # 1.78

    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    mul-double v7, v7, v9

    .line 354
    .line 355
    double-to-int v14, v7

    .line 356
    iget v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->L0:I

    .line 357
    .line 358
    mul-int/lit8 v1, v1, 0x2

    .line 359
    .line 360
    sub-int v1, v6, v1

    .line 361
    .line 362
    iget-object v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->X:Landroid/widget/FrameLayout;

    .line 363
    .line 364
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 369
    .line 370
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 371
    .line 372
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 373
    .line 374
    invoke-virtual {v6, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 375
    .line 376
    .line 377
    const/16 v7, 0x31

    .line 378
    .line 379
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 380
    .line 381
    iget-object v8, v13, Lpe/hf/black20/MultiScreenActivityEXO;->X:Landroid/widget/FrameLayout;

    .line 382
    .line 383
    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    .line 385
    .line 386
    iget-object v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Y:Landroid/widget/FrameLayout;

    .line 387
    .line 388
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 393
    .line 394
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 395
    .line 396
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 397
    .line 398
    invoke-virtual {v6, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 399
    .line 400
    .line 401
    const/16 v8, 0x53

    .line 402
    .line 403
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 404
    .line 405
    iget-object v11, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Y:Landroid/widget/FrameLayout;

    .line 406
    .line 407
    invoke-virtual {v11, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    .line 409
    .line 410
    iget-object v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Z:Landroid/widget/FrameLayout;

    .line 411
    .line 412
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 417
    .line 418
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 419
    .line 420
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 421
    .line 422
    iget v11, v13, Lpe/hf/black20/MultiScreenActivityEXO;->L0:I

    .line 423
    .line 424
    mul-int/lit8 v11, v11, 0x2

    .line 425
    .line 426
    invoke-virtual {v6, v11, v12, v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 427
    .line 428
    .line 429
    const/16 v11, 0x51

    .line 430
    .line 431
    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 432
    .line 433
    iget-object v11, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Z:Landroid/widget/FrameLayout;

    .line 434
    .line 435
    invoke-virtual {v11, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    .line 437
    .line 438
    iget-object v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->a0:Landroid/widget/FrameLayout;

    .line 439
    .line 440
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 441
    .line 442
    .line 443
    move-result-object v6

    .line 444
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 445
    .line 446
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 447
    .line 448
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 449
    .line 450
    invoke-virtual {v6, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 451
    .line 452
    .line 453
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 454
    .line 455
    iget-object v11, v13, Lpe/hf/black20/MultiScreenActivityEXO;->a0:Landroid/widget/FrameLayout;

    .line 456
    .line 457
    invoke-virtual {v11, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    .line 459
    .line 460
    iget-object v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->F0:Landroid/widget/Button;

    .line 461
    .line 462
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 467
    .line 468
    iget v11, v13, Lpe/hf/black20/MultiScreenActivityEXO;->J0:I

    .line 469
    .line 470
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->K0:I

    .line 471
    .line 472
    div-int/lit8 v2, v2, 0x3

    .line 473
    .line 474
    int-to-double v7, v2

    .line 475
    mul-double v7, v7, v3

    .line 476
    .line 477
    double-to-int v2, v7

    .line 478
    sub-int/2addr v11, v2

    .line 479
    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 480
    .line 481
    int-to-double v7, v11

    .line 482
    mul-double v7, v7, v9

    .line 483
    .line 484
    double-to-int v2, v7

    .line 485
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 486
    .line 487
    invoke-virtual {v6, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 488
    .line 489
    .line 490
    const/16 v2, 0x31

    .line 491
    .line 492
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 493
    .line 494
    iget-object v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->F0:Landroid/widget/Button;

    .line 495
    .line 496
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    .line 498
    .line 499
    iget-object v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->G0:Landroid/widget/Button;

    .line 500
    .line 501
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 506
    .line 507
    iget v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->K0:I

    .line 508
    .line 509
    div-int/lit8 v6, v6, 0x3

    .line 510
    .line 511
    int-to-double v7, v6

    .line 512
    mul-double v7, v7, v3

    .line 513
    .line 514
    double-to-int v7, v7

    .line 515
    iget v8, v13, Lpe/hf/black20/MultiScreenActivityEXO;->L0:I

    .line 516
    .line 517
    mul-int/lit8 v8, v8, 0x2

    .line 518
    .line 519
    sub-int/2addr v7, v8

    .line 520
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 521
    .line 522
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 523
    .line 524
    invoke-virtual {v2, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 525
    .line 526
    .line 527
    const/16 v6, 0x53

    .line 528
    .line 529
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 530
    .line 531
    iget-object v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->G0:Landroid/widget/Button;

    .line 532
    .line 533
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    .line 535
    .line 536
    iget-object v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->H0:Landroid/widget/Button;

    .line 537
    .line 538
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 543
    .line 544
    iget v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->K0:I

    .line 545
    .line 546
    div-int/lit8 v6, v6, 0x3

    .line 547
    .line 548
    int-to-double v7, v6

    .line 549
    mul-double v7, v7, v3

    .line 550
    .line 551
    double-to-int v7, v7

    .line 552
    iget v8, v13, Lpe/hf/black20/MultiScreenActivityEXO;->L0:I

    .line 553
    .line 554
    mul-int/lit8 v9, v8, 0x2

    .line 555
    .line 556
    sub-int/2addr v7, v9

    .line 557
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 558
    .line 559
    mul-int/lit8 v8, v8, 0x4

    .line 560
    .line 561
    sub-int/2addr v6, v8

    .line 562
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 563
    .line 564
    invoke-virtual {v2, v9, v12, v9, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 565
    .line 566
    .line 567
    const/16 v6, 0x51

    .line 568
    .line 569
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 570
    .line 571
    iget-object v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->H0:Landroid/widget/Button;

    .line 572
    .line 573
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    .line 575
    .line 576
    iget-object v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->I0:Landroid/widget/Button;

    .line 577
    .line 578
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 583
    .line 584
    iget v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->K0:I

    .line 585
    .line 586
    div-int/lit8 v6, v6, 0x3

    .line 587
    .line 588
    int-to-double v7, v6

    .line 589
    mul-double v7, v7, v3

    .line 590
    .line 591
    double-to-int v3, v7

    .line 592
    iget v4, v13, Lpe/hf/black20/MultiScreenActivityEXO;->L0:I

    .line 593
    .line 594
    mul-int/lit8 v4, v4, 0x2

    .line 595
    .line 596
    sub-int/2addr v3, v4

    .line 597
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 598
    .line 599
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 600
    .line 601
    invoke-virtual {v2, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 602
    .line 603
    .line 604
    const/16 v3, 0x55

    .line 605
    .line 606
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 607
    .line 608
    iget-object v3, v13, Lpe/hf/black20/MultiScreenActivityEXO;->I0:Landroid/widget/Button;

    .line 609
    .line 610
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    .line 612
    .line 613
    move/from16 v16, v5

    .line 614
    .line 615
    move/from16 v17, v1

    .line 616
    .line 617
    move/from16 v18, v5

    .line 618
    .line 619
    move/from16 v19, v1

    .line 620
    .line 621
    move/from16 v20, v5

    .line 622
    .line 623
    move/from16 v21, v1

    .line 624
    .line 625
    invoke-virtual/range {v13 .. v21}, Lpe/hf/black20/MultiScreenActivityEXO;->u(IIIIIIII)V

    .line 626
    .line 627
    .line 628
    return-void

    .line 629
    :pswitch_d
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->h0:Landroid/widget/ImageButton;

    .line 630
    .line 631
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 632
    .line 633
    .line 634
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->f0:Landroid/widget/FrameLayout;

    .line 635
    .line 636
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 637
    .line 638
    .line 639
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->H0:Landroid/widget/Button;

    .line 640
    .line 641
    invoke-virtual {v1, v12}, Landroid/view/View;->setFocusable(Z)V

    .line 642
    .line 643
    .line 644
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->I0:Landroid/widget/Button;

    .line 645
    .line 646
    invoke-virtual {v1, v12}, Landroid/view/View;->setFocusable(Z)V

    .line 647
    .line 648
    .line 649
    iget v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->K0:I

    .line 650
    .line 651
    div-int/lit8 v1, v1, 0x2

    .line 652
    .line 653
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->L0:I

    .line 654
    .line 655
    mul-int/lit8 v2, v2, 0x2

    .line 656
    .line 657
    sub-int v2, v1, v2

    .line 658
    .line 659
    int-to-double v5, v1

    .line 660
    mul-double v5, v5, v3

    .line 661
    .line 662
    double-to-int v1, v5

    .line 663
    iget-object v5, v13, Lpe/hf/black20/MultiScreenActivityEXO;->X:Landroid/widget/FrameLayout;

    .line 664
    .line 665
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 666
    .line 667
    .line 668
    move-result-object v5

    .line 669
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 670
    .line 671
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 672
    .line 673
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 674
    .line 675
    iget v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->L0:I

    .line 676
    .line 677
    mul-int/lit8 v6, v6, 0x2

    .line 678
    .line 679
    invoke-virtual {v5, v6, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 680
    .line 681
    .line 682
    const/16 v6, 0x13

    .line 683
    .line 684
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 685
    .line 686
    iget-object v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->X:Landroid/widget/FrameLayout;

    .line 687
    .line 688
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    .line 690
    .line 691
    iget-object v5, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Y:Landroid/widget/FrameLayout;

    .line 692
    .line 693
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 694
    .line 695
    .line 696
    move-result-object v5

    .line 697
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 698
    .line 699
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 700
    .line 701
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 702
    .line 703
    iget v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->K0:I

    .line 704
    .line 705
    div-int/lit8 v6, v6, 0x2

    .line 706
    .line 707
    iget v7, v13, Lpe/hf/black20/MultiScreenActivityEXO;->L0:I

    .line 708
    .line 709
    mul-int/lit8 v7, v7, 0x2

    .line 710
    .line 711
    add-int/2addr v6, v7

    .line 712
    invoke-virtual {v5, v6, v12, v7, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 713
    .line 714
    .line 715
    const/16 v6, 0x15

    .line 716
    .line 717
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 718
    .line 719
    iget-object v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Y:Landroid/widget/FrameLayout;

    .line 720
    .line 721
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    .line 723
    .line 724
    iget-object v5, v13, Lpe/hf/black20/MultiScreenActivityEXO;->F0:Landroid/widget/Button;

    .line 725
    .line 726
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 727
    .line 728
    const/4 v7, -0x1

    .line 729
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    .line 734
    .line 735
    iget-object v5, v13, Lpe/hf/black20/MultiScreenActivityEXO;->G0:Landroid/widget/Button;

    .line 736
    .line 737
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 738
    .line 739
    .line 740
    move-result-object v5

    .line 741
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 742
    .line 743
    iget v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->K0:I

    .line 744
    .line 745
    div-int/lit8 v6, v6, 0x3

    .line 746
    .line 747
    int-to-double v7, v6

    .line 748
    mul-double v7, v7, v3

    .line 749
    .line 750
    double-to-int v3, v7

    .line 751
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 752
    .line 753
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 754
    .line 755
    invoke-virtual {v5, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 756
    .line 757
    .line 758
    const/16 v3, 0x55

    .line 759
    .line 760
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 761
    .line 762
    iget-object v3, v13, Lpe/hf/black20/MultiScreenActivityEXO;->G0:Landroid/widget/Button;

    .line 763
    .line 764
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    .line 766
    .line 767
    iget-object v3, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Z:Landroid/widget/FrameLayout;

    .line 768
    .line 769
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 774
    .line 775
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 776
    .line 777
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 778
    .line 779
    invoke-virtual {v3, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 780
    .line 781
    .line 782
    iget-object v4, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Z:Landroid/widget/FrameLayout;

    .line 783
    .line 784
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    .line 786
    .line 787
    iget-object v3, v13, Lpe/hf/black20/MultiScreenActivityEXO;->a0:Landroid/widget/FrameLayout;

    .line 788
    .line 789
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 790
    .line 791
    .line 792
    move-result-object v3

    .line 793
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 794
    .line 795
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 796
    .line 797
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 798
    .line 799
    invoke-virtual {v3, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 800
    .line 801
    .line 802
    iget-object v4, v13, Lpe/hf/black20/MultiScreenActivityEXO;->a0:Landroid/widget/FrameLayout;

    .line 803
    .line 804
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    .line 806
    .line 807
    iget-object v3, v13, Lpe/hf/black20/MultiScreenActivityEXO;->H0:Landroid/widget/Button;

    .line 808
    .line 809
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 810
    .line 811
    .line 812
    move-result-object v3

    .line 813
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 814
    .line 815
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 816
    .line 817
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 818
    .line 819
    invoke-virtual {v3, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 820
    .line 821
    .line 822
    iget-object v4, v13, Lpe/hf/black20/MultiScreenActivityEXO;->H0:Landroid/widget/Button;

    .line 823
    .line 824
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    .line 826
    .line 827
    iget-object v3, v13, Lpe/hf/black20/MultiScreenActivityEXO;->I0:Landroid/widget/Button;

    .line 828
    .line 829
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 830
    .line 831
    .line 832
    move-result-object v3

    .line 833
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 834
    .line 835
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 836
    .line 837
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 838
    .line 839
    invoke-virtual {v3, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 840
    .line 841
    .line 842
    iget-object v4, v13, Lpe/hf/black20/MultiScreenActivityEXO;->I0:Landroid/widget/Button;

    .line 843
    .line 844
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 845
    .line 846
    .line 847
    const/16 v20, 0x0

    .line 848
    .line 849
    const/16 v21, 0x0

    .line 850
    .line 851
    const/16 v18, 0x0

    .line 852
    .line 853
    const/16 v19, 0x0

    .line 854
    .line 855
    move v14, v2

    .line 856
    move v15, v1

    .line 857
    move/from16 v16, v2

    .line 858
    .line 859
    move/from16 v17, v1

    .line 860
    .line 861
    invoke-virtual/range {v13 .. v21}, Lpe/hf/black20/MultiScreenActivityEXO;->u(IIIIIIII)V

    .line 862
    .line 863
    .line 864
    return-void

    .line 865
    :pswitch_e
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->h0:Landroid/widget/ImageButton;

    .line 866
    .line 867
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 868
    .line 869
    .line 870
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->f0:Landroid/widget/FrameLayout;

    .line 871
    .line 872
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->p()V

    .line 876
    .line 877
    .line 878
    return-void

    .line 879
    :pswitch_f
    iget-boolean v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 880
    .line 881
    if-eqz v1, :cond_9

    .line 882
    .line 883
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->N1:LB0/O;

    .line 884
    .line 885
    if-eqz v1, :cond_f

    .line 886
    .line 887
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->R0:F

    .line 888
    .line 889
    cmpl-float v2, v2, v7

    .line 890
    .line 891
    if-nez v2, :cond_8

    .line 892
    .line 893
    iput v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->R0:F

    .line 894
    .line 895
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 896
    .line 897
    if-ne v2, v11, :cond_4

    .line 898
    .line 899
    invoke-virtual {v1, v6}, LB0/O;->W(F)V

    .line 900
    .line 901
    .line 902
    :cond_4
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->K1:LB0/O;

    .line 903
    .line 904
    if-eqz v1, :cond_5

    .line 905
    .line 906
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 907
    .line 908
    if-ne v2, v11, :cond_5

    .line 909
    .line 910
    invoke-virtual {v1, v7}, LB0/O;->W(F)V

    .line 911
    .line 912
    .line 913
    :cond_5
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->L1:LB0/O;

    .line 914
    .line 915
    if-eqz v1, :cond_6

    .line 916
    .line 917
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 918
    .line 919
    if-ne v2, v11, :cond_6

    .line 920
    .line 921
    invoke-virtual {v1, v7}, LB0/O;->W(F)V

    .line 922
    .line 923
    .line 924
    :cond_6
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->M1:LB0/O;

    .line 925
    .line 926
    if-eqz v1, :cond_7

    .line 927
    .line 928
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 929
    .line 930
    if-ne v2, v11, :cond_7

    .line 931
    .line 932
    invoke-virtual {v1, v7}, LB0/O;->W(F)V

    .line 933
    .line 934
    .line 935
    :cond_7
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 936
    .line 937
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 938
    .line 939
    .line 940
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 941
    .line 942
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 943
    .line 944
    .line 945
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 946
    .line 947
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 948
    .line 949
    .line 950
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 951
    .line 952
    invoke-static {v13, v9, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 953
    .line 954
    .line 955
    goto :goto_5

    .line 956
    :cond_8
    invoke-static {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->a(Lpe/hf/black20/MultiScreenActivityEXO;)V

    .line 957
    .line 958
    .line 959
    goto :goto_5

    .line 960
    :cond_9
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 961
    .line 962
    if-eqz v1, :cond_b

    .line 963
    .line 964
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->V0:I

    .line 965
    .line 966
    if-nez v2, :cond_a

    .line 967
    .line 968
    iput v5, v13, Lpe/hf/black20/MultiScreenActivityEXO;->V0:I

    .line 969
    .line 970
    invoke-virtual {v1, v5}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 971
    .line 972
    .line 973
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 974
    .line 975
    invoke-static {v13, v9, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 976
    .line 977
    .line 978
    goto :goto_4

    .line 979
    :cond_a
    iput v12, v13, Lpe/hf/black20/MultiScreenActivityEXO;->V0:I

    .line 980
    .line 981
    invoke-virtual {v1, v12}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 982
    .line 983
    .line 984
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 985
    .line 986
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 987
    .line 988
    .line 989
    :cond_b
    :goto_4
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 990
    .line 991
    if-eqz v1, :cond_c

    .line 992
    .line 993
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 994
    .line 995
    if-ne v2, v11, :cond_c

    .line 996
    .line 997
    iput v12, v13, Lpe/hf/black20/MultiScreenActivityEXO;->S0:I

    .line 998
    .line 999
    invoke-virtual {v1, v12}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1000
    .line 1001
    .line 1002
    :cond_c
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 1003
    .line 1004
    if-eqz v1, :cond_d

    .line 1005
    .line 1006
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 1007
    .line 1008
    if-ne v2, v11, :cond_d

    .line 1009
    .line 1010
    iput v12, v13, Lpe/hf/black20/MultiScreenActivityEXO;->T0:I

    .line 1011
    .line 1012
    invoke-virtual {v1, v12}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1013
    .line 1014
    .line 1015
    :cond_d
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 1016
    .line 1017
    if-eqz v1, :cond_e

    .line 1018
    .line 1019
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 1020
    .line 1021
    if-ne v2, v11, :cond_e

    .line 1022
    .line 1023
    iput v12, v13, Lpe/hf/black20/MultiScreenActivityEXO;->U0:I

    .line 1024
    .line 1025
    invoke-virtual {v1, v12}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1026
    .line 1027
    .line 1028
    :cond_e
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 1029
    .line 1030
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1031
    .line 1032
    .line 1033
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 1034
    .line 1035
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1036
    .line 1037
    .line 1038
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 1039
    .line 1040
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1041
    .line 1042
    .line 1043
    :cond_f
    :goto_5
    return-void

    .line 1044
    :pswitch_10
    iget-boolean v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 1045
    .line 1046
    if-eqz v1, :cond_15

    .line 1047
    .line 1048
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->M1:LB0/O;

    .line 1049
    .line 1050
    if-eqz v1, :cond_1b

    .line 1051
    .line 1052
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Q0:F

    .line 1053
    .line 1054
    cmpl-float v2, v2, v7

    .line 1055
    .line 1056
    if-nez v2, :cond_14

    .line 1057
    .line 1058
    iput v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Q0:F

    .line 1059
    .line 1060
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 1061
    .line 1062
    if-ne v2, v11, :cond_10

    .line 1063
    .line 1064
    invoke-virtual {v1, v6}, LB0/O;->W(F)V

    .line 1065
    .line 1066
    .line 1067
    :cond_10
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->K1:LB0/O;

    .line 1068
    .line 1069
    if-eqz v1, :cond_11

    .line 1070
    .line 1071
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 1072
    .line 1073
    if-ne v2, v11, :cond_11

    .line 1074
    .line 1075
    invoke-virtual {v1, v7}, LB0/O;->W(F)V

    .line 1076
    .line 1077
    .line 1078
    :cond_11
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->L1:LB0/O;

    .line 1079
    .line 1080
    if-eqz v1, :cond_12

    .line 1081
    .line 1082
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 1083
    .line 1084
    if-ne v2, v11, :cond_12

    .line 1085
    .line 1086
    invoke-virtual {v1, v7}, LB0/O;->W(F)V

    .line 1087
    .line 1088
    .line 1089
    :cond_12
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->M1:LB0/O;

    .line 1090
    .line 1091
    if-eqz v1, :cond_13

    .line 1092
    .line 1093
    iget v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 1094
    .line 1095
    if-ne v1, v11, :cond_13

    .line 1096
    .line 1097
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->N1:LB0/O;

    .line 1098
    .line 1099
    invoke-virtual {v1, v7}, LB0/O;->W(F)V

    .line 1100
    .line 1101
    .line 1102
    :cond_13
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 1103
    .line 1104
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1105
    .line 1106
    .line 1107
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 1108
    .line 1109
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1110
    .line 1111
    .line 1112
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 1113
    .line 1114
    invoke-static {v13, v9, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1115
    .line 1116
    .line 1117
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 1118
    .line 1119
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1120
    .line 1121
    .line 1122
    goto :goto_7

    .line 1123
    :cond_14
    invoke-static {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->a(Lpe/hf/black20/MultiScreenActivityEXO;)V

    .line 1124
    .line 1125
    .line 1126
    goto :goto_7

    .line 1127
    :cond_15
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 1128
    .line 1129
    if-eqz v1, :cond_17

    .line 1130
    .line 1131
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->U0:I

    .line 1132
    .line 1133
    if-nez v2, :cond_16

    .line 1134
    .line 1135
    iput v5, v13, Lpe/hf/black20/MultiScreenActivityEXO;->U0:I

    .line 1136
    .line 1137
    invoke-virtual {v1, v5}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1138
    .line 1139
    .line 1140
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 1141
    .line 1142
    invoke-static {v13, v9, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1143
    .line 1144
    .line 1145
    goto :goto_6

    .line 1146
    :cond_16
    iput v12, v13, Lpe/hf/black20/MultiScreenActivityEXO;->U0:I

    .line 1147
    .line 1148
    invoke-virtual {v1, v12}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1149
    .line 1150
    .line 1151
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 1152
    .line 1153
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1154
    .line 1155
    .line 1156
    :cond_17
    :goto_6
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 1157
    .line 1158
    if-eqz v1, :cond_18

    .line 1159
    .line 1160
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 1161
    .line 1162
    if-ne v2, v11, :cond_18

    .line 1163
    .line 1164
    iput v12, v13, Lpe/hf/black20/MultiScreenActivityEXO;->S0:I

    .line 1165
    .line 1166
    invoke-virtual {v1, v12}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1167
    .line 1168
    .line 1169
    :cond_18
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 1170
    .line 1171
    if-eqz v1, :cond_19

    .line 1172
    .line 1173
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 1174
    .line 1175
    if-ne v2, v11, :cond_19

    .line 1176
    .line 1177
    iput v12, v13, Lpe/hf/black20/MultiScreenActivityEXO;->T0:I

    .line 1178
    .line 1179
    invoke-virtual {v1, v12}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1180
    .line 1181
    .line 1182
    :cond_19
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 1183
    .line 1184
    if-eqz v1, :cond_1a

    .line 1185
    .line 1186
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 1187
    .line 1188
    if-ne v2, v11, :cond_1a

    .line 1189
    .line 1190
    iput v12, v13, Lpe/hf/black20/MultiScreenActivityEXO;->V0:I

    .line 1191
    .line 1192
    invoke-virtual {v1, v12}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1193
    .line 1194
    .line 1195
    :cond_1a
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 1196
    .line 1197
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1198
    .line 1199
    .line 1200
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 1201
    .line 1202
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1203
    .line 1204
    .line 1205
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 1206
    .line 1207
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1208
    .line 1209
    .line 1210
    :cond_1b
    :goto_7
    return-void

    .line 1211
    :pswitch_11
    iget-boolean v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 1212
    .line 1213
    if-eqz v1, :cond_21

    .line 1214
    .line 1215
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->L1:LB0/O;

    .line 1216
    .line 1217
    if-eqz v1, :cond_27

    .line 1218
    .line 1219
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->P0:F

    .line 1220
    .line 1221
    cmpl-float v2, v2, v7

    .line 1222
    .line 1223
    if-nez v2, :cond_20

    .line 1224
    .line 1225
    iput v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->P0:F

    .line 1226
    .line 1227
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 1228
    .line 1229
    if-ne v2, v11, :cond_1c

    .line 1230
    .line 1231
    invoke-virtual {v1, v6}, LB0/O;->W(F)V

    .line 1232
    .line 1233
    .line 1234
    :cond_1c
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->K1:LB0/O;

    .line 1235
    .line 1236
    if-eqz v1, :cond_1d

    .line 1237
    .line 1238
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 1239
    .line 1240
    if-ne v2, v11, :cond_1d

    .line 1241
    .line 1242
    invoke-virtual {v1, v7}, LB0/O;->W(F)V

    .line 1243
    .line 1244
    .line 1245
    :cond_1d
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->M1:LB0/O;

    .line 1246
    .line 1247
    if-eqz v1, :cond_1e

    .line 1248
    .line 1249
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 1250
    .line 1251
    if-ne v2, v11, :cond_1e

    .line 1252
    .line 1253
    invoke-virtual {v1, v7}, LB0/O;->W(F)V

    .line 1254
    .line 1255
    .line 1256
    :cond_1e
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->N1:LB0/O;

    .line 1257
    .line 1258
    if-eqz v1, :cond_1f

    .line 1259
    .line 1260
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 1261
    .line 1262
    if-ne v2, v11, :cond_1f

    .line 1263
    .line 1264
    invoke-virtual {v1, v7}, LB0/O;->W(F)V

    .line 1265
    .line 1266
    .line 1267
    :cond_1f
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 1268
    .line 1269
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1270
    .line 1271
    .line 1272
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 1273
    .line 1274
    invoke-static {v13, v9, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1275
    .line 1276
    .line 1277
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 1278
    .line 1279
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1280
    .line 1281
    .line 1282
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 1283
    .line 1284
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1285
    .line 1286
    .line 1287
    goto :goto_9

    .line 1288
    :cond_20
    invoke-static {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->a(Lpe/hf/black20/MultiScreenActivityEXO;)V

    .line 1289
    .line 1290
    .line 1291
    goto :goto_9

    .line 1292
    :cond_21
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 1293
    .line 1294
    if-eqz v1, :cond_23

    .line 1295
    .line 1296
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->T0:I

    .line 1297
    .line 1298
    if-nez v2, :cond_22

    .line 1299
    .line 1300
    iput v5, v13, Lpe/hf/black20/MultiScreenActivityEXO;->T0:I

    .line 1301
    .line 1302
    invoke-virtual {v1, v5}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1303
    .line 1304
    .line 1305
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 1306
    .line 1307
    invoke-static {v13, v9, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1308
    .line 1309
    .line 1310
    goto :goto_8

    .line 1311
    :cond_22
    iput v12, v13, Lpe/hf/black20/MultiScreenActivityEXO;->T0:I

    .line 1312
    .line 1313
    invoke-virtual {v1, v12}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1314
    .line 1315
    .line 1316
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 1317
    .line 1318
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1319
    .line 1320
    .line 1321
    :cond_23
    :goto_8
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 1322
    .line 1323
    if-eqz v1, :cond_24

    .line 1324
    .line 1325
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 1326
    .line 1327
    if-ne v2, v11, :cond_24

    .line 1328
    .line 1329
    iput v12, v13, Lpe/hf/black20/MultiScreenActivityEXO;->S0:I

    .line 1330
    .line 1331
    invoke-virtual {v1, v12}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1332
    .line 1333
    .line 1334
    :cond_24
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 1335
    .line 1336
    if-eqz v1, :cond_25

    .line 1337
    .line 1338
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 1339
    .line 1340
    if-ne v2, v11, :cond_25

    .line 1341
    .line 1342
    iput v12, v13, Lpe/hf/black20/MultiScreenActivityEXO;->U0:I

    .line 1343
    .line 1344
    invoke-virtual {v1, v12}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1345
    .line 1346
    .line 1347
    :cond_25
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 1348
    .line 1349
    if-eqz v1, :cond_26

    .line 1350
    .line 1351
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 1352
    .line 1353
    if-ne v2, v11, :cond_26

    .line 1354
    .line 1355
    iput v12, v13, Lpe/hf/black20/MultiScreenActivityEXO;->V0:I

    .line 1356
    .line 1357
    invoke-virtual {v1, v12}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1358
    .line 1359
    .line 1360
    :cond_26
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 1361
    .line 1362
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1363
    .line 1364
    .line 1365
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 1366
    .line 1367
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1368
    .line 1369
    .line 1370
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 1371
    .line 1372
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1373
    .line 1374
    .line 1375
    :cond_27
    :goto_9
    return-void

    .line 1376
    :pswitch_12
    iget-boolean v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 1377
    .line 1378
    if-eqz v1, :cond_2d

    .line 1379
    .line 1380
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->K1:LB0/O;

    .line 1381
    .line 1382
    if-eqz v1, :cond_33

    .line 1383
    .line 1384
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->O0:F

    .line 1385
    .line 1386
    cmpl-float v2, v2, v7

    .line 1387
    .line 1388
    if-nez v2, :cond_2c

    .line 1389
    .line 1390
    iput v6, v13, Lpe/hf/black20/MultiScreenActivityEXO;->O0:F

    .line 1391
    .line 1392
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 1393
    .line 1394
    if-ne v2, v11, :cond_28

    .line 1395
    .line 1396
    invoke-virtual {v1, v6}, LB0/O;->W(F)V

    .line 1397
    .line 1398
    .line 1399
    :cond_28
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->L1:LB0/O;

    .line 1400
    .line 1401
    if-eqz v1, :cond_29

    .line 1402
    .line 1403
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 1404
    .line 1405
    if-ne v2, v11, :cond_29

    .line 1406
    .line 1407
    invoke-virtual {v1, v7}, LB0/O;->W(F)V

    .line 1408
    .line 1409
    .line 1410
    :cond_29
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->M1:LB0/O;

    .line 1411
    .line 1412
    if-eqz v1, :cond_2a

    .line 1413
    .line 1414
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 1415
    .line 1416
    if-ne v2, v11, :cond_2a

    .line 1417
    .line 1418
    invoke-virtual {v1, v7}, LB0/O;->W(F)V

    .line 1419
    .line 1420
    .line 1421
    :cond_2a
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->N1:LB0/O;

    .line 1422
    .line 1423
    if-eqz v1, :cond_2b

    .line 1424
    .line 1425
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 1426
    .line 1427
    if-ne v2, v11, :cond_2b

    .line 1428
    .line 1429
    invoke-virtual {v1, v7}, LB0/O;->W(F)V

    .line 1430
    .line 1431
    .line 1432
    :cond_2b
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 1433
    .line 1434
    invoke-static {v13, v9, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1435
    .line 1436
    .line 1437
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 1438
    .line 1439
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1440
    .line 1441
    .line 1442
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 1443
    .line 1444
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1445
    .line 1446
    .line 1447
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 1448
    .line 1449
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1450
    .line 1451
    .line 1452
    goto :goto_b

    .line 1453
    :cond_2c
    invoke-static {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->a(Lpe/hf/black20/MultiScreenActivityEXO;)V

    .line 1454
    .line 1455
    .line 1456
    goto :goto_b

    .line 1457
    :cond_2d
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 1458
    .line 1459
    if-eqz v1, :cond_2f

    .line 1460
    .line 1461
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->S0:I

    .line 1462
    .line 1463
    if-nez v2, :cond_2e

    .line 1464
    .line 1465
    iput v5, v13, Lpe/hf/black20/MultiScreenActivityEXO;->S0:I

    .line 1466
    .line 1467
    invoke-virtual {v1, v5}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1468
    .line 1469
    .line 1470
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 1471
    .line 1472
    invoke-static {v13, v9, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1473
    .line 1474
    .line 1475
    goto :goto_a

    .line 1476
    :cond_2e
    iput v12, v13, Lpe/hf/black20/MultiScreenActivityEXO;->S0:I

    .line 1477
    .line 1478
    invoke-virtual {v1, v12}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1479
    .line 1480
    .line 1481
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 1482
    .line 1483
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1484
    .line 1485
    .line 1486
    :cond_2f
    :goto_a
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 1487
    .line 1488
    if-eqz v1, :cond_30

    .line 1489
    .line 1490
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 1491
    .line 1492
    if-ne v2, v11, :cond_30

    .line 1493
    .line 1494
    iput v12, v13, Lpe/hf/black20/MultiScreenActivityEXO;->T0:I

    .line 1495
    .line 1496
    invoke-virtual {v1, v12}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1497
    .line 1498
    .line 1499
    :cond_30
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 1500
    .line 1501
    if-eqz v1, :cond_31

    .line 1502
    .line 1503
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 1504
    .line 1505
    if-ne v2, v11, :cond_31

    .line 1506
    .line 1507
    iput v12, v13, Lpe/hf/black20/MultiScreenActivityEXO;->U0:I

    .line 1508
    .line 1509
    invoke-virtual {v1, v12}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1510
    .line 1511
    .line 1512
    :cond_31
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 1513
    .line 1514
    if-eqz v1, :cond_32

    .line 1515
    .line 1516
    iget v2, v13, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 1517
    .line 1518
    if-ne v2, v11, :cond_32

    .line 1519
    .line 1520
    iput v12, v13, Lpe/hf/black20/MultiScreenActivityEXO;->V0:I

    .line 1521
    .line 1522
    invoke-virtual {v1, v12}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 1523
    .line 1524
    .line 1525
    :cond_32
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 1526
    .line 1527
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1528
    .line 1529
    .line 1530
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 1531
    .line 1532
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1533
    .line 1534
    .line 1535
    iget-object v1, v13, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 1536
    .line 1537
    invoke-static {v13, v8, v1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1538
    .line 1539
    .line 1540
    :cond_33
    :goto_b
    return-void

    .line 1541
    :pswitch_13
    invoke-static {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->b(Lpe/hf/black20/MultiScreenActivityEXO;)V

    .line 1542
    .line 1543
    .line 1544
    return-void

    .line 1545
    :pswitch_14
    invoke-static {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->b(Lpe/hf/black20/MultiScreenActivityEXO;)V

    .line 1546
    .line 1547
    .line 1548
    return-void

    .line 1549
    :pswitch_15
    invoke-static {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->b(Lpe/hf/black20/MultiScreenActivityEXO;)V

    .line 1550
    .line 1551
    .line 1552
    return-void

    .line 1553
    :pswitch_16
    invoke-static {v13}, Lpe/hf/black20/MultiScreenActivityEXO;->b(Lpe/hf/black20/MultiScreenActivityEXO;)V

    .line 1554
    .line 1555
    .line 1556
    return-void

    .line 1557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
