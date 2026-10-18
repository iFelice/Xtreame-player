.class public final synthetic Lb7/T;
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
    iput p2, p0, Lb7/T;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/T;->H:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, Lb7/T;->G:I

    .line 2
    .line 3
    const v0, 0x7f0808ec

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const v2, 0x7f0808ea

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    const-string v4, "null"

    .line 12
    .line 13
    const-string v5, "XCIPTV_TAG"

    .line 14
    .line 15
    iget-object v6, p0, Lb7/T;->H:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 16
    .line 17
    const-string v7, "-----------------numbeeOfOpenConnection-------"

    .line 18
    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    sget-object p1, Lpe/hf/black20/MultiScreenActivityEXO;->S1:Ls0/h;

    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget v7, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 30
    .line 31
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->B1:I

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iget v5, v6, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 46
    .line 47
    if-nez v5, :cond_0

    .line 48
    .line 49
    iget v5, v6, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 50
    .line 51
    iget v7, v6, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 52
    .line 53
    add-int/2addr v5, v7

    .line 54
    iget v7, v6, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 55
    .line 56
    add-int/2addr v5, v7

    .line 57
    if-eqz v5, :cond_0

    .line 58
    .line 59
    iget v5, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 60
    .line 61
    if-lt v5, p1, :cond_0

    .line 62
    .line 63
    invoke-virtual {v6}, Lpe/hf/black20/MultiScreenActivityEXO;->m()V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->L:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_4

    .line 76
    .line 77
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->L:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    iget p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 86
    .line 87
    if-nez p1, :cond_2

    .line 88
    .line 89
    iput v3, v6, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 90
    .line 91
    iget p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 92
    .line 93
    add-int/2addr p1, v3

    .line 94
    iput p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 95
    .line 96
    iget-boolean p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 97
    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->L:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v6, p1}, Lpe/hf/black20/MultiScreenActivityEXO;->g(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->L:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v6, p1}, Lpe/hf/black20/MultiScreenActivityEXO;->k(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_0
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->o0:Landroid/widget/ImageButton;

    .line 112
    .line 113
    invoke-static {v6, v2, p1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    iput v1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 118
    .line 119
    iget p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 120
    .line 121
    sub-int/2addr p1, v3

    .line 122
    iput p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 123
    .line 124
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->o0:Landroid/widget/ImageButton;

    .line 125
    .line 126
    invoke-static {v6, v0, p1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 127
    .line 128
    .line 129
    iget-boolean p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 130
    .line 131
    if-eqz p1, :cond_3

    .line 132
    .line 133
    invoke-virtual {v6}, Lpe/hf/black20/MultiScreenActivityEXO;->t()V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 138
    .line 139
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_4

    .line 144
    .line 145
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 146
    .line 147
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 148
    .line 149
    .line 150
    :cond_4
    :goto_1
    return-void

    .line 151
    :pswitch_0
    sget-object p1, Lpe/hf/black20/MultiScreenActivityEXO;->S1:Ls0/h;

    .line 152
    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget v7, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 159
    .line 160
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    iget p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->B1:I

    .line 171
    .line 172
    if-eqz p1, :cond_5

    .line 173
    .line 174
    iget v5, v6, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 175
    .line 176
    if-nez v5, :cond_5

    .line 177
    .line 178
    iget v5, v6, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 179
    .line 180
    iget v7, v6, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 181
    .line 182
    add-int/2addr v5, v7

    .line 183
    iget v7, v6, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 184
    .line 185
    add-int/2addr v5, v7

    .line 186
    if-eqz v5, :cond_5

    .line 187
    .line 188
    iget v5, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 189
    .line 190
    if-lt v5, p1, :cond_5

    .line 191
    .line 192
    invoke-virtual {v6}, Lpe/hf/black20/MultiScreenActivityEXO;->m()V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_5
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->K:Ljava/lang/String;

    .line 197
    .line 198
    if-eqz p1, :cond_9

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-nez p1, :cond_9

    .line 205
    .line 206
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->K:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-nez p1, :cond_9

    .line 213
    .line 214
    iget p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 215
    .line 216
    if-nez p1, :cond_7

    .line 217
    .line 218
    iput v3, v6, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 219
    .line 220
    iget p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 221
    .line 222
    add-int/2addr p1, v3

    .line 223
    iput p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 224
    .line 225
    iget-boolean p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 226
    .line 227
    if-eqz p1, :cond_6

    .line 228
    .line 229
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->K:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v6, p1}, Lpe/hf/black20/MultiScreenActivityEXO;->f(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_6
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->K:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v6, p1}, Lpe/hf/black20/MultiScreenActivityEXO;->j(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :goto_2
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->n0:Landroid/widget/ImageButton;

    .line 241
    .line 242
    invoke-static {v6, v2, p1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 243
    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_7
    iput v1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 247
    .line 248
    iget p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 249
    .line 250
    sub-int/2addr p1, v3

    .line 251
    iput p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 252
    .line 253
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->n0:Landroid/widget/ImageButton;

    .line 254
    .line 255
    invoke-static {v6, v0, p1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 256
    .line 257
    .line 258
    iget-boolean p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 259
    .line 260
    if-eqz p1, :cond_8

    .line 261
    .line 262
    invoke-virtual {v6}, Lpe/hf/black20/MultiScreenActivityEXO;->s()V

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_8
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 267
    .line 268
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    if-eqz p1, :cond_9

    .line 273
    .line 274
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 275
    .line 276
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 277
    .line 278
    .line 279
    :cond_9
    :goto_3
    return-void

    .line 280
    :pswitch_1
    sget-object p1, Lpe/hf/black20/MultiScreenActivityEXO;->S1:Ls0/h;

    .line 281
    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    iget v7, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 288
    .line 289
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    iget p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->B1:I

    .line 300
    .line 301
    if-eqz p1, :cond_a

    .line 302
    .line 303
    iget v5, v6, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 304
    .line 305
    if-nez v5, :cond_a

    .line 306
    .line 307
    iget v5, v6, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 308
    .line 309
    iget v7, v6, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 310
    .line 311
    add-int/2addr v5, v7

    .line 312
    iget v7, v6, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 313
    .line 314
    add-int/2addr v5, v7

    .line 315
    if-eqz v5, :cond_a

    .line 316
    .line 317
    iget v5, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 318
    .line 319
    if-lt v5, p1, :cond_a

    .line 320
    .line 321
    invoke-virtual {v6}, Lpe/hf/black20/MultiScreenActivityEXO;->m()V

    .line 322
    .line 323
    .line 324
    goto :goto_5

    .line 325
    :cond_a
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->J:Ljava/lang/String;

    .line 326
    .line 327
    if-eqz p1, :cond_e

    .line 328
    .line 329
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    if-nez p1, :cond_e

    .line 334
    .line 335
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->J:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    if-nez p1, :cond_e

    .line 342
    .line 343
    iget p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 344
    .line 345
    if-nez p1, :cond_c

    .line 346
    .line 347
    iput v3, v6, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 348
    .line 349
    iget p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 350
    .line 351
    add-int/2addr p1, v3

    .line 352
    iput p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 353
    .line 354
    iget-boolean p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 355
    .line 356
    if-eqz p1, :cond_b

    .line 357
    .line 358
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->J:Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {v6, p1}, Lpe/hf/black20/MultiScreenActivityEXO;->e(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    goto :goto_4

    .line 364
    :cond_b
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->J:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {v6, p1}, Lpe/hf/black20/MultiScreenActivityEXO;->i(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    :goto_4
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->m0:Landroid/widget/ImageButton;

    .line 370
    .line 371
    invoke-static {v6, v2, p1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 372
    .line 373
    .line 374
    goto :goto_5

    .line 375
    :cond_c
    iput v1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 376
    .line 377
    iget p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 378
    .line 379
    sub-int/2addr p1, v3

    .line 380
    iput p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 381
    .line 382
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->m0:Landroid/widget/ImageButton;

    .line 383
    .line 384
    invoke-static {v6, v0, p1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 385
    .line 386
    .line 387
    iget-boolean p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 388
    .line 389
    if-eqz p1, :cond_d

    .line 390
    .line 391
    invoke-virtual {v6}, Lpe/hf/black20/MultiScreenActivityEXO;->r()V

    .line 392
    .line 393
    .line 394
    goto :goto_5

    .line 395
    :cond_d
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 396
    .line 397
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    if-eqz p1, :cond_e

    .line 402
    .line 403
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 404
    .line 405
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 406
    .line 407
    .line 408
    :cond_e
    :goto_5
    return-void

    .line 409
    :pswitch_2
    sget-object p1, Lpe/hf/black20/MultiScreenActivityEXO;->S1:Ls0/h;

    .line 410
    .line 411
    new-instance p1, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    iget v7, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 417
    .line 418
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    iget p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->B1:I

    .line 429
    .line 430
    if-eqz p1, :cond_f

    .line 431
    .line 432
    iget v5, v6, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 433
    .line 434
    if-nez v5, :cond_f

    .line 435
    .line 436
    iget v5, v6, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 437
    .line 438
    iget v7, v6, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 439
    .line 440
    add-int/2addr v5, v7

    .line 441
    iget v7, v6, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 442
    .line 443
    add-int/2addr v5, v7

    .line 444
    if-eqz v5, :cond_f

    .line 445
    .line 446
    iget v5, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 447
    .line 448
    if-lt v5, p1, :cond_f

    .line 449
    .line 450
    invoke-virtual {v6}, Lpe/hf/black20/MultiScreenActivityEXO;->m()V

    .line 451
    .line 452
    .line 453
    goto :goto_7

    .line 454
    :cond_f
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->I:Ljava/lang/String;

    .line 455
    .line 456
    if-eqz p1, :cond_13

    .line 457
    .line 458
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 459
    .line 460
    .line 461
    move-result p1

    .line 462
    if-nez p1, :cond_13

    .line 463
    .line 464
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->I:Ljava/lang/String;

    .line 465
    .line 466
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result p1

    .line 470
    if-nez p1, :cond_13

    .line 471
    .line 472
    iget p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 473
    .line 474
    if-nez p1, :cond_11

    .line 475
    .line 476
    iput v3, v6, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 477
    .line 478
    iget p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 479
    .line 480
    add-int/2addr p1, v3

    .line 481
    iput p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 482
    .line 483
    iget-boolean p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 484
    .line 485
    if-eqz p1, :cond_10

    .line 486
    .line 487
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->I:Ljava/lang/String;

    .line 488
    .line 489
    invoke-virtual {v6, p1}, Lpe/hf/black20/MultiScreenActivityEXO;->d(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    goto :goto_6

    .line 493
    :cond_10
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->I:Ljava/lang/String;

    .line 494
    .line 495
    invoke-virtual {v6, p1}, Lpe/hf/black20/MultiScreenActivityEXO;->h(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    :goto_6
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->l0:Landroid/widget/ImageButton;

    .line 499
    .line 500
    invoke-static {v6, v2, p1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 501
    .line 502
    .line 503
    goto :goto_7

    .line 504
    :cond_11
    iput v1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 505
    .line 506
    iget p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 507
    .line 508
    sub-int/2addr p1, v3

    .line 509
    iput p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 510
    .line 511
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->l0:Landroid/widget/ImageButton;

    .line 512
    .line 513
    invoke-static {v6, v0, p1}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 514
    .line 515
    .line 516
    iget-boolean p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 517
    .line 518
    if-eqz p1, :cond_12

    .line 519
    .line 520
    invoke-virtual {v6}, Lpe/hf/black20/MultiScreenActivityEXO;->q()V

    .line 521
    .line 522
    .line 523
    goto :goto_7

    .line 524
    :cond_12
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 525
    .line 526
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    .line 527
    .line 528
    .line 529
    move-result p1

    .line 530
    if-eqz p1, :cond_13

    .line 531
    .line 532
    iget-object p1, v6, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 533
    .line 534
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 535
    .line 536
    .line 537
    :cond_13
    :goto_7
    return-void

    .line 538
    nop

    .line 539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
