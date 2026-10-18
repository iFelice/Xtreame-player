.class public final LD/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/Notification$Builder;

.field public final c:LD/o;

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(LD/o;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, LD/t;->d:Landroid/os/Bundle;

    .line 19
    .line 20
    iput-object v1, v0, LD/t;->c:LD/o;

    .line 21
    .line 22
    iget-object v2, v1, LD/o;->a:Landroid/content/Context;

    .line 23
    .line 24
    iput-object v2, v0, LD/t;->a:Landroid/content/Context;

    .line 25
    .line 26
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v4, 0x1a

    .line 29
    .line 30
    if-lt v3, v4, :cond_0

    .line 31
    .line 32
    iget-object v5, v1, LD/o;->o:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v2, v5}, LD/r;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iput-object v5, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v5, Landroid/app/Notification$Builder;

    .line 42
    .line 43
    iget-object v6, v1, LD/o;->a:Landroid/content/Context;

    .line 44
    .line 45
    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iput-object v5, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 49
    .line 50
    :goto_0
    iget-object v5, v1, LD/o;->q:Landroid/app/Notification;

    .line 51
    .line 52
    iget-object v6, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 53
    .line 54
    iget-wide v7, v5, Landroid/app/Notification;->when:J

    .line 55
    .line 56
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    iget v7, v5, Landroid/app/Notification;->icon:I

    .line 61
    .line 62
    iget v8, v5, Landroid/app/Notification;->iconLevel:I

    .line 63
    .line 64
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    iget-object v7, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 69
    .line 70
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    iget-object v7, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 75
    .line 76
    const/4 v8, 0x0

    .line 77
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    iget-object v7, v5, Landroid/app/Notification;->vibrate:[J

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    iget v7, v5, Landroid/app/Notification;->ledARGB:I

    .line 88
    .line 89
    iget v9, v5, Landroid/app/Notification;->ledOnMS:I

    .line 90
    .line 91
    iget v10, v5, Landroid/app/Notification;->ledOffMS:I

    .line 92
    .line 93
    invoke-virtual {v6, v7, v9, v10}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    iget v7, v5, Landroid/app/Notification;->flags:I

    .line 98
    .line 99
    and-int/lit8 v7, v7, 0x2

    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    const/4 v10, 0x1

    .line 103
    if-eqz v7, :cond_1

    .line 104
    .line 105
    const/4 v7, 0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    const/4 v7, 0x0

    .line 108
    :goto_1
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    iget v7, v5, Landroid/app/Notification;->flags:I

    .line 113
    .line 114
    and-int/lit8 v7, v7, 0x8

    .line 115
    .line 116
    if-eqz v7, :cond_2

    .line 117
    .line 118
    const/4 v7, 0x1

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    const/4 v7, 0x0

    .line 121
    :goto_2
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    iget v7, v5, Landroid/app/Notification;->flags:I

    .line 126
    .line 127
    and-int/lit8 v7, v7, 0x10

    .line 128
    .line 129
    if-eqz v7, :cond_3

    .line 130
    .line 131
    const/4 v7, 0x1

    .line 132
    goto :goto_3

    .line 133
    :cond_3
    const/4 v7, 0x0

    .line 134
    :goto_3
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    iget v7, v5, Landroid/app/Notification;->defaults:I

    .line 139
    .line 140
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    iget-object v7, v1, LD/o;->e:Ljava/lang/CharSequence;

    .line 145
    .line 146
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    iget-object v7, v1, LD/o;->f:Ljava/lang/CharSequence;

    .line 151
    .line 152
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    iget-object v7, v1, LD/o;->g:Landroid/app/PendingIntent;

    .line 161
    .line 162
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    iget-object v7, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 167
    .line 168
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    iget v7, v5, Landroid/app/Notification;->flags:I

    .line 173
    .line 174
    and-int/lit16 v7, v7, 0x80

    .line 175
    .line 176
    if-eqz v7, :cond_4

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_4
    const/4 v10, 0x0

    .line 180
    :goto_4
    invoke-virtual {v6, v8, v10}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v6, v9, v9, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 189
    .line 190
    .line 191
    const/16 v6, 0x17

    .line 192
    .line 193
    if-ge v3, v6, :cond_6

    .line 194
    .line 195
    iget-object v2, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 196
    .line 197
    iget-object v3, v1, LD/o;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 198
    .line 199
    if-nez v3, :cond_5

    .line 200
    .line 201
    move-object v3, v8

    .line 202
    goto :goto_5

    .line 203
    :cond_5
    invoke-virtual {v3}, Landroidx/core/graphics/drawable/IconCompat;->d()Landroid/graphics/Bitmap;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    :goto_5
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 208
    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_6
    iget-object v3, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 212
    .line 213
    iget-object v7, v1, LD/o;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 214
    .line 215
    if-nez v7, :cond_7

    .line 216
    .line 217
    move-object v2, v8

    .line 218
    goto :goto_6

    .line 219
    :cond_7
    invoke-virtual {v7, v2}, Landroidx/core/graphics/drawable/IconCompat;->j(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    :goto_6
    invoke-static {v3, v2}, Ll/H;->s(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)V

    .line 224
    .line 225
    .line 226
    :goto_7
    iget-object v2, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 227
    .line 228
    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    iget v3, v1, LD/o;->i:I

    .line 237
    .line 238
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 239
    .line 240
    .line 241
    iget-object v2, v1, LD/o;->b:Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    const/16 v7, 0x1d

    .line 252
    .line 253
    const/16 v10, 0x1c

    .line 254
    .line 255
    const/16 v11, 0x18

    .line 256
    .line 257
    const-string v12, "android.support.allowGeneratedReplies"

    .line 258
    .line 259
    const-string v13, ""

    .line 260
    .line 261
    if-eqz v3, :cond_13

    .line 262
    .line 263
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    check-cast v3, LD/j;

    .line 268
    .line 269
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 270
    .line 271
    iget-object v15, v3, LD/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 272
    .line 273
    if-nez v15, :cond_8

    .line 274
    .line 275
    iget v15, v3, LD/j;->h:I

    .line 276
    .line 277
    if-eqz v15, :cond_8

    .line 278
    .line 279
    invoke-static {v8, v13, v15}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 280
    .line 281
    .line 282
    move-result-object v13

    .line 283
    iput-object v13, v3, LD/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 284
    .line 285
    :cond_8
    iget-object v13, v3, LD/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 286
    .line 287
    iget-object v15, v3, LD/j;->j:Landroid/app/PendingIntent;

    .line 288
    .line 289
    iget-object v4, v3, LD/j;->i:Ljava/lang/CharSequence;

    .line 290
    .line 291
    if-lt v14, v6, :cond_a

    .line 292
    .line 293
    if-eqz v13, :cond_9

    .line 294
    .line 295
    invoke-virtual {v13, v8}, Landroidx/core/graphics/drawable/IconCompat;->j(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 296
    .line 297
    .line 298
    move-result-object v13

    .line 299
    goto :goto_9

    .line 300
    :cond_9
    move-object v13, v8

    .line 301
    :goto_9
    invoke-static {v13, v4, v15}, Ll/H;->a(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    goto :goto_b

    .line 306
    :cond_a
    if-eqz v13, :cond_b

    .line 307
    .line 308
    invoke-virtual {v13}, Landroidx/core/graphics/drawable/IconCompat;->e()I

    .line 309
    .line 310
    .line 311
    move-result v13

    .line 312
    goto :goto_a

    .line 313
    :cond_b
    const/4 v13, 0x0

    .line 314
    :goto_a
    new-instance v14, Landroid/app/Notification$Action$Builder;

    .line 315
    .line 316
    invoke-direct {v14, v13, v4, v15}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 317
    .line 318
    .line 319
    move-object v4, v14

    .line 320
    :goto_b
    iget-object v13, v3, LD/j;->c:[LD/y;

    .line 321
    .line 322
    if-eqz v13, :cond_d

    .line 323
    .line 324
    array-length v14, v13

    .line 325
    new-array v15, v14, [Landroid/app/RemoteInput;

    .line 326
    .line 327
    array-length v6, v13

    .line 328
    if-gtz v6, :cond_c

    .line 329
    .line 330
    const/4 v6, 0x0

    .line 331
    :goto_c
    if-ge v6, v14, :cond_d

    .line 332
    .line 333
    aget-object v13, v15, v6

    .line 334
    .line 335
    invoke-virtual {v4, v13}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 336
    .line 337
    .line 338
    add-int/lit8 v6, v6, 0x1

    .line 339
    .line 340
    goto :goto_c

    .line 341
    :cond_c
    aget-object v1, v13, v9

    .line 342
    .line 343
    new-instance v1, Landroid/app/RemoteInput$Builder;

    .line 344
    .line 345
    throw v8

    .line 346
    :cond_d
    iget-object v6, v3, LD/j;->a:Landroid/os/Bundle;

    .line 347
    .line 348
    if-eqz v6, :cond_e

    .line 349
    .line 350
    new-instance v13, Landroid/os/Bundle;

    .line 351
    .line 352
    invoke-direct {v13, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 353
    .line 354
    .line 355
    goto :goto_d

    .line 356
    :cond_e
    new-instance v13, Landroid/os/Bundle;

    .line 357
    .line 358
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 359
    .line 360
    .line 361
    :goto_d
    iget-boolean v6, v3, LD/j;->d:Z

    .line 362
    .line 363
    invoke-virtual {v13, v12, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    .line 365
    .line 366
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 367
    .line 368
    if-lt v12, v11, :cond_f

    .line 369
    .line 370
    invoke-static {v4, v6}, LD/q;->f(Landroid/app/Notification$Action$Builder;Z)V

    .line 371
    .line 372
    .line 373
    :cond_f
    const-string v6, "android.support.action.semanticAction"

    .line 374
    .line 375
    iget v11, v3, LD/j;->f:I

    .line 376
    .line 377
    invoke-virtual {v13, v6, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 378
    .line 379
    .line 380
    if-lt v12, v10, :cond_10

    .line 381
    .line 382
    invoke-static {v4, v11}, Lm/d;->m(Landroid/app/Notification$Action$Builder;I)V

    .line 383
    .line 384
    .line 385
    :cond_10
    if-lt v12, v7, :cond_11

    .line 386
    .line 387
    iget-boolean v6, v3, LD/j;->g:Z

    .line 388
    .line 389
    invoke-static {v4, v6}, LD/g;->j(Landroid/app/Notification$Action$Builder;Z)V

    .line 390
    .line 391
    .line 392
    :cond_11
    const/16 v6, 0x1f

    .line 393
    .line 394
    if-lt v12, v6, :cond_12

    .line 395
    .line 396
    iget-boolean v6, v3, LD/j;->k:Z

    .line 397
    .line 398
    invoke-static {v4, v6}, LD/s;->a(Landroid/app/Notification$Action$Builder;Z)V

    .line 399
    .line 400
    .line 401
    :cond_12
    const-string v6, "android.support.action.showsUserInterface"

    .line 402
    .line 403
    iget-boolean v3, v3, LD/j;->e:Z

    .line 404
    .line 405
    invoke-virtual {v13, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v4, v13}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    iget-object v4, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 416
    .line 417
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 418
    .line 419
    .line 420
    const/16 v4, 0x1a

    .line 421
    .line 422
    const/16 v6, 0x17

    .line 423
    .line 424
    goto/16 :goto_8

    .line 425
    .line 426
    :cond_13
    iget-object v2, v1, LD/o;->m:Landroid/os/Bundle;

    .line 427
    .line 428
    if-eqz v2, :cond_14

    .line 429
    .line 430
    iget-object v3, v0, LD/t;->d:Landroid/os/Bundle;

    .line 431
    .line 432
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 433
    .line 434
    .line 435
    :cond_14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 436
    .line 437
    iget-object v3, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 438
    .line 439
    iget-boolean v4, v1, LD/o;->j:Z

    .line 440
    .line 441
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 442
    .line 443
    .line 444
    iget-object v3, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 445
    .line 446
    iget-boolean v4, v1, LD/o;->l:Z

    .line 447
    .line 448
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 449
    .line 450
    .line 451
    iget-object v3, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 452
    .line 453
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 454
    .line 455
    .line 456
    iget-object v3, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 457
    .line 458
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 459
    .line 460
    .line 461
    iget-object v3, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 462
    .line 463
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 464
    .line 465
    .line 466
    iget-object v3, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 467
    .line 468
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 469
    .line 470
    .line 471
    iget-object v3, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 472
    .line 473
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 474
    .line 475
    .line 476
    iget-object v3, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 477
    .line 478
    iget v4, v1, LD/o;->n:I

    .line 479
    .line 480
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 481
    .line 482
    .line 483
    iget-object v3, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 484
    .line 485
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 486
    .line 487
    .line 488
    iget-object v3, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 489
    .line 490
    iget-object v4, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 491
    .line 492
    iget-object v5, v5, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 493
    .line 494
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 495
    .line 496
    .line 497
    iget-object v3, v1, LD/o;->c:Ljava/util/ArrayList;

    .line 498
    .line 499
    iget-object v4, v1, LD/o;->r:Ljava/util/ArrayList;

    .line 500
    .line 501
    if-ge v2, v10, :cond_19

    .line 502
    .line 503
    if-nez v3, :cond_15

    .line 504
    .line 505
    move-object v2, v8

    .line 506
    goto :goto_e

    .line 507
    :cond_15
    new-instance v2, Ljava/util/ArrayList;

    .line 508
    .line 509
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 510
    .line 511
    .line 512
    move-result v5

    .line 513
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 521
    .line 522
    .line 523
    move-result v6

    .line 524
    if-nez v6, :cond_18

    .line 525
    .line 526
    :goto_e
    if-nez v2, :cond_16

    .line 527
    .line 528
    goto :goto_f

    .line 529
    :cond_16
    if-nez v4, :cond_17

    .line 530
    .line 531
    move-object v4, v2

    .line 532
    goto :goto_f

    .line 533
    :cond_17
    new-instance v5, Lr/g;

    .line 534
    .line 535
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 536
    .line 537
    .line 538
    move-result v6

    .line 539
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 540
    .line 541
    .line 542
    move-result v14

    .line 543
    add-int/2addr v14, v6

    .line 544
    invoke-direct {v5, v14}, Lr/g;-><init>(I)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v5, v2}, Lr/g;->addAll(Ljava/util/Collection;)Z

    .line 548
    .line 549
    .line 550
    invoke-virtual {v5, v4}, Lr/g;->addAll(Ljava/util/Collection;)Z

    .line 551
    .line 552
    .line 553
    new-instance v4, Ljava/util/ArrayList;

    .line 554
    .line 555
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 556
    .line 557
    .line 558
    goto :goto_f

    .line 559
    :cond_18
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-static {v1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    throw v8

    .line 567
    :cond_19
    :goto_f
    if-eqz v4, :cond_1a

    .line 568
    .line 569
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 570
    .line 571
    .line 572
    move-result v2

    .line 573
    if-nez v2, :cond_1a

    .line 574
    .line 575
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    if-eqz v4, :cond_1a

    .line 584
    .line 585
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    check-cast v4, Ljava/lang/String;

    .line 590
    .line 591
    iget-object v5, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 592
    .line 593
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 594
    .line 595
    .line 596
    goto :goto_10

    .line 597
    :cond_1a
    iget-object v2, v1, LD/o;->d:Ljava/util/ArrayList;

    .line 598
    .line 599
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 600
    .line 601
    .line 602
    move-result v4

    .line 603
    if-lez v4, :cond_24

    .line 604
    .line 605
    iget-object v4, v1, LD/o;->m:Landroid/os/Bundle;

    .line 606
    .line 607
    if-nez v4, :cond_1b

    .line 608
    .line 609
    new-instance v4, Landroid/os/Bundle;

    .line 610
    .line 611
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 612
    .line 613
    .line 614
    iput-object v4, v1, LD/o;->m:Landroid/os/Bundle;

    .line 615
    .line 616
    :cond_1b
    iget-object v4, v1, LD/o;->m:Landroid/os/Bundle;

    .line 617
    .line 618
    const-string v5, "android.car.EXTENSIONS"

    .line 619
    .line 620
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 621
    .line 622
    .line 623
    move-result-object v4

    .line 624
    if-nez v4, :cond_1c

    .line 625
    .line 626
    new-instance v4, Landroid/os/Bundle;

    .line 627
    .line 628
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 629
    .line 630
    .line 631
    :cond_1c
    new-instance v6, Landroid/os/Bundle;

    .line 632
    .line 633
    invoke-direct {v6, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 634
    .line 635
    .line 636
    new-instance v14, Landroid/os/Bundle;

    .line 637
    .line 638
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 639
    .line 640
    .line 641
    const/4 v15, 0x0

    .line 642
    :goto_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 643
    .line 644
    .line 645
    move-result v7

    .line 646
    if-ge v15, v7, :cond_22

    .line 647
    .line 648
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v7

    .line 652
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v16

    .line 656
    move-object/from16 v10, v16

    .line 657
    .line 658
    check-cast v10, LD/j;

    .line 659
    .line 660
    new-instance v11, Landroid/os/Bundle;

    .line 661
    .line 662
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 663
    .line 664
    .line 665
    iget-object v9, v10, LD/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 666
    .line 667
    if-nez v9, :cond_1d

    .line 668
    .line 669
    iget v9, v10, LD/j;->h:I

    .line 670
    .line 671
    if-eqz v9, :cond_1d

    .line 672
    .line 673
    invoke-static {v8, v13, v9}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 674
    .line 675
    .line 676
    move-result-object v9

    .line 677
    iput-object v9, v10, LD/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 678
    .line 679
    :cond_1d
    iget-object v9, v10, LD/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 680
    .line 681
    if-eqz v9, :cond_1e

    .line 682
    .line 683
    invoke-virtual {v9}, Landroidx/core/graphics/drawable/IconCompat;->e()I

    .line 684
    .line 685
    .line 686
    move-result v9

    .line 687
    goto :goto_12

    .line 688
    :cond_1e
    const/4 v9, 0x0

    .line 689
    :goto_12
    const-string v8, "icon"

    .line 690
    .line 691
    invoke-virtual {v11, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 692
    .line 693
    .line 694
    const-string v8, "title"

    .line 695
    .line 696
    iget-object v9, v10, LD/j;->i:Ljava/lang/CharSequence;

    .line 697
    .line 698
    invoke-virtual {v11, v8, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 699
    .line 700
    .line 701
    const-string v8, "actionIntent"

    .line 702
    .line 703
    iget-object v9, v10, LD/j;->j:Landroid/app/PendingIntent;

    .line 704
    .line 705
    invoke-virtual {v11, v8, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 706
    .line 707
    .line 708
    iget-object v8, v10, LD/j;->a:Landroid/os/Bundle;

    .line 709
    .line 710
    if-eqz v8, :cond_1f

    .line 711
    .line 712
    new-instance v9, Landroid/os/Bundle;

    .line 713
    .line 714
    invoke-direct {v9, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 715
    .line 716
    .line 717
    goto :goto_13

    .line 718
    :cond_1f
    new-instance v9, Landroid/os/Bundle;

    .line 719
    .line 720
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 721
    .line 722
    .line 723
    :goto_13
    iget-boolean v8, v10, LD/j;->d:Z

    .line 724
    .line 725
    invoke-virtual {v9, v12, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 726
    .line 727
    .line 728
    const-string v8, "extras"

    .line 729
    .line 730
    invoke-virtual {v11, v8, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 731
    .line 732
    .line 733
    iget-object v8, v10, LD/j;->c:[LD/y;

    .line 734
    .line 735
    if-nez v8, :cond_20

    .line 736
    .line 737
    move-object/from16 v17, v2

    .line 738
    .line 739
    const/4 v9, 0x0

    .line 740
    goto :goto_14

    .line 741
    :cond_20
    array-length v9, v8

    .line 742
    new-array v9, v9, [Landroid/os/Bundle;

    .line 743
    .line 744
    move-object/from16 v17, v2

    .line 745
    .line 746
    array-length v2, v8

    .line 747
    if-gtz v2, :cond_21

    .line 748
    .line 749
    :goto_14
    const-string v2, "remoteInputs"

    .line 750
    .line 751
    invoke-virtual {v11, v2, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 752
    .line 753
    .line 754
    const-string v2, "showsUserInterface"

    .line 755
    .line 756
    iget-boolean v8, v10, LD/j;->e:Z

    .line 757
    .line 758
    invoke-virtual {v11, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 759
    .line 760
    .line 761
    const-string v2, "semanticAction"

    .line 762
    .line 763
    iget v8, v10, LD/j;->f:I

    .line 764
    .line 765
    invoke-virtual {v11, v2, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v14, v7, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 769
    .line 770
    .line 771
    add-int/lit8 v15, v15, 0x1

    .line 772
    .line 773
    move-object/from16 v2, v17

    .line 774
    .line 775
    const/4 v8, 0x0

    .line 776
    const/4 v9, 0x0

    .line 777
    const/16 v10, 0x1c

    .line 778
    .line 779
    const/16 v11, 0x18

    .line 780
    .line 781
    goto/16 :goto_11

    .line 782
    .line 783
    :cond_21
    const/4 v2, 0x0

    .line 784
    aget-object v1, v8, v2

    .line 785
    .line 786
    new-instance v1, Landroid/os/Bundle;

    .line 787
    .line 788
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 789
    .line 790
    .line 791
    const/4 v1, 0x0

    .line 792
    throw v1

    .line 793
    :cond_22
    const-string v2, "invisible_actions"

    .line 794
    .line 795
    invoke-virtual {v4, v2, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v6, v2, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 799
    .line 800
    .line 801
    iget-object v2, v1, LD/o;->m:Landroid/os/Bundle;

    .line 802
    .line 803
    if-nez v2, :cond_23

    .line 804
    .line 805
    new-instance v2, Landroid/os/Bundle;

    .line 806
    .line 807
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 808
    .line 809
    .line 810
    iput-object v2, v1, LD/o;->m:Landroid/os/Bundle;

    .line 811
    .line 812
    :cond_23
    iget-object v2, v1, LD/o;->m:Landroid/os/Bundle;

    .line 813
    .line 814
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 815
    .line 816
    .line 817
    iget-object v2, v0, LD/t;->d:Landroid/os/Bundle;

    .line 818
    .line 819
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 820
    .line 821
    .line 822
    :cond_24
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 823
    .line 824
    const/16 v4, 0x18

    .line 825
    .line 826
    if-lt v2, v4, :cond_25

    .line 827
    .line 828
    iget-object v4, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 829
    .line 830
    iget-object v5, v1, LD/o;->m:Landroid/os/Bundle;

    .line 831
    .line 832
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 833
    .line 834
    .line 835
    iget-object v4, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 836
    .line 837
    invoke-static {v4}, LD/q;->g(Landroid/app/Notification$Builder;)V

    .line 838
    .line 839
    .line 840
    :cond_25
    const/16 v4, 0x1a

    .line 841
    .line 842
    if-lt v2, v4, :cond_26

    .line 843
    .line 844
    iget-object v4, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 845
    .line 846
    invoke-static {v4}, LD/r;->h(Landroid/app/Notification$Builder;)V

    .line 847
    .line 848
    .line 849
    iget-object v4, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 850
    .line 851
    invoke-static {v4}, LD/r;->n(Landroid/app/Notification$Builder;)V

    .line 852
    .line 853
    .line 854
    iget-object v4, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 855
    .line 856
    invoke-static {v4}, LD/r;->o(Landroid/app/Notification$Builder;)V

    .line 857
    .line 858
    .line 859
    iget-object v4, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 860
    .line 861
    invoke-static {v4}, LD/r;->p(Landroid/app/Notification$Builder;)V

    .line 862
    .line 863
    .line 864
    iget-object v4, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 865
    .line 866
    invoke-static {v4}, LD/r;->j(Landroid/app/Notification$Builder;)V

    .line 867
    .line 868
    .line 869
    iget-object v4, v1, LD/o;->o:Ljava/lang/String;

    .line 870
    .line 871
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 872
    .line 873
    .line 874
    move-result v4

    .line 875
    if-nez v4, :cond_26

    .line 876
    .line 877
    iget-object v4, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 878
    .line 879
    const/4 v5, 0x0

    .line 880
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 881
    .line 882
    .line 883
    move-result-object v4

    .line 884
    const/4 v6, 0x0

    .line 885
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 886
    .line 887
    .line 888
    move-result-object v4

    .line 889
    invoke-virtual {v4, v6, v6, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 890
    .line 891
    .line 892
    move-result-object v4

    .line 893
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 894
    .line 895
    .line 896
    :cond_26
    const/16 v4, 0x1c

    .line 897
    .line 898
    if-lt v2, v4, :cond_27

    .line 899
    .line 900
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 901
    .line 902
    .line 903
    move-result-object v3

    .line 904
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 905
    .line 906
    .line 907
    move-result v4

    .line 908
    if-nez v4, :cond_28

    .line 909
    .line 910
    :cond_27
    const/16 v3, 0x1d

    .line 911
    .line 912
    goto :goto_15

    .line 913
    :cond_28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object v1

    .line 917
    invoke-static {v1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 918
    .line 919
    .line 920
    const/4 v1, 0x0

    .line 921
    throw v1

    .line 922
    :goto_15
    if-lt v2, v3, :cond_29

    .line 923
    .line 924
    iget-object v2, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 925
    .line 926
    iget-boolean v1, v1, LD/o;->p:Z

    .line 927
    .line 928
    invoke-static {v2, v1}, LD/g;->h(Landroid/app/Notification$Builder;Z)V

    .line 929
    .line 930
    .line 931
    iget-object v1, v0, LD/t;->b:Landroid/app/Notification$Builder;

    .line 932
    .line 933
    invoke-static {v1}, LD/g;->i(Landroid/app/Notification$Builder;)V

    .line 934
    .line 935
    .line 936
    :cond_29
    return-void
.end method
