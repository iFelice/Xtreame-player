.class public final Lcom/google/android/gms/internal/ads/yh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Oa;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Lcom/google/android/gms/internal/ads/E5;

.field public final I:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/E5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yh;->G:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yh;->H:Lcom/google/android/gms/internal/ads/E5;

    .line 7
    .line 8
    const-string p2, "power"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/os/PowerManager;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yh;->I:Landroid/os/PowerManager;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Ah;)Lorg/json/JSONObject;
    .locals 13

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Ah;->e:Lcom/google/android/gms/internal/ads/F5;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    new-instance p1, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yh;->H:Lcom/google/android/gms/internal/ads/E5;

    .line 23
    .line 24
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/E5;->b:Lorg/json/JSONObject;

    .line 25
    .line 26
    if-eqz v4, :cond_6

    .line 27
    .line 28
    new-instance v4, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v5, "afmaVersion"

    .line 34
    .line 35
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/E5;->d:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string v6, "activeViewJSON"

    .line 42
    .line 43
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/E5;->b:Lorg/json/JSONObject;

    .line 44
    .line 45
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/Ah;->c:J

    .line 50
    .line 51
    const-string v8, "timestamp"

    .line 52
    .line 53
    invoke-virtual {v5, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string v6, "adFormat"

    .line 58
    .line 59
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/E5;->a:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-string v6, "hashCode"

    .line 66
    .line 67
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/E5;->c:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const-string v6, "isMraid"

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const-string v6, "isStopped"

    .line 81
    .line 82
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    iget-boolean v6, p1, Lcom/google/android/gms/internal/ads/Ah;->b:Z

    .line 87
    .line 88
    const-string v7, "isPaused"

    .line 89
    .line 90
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const-string v6, "isNative"

    .line 95
    .line 96
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/E5;->e:Z

    .line 97
    .line 98
    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/yh;->I:Landroid/os/PowerManager;

    .line 103
    .line 104
    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    const-string v6, "isScreenOn"

    .line 109
    .line 110
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    sget-object v5, Lk3/l;->A:Lk3/l;

    .line 115
    .line 116
    iget-object v6, v5, Lk3/l;->h:Lo3/a;

    .line 117
    .line 118
    invoke-virtual {v6}, Lo3/a;->d()Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    const-string v7, "appMuted"

    .line 123
    .line 124
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    iget-object v5, v5, Lk3/l;->h:Lo3/a;

    .line 129
    .line 130
    invoke-virtual {v5}, Lo3/a;->a()F

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    float-to-double v5, v5

    .line 135
    const-string v7, "appVolume"

    .line 136
    .line 137
    invoke-virtual {v3, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/yh;->G:Landroid/content/Context;

    .line 142
    .line 143
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    const-string v7, "audio"

    .line 148
    .line 149
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    check-cast v6, Landroid/media/AudioManager;

    .line 154
    .line 155
    if-nez v6, :cond_1

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_1
    const/4 v7, 0x3

    .line 159
    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-eqz v8, :cond_2

    .line 168
    .line 169
    int-to-float v6, v6

    .line 170
    int-to-float v7, v8

    .line 171
    div-float/2addr v6, v7

    .line 172
    goto :goto_1

    .line 173
    :cond_2
    :goto_0
    const/4 v6, 0x0

    .line 174
    :goto_1
    float-to-double v6, v6

    .line 175
    const-string v8, "deviceVolume"

    .line 176
    .line 177
    invoke-virtual {v3, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 178
    .line 179
    .line 180
    new-instance v3, Landroid/graphics/Rect;

    .line 181
    .line 182
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v6, "window"

    .line 186
    .line 187
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    check-cast v6, Landroid/view/WindowManager;

    .line 192
    .line 193
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 202
    .line 203
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 208
    .line 209
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    iget v5, v2, Lcom/google/android/gms/internal/ads/F5;->b:I

    .line 218
    .line 219
    const-string v6, "windowVisibility"

    .line 220
    .line 221
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    const-string v6, "isAttachedToWindow"

    .line 226
    .line 227
    iget-boolean v7, v2, Lcom/google/android/gms/internal/ads/F5;->a:Z

    .line 228
    .line 229
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    new-instance v6, Lorg/json/JSONObject;

    .line 234
    .line 235
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 236
    .line 237
    .line 238
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/F5;->c:Landroid/graphics/Rect;

    .line 239
    .line 240
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 241
    .line 242
    const-string v9, "top"

    .line 243
    .line 244
    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 249
    .line 250
    const-string v10, "bottom"

    .line 251
    .line 252
    invoke-virtual {v6, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 257
    .line 258
    const-string v11, "left"

    .line 259
    .line 260
    invoke-virtual {v6, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 265
    .line 266
    const-string v8, "right"

    .line 267
    .line 268
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    const-string v7, "viewBox"

    .line 273
    .line 274
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    new-instance v6, Lorg/json/JSONObject;

    .line 279
    .line 280
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 281
    .line 282
    .line 283
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/F5;->d:Landroid/graphics/Rect;

    .line 284
    .line 285
    iget v12, v7, Landroid/graphics/Rect;->top:I

    .line 286
    .line 287
    invoke-virtual {v6, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    .line 292
    .line 293
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    iget v12, v7, Landroid/graphics/Rect;->left:I

    .line 298
    .line 299
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 304
    .line 305
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    const-string v7, "adBox"

    .line 310
    .line 311
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    new-instance v6, Lorg/json/JSONObject;

    .line 316
    .line 317
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 318
    .line 319
    .line 320
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/F5;->e:Landroid/graphics/Rect;

    .line 321
    .line 322
    iget v12, v7, Landroid/graphics/Rect;->top:I

    .line 323
    .line 324
    invoke-virtual {v6, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    .line 329
    .line 330
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    iget v12, v7, Landroid/graphics/Rect;->left:I

    .line 335
    .line 336
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 341
    .line 342
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    const-string v7, "globalVisibleBox"

    .line 347
    .line 348
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/F5;->f:Z

    .line 353
    .line 354
    const-string v7, "globalVisibleBoxVisible"

    .line 355
    .line 356
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    new-instance v6, Lorg/json/JSONObject;

    .line 361
    .line 362
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 363
    .line 364
    .line 365
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/F5;->g:Landroid/graphics/Rect;

    .line 366
    .line 367
    iget v12, v7, Landroid/graphics/Rect;->top:I

    .line 368
    .line 369
    invoke-virtual {v6, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    .line 374
    .line 375
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    iget v12, v7, Landroid/graphics/Rect;->left:I

    .line 380
    .line 381
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 386
    .line 387
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    const-string v7, "localVisibleBox"

    .line 392
    .line 393
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/F5;->h:Z

    .line 398
    .line 399
    const-string v7, "localVisibleBoxVisible"

    .line 400
    .line 401
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    new-instance v6, Lorg/json/JSONObject;

    .line 406
    .line 407
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 408
    .line 409
    .line 410
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/F5;->i:Landroid/graphics/Rect;

    .line 411
    .line 412
    iget v12, v7, Landroid/graphics/Rect;->top:I

    .line 413
    .line 414
    invoke-virtual {v6, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    .line 419
    .line 420
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    iget v12, v7, Landroid/graphics/Rect;->left:I

    .line 425
    .line 426
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 431
    .line 432
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    const-string v7, "hitBox"

    .line 437
    .line 438
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 443
    .line 444
    float-to-double v6, v3

    .line 445
    const-string v3, "screenDensity"

    .line 446
    .line 447
    invoke-virtual {v5, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 448
    .line 449
    .line 450
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/Ah;->a:Z

    .line 451
    .line 452
    const-string v5, "isVisible"

    .line 453
    .line 454
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 455
    .line 456
    .line 457
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->i1:Lcom/google/android/gms/internal/ads/J7;

    .line 458
    .line 459
    sget-object v5, Ll3/q;->d:Ll3/q;

    .line 460
    .line 461
    iget-object v5, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 462
    .line 463
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    check-cast v3, Ljava/lang/Boolean;

    .line 468
    .line 469
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 470
    .line 471
    .line 472
    move-result v3

    .line 473
    if-eqz v3, :cond_4

    .line 474
    .line 475
    new-instance v3, Lorg/json/JSONArray;

    .line 476
    .line 477
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 478
    .line 479
    .line 480
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/F5;->k:Ljava/util/List;

    .line 481
    .line 482
    if-eqz v2, :cond_3

    .line 483
    .line 484
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 489
    .line 490
    .line 491
    move-result v5

    .line 492
    if-eqz v5, :cond_3

    .line 493
    .line 494
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v5

    .line 498
    check-cast v5, Landroid/graphics/Rect;

    .line 499
    .line 500
    new-instance v6, Lorg/json/JSONObject;

    .line 501
    .line 502
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 503
    .line 504
    .line 505
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 506
    .line 507
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 508
    .line 509
    .line 510
    move-result-object v6

    .line 511
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 512
    .line 513
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 514
    .line 515
    .line 516
    move-result-object v6

    .line 517
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 518
    .line 519
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 520
    .line 521
    .line 522
    move-result-object v6

    .line 523
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 524
    .line 525
    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 530
    .line 531
    .line 532
    goto :goto_2

    .line 533
    :cond_3
    const-string v2, "scrollableContainerBoxes"

    .line 534
    .line 535
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    .line 537
    .line 538
    :cond_4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Ah;->d:Ljava/lang/String;

    .line 539
    .line 540
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 541
    .line 542
    .line 543
    move-result p1

    .line 544
    if-nez p1, :cond_5

    .line 545
    .line 546
    const-string p1, "doneReasonCode"

    .line 547
    .line 548
    const-string v2, "u"

    .line 549
    .line 550
    invoke-virtual {v4, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 551
    .line 552
    .line 553
    :cond_5
    move-object p1, v4

    .line 554
    :goto_3
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 555
    .line 556
    .line 557
    const-string p1, "units"

    .line 558
    .line 559
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    .line 561
    .line 562
    return-object v1

    .line 563
    :cond_6
    new-instance p1, Lorg/json/JSONException;

    .line 564
    .line 565
    const-string v0, "Active view Info cannot be null."

    .line 566
    .line 567
    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/Ah;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/yh;->a(Lcom/google/android/gms/internal/ads/Ah;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
