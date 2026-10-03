.class public final Lb7/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/ChannelListActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/ChannelListActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/x;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/x;->H:Lpe/hf/black20/ChannelListActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb7/x;->G:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const v3, 0x7f080577

    .line 7
    .line 8
    .line 9
    const-string v4, "OLD"

    .line 10
    .line 11
    const-string v5, "ASC"

    .line 12
    .line 13
    const-string v6, "DESC"

    .line 14
    .line 15
    const-string v7, "NEW"

    .line 16
    .line 17
    const v8, 0x7f080575

    .line 18
    .line 19
    .line 20
    const-string v9, "default"

    .line 21
    .line 22
    const-string v10, ""

    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    const/16 v12, 0x8

    .line 26
    .line 27
    const/4 v13, 0x0

    .line 28
    const-string v14, "input_method"

    .line 29
    .line 30
    iget-object v15, v0, Lb7/x;->H:Lpe/hf/black20/ChannelListActivity;

    .line 31
    .line 32
    packed-switch v1, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 36
    .line 37
    invoke-static {v1}, La/r;->s(Landroid/widget/EditText;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 44
    .line 45
    iget-object v2, v15, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 46
    .line 47
    const v3, 0x7f130212

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_0
    invoke-virtual {v15, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 64
    .line 65
    iget-object v2, v15, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2, v13}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 72
    .line 73
    .line 74
    const-string v1, "yes"

    .line 75
    .line 76
    iput-object v1, v15, Lpe/hf/black20/ChannelListActivity;->f0:Ljava/lang/String;

    .line 77
    .line 78
    const-string v1, "ORT_WHICH_CAT"

    .line 79
    .line 80
    const-string v2, "TV"

    .line 81
    .line 82
    invoke-static {v1, v2, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const/4 v4, 0x6

    .line 87
    if-eqz v3, :cond_1

    .line 88
    .line 89
    new-instance v1, Lb7/D;

    .line 90
    .line 91
    invoke-direct {v1, v15, v4}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    .line 92
    .line 93
    .line 94
    new-array v2, v13, [Ljava/lang/Void;

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    const-string v3, "FAV"

    .line 101
    .line 102
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_2

    .line 107
    .line 108
    new-instance v1, Lb7/D;

    .line 109
    .line 110
    invoke-direct {v1, v15, v4}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    .line 111
    .line 112
    .line 113
    new-array v2, v13, [Ljava/lang/Void;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    const-string v3, "CATCHUP"

    .line 120
    .line 121
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-nez v3, :cond_5

    .line 126
    .line 127
    const-string v3, "RADIO"

    .line 128
    .line 129
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_3

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_3
    const-string v3, "VOD"

    .line 137
    .line 138
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_4

    .line 143
    .line 144
    new-instance v1, Lb7/D;

    .line 145
    .line 146
    invoke-direct {v1, v15, v11}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;Lb7/A;)V

    .line 147
    .line 148
    .line 149
    new-array v2, v13, [Ljava/lang/Void;

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_4
    const-string v3, "SERIES"

    .line 156
    .line 157
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    new-instance v1, Lb7/D;

    .line 164
    .line 165
    invoke-direct {v1, v15, v11}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;Lb7/y;)V

    .line 166
    .line 167
    .line 168
    new-array v2, v13, [Ljava/lang/Void;

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_5
    :goto_0
    new-instance v1, Lb7/D;

    .line 175
    .line 176
    invoke-direct {v1, v15, v4}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    .line 177
    .line 178
    .line 179
    new-array v2, v13, [Ljava/lang/Void;

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 182
    .line 183
    .line 184
    :cond_6
    :goto_1
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->d0:Landroid/widget/FrameLayout;

    .line 185
    .line 186
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    :goto_2
    return-void

    .line 190
    :pswitch_0
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 191
    .line 192
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->d0:Landroid/widget/FrameLayout;

    .line 196
    .line 197
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 201
    .line 202
    invoke-virtual {v1, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 207
    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v1, v2, v13}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :pswitch_1
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    const v2, 0x7f080576

    .line 223
    .line 224
    .line 225
    if-nez v1, :cond_9

    .line 226
    .line 227
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-nez v1, :cond_9

    .line 234
    .line 235
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_7

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_7
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-eqz v1, :cond_8

    .line 251
    .line 252
    sput-object v4, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 253
    .line 254
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->W:Landroid/widget/ImageButton;

    .line 255
    .line 256
    iget-object v2, v15, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 257
    .line 258
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 263
    .line 264
    .line 265
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->V:Landroid/widget/ImageButton;

    .line 266
    .line 267
    invoke-virtual {v2, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 272
    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_8
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-eqz v1, :cond_a

    .line 282
    .line 283
    sput-object v7, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 284
    .line 285
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->W:Landroid/widget/ImageButton;

    .line 286
    .line 287
    iget-object v3, v15, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 288
    .line 289
    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 294
    .line 295
    .line 296
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->V:Landroid/widget/ImageButton;

    .line 297
    .line 298
    invoke-virtual {v3, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_9
    :goto_3
    sput-object v7, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 307
    .line 308
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->W:Landroid/widget/ImageButton;

    .line 309
    .line 310
    iget-object v3, v15, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 311
    .line 312
    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 317
    .line 318
    .line 319
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->V:Landroid/widget/ImageButton;

    .line 320
    .line 321
    invoke-virtual {v3, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 326
    .line 327
    .line 328
    :cond_a
    :goto_4
    invoke-static {v15}, Lpe/hf/black20/ChannelListActivity;->b(Lpe/hf/black20/ChannelListActivity;)V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :pswitch_2
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    const v2, 0x7f080578

    .line 339
    .line 340
    .line 341
    if-nez v1, :cond_d

    .line 342
    .line 343
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-nez v1, :cond_d

    .line 350
    .line 351
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-eqz v1, :cond_b

    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_b
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-eqz v1, :cond_c

    .line 367
    .line 368
    sput-object v6, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 369
    .line 370
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->V:Landroid/widget/ImageButton;

    .line 371
    .line 372
    iget-object v4, v15, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 373
    .line 374
    invoke-virtual {v4, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 379
    .line 380
    .line 381
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->W:Landroid/widget/ImageButton;

    .line 382
    .line 383
    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 388
    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_c
    sget-object v1, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 392
    .line 393
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-eqz v1, :cond_e

    .line 398
    .line 399
    sput-object v5, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 400
    .line 401
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->V:Landroid/widget/ImageButton;

    .line 402
    .line 403
    iget-object v2, v15, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 404
    .line 405
    invoke-virtual {v2, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 410
    .line 411
    .line 412
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->W:Landroid/widget/ImageButton;

    .line 413
    .line 414
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 419
    .line 420
    .line 421
    goto :goto_6

    .line 422
    :cond_d
    :goto_5
    sput-object v6, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 423
    .line 424
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->V:Landroid/widget/ImageButton;

    .line 425
    .line 426
    iget-object v4, v15, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 427
    .line 428
    invoke-virtual {v4, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 433
    .line 434
    .line 435
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->W:Landroid/widget/ImageButton;

    .line 436
    .line 437
    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 442
    .line 443
    .line 444
    :cond_e
    :goto_6
    invoke-static {v15}, Lpe/hf/black20/ChannelListActivity;->b(Lpe/hf/black20/ChannelListActivity;)V

    .line 445
    .line 446
    .line 447
    return-void

    .line 448
    :pswitch_3
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 449
    .line 450
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    .line 452
    .line 453
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 454
    .line 455
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 456
    .line 457
    .line 458
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->d0:Landroid/widget/FrameLayout;

    .line 459
    .line 460
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 461
    .line 462
    .line 463
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 464
    .line 465
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-virtual {v1, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 474
    .line 475
    iget-object v3, v15, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 476
    .line 477
    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 478
    .line 479
    .line 480
    return-void

    .line 481
    :pswitch_4
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->n0:Landroid/widget/FrameLayout;

    .line 482
    .line 483
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 484
    .line 485
    .line 486
    return-void

    .line 487
    :pswitch_5
    iget-object v1, v15, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 488
    .line 489
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    const v3, 0x7f0e011f

    .line 494
    .line 495
    .line 496
    invoke-virtual {v1, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .line 501
    .line 502
    iget-object v4, v15, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 503
    .line 504
    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 512
    .line 513
    .line 514
    move-result-object v4

    .line 515
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 516
    .line 517
    const-string v6, "#99000000"

    .line 518
    .line 519
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    move-result v6

    .line 523
    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 524
    .line 525
    .line 526
    const v6, 0x7f0b03d7

    .line 527
    .line 528
    .line 529
    invoke-static {v4, v5, v3, v1, v6}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    check-cast v4, Landroid/widget/EditText;

    .line 534
    .line 535
    const v5, 0x7f0b00a4

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 539
    .line 540
    .line 541
    move-result-object v5

    .line 542
    check-cast v5, Landroid/widget/Button;

    .line 543
    .line 544
    const v6, 0x7f0b00b1

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    check-cast v1, Landroid/widget/Button;

    .line 552
    .line 553
    new-instance v6, LW4/a;

    .line 554
    .line 555
    invoke-direct {v6, v0, v4, v3, v2}, LW4/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    .line 560
    .line 561
    new-instance v2, Ll/c;

    .line 562
    .line 563
    const/4 v4, 0x3

    .line 564
    invoke-direct {v2, v4, v0, v3}, Ll/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 571
    .line 572
    .line 573
    return-void

    .line 574
    nop

    .line 575
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
