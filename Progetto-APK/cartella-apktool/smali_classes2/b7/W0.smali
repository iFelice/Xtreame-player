.class public final synthetic Lb7/W0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput p2, p0, Lb7/W0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/W0;->H:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, v0, Lb7/W0;->G:I

    .line 5
    .line 6
    const-string v3, "stream_id"

    .line 7
    .line 8
    const-string v4, "0"

    .line 9
    .line 10
    const-string v5, "all"

    .line 11
    .line 12
    const-string v6, "category_id"

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x1

    .line 16
    iget-object v10, v0, Lb7/W0;->H:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 17
    .line 18
    packed-switch v2, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    sget-object v1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v10}, Lpe/hf/black20/PlayStreamEPGActivity;->M()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->G0:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    sget-object v1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v10}, Lpe/hf/black20/PlayStreamEPGActivity;->L()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_2
    sget-object v2, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->e0:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 51
    .line 52
    iget-object v7, v10, Lpe/hf/black20/PlayStreamEPGActivity;->c2:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v2, v8, v5, v7, v4}, Lz4/q0;->u(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-instance v4, Lorg/json/JSONArray;

    .line 59
    .line 60
    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 61
    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-ge v2, v5, :cond_2

    .line 69
    .line 70
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    iget-object v11, v10, Lpe/hf/black20/PlayStreamEPGActivity;->k0:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_1

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const/4 v7, 0x0

    .line 91
    :goto_1
    iget-object v11, v10, Lpe/hf/black20/PlayStreamEPGActivity;->q0:Lorg/json/JSONArray;

    .line 92
    .line 93
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    if-ge v7, v11, :cond_1

    .line 98
    .line 99
    iget-object v11, v10, Lpe/hf/black20/PlayStreamEPGActivity;->q0:Lorg/json/JSONArray;

    .line 100
    .line 101
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-eqz v11, :cond_0

    .line 114
    .line 115
    iput v7, v10, Lpe/hf/black20/PlayStreamEPGActivity;->I1:I

    .line 116
    .line 117
    new-instance v11, Lb7/h1;

    .line 118
    .line 119
    invoke-direct {v11, v10, v1}, Lb7/h1;-><init>(Lpe/hf/black20/PlayStreamEPGActivity;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    new-array v12, v8, [Ljava/lang/Void;

    .line 123
    .line 124
    invoke-virtual {v11, v12}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    :cond_0
    add-int/2addr v7, v9

    .line 128
    goto :goto_1

    .line 129
    :cond_1
    add-int/2addr v2, v9

    .line 130
    goto :goto_0

    .line 131
    :catch_0
    :cond_2
    return-void

    .line 132
    :pswitch_3
    iput-boolean v9, v10, Lpe/hf/black20/PlayStreamEPGActivity;->Z0:Z

    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_4
    iget-boolean v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->z2:Z

    .line 136
    .line 137
    const-string v2, "VLC"

    .line 138
    .line 139
    const-string v3, "-"

    .line 140
    .line 141
    const-string v4, ""

    .line 142
    .line 143
    const-string v5, "ORT_PROFILE_ID"

    .line 144
    .line 145
    const-string v6, "ORT_WHICH_PLAYER"

    .line 146
    .line 147
    const-string v11, "EXO"

    .line 148
    .line 149
    const/16 v12, 0x3e8

    .line 150
    .line 151
    if-nez v1, :cond_5

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-static {v5, v4, v1, v3}, Lcom/google/protobuf/U2;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v13, v10, Lpe/hf/black20/PlayStreamEPGActivity;->k0:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iput-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->B2:Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v6, v11, v11}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_3

    .line 177
    .line 178
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 179
    .line 180
    invoke-virtual {v1}, Lm0/f;->g()Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_3

    .line 185
    .line 186
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 187
    .line 188
    invoke-virtual {v1}, LB0/O;->A()J

    .line 189
    .line 190
    .line 191
    move-result-wide v13

    .line 192
    long-to-int v1, v13

    .line 193
    iput v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->A2:I

    .line 194
    .line 195
    :cond_3
    invoke-static {v6, v11, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_4

    .line 200
    .line 201
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 202
    .line 203
    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->getLength()J

    .line 204
    .line 205
    .line 206
    move-result-wide v13

    .line 207
    long-to-int v1, v13

    .line 208
    iput v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->A2:I

    .line 209
    .line 210
    :cond_4
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->r1:Landroid/widget/TextView;

    .line 211
    .line 212
    iget v13, v10, Lpe/hf/black20/PlayStreamEPGActivity;->A2:I

    .line 213
    .line 214
    div-int/2addr v13, v12

    .line 215
    invoke-static {v13}, Lpe/hf/black20/util/Methods;->a(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v13

    .line 219
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    iget v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->A2:I

    .line 223
    .line 224
    if-le v1, v12, :cond_5

    .line 225
    .line 226
    iput-boolean v9, v10, Lpe/hf/black20/PlayStreamEPGActivity;->z2:Z

    .line 227
    .line 228
    :cond_5
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v1, v6, v11}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    const-string v11, "%02d"

    .line 244
    .line 245
    const-string v13, "</b></font>"

    .line 246
    .line 247
    const-string v14, "Play Next Episode <font color=\"#FFBF00\"><b>"

    .line 248
    .line 249
    const-string v15, "SERIES"

    .line 250
    .line 251
    const-string v8, "TV"

    .line 252
    .line 253
    const-string v7, "ORT_WHICH_CAT"

    .line 254
    .line 255
    const/16 v9, 0x1e

    .line 256
    .line 257
    move-object/from16 v16, v13

    .line 258
    .line 259
    if-nez v6, :cond_9

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-nez v1, :cond_6

    .line 266
    .line 267
    goto/16 :goto_4

    .line 268
    .line 269
    :cond_6
    iget v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->A2:I

    .line 270
    .line 271
    const/16 v2, 0x3e8

    .line 272
    .line 273
    div-int/2addr v1, v2

    .line 274
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 275
    .line 276
    invoke-virtual {v2}, Lorg/videolan/libvlc/MediaPlayer;->getTime()J

    .line 277
    .line 278
    .line 279
    move-result-wide v12

    .line 280
    long-to-int v2, v12

    .line 281
    iget v6, v10, Lpe/hf/black20/PlayStreamEPGActivity;->A2:I

    .line 282
    .line 283
    if-ge v2, v6, :cond_c

    .line 284
    .line 285
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->w1:Landroid/widget/SeekBar;

    .line 286
    .line 287
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 288
    .line 289
    .line 290
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 291
    .line 292
    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->getTime()J

    .line 293
    .line 294
    .line 295
    move-result-wide v1

    .line 296
    const-wide/16 v12, 0x3e8

    .line 297
    .line 298
    div-long/2addr v1, v12

    .line 299
    long-to-int v2, v1

    .line 300
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->w1:Landroid/widget/SeekBar;

    .line 301
    .line 302
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_7

    .line 307
    .line 308
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->w1:Landroid/widget/SeekBar;

    .line 309
    .line 310
    invoke-virtual {v1, v9}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    .line 311
    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_7
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->w1:Landroid/widget/SeekBar;

    .line 315
    .line 316
    const/4 v6, 0x1

    .line 317
    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 318
    .line 319
    .line 320
    iget-boolean v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->Z0:Z

    .line 321
    .line 322
    if-eqz v1, :cond_8

    .line 323
    .line 324
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->w1:Landroid/widget/SeekBar;

    .line 325
    .line 326
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 327
    .line 328
    .line 329
    :cond_8
    :goto_2
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->q1:Landroid/widget/TextView;

    .line 330
    .line 331
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->a(I)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    .line 337
    .line 338
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 339
    .line 340
    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->getTime()J

    .line 341
    .line 342
    .line 343
    move-result-wide v1

    .line 344
    iget v6, v10, Lpe/hf/black20/PlayStreamEPGActivity;->A2:I

    .line 345
    .line 346
    add-int/lit16 v6, v6, -0x3e80

    .line 347
    .line 348
    int-to-long v12, v6

    .line 349
    cmp-long v6, v1, v12

    .line 350
    .line 351
    if-lez v6, :cond_c

    .line 352
    .line 353
    invoke-static {v7, v8, v15}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-eqz v1, :cond_c

    .line 358
    .line 359
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->p1:Landroid/widget/FrameLayout;

    .line 360
    .line 361
    const/16 v2, 0x8

    .line 362
    .line 363
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 364
    .line 365
    .line 366
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->u2:Landroid/widget/FrameLayout;

    .line 367
    .line 368
    const/4 v2, 0x0

    .line 369
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 370
    .line 371
    .line 372
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->t2:Landroid/widget/Button;

    .line 373
    .line 374
    const/4 v2, 0x1

    .line 375
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 376
    .line 377
    .line 378
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->t2:Landroid/widget/Button;

    .line 379
    .line 380
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 381
    .line 382
    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    invoke-static {v5, v4, v1, v3}, Lcom/google/protobuf/U2;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-object v3, v10, Lpe/hf/black20/PlayStreamEPGActivity;->k0:Ljava/lang/String;

    .line 392
    .line 393
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    iget-object v3, v10, Lpe/hf/black20/PlayStreamEPGActivity;->M0:Lc7/b;

    .line 401
    .line 402
    invoke-virtual {v3, v1}, Lc7/b;->E(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    iput-boolean v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->v2:Z

    .line 406
    .line 407
    iget v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->A2:I

    .line 408
    .line 409
    iget-object v3, v10, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 410
    .line 411
    invoke-virtual {v3}, Lorg/videolan/libvlc/MediaPlayer;->getTime()J

    .line 412
    .line 413
    .line 414
    move-result-wide v3

    .line 415
    long-to-int v4, v3

    .line 416
    sub-int/2addr v1, v4

    .line 417
    const/16 v3, 0x3e8

    .line 418
    .line 419
    div-int/2addr v1, v3

    .line 420
    rem-int/lit8 v1, v1, 0x3c

    .line 421
    .line 422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    new-array v2, v2, [Ljava/lang/Object;

    .line 427
    .line 428
    const/4 v3, 0x0

    .line 429
    aput-object v1, v2, v3

    .line 430
    .line 431
    invoke-static {v11, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->t2:Landroid/widget/Button;

    .line 436
    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    move-object/from16 v1, v16

    .line 446
    .line 447
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    .line 460
    .line 461
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 462
    .line 463
    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->getTime()J

    .line 464
    .line 465
    .line 466
    move-result-wide v1

    .line 467
    iget v3, v10, Lpe/hf/black20/PlayStreamEPGActivity;->A2:I

    .line 468
    .line 469
    const/16 v4, 0x3e8

    .line 470
    .line 471
    sub-int/2addr v3, v4

    .line 472
    int-to-long v3, v3

    .line 473
    cmp-long v5, v1, v3

    .line 474
    .line 475
    if-lez v5, :cond_c

    .line 476
    .line 477
    invoke-virtual {v10}, Lpe/hf/black20/PlayStreamEPGActivity;->G()V

    .line 478
    .line 479
    .line 480
    goto/16 :goto_4

    .line 481
    .line 482
    :cond_9
    move-object/from16 v1, v16

    .line 483
    .line 484
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 485
    .line 486
    invoke-virtual {v2}, Lm0/f;->g()Z

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    if-eqz v2, :cond_c

    .line 491
    .line 492
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 493
    .line 494
    invoke-virtual {v2}, LB0/O;->v()J

    .line 495
    .line 496
    .line 497
    move-result-wide v2

    .line 498
    iget v4, v10, Lpe/hf/black20/PlayStreamEPGActivity;->A2:I

    .line 499
    .line 500
    int-to-long v5, v4

    .line 501
    cmp-long v12, v2, v5

    .line 502
    .line 503
    if-gez v12, :cond_c

    .line 504
    .line 505
    const/16 v2, 0x3e8

    .line 506
    .line 507
    div-int/2addr v4, v2

    .line 508
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 509
    .line 510
    invoke-virtual {v2}, LB0/O;->v()J

    .line 511
    .line 512
    .line 513
    move-result-wide v2

    .line 514
    const-wide/16 v5, 0x3e8

    .line 515
    .line 516
    div-long/2addr v2, v5

    .line 517
    long-to-int v3, v2

    .line 518
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->w1:Landroid/widget/SeekBar;

    .line 519
    .line 520
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 521
    .line 522
    .line 523
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->w1:Landroid/widget/SeekBar;

    .line 524
    .line 525
    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    if-eqz v2, :cond_a

    .line 530
    .line 531
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->w1:Landroid/widget/SeekBar;

    .line 532
    .line 533
    invoke-virtual {v2, v9}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    .line 534
    .line 535
    .line 536
    goto :goto_3

    .line 537
    :cond_a
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->w1:Landroid/widget/SeekBar;

    .line 538
    .line 539
    const/4 v4, 0x1

    .line 540
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 541
    .line 542
    .line 543
    iget-boolean v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->Z0:Z

    .line 544
    .line 545
    if-eqz v2, :cond_b

    .line 546
    .line 547
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->w1:Landroid/widget/SeekBar;

    .line 548
    .line 549
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 550
    .line 551
    .line 552
    :cond_b
    :goto_3
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->q1:Landroid/widget/TextView;

    .line 553
    .line 554
    iget-object v3, v10, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 555
    .line 556
    invoke-virtual {v3}, LB0/O;->v()J

    .line 557
    .line 558
    .line 559
    move-result-wide v3

    .line 560
    const-wide/16 v5, 0x3e8

    .line 561
    .line 562
    div-long/2addr v3, v5

    .line 563
    long-to-int v4, v3

    .line 564
    invoke-static {v4}, Lpe/hf/black20/util/Methods;->a(I)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    .line 570
    .line 571
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 572
    .line 573
    invoke-virtual {v2}, LB0/O;->v()J

    .line 574
    .line 575
    .line 576
    move-result-wide v2

    .line 577
    iget v4, v10, Lpe/hf/black20/PlayStreamEPGActivity;->A2:I

    .line 578
    .line 579
    add-int/lit16 v4, v4, -0x3e80

    .line 580
    .line 581
    int-to-long v4, v4

    .line 582
    cmp-long v6, v2, v4

    .line 583
    .line 584
    if-lez v6, :cond_c

    .line 585
    .line 586
    invoke-static {v7, v8, v15}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 587
    .line 588
    .line 589
    move-result v2

    .line 590
    if-eqz v2, :cond_c

    .line 591
    .line 592
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->p1:Landroid/widget/FrameLayout;

    .line 593
    .line 594
    const/16 v3, 0x8

    .line 595
    .line 596
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 597
    .line 598
    .line 599
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->u2:Landroid/widget/FrameLayout;

    .line 600
    .line 601
    const/4 v3, 0x0

    .line 602
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 603
    .line 604
    .line 605
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->t2:Landroid/widget/Button;

    .line 606
    .line 607
    const/4 v3, 0x1

    .line 608
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 609
    .line 610
    .line 611
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->t2:Landroid/widget/Button;

    .line 612
    .line 613
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 614
    .line 615
    .line 616
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->M0:Lc7/b;

    .line 617
    .line 618
    iget-object v4, v10, Lpe/hf/black20/PlayStreamEPGActivity;->B2:Ljava/lang/String;

    .line 619
    .line 620
    invoke-virtual {v2, v4}, Lc7/b;->E(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    iput-boolean v3, v10, Lpe/hf/black20/PlayStreamEPGActivity;->v2:Z

    .line 624
    .line 625
    iget v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->A2:I

    .line 626
    .line 627
    int-to-long v4, v2

    .line 628
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 629
    .line 630
    invoke-virtual {v2}, LB0/O;->v()J

    .line 631
    .line 632
    .line 633
    move-result-wide v6

    .line 634
    sub-long/2addr v4, v6

    .line 635
    long-to-int v2, v4

    .line 636
    const/16 v4, 0x3e8

    .line 637
    .line 638
    div-int/2addr v2, v4

    .line 639
    rem-int/lit8 v2, v2, 0x3c

    .line 640
    .line 641
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    new-array v3, v3, [Ljava/lang/Object;

    .line 646
    .line 647
    const/4 v4, 0x0

    .line 648
    aput-object v2, v3, v4

    .line 649
    .line 650
    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    iget-object v3, v10, Lpe/hf/black20/PlayStreamEPGActivity;->t2:Landroid/widget/Button;

    .line 655
    .line 656
    new-instance v4, Ljava/lang/StringBuilder;

    .line 657
    .line 658
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    .line 677
    .line 678
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 679
    .line 680
    invoke-virtual {v1}, LB0/O;->v()J

    .line 681
    .line 682
    .line 683
    move-result-wide v1

    .line 684
    iget v3, v10, Lpe/hf/black20/PlayStreamEPGActivity;->A2:I

    .line 685
    .line 686
    const/16 v4, 0x3e8

    .line 687
    .line 688
    sub-int/2addr v3, v4

    .line 689
    int-to-long v3, v3

    .line 690
    cmp-long v5, v1, v3

    .line 691
    .line 692
    if-lez v5, :cond_c

    .line 693
    .line 694
    invoke-virtual {v10}, Lpe/hf/black20/PlayStreamEPGActivity;->G()V

    .line 695
    .line 696
    .line 697
    :cond_c
    :goto_4
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->y1:Landroid/os/Handler;

    .line 698
    .line 699
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->B1:Lb7/W0;

    .line 700
    .line 701
    const-wide/16 v3, 0x3e8

    .line 702
    .line 703
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 704
    .line 705
    .line 706
    return-void

    .line 707
    :pswitch_5
    sget-object v2, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 708
    .line 709
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    .line 711
    .line 712
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    .line 713
    .line 714
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 715
    .line 716
    .line 717
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->e0:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 718
    .line 719
    :try_start_2
    iget-object v7, v10, Lpe/hf/black20/PlayStreamEPGActivity;->c2:Ljava/lang/String;

    .line 720
    .line 721
    const/4 v8, 0x0

    .line 722
    invoke-static {v2, v8, v5, v7, v4}, Lz4/q0;->u(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 723
    .line 724
    .line 725
    move-result-object v4

    .line 726
    iget-object v5, v10, Lpe/hf/black20/PlayStreamEPGActivity;->y2:Ljava/lang/String;

    .line 727
    .line 728
    const v7, 0x7f1301cc

    .line 729
    .line 730
    .line 731
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v2

    .line 735
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    move-result v2

    .line 739
    if-eqz v2, :cond_d

    .line 740
    .line 741
    iput v8, v10, Lpe/hf/black20/PlayStreamEPGActivity;->I1:I

    .line 742
    .line 743
    new-instance v2, Lb7/h1;

    .line 744
    .line 745
    invoke-direct {v2, v10, v1}, Lb7/h1;-><init>(Lpe/hf/black20/PlayStreamEPGActivity;Ljava/lang/Object;)V

    .line 746
    .line 747
    .line 748
    new-array v1, v8, [Ljava/lang/Void;

    .line 749
    .line 750
    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 751
    .line 752
    .line 753
    goto :goto_7

    .line 754
    :cond_d
    iget-object v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->y2:Ljava/lang/String;

    .line 755
    .line 756
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v2

    .line 760
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v2

    .line 764
    const-string v5, "recent search"

    .line 765
    .line 766
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 767
    .line 768
    .line 769
    move-result v2

    .line 770
    if-eqz v2, :cond_e

    .line 771
    .line 772
    const/4 v2, 0x1

    .line 773
    iput v2, v10, Lpe/hf/black20/PlayStreamEPGActivity;->I1:I

    .line 774
    .line 775
    new-instance v2, Lb7/h1;

    .line 776
    .line 777
    invoke-direct {v2, v10, v1}, Lb7/h1;-><init>(Lpe/hf/black20/PlayStreamEPGActivity;Ljava/lang/Object;)V

    .line 778
    .line 779
    .line 780
    const/4 v1, 0x0

    .line 781
    new-array v1, v1, [Ljava/lang/Void;

    .line 782
    .line 783
    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 784
    .line 785
    .line 786
    goto :goto_7

    .line 787
    :cond_e
    new-instance v2, Lorg/json/JSONArray;

    .line 788
    .line 789
    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 790
    .line 791
    .line 792
    const/4 v4, 0x0

    .line 793
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 794
    .line 795
    .line 796
    move-result v5

    .line 797
    if-ge v4, v5, :cond_11

    .line 798
    .line 799
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 800
    .line 801
    .line 802
    move-result-object v5

    .line 803
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v7

    .line 807
    iget-object v8, v10, Lpe/hf/black20/PlayStreamEPGActivity;->k0:Ljava/lang/String;

    .line 808
    .line 809
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    move-result v7

    .line 813
    if-eqz v7, :cond_10

    .line 814
    .line 815
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v5

    .line 819
    const/4 v7, 0x0

    .line 820
    :goto_6
    iget-object v8, v10, Lpe/hf/black20/PlayStreamEPGActivity;->q0:Lorg/json/JSONArray;

    .line 821
    .line 822
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 823
    .line 824
    .line 825
    move-result v8

    .line 826
    if-ge v7, v8, :cond_10

    .line 827
    .line 828
    iget-object v8, v10, Lpe/hf/black20/PlayStreamEPGActivity;->q0:Lorg/json/JSONArray;

    .line 829
    .line 830
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 831
    .line 832
    .line 833
    move-result-object v8

    .line 834
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v8

    .line 838
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    move-result v8

    .line 842
    if-eqz v8, :cond_f

    .line 843
    .line 844
    iput v7, v10, Lpe/hf/black20/PlayStreamEPGActivity;->I1:I

    .line 845
    .line 846
    new-instance v8, Lb7/h1;

    .line 847
    .line 848
    invoke-direct {v8, v10, v1}, Lb7/h1;-><init>(Lpe/hf/black20/PlayStreamEPGActivity;Ljava/lang/Object;)V

    .line 849
    .line 850
    .line 851
    const/4 v9, 0x0

    .line 852
    new-array v11, v9, [Ljava/lang/Void;

    .line 853
    .line 854
    invoke-virtual {v8, v11}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 855
    .line 856
    .line 857
    :cond_f
    const/4 v8, 0x1

    .line 858
    add-int/2addr v7, v8

    .line 859
    goto :goto_6

    .line 860
    :cond_10
    const/4 v8, 0x1

    .line 861
    add-int/2addr v4, v8

    .line 862
    goto :goto_5

    .line 863
    :catch_1
    :cond_11
    :goto_7
    return-void

    .line 864
    :pswitch_6
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->H0:Landroid/widget/FrameLayout;

    .line 865
    .line 866
    const/16 v2, 0x8

    .line 867
    .line 868
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 869
    .line 870
    .line 871
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->I0:Landroid/widget/FrameLayout;

    .line 872
    .line 873
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 874
    .line 875
    .line 876
    return-void

    .line 877
    :pswitch_7
    const/16 v2, 0x8

    .line 878
    .line 879
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->d2:Landroid/widget/ImageButton;

    .line 880
    .line 881
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 882
    .line 883
    .line 884
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->p1:Landroid/widget/FrameLayout;

    .line 885
    .line 886
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 887
    .line 888
    .line 889
    iget-object v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->J0:Landroid/widget/FrameLayout;

    .line 890
    .line 891
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 892
    .line 893
    .line 894
    const/4 v1, 0x0

    .line 895
    iput-boolean v1, v10, Lpe/hf/black20/PlayStreamEPGActivity;->w2:Z

    .line 896
    .line 897
    return-void

    .line 898
    nop

    .line 899
    :pswitch_data_0
    .packed-switch 0x0
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
