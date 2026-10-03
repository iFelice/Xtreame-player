.class public Lcom/journeyapps/barcodescanner/CaptureActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public G:LO5/k;

.field public H:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    const v2, 0x7f0e0136

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 12
    .line 13
    .line 14
    const v2, 0x7f0b05be

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 22
    .line 23
    iput-object v2, v0, Lcom/journeyapps/barcodescanner/CaptureActivity;->H:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 24
    .line 25
    new-instance v2, LO5/k;

    .line 26
    .line 27
    iget-object v3, v0, Lcom/journeyapps/barcodescanner/CaptureActivity;->H:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 28
    .line 29
    invoke-direct {v2, v0, v3}, LO5/k;-><init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, v0, Lcom/journeyapps/barcodescanner/CaptureActivity;->G:LO5/k;

    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const/16 v6, 0x80

    .line 43
    .line 44
    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 45
    .line 46
    .line 47
    const/4 v5, -0x1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    const-string v6, "SAVED_ORIENTATION_LOCK"

    .line 51
    .line 52
    invoke-virtual {v1, v6, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iput v1, v2, LO5/k;->c:I

    .line 57
    .line 58
    :cond_0
    const/4 v1, 0x2

    .line 59
    if-eqz v4, :cond_1b

    .line 60
    .line 61
    const-string v6, "SCAN_ORIENTATION_LOCKED"

    .line 62
    .line 63
    const/4 v7, 0x1

    .line 64
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_7

    .line 69
    .line 70
    iget v6, v2, LO5/k;->c:I

    .line 71
    .line 72
    if-ne v6, v5, :cond_6

    .line 73
    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    .line 95
    .line 96
    if-ne v9, v1, :cond_3

    .line 97
    .line 98
    if-eqz v6, :cond_2

    .line 99
    .line 100
    if-ne v6, v7, :cond_1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const/16 v6, 0x8

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    :goto_0
    const/4 v6, 0x0

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    if-ne v9, v7, :cond_2

    .line 109
    .line 110
    if-eqz v6, :cond_5

    .line 111
    .line 112
    const/4 v9, 0x3

    .line 113
    if-ne v6, v9, :cond_4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    const/16 v6, 0x9

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    :goto_1
    const/4 v6, 0x1

    .line 120
    :goto_2
    iput v6, v2, LO5/k;->c:I

    .line 121
    .line 122
    :cond_6
    iget v6, v2, LO5/k;->c:I

    .line 123
    .line 124
    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 125
    .line 126
    .line 127
    :cond_7
    const-string v6, "com.google.zxing.client.android.SCAN"

    .line 128
    .line 129
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-eqz v6, :cond_16

    .line 138
    .line 139
    sget-object v6, Lu5/e;->a:Ljava/util/regex/Pattern;

    .line 140
    .line 141
    const-string v6, "SCAN_FORMATS"

    .line 142
    .line 143
    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    const/4 v9, 0x0

    .line 148
    if-eqz v6, :cond_8

    .line 149
    .line 150
    sget-object v10, Lu5/e;->a:Ljava/util/regex/Pattern;

    .line 151
    .line 152
    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    goto :goto_3

    .line 161
    :cond_8
    move-object v6, v9

    .line 162
    :goto_3
    const-string v10, "SCAN_MODE"

    .line 163
    .line 164
    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    if-eqz v6, :cond_a

    .line 169
    .line 170
    const-class v11, Lq5/a;

    .line 171
    .line 172
    invoke-static {v11}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    :try_start_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v12

    .line 184
    if-eqz v12, :cond_9

    .line 185
    .line 186
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v12

    .line 190
    check-cast v12, Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {v12}, Lq5/a;->valueOf(Ljava/lang/String;)Lq5/a;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :catch_0
    nop

    .line 201
    goto :goto_6

    .line 202
    :cond_9
    :goto_5
    move-object v13, v11

    .line 203
    goto :goto_7

    .line 204
    :cond_a
    :goto_6
    if-eqz v10, :cond_b

    .line 205
    .line 206
    sget-object v6, Lu5/e;->b:Ljava/util/HashMap;

    .line 207
    .line 208
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    move-object v11, v6

    .line 213
    check-cast v11, Ljava/util/Set;

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_b
    move-object v13, v9

    .line 217
    :goto_7
    sget v6, Lu5/f;->a:I

    .line 218
    .line 219
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    if-eqz v6, :cond_12

    .line 224
    .line 225
    invoke-virtual {v6}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    if-eqz v10, :cond_c

    .line 230
    .line 231
    goto/16 :goto_a

    .line 232
    .line 233
    :cond_c
    new-instance v9, Ljava/util/EnumMap;

    .line 234
    .line 235
    const-class v10, Lq5/c;

    .line 236
    .line 237
    invoke-direct {v9, v10}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 238
    .line 239
    .line 240
    invoke-static {}, Lq5/c;->values()[Lq5/c;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    array-length v11, v10

    .line 245
    const/4 v12, 0x0

    .line 246
    :goto_8
    const-string v14, "f"

    .line 247
    .line 248
    if-ge v12, v11, :cond_11

    .line 249
    .line 250
    aget-object v15, v10, v12

    .line 251
    .line 252
    sget-object v1, Lq5/c;->K:Lq5/c;

    .line 253
    .line 254
    if-eq v15, v1, :cond_10

    .line 255
    .line 256
    sget-object v1, Lq5/c;->P:Lq5/c;

    .line 257
    .line 258
    if-eq v15, v1, :cond_10

    .line 259
    .line 260
    sget-object v1, Lq5/c;->I:Lq5/c;

    .line 261
    .line 262
    if-ne v15, v1, :cond_d

    .line 263
    .line 264
    goto :goto_9

    .line 265
    :cond_d
    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v6, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v16

    .line 273
    if-eqz v16, :cond_10

    .line 274
    .line 275
    const-class v7, Ljava/lang/Void;

    .line 276
    .line 277
    iget-object v8, v15, Lq5/c;->G:Ljava/lang/Class;

    .line 278
    .line 279
    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    if-eqz v7, :cond_e

    .line 284
    .line 285
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 286
    .line 287
    invoke-virtual {v9, v15, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    goto :goto_9

    .line 291
    :cond_e
    invoke-virtual {v6, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v8, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v7

    .line 299
    if-eqz v7, :cond_f

    .line 300
    .line 301
    invoke-virtual {v9, v15, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    goto :goto_9

    .line 305
    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v8, "Ignoring hint "

    .line 308
    .line 309
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v8, " because it is not assignable from "

    .line 316
    .line 317
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-static {v14, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    :cond_10
    :goto_9
    add-int/lit8 v12, v12, 0x1

    .line 331
    .line 332
    const/4 v1, 0x2

    .line 333
    const/4 v7, 0x1

    .line 334
    goto :goto_8

    .line 335
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    const-string v6, "Hints from the Intent: "

    .line 338
    .line 339
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    :cond_12
    :goto_a
    move-object v14, v9

    .line 353
    new-instance v1, LP5/i;

    .line 354
    .line 355
    invoke-direct {v1}, LP5/i;-><init>()V

    .line 356
    .line 357
    .line 358
    const-string v6, "SCAN_CAMERA_ID"

    .line 359
    .line 360
    invoke-virtual {v4, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 361
    .line 362
    .line 363
    move-result v7

    .line 364
    if-eqz v7, :cond_13

    .line 365
    .line 366
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    if-ltz v5, :cond_13

    .line 371
    .line 372
    iput v5, v1, LP5/i;->a:I

    .line 373
    .line 374
    :cond_13
    const-string v5, "TORCH_ENABLED"

    .line 375
    .line 376
    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 377
    .line 378
    .line 379
    move-result v6

    .line 380
    if-eqz v6, :cond_14

    .line 381
    .line 382
    const/4 v6, 0x0

    .line 383
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 384
    .line 385
    .line 386
    move-result v5

    .line 387
    if-eqz v5, :cond_14

    .line 388
    .line 389
    iget-object v5, v3, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->G:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 390
    .line 391
    const/4 v6, 0x1

    .line 392
    invoke-virtual {v5, v6}, LO5/g;->setTorch(Z)V

    .line 393
    .line 394
    .line 395
    :cond_14
    const-string v5, "PROMPT_MESSAGE"

    .line 396
    .line 397
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    if-eqz v5, :cond_15

    .line 402
    .line 403
    invoke-virtual {v3, v5}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setStatusText(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    :cond_15
    const-string v5, "SCAN_TYPE"

    .line 407
    .line 408
    const/4 v6, 0x0

    .line 409
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 410
    .line 411
    .line 412
    move-result v16

    .line 413
    const-string v5, "CHARACTER_SET"

    .line 414
    .line 415
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v15

    .line 419
    new-instance v5, Lq5/h;

    .line 420
    .line 421
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v5, v14}, Lq5/h;->e(Ljava/util/Map;)V

    .line 425
    .line 426
    .line 427
    iget-object v5, v3, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->G:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 428
    .line 429
    invoke-virtual {v5, v1}, LO5/g;->setCameraSettings(LP5/i;)V

    .line 430
    .line 431
    .line 432
    iget-object v1, v3, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->G:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 433
    .line 434
    new-instance v3, LB0/w0;

    .line 435
    .line 436
    const/16 v17, 0xb

    .line 437
    .line 438
    move-object v12, v3

    .line 439
    invoke-direct/range {v12 .. v17}, LB0/w0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;II)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1, v3}, Lcom/journeyapps/barcodescanner/BarcodeView;->setDecoderFactory(LO5/m;)V

    .line 443
    .line 444
    .line 445
    :cond_16
    const-string v1, "BEEP_ENABLED"

    .line 446
    .line 447
    const/4 v3, 0x1

    .line 448
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-nez v1, :cond_17

    .line 453
    .line 454
    iget-object v1, v2, LO5/k;->i:Lu5/d;

    .line 455
    .line 456
    const/4 v5, 0x0

    .line 457
    iput-boolean v5, v1, Lu5/d;->b:Z

    .line 458
    .line 459
    :cond_17
    const-string v1, "SHOW_MISSING_CAMERA_PERMISSION_DIALOG"

    .line 460
    .line 461
    invoke-virtual {v4, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    if-eqz v5, :cond_19

    .line 466
    .line 467
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    const-string v3, "MISSING_CAMERA_PERMISSION_DIALOG_MESSAGE"

    .line 472
    .line 473
    invoke-virtual {v4, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    iput-boolean v1, v2, LO5/k;->e:Z

    .line 478
    .line 479
    if-eqz v3, :cond_18

    .line 480
    .line 481
    goto :goto_b

    .line 482
    :cond_18
    const-string v3, ""

    .line 483
    .line 484
    :goto_b
    iput-object v3, v2, LO5/k;->f:Ljava/lang/String;

    .line 485
    .line 486
    :cond_19
    const-string v1, "TIMEOUT"

    .line 487
    .line 488
    invoke-virtual {v4, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    if-eqz v3, :cond_1a

    .line 493
    .line 494
    iget-object v3, v2, LO5/k;->j:Landroid/os/Handler;

    .line 495
    .line 496
    new-instance v5, LO5/h;

    .line 497
    .line 498
    const/4 v6, 0x1

    .line 499
    invoke-direct {v5, v2, v6}, LO5/h;-><init>(LO5/k;I)V

    .line 500
    .line 501
    .line 502
    const-wide/16 v7, 0x0

    .line 503
    .line 504
    invoke-virtual {v4, v1, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 505
    .line 506
    .line 507
    move-result-wide v7

    .line 508
    invoke-virtual {v3, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 509
    .line 510
    .line 511
    goto :goto_c

    .line 512
    :cond_1a
    const/4 v6, 0x1

    .line 513
    :goto_c
    const-string v1, "BARCODE_IMAGE_ENABLED"

    .line 514
    .line 515
    const/4 v3, 0x0

    .line 516
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    if-eqz v1, :cond_1b

    .line 521
    .line 522
    iput-boolean v6, v2, LO5/k;->d:Z

    .line 523
    .line 524
    :cond_1b
    iget-object v1, v0, Lcom/journeyapps/barcodescanner/CaptureActivity;->G:LO5/k;

    .line 525
    .line 526
    iget-object v2, v1, LO5/k;->l:LZ3/o;

    .line 527
    .line 528
    iget-object v1, v1, LO5/k;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 529
    .line 530
    iget-object v3, v1, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->G:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 531
    .line 532
    new-instance v4, Lm2/l;

    .line 533
    .line 534
    const/16 v5, 0x19

    .line 535
    .line 536
    invoke-direct {v4, v1, v2, v5}, Lm2/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 537
    .line 538
    .line 539
    const/4 v1, 0x2

    .line 540
    iput v1, v3, Lcom/journeyapps/barcodescanner/BarcodeView;->j0:I

    .line 541
    .line 542
    iput-object v4, v3, Lcom/journeyapps/barcodescanner/BarcodeView;->k0:LO5/a;

    .line 543
    .line 544
    invoke-virtual {v3}, Lcom/journeyapps/barcodescanner/BarcodeView;->h()V

    .line 545
    .line 546
    .line 547
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->G:LO5/k;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, LO5/k;->g:Z

    .line 8
    .line 9
    iget-object v1, v0, LO5/k;->h:Lu5/g;

    .line 10
    .line 11
    invoke-virtual {v1}, Lu5/g;->a()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, LO5/k;->j:Landroid/os/Handler;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->H:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    :goto_1
    return p1
.end method

.method public final onPause()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->G:LO5/k;

    .line 5
    .line 6
    iget-object v1, v0, LO5/k;->h:Lu5/g;

    .line 7
    .line 8
    invoke-virtual {v1}, Lu5/g;->a()V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, LO5/k;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->G:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 14
    .line 15
    invoke-virtual {v0}, LO5/g;->getCameraInstance()LP5/f;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->c()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    :goto_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-boolean v0, v1, LP5/f;->g:Z

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    sub-long/2addr v4, v2

    .line 37
    const-wide/32 v6, 0x77359400

    .line 38
    .line 39
    .line 40
    cmp-long v0, v4, v6

    .line 41
    .line 42
    if-lez v0, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const-wide/16 v4, 0x1

    .line 46
    .line 47
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->G:LO5/k;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xfa

    .line 7
    .line 8
    if-ne p1, v0, :cond_2

    .line 9
    .line 10
    array-length p1, p3

    .line 11
    const/4 v0, 0x0

    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    aget p1, p3, v0

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p2, LO5/k;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->G:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 21
    .line 22
    invoke-virtual {p1}, LO5/g;->d()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 27
    .line 28
    const-string p3, "com.google.zxing.client.android.SCAN"

    .line 29
    .line 30
    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p3, "MISSING_CAMERA_PERMISSION"

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    iget-object p3, p2, LO5/k;->a:Landroid/app/Activity;

    .line 40
    .line 41
    invoke-virtual {p3, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    iget-boolean p1, p2, LO5/k;->e:Z

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p2, LO5/k;->f:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, LO5/k;->b(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p2}, LO5/k;->a()V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->G:LO5/k;

    .line 5
    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    iget-object v2, v0, LO5/k;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 9
    .line 10
    const/16 v3, 0x17

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-lt v1, v3, :cond_1

    .line 14
    .line 15
    iget-object v1, v0, LO5/k;->a:Landroid/app/Activity;

    .line 16
    .line 17
    const-string v3, "android.permission.CAMERA"

    .line 18
    .line 19
    invoke-static {v1, v3}, LU4/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    iget-object v1, v2, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->G:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 26
    .line 27
    invoke-virtual {v1}, LO5/g;->d()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-boolean v2, v0, LO5/k;->m:Z

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    filled-new-array {v3}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/16 v3, 0xfa

    .line 40
    .line 41
    invoke-static {v1, v2, v3}, LD/c;->D(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    iput-boolean v4, v0, LO5/k;->m:Z

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v1, v2, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->G:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 48
    .line 49
    invoke-virtual {v1}, LO5/g;->d()V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    iget-object v0, v0, LO5/k;->h:Lu5/g;

    .line 53
    .line 54
    iget-boolean v1, v0, Lu5/g;->c:Z

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    new-instance v1, Landroid/content/IntentFilter;

    .line 59
    .line 60
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 61
    .line 62
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, v0, Lu5/g;->a:Landroid/content/Context;

    .line 66
    .line 67
    iget-object v3, v0, Lu5/g;->b:Lf/G;

    .line 68
    .line 69
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    iput-boolean v4, v0, Lu5/g;->c:Z

    .line 73
    .line 74
    :cond_3
    iget-object v1, v0, Lu5/g;->d:Landroid/os/Handler;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-boolean v1, v0, Lu5/g;->f:Z

    .line 81
    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    iget-object v1, v0, Lu5/g;->d:Landroid/os/Handler;

    .line 85
    .line 86
    iget-object v0, v0, Lu5/g;->e:Ljava/lang/Runnable;

    .line 87
    .line 88
    const-wide/32 v2, 0x493e0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    .line 93
    .line 94
    :cond_4
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->G:LO5/k;

    .line 5
    .line 6
    const-string v1, "SAVED_ORIENTATION_LOCK"

    .line 7
    .line 8
    iget v0, v0, LO5/k;->c:I

    .line 9
    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
