.class public final synthetic Lb7/Y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/PlayStreamEPGActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/PlayStreamEPGActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/Y0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/Y0;->H:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    .line 1
    iget p1, p0, Lb7/Y0;->G:I

    .line 2
    .line 3
    const-string v0, "No Subtitles Available."

    .line 4
    .line 5
    const-string v1, "loadSpuTrack "

    .line 6
    .line 7
    const/16 v2, 0x3a98

    .line 8
    .line 9
    const-string v3, "CLOSE"

    .line 10
    .line 11
    const-string v4, "XCIPTV_TAG"

    .line 12
    .line 13
    const-string v5, ", id "

    .line 14
    .line 15
    const/4 v6, 0x2

    .line 16
    const/4 v7, 0x0

    .line 17
    const-string v8, "VLC"

    .line 18
    .line 19
    const-string v9, "EXO"

    .line 20
    .line 21
    const-string v10, "ORT_WHICH_PLAYER"

    .line 22
    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v12, 0x1

    .line 25
    iget-object v13, p0, Lb7/Y0;->H:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 26
    .line 27
    packed-switch p1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v13}, Lpe/hf/black20/PlayStreamEPGActivity;->Q()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v13}, Lpe/hf/black20/PlayStreamEPGActivity;->T()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v13}, Lpe/hf/black20/PlayStreamEPGActivity;->a0()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v13}, Lpe/hf/black20/PlayStreamEPGActivity;->b0()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_3
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v13}, Lpe/hf/black20/PlayStreamEPGActivity;->G()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_4
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_5
    iget-boolean p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->k2:Z

    .line 67
    .line 68
    if-nez p1, :cond_0

    .line 69
    .line 70
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->C0:Landroid/widget/ImageView;

    .line 71
    .line 72
    invoke-virtual {p1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iput-boolean v12, v13, Lpe/hf/black20/PlayStreamEPGActivity;->k2:Z

    .line 76
    .line 77
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 78
    .line 79
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v13}, Lpe/hf/black20/PlayStreamEPGActivity;->V()V

    .line 83
    .line 84
    .line 85
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->Q2:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v13, p1}, Lpe/hf/black20/PlayStreamEPGActivity;->D(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->C0:Landroid/widget/ImageView;

    .line 92
    .line 93
    const/16 v0, 0x8

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iput-boolean v11, v13, Lpe/hf/black20/PlayStreamEPGActivity;->k2:Z

    .line 99
    .line 100
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 101
    .line 102
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v13}, Lpe/hf/black20/PlayStreamEPGActivity;->V()V

    .line 106
    .line 107
    .line 108
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->Q2:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v13, p1}, Lpe/hf/black20/PlayStreamEPGActivity;->D(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_0
    return-void

    .line 114
    :pswitch_6
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->M1:Ljava/lang/String;

    .line 115
    .line 116
    const-string v0, "yes"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_1

    .line 123
    .line 124
    invoke-virtual {v13}, Lpe/hf/black20/PlayStreamEPGActivity;->X()V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_1
    invoke-virtual {v13}, Lpe/hf/black20/PlayStreamEPGActivity;->O()V

    .line 129
    .line 130
    .line 131
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1, v10, v9}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    const v0, 0x7f080568

    .line 144
    .line 145
    .line 146
    const v1, 0x7f080567

    .line 147
    .line 148
    .line 149
    if-eqz p1, :cond_3

    .line 150
    .line 151
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f1:Ljava/lang/String;

    .line 152
    .line 153
    const-string v2, "paused"

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_2

    .line 160
    .line 161
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 162
    .line 163
    invoke-virtual {p1, v12}, LB0/O;->S(Z)V

    .line 164
    .line 165
    .line 166
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 167
    .line 168
    invoke-virtual {p1}, LB0/O;->C()I

    .line 169
    .line 170
    .line 171
    const-string p1, "playing"

    .line 172
    .line 173
    iput-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f1:Ljava/lang/String;

    .line 174
    .line 175
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->g1:Landroid/widget/ImageButton;

    .line 176
    .line 177
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_2
    invoke-virtual {v13}, Lpe/hf/black20/PlayStreamEPGActivity;->R()V

    .line 182
    .line 183
    .line 184
    iput-object v2, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f1:Ljava/lang/String;

    .line 185
    .line 186
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->g1:Landroid/widget/ImageButton;

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_3
    invoke-static {v10, v9, v8}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eqz p1, :cond_5

    .line 197
    .line 198
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 199
    .line 200
    if-eqz p1, :cond_5

    .line 201
    .line 202
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_4

    .line 207
    .line 208
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 209
    .line 210
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->pause()V

    .line 211
    .line 212
    .line 213
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->g1:Landroid/widget/ImageButton;

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_4
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 220
    .line 221
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 222
    .line 223
    .line 224
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->g1:Landroid/widget/ImageButton;

    .line 225
    .line 226
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 227
    .line 228
    .line 229
    :cond_5
    :goto_1
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->g1:Landroid/widget/ImageButton;

    .line 230
    .line 231
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 232
    .line 233
    .line 234
    :goto_2
    return-void

    .line 235
    :pswitch_7
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v13, v2}, Lpe/hf/black20/PlayStreamEPGActivity;->K(I)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :pswitch_8
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v13, v2}, Lpe/hf/black20/PlayStreamEPGActivity;->J(I)V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :pswitch_9
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v13}, Lpe/hf/black20/PlayStreamEPGActivity;->O()V

    .line 250
    .line 251
    .line 252
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p1, v10, v9}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    const/4 v0, -0x1

    .line 265
    const/4 v1, 0x5

    .line 266
    const/4 v2, 0x4

    .line 267
    if-eqz p1, :cond_d

    .line 268
    .line 269
    iget p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->O1:I

    .line 270
    .line 271
    const/4 v3, 0x3

    .line 272
    if-le p1, v2, :cond_6

    .line 273
    .line 274
    iput v3, v13, Lpe/hf/black20/PlayStreamEPGActivity;->O1:I

    .line 275
    .line 276
    :cond_6
    iget p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->O1:I

    .line 277
    .line 278
    if-ltz p1, :cond_c

    .line 279
    .line 280
    if-ge p1, v1, :cond_c

    .line 281
    .line 282
    if-ne p1, v2, :cond_7

    .line 283
    .line 284
    iput v0, v13, Lpe/hf/black20/PlayStreamEPGActivity;->O1:I

    .line 285
    .line 286
    :cond_7
    iget p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->O1:I

    .line 287
    .line 288
    add-int/2addr p1, v12

    .line 289
    iput p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->O1:I

    .line 290
    .line 291
    if-nez p1, :cond_8

    .line 292
    .line 293
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->I2:Landroidx/media3/ui/PlayerView;

    .line 294
    .line 295
    invoke-virtual {p1, v11}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    .line 296
    .line 297
    .line 298
    const-string p1, "FIT"

    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_8
    if-ne p1, v12, :cond_9

    .line 302
    .line 303
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->I2:Landroidx/media3/ui/PlayerView;

    .line 304
    .line 305
    invoke-virtual {p1, v12}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    .line 306
    .line 307
    .line 308
    const-string p1, "FIXED WIDTH"

    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_9
    if-ne p1, v6, :cond_a

    .line 312
    .line 313
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->I2:Landroidx/media3/ui/PlayerView;

    .line 314
    .line 315
    invoke-virtual {p1, v6}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    .line 316
    .line 317
    .line 318
    const-string p1, "FIXED HEIGHT"

    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_a
    if-ne p1, v3, :cond_b

    .line 322
    .line 323
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->I2:Landroidx/media3/ui/PlayerView;

    .line 324
    .line 325
    invoke-virtual {p1, v3}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    .line 326
    .line 327
    .line 328
    const-string p1, "FILL"

    .line 329
    .line 330
    goto :goto_3

    .line 331
    :cond_b
    if-ne p1, v2, :cond_c

    .line 332
    .line 333
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->I2:Landroidx/media3/ui/PlayerView;

    .line 334
    .line 335
    invoke-virtual {p1, v2}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    .line 336
    .line 337
    .line 338
    const-string p1, "ZOOMED"

    .line 339
    .line 340
    goto :goto_3

    .line 341
    :cond_c
    const-string p1, ""

    .line 342
    .line 343
    :goto_3
    const-string v3, "ZOOM: "

    .line 344
    .line 345
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-static {v13, p1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 354
    .line 355
    .line 356
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f0:Landroid/content/SharedPreferences;

    .line 357
    .line 358
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    iget v3, v13, Lpe/hf/black20/PlayStreamEPGActivity;->O1:I

    .line 363
    .line 364
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    const-string v4, "video_resize_exo"

    .line 369
    .line 370
    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 371
    .line 372
    .line 373
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 374
    .line 375
    .line 376
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    .line 378
    .line 379
    :cond_d
    invoke-static {v10, v9, v8}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    if-eqz p1, :cond_11

    .line 384
    .line 385
    iget p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->O1:I

    .line 386
    .line 387
    if-le p1, v2, :cond_e

    .line 388
    .line 389
    iput v2, v13, Lpe/hf/black20/PlayStreamEPGActivity;->O1:I

    .line 390
    .line 391
    :cond_e
    iget p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->O1:I

    .line 392
    .line 393
    if-ltz p1, :cond_10

    .line 394
    .line 395
    if-gt p1, v1, :cond_10

    .line 396
    .line 397
    if-ne p1, v2, :cond_f

    .line 398
    .line 399
    iput v0, v13, Lpe/hf/black20/PlayStreamEPGActivity;->O1:I

    .line 400
    .line 401
    :cond_f
    iget p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->O1:I

    .line 402
    .line 403
    add-int/2addr p1, v12

    .line 404
    iput p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->O1:I

    .line 405
    .line 406
    invoke-virtual {v13, v11}, Lpe/hf/black20/PlayStreamEPGActivity;->E(Z)V

    .line 407
    .line 408
    .line 409
    :cond_10
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f0:Landroid/content/SharedPreferences;

    .line 410
    .line 411
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    iget v0, v13, Lpe/hf/black20/PlayStreamEPGActivity;->O1:I

    .line 416
    .line 417
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    const-string v1, "video_resize_vlc"

    .line 422
    .line 423
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 424
    .line 425
    .line 426
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 427
    .line 428
    .line 429
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 430
    .line 431
    .line 432
    :cond_11
    return-void

    .line 433
    :pswitch_a
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 434
    .line 435
    invoke-virtual {v13}, Lpe/hf/black20/PlayStreamEPGActivity;->O()V

    .line 436
    .line 437
    .line 438
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    invoke-virtual {p1, v10, v9}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result p1

    .line 450
    if-eqz p1, :cond_12

    .line 451
    .line 452
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 453
    .line 454
    invoke-virtual {p1}, LB0/O;->E()Lm0/k0;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    iput-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->K2:Lm0/k0;

    .line 459
    .line 460
    iget-boolean p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->L2:Z

    .line 461
    .line 462
    if-nez p1, :cond_15

    .line 463
    .line 464
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 465
    .line 466
    invoke-static {p1}, Le7/d;->X(Landroidx/media3/exoplayer/ExoPlayer;)Z

    .line 467
    .line 468
    .line 469
    move-result p1

    .line 470
    if-eqz p1, :cond_15

    .line 471
    .line 472
    iput-boolean v12, v13, Lpe/hf/black20/PlayStreamEPGActivity;->L2:Z

    .line 473
    .line 474
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 475
    .line 476
    new-instance v0, Lb7/a1;

    .line 477
    .line 478
    invoke-direct {v0, v13, v12}, Lb7/a1;-><init>(Lpe/hf/black20/PlayStreamEPGActivity;I)V

    .line 479
    .line 480
    .line 481
    invoke-static {p1, v0}, Le7/d;->W(Landroidx/media3/exoplayer/ExoPlayer;Lb7/a1;)Le7/d;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    iget-object v0, v13, LY/v;->X:Lf/S;

    .line 486
    .line 487
    invoke-virtual {v0}, Lf/S;->R()LY/K;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {p1, v0, v7}, LY/m;->U(LY/K;Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    goto :goto_5

    .line 495
    :cond_12
    invoke-static {v10, v9, v8}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 496
    .line 497
    .line 498
    move-result p1

    .line 499
    if-eqz p1, :cond_15

    .line 500
    .line 501
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 502
    .line 503
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    .line 504
    .line 505
    .line 506
    move-result p1

    .line 507
    if-eqz p1, :cond_15

    .line 508
    .line 509
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 510
    .line 511
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getAudioTracksCount()I

    .line 512
    .line 513
    .line 514
    move-result p1

    .line 515
    if-nez p1, :cond_13

    .line 516
    .line 517
    const-string p1, "No Audio Tracks Available."

    .line 518
    .line 519
    invoke-virtual {v13, p1}, Lpe/hf/black20/PlayStreamEPGActivity;->F(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    goto :goto_5

    .line 523
    :cond_13
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 524
    .line 525
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getAudioTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    array-length v0, p1

    .line 530
    new-array v0, v0, [Ljava/lang/String;

    .line 531
    .line 532
    array-length v2, p1

    .line 533
    new-array v2, v2, [Ljava/lang/String;

    .line 534
    .line 535
    const/4 v6, 0x0

    .line 536
    :goto_4
    array-length v8, p1

    .line 537
    if-ge v6, v8, :cond_14

    .line 538
    .line 539
    aget-object v8, p1, v6

    .line 540
    .line 541
    new-instance v9, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    iget-object v10, v8, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    .line 547
    .line 548
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    iget v10, v8, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    .line 555
    .line 556
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v9

    .line 563
    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    iget v9, v8, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    .line 567
    .line 568
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v9

    .line 572
    aput-object v9, v0, v6

    .line 573
    .line 574
    iget-object v8, v8, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    .line 575
    .line 576
    aput-object v8, v2, v6

    .line 577
    .line 578
    add-int/lit8 v6, v6, 0x1

    .line 579
    .line 580
    goto :goto_4

    .line 581
    :cond_14
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 582
    .line 583
    iget-object v1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->e0:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 584
    .line 585
    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 586
    .line 587
    .line 588
    const-string v1, "Choose Audio Track"

    .line 589
    .line 590
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 591
    .line 592
    .line 593
    new-instance v1, Lb7/b1;

    .line 594
    .line 595
    invoke-direct {v1, v13, v0, v12}, Lb7/b1;-><init>(Lpe/hf/black20/PlayStreamEPGActivity;[Ljava/lang/String;I)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {p1, v2, v11, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {p1, v3, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 605
    .line 606
    .line 607
    move-result-object p1

    .line 608
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 609
    .line 610
    .line 611
    :cond_15
    :goto_5
    return-void

    .line 612
    :pswitch_b
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 613
    .line 614
    invoke-virtual {v13}, Lpe/hf/black20/PlayStreamEPGActivity;->O()V

    .line 615
    .line 616
    .line 617
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 618
    .line 619
    .line 620
    move-result-object p1

    .line 621
    invoke-virtual {p1, v10, v9}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object p1

    .line 625
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result p1

    .line 629
    if-eqz p1, :cond_16

    .line 630
    .line 631
    iget-boolean p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->L2:Z

    .line 632
    .line 633
    if-nez p1, :cond_19

    .line 634
    .line 635
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 636
    .line 637
    invoke-static {p1}, Le7/d;->X(Landroidx/media3/exoplayer/ExoPlayer;)Z

    .line 638
    .line 639
    .line 640
    move-result p1

    .line 641
    if-eqz p1, :cond_19

    .line 642
    .line 643
    iput-boolean v12, v13, Lpe/hf/black20/PlayStreamEPGActivity;->L2:Z

    .line 644
    .line 645
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 646
    .line 647
    new-instance v0, Lb7/a1;

    .line 648
    .line 649
    invoke-direct {v0, v13, v11}, Lb7/a1;-><init>(Lpe/hf/black20/PlayStreamEPGActivity;I)V

    .line 650
    .line 651
    .line 652
    invoke-static {p1, v0}, Le7/d;->W(Landroidx/media3/exoplayer/ExoPlayer;Lb7/a1;)Le7/d;

    .line 653
    .line 654
    .line 655
    move-result-object p1

    .line 656
    iget-object v0, v13, LY/v;->X:Lf/S;

    .line 657
    .line 658
    invoke-virtual {v0}, Lf/S;->R()LY/K;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    invoke-virtual {p1, v0, v7}, LY/m;->U(LY/K;Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    goto :goto_7

    .line 666
    :cond_16
    invoke-static {v10, v9, v8}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 667
    .line 668
    .line 669
    move-result p1

    .line 670
    if-eqz p1, :cond_19

    .line 671
    .line 672
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 673
    .line 674
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    .line 675
    .line 676
    .line 677
    move-result p1

    .line 678
    if-eqz p1, :cond_19

    .line 679
    .line 680
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 681
    .line 682
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVideoTracksCount()I

    .line 683
    .line 684
    .line 685
    move-result p1

    .line 686
    if-nez p1, :cond_17

    .line 687
    .line 688
    invoke-virtual {v13, v0}, Lpe/hf/black20/PlayStreamEPGActivity;->F(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    goto :goto_7

    .line 692
    :cond_17
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 693
    .line 694
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVideoTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    .line 695
    .line 696
    .line 697
    move-result-object p1

    .line 698
    array-length v0, p1

    .line 699
    new-array v0, v0, [Ljava/lang/String;

    .line 700
    .line 701
    array-length v2, p1

    .line 702
    new-array v2, v2, [Ljava/lang/String;

    .line 703
    .line 704
    const/4 v6, 0x0

    .line 705
    :goto_6
    array-length v8, p1

    .line 706
    if-ge v6, v8, :cond_18

    .line 707
    .line 708
    aget-object v8, p1, v6

    .line 709
    .line 710
    new-instance v9, Ljava/lang/StringBuilder;

    .line 711
    .line 712
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    iget-object v10, v8, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    .line 716
    .line 717
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    iget v10, v8, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    .line 724
    .line 725
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v9

    .line 732
    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .line 734
    .line 735
    iget v9, v8, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    .line 736
    .line 737
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v9

    .line 741
    aput-object v9, v0, v6

    .line 742
    .line 743
    iget-object v8, v8, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    .line 744
    .line 745
    aput-object v8, v2, v6

    .line 746
    .line 747
    add-int/lit8 v6, v6, 0x1

    .line 748
    .line 749
    goto :goto_6

    .line 750
    :cond_18
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 751
    .line 752
    iget-object v1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->e0:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 753
    .line 754
    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 755
    .line 756
    .line 757
    const-string v1, "Choose Video Track"

    .line 758
    .line 759
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 760
    .line 761
    .line 762
    new-instance v1, Lb7/b1;

    .line 763
    .line 764
    invoke-direct {v1, v13, v0, v11}, Lb7/b1;-><init>(Lpe/hf/black20/PlayStreamEPGActivity;[Ljava/lang/String;I)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {p1, v2, v11, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {p1, v3, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 774
    .line 775
    .line 776
    move-result-object p1

    .line 777
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 778
    .line 779
    .line 780
    :cond_19
    :goto_7
    return-void

    .line 781
    :pswitch_c
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->e0:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 782
    .line 783
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    const v1, 0x7f0e012a

    .line 788
    .line 789
    .line 790
    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 795
    .line 796
    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 800
    .line 801
    .line 802
    move-result-object p1

    .line 803
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 808
    .line 809
    const-string v3, "#99000000"

    .line 810
    .line 811
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 812
    .line 813
    .line 814
    move-result v3

    .line 815
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 816
    .line 817
    .line 818
    const v3, 0x7f0b01c5

    .line 819
    .line 820
    .line 821
    invoke-static {v1, v2, p1, v0, v3}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 822
    .line 823
    .line 824
    move-result-object v1

    .line 825
    check-cast v1, Landroid/widget/EditText;

    .line 826
    .line 827
    const v2, 0x7f0b00b4

    .line 828
    .line 829
    .line 830
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 831
    .line 832
    .line 833
    move-result-object v2

    .line 834
    check-cast v2, Landroid/widget/Button;

    .line 835
    .line 836
    const v3, 0x7f0b00b3

    .line 837
    .line 838
    .line 839
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    check-cast v0, Landroid/widget/Button;

    .line 844
    .line 845
    new-instance v3, Lb7/c;

    .line 846
    .line 847
    invoke-direct {v3, v13, v1, p1, v12}, Lb7/c;-><init>(Landroid/app/Activity;Ljava/lang/Object;Landroid/app/AlertDialog;I)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 851
    .line 852
    .line 853
    new-instance v0, Lb7/b;

    .line 854
    .line 855
    invoke-direct {v0, p1, v6}, Lb7/b;-><init>(Landroid/app/AlertDialog;I)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 862
    .line 863
    .line 864
    return-void

    .line 865
    :pswitch_d
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 866
    .line 867
    invoke-virtual {v13}, Lpe/hf/black20/PlayStreamEPGActivity;->O()V

    .line 868
    .line 869
    .line 870
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 871
    .line 872
    .line 873
    move-result-object p1

    .line 874
    invoke-virtual {p1, v10, v9}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object p1

    .line 878
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    move-result p1

    .line 882
    if-eqz p1, :cond_1a

    .line 883
    .line 884
    iget-boolean p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->L2:Z

    .line 885
    .line 886
    if-nez p1, :cond_1e

    .line 887
    .line 888
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 889
    .line 890
    invoke-static {p1}, Le7/d;->X(Landroidx/media3/exoplayer/ExoPlayer;)Z

    .line 891
    .line 892
    .line 893
    move-result p1

    .line 894
    if-eqz p1, :cond_1e

    .line 895
    .line 896
    iput-boolean v12, v13, Lpe/hf/black20/PlayStreamEPGActivity;->L2:Z

    .line 897
    .line 898
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 899
    .line 900
    new-instance v0, Lb7/a1;

    .line 901
    .line 902
    invoke-direct {v0, v13, v6}, Lb7/a1;-><init>(Lpe/hf/black20/PlayStreamEPGActivity;I)V

    .line 903
    .line 904
    .line 905
    invoke-static {p1, v0}, Le7/d;->W(Landroidx/media3/exoplayer/ExoPlayer;Lb7/a1;)Le7/d;

    .line 906
    .line 907
    .line 908
    move-result-object p1

    .line 909
    iget-object v0, v13, LY/v;->X:Lf/S;

    .line 910
    .line 911
    invoke-virtual {v0}, Lf/S;->R()LY/K;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-virtual {p1, v0, v7}, LY/m;->U(LY/K;Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    goto/16 :goto_9

    .line 919
    .line 920
    :cond_1a
    invoke-static {v10, v9, v8}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 921
    .line 922
    .line 923
    move-result p1

    .line 924
    if-eqz p1, :cond_1e

    .line 925
    .line 926
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 927
    .line 928
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    .line 929
    .line 930
    .line 931
    move-result p1

    .line 932
    if-eqz p1, :cond_1e

    .line 933
    .line 934
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 935
    .line 936
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getSpuTracksCount()I

    .line 937
    .line 938
    .line 939
    move-result p1

    .line 940
    if-nez p1, :cond_1b

    .line 941
    .line 942
    invoke-virtual {v13, v0}, Lpe/hf/black20/PlayStreamEPGActivity;->F(Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    goto :goto_9

    .line 946
    :cond_1b
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 947
    .line 948
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getSpuTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    .line 949
    .line 950
    .line 951
    move-result-object p1

    .line 952
    array-length v0, p1

    .line 953
    new-array v0, v0, [Ljava/lang/String;

    .line 954
    .line 955
    array-length v1, p1

    .line 956
    new-array v1, v1, [Ljava/lang/String;

    .line 957
    .line 958
    const/4 v2, 0x0

    .line 959
    const/4 v6, 0x0

    .line 960
    :goto_8
    array-length v8, p1

    .line 961
    if-ge v2, v8, :cond_1d

    .line 962
    .line 963
    aget-object v8, p1, v2

    .line 964
    .line 965
    new-instance v9, Ljava/lang/StringBuilder;

    .line 966
    .line 967
    const-string v10, "PlayStreamEPGActivity - loadSpuTrack "

    .line 968
    .line 969
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 970
    .line 971
    .line 972
    iget-object v10, v8, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    .line 973
    .line 974
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    .line 976
    .line 977
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    iget v10, v8, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    .line 981
    .line 982
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 983
    .line 984
    .line 985
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v9

    .line 989
    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    .line 991
    .line 992
    iget-object v9, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 993
    .line 994
    invoke-virtual {v9}, Lorg/videolan/libvlc/MediaPlayer;->getSpuTrack()I

    .line 995
    .line 996
    .line 997
    move-result v9

    .line 998
    iget v10, v8, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    .line 999
    .line 1000
    if-ne v9, v10, :cond_1c

    .line 1001
    .line 1002
    move v6, v2

    .line 1003
    :cond_1c
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v9

    .line 1007
    aput-object v9, v0, v2

    .line 1008
    .line 1009
    iget-object v8, v8, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    .line 1010
    .line 1011
    aput-object v8, v1, v2

    .line 1012
    .line 1013
    add-int/lit8 v2, v2, 0x1

    .line 1014
    .line 1015
    goto :goto_8

    .line 1016
    :cond_1d
    iget-object p1, v13, Lpe/hf/black20/PlayStreamEPGActivity;->f0:Landroid/content/SharedPreferences;

    .line 1017
    .line 1018
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1019
    .line 1020
    .line 1021
    move-result-object p1

    .line 1022
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 1023
    .line 1024
    iget-object v4, v13, Lpe/hf/black20/PlayStreamEPGActivity;->e0:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 1025
    .line 1026
    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1027
    .line 1028
    .line 1029
    const-string v4, "Choose Subtitle Language"

    .line 1030
    .line 1031
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1032
    .line 1033
    .line 1034
    new-instance v4, Lb7/d1;

    .line 1035
    .line 1036
    invoke-direct {v4, v13, v0, p1, v11}, Lb7/d1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v2, v1, v6, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v2, v3, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1046
    .line 1047
    .line 1048
    move-result-object p1

    .line 1049
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1050
    .line 1051
    .line 1052
    :cond_1e
    :goto_9
    return-void

    .line 1053
    :pswitch_data_0
    .packed-switch 0x0
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
