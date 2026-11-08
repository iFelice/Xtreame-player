.class public final LZ3/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:LZ3/i;


# direct methods
.method public constructor <init>(Landroid/app/Application;LZ3/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LZ3/d0;->a:Landroid/app/Application;

    .line 5
    .line 6
    iput-object p2, p0, LZ3/d0;->b:LZ3/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lv4/b;)Lcom/google/android/gms/internal/ads/Nd;
    .locals 11

    .line 1
    iget-object v0, p2, Lv4/b;->c:LG/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, LZ3/d0;->a:Landroid/app/Application;

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/Cw;->e0()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    invoke-static {v4}, LZ3/C;->m(Landroid/content/Context;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    new-instance v4, LG/c;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-boolean v0, v4, LG/c;->H:Z

    .line 43
    .line 44
    iput v2, v4, LG/c;->G:I

    .line 45
    .line 46
    move-object v0, v4

    .line 47
    :cond_2
    new-instance v4, Lcom/google/android/gms/internal/ads/Nd;

    .line 48
    .line 49
    const/4 v5, 0x3

    .line 50
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/Nd;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iget-object v6, p2, Lv4/b;->b:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    const/4 v8, 0x0

    .line 60
    if-nez v7, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    const/16 v10, 0x80

    .line 72
    .line 73
    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_0
    nop

    .line 81
    move-object v7, v8

    .line 82
    :goto_1
    if-eqz v7, :cond_4

    .line 83
    .line 84
    const-string v6, "com.google.android.gms.ads.APPLICATION_ID"

    .line 85
    .line 86
    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-nez v7, :cond_15

    .line 95
    .line 96
    :goto_2
    iput-object v6, v4, Lcom/google/android/gms/internal/ads/Nd;->a:Ljava/lang/Object;

    .line 97
    .line 98
    iget-boolean v6, v0, LG/c;->H:Z

    .line 99
    .line 100
    const/4 v7, 0x2

    .line 101
    if-nez v6, :cond_5

    .line 102
    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    goto :goto_4

    .line 108
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    iget v0, v0, LG/c;->G:I

    .line 114
    .line 115
    if-eq v0, v1, :cond_9

    .line 116
    .line 117
    if-eq v0, v7, :cond_8

    .line 118
    .line 119
    if-eq v0, v5, :cond_7

    .line 120
    .line 121
    const/4 v1, 0x4

    .line 122
    if-eq v0, v1, :cond_6

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_6
    sget-object v0, LZ3/z;->I:LZ3/z;

    .line 126
    .line 127
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_7
    sget-object v0, LZ3/z;->H:LZ3/z;

    .line 132
    .line 133
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_8
    sget-object v0, LZ3/z;->J:LZ3/z;

    .line 138
    .line 139
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_9
    sget-object v0, LZ3/z;->G:LZ3/z;

    .line 144
    .line 145
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :goto_3
    sget-object v0, LZ3/z;->K:LZ3/z;

    .line 149
    .line 150
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-object v0, v6

    .line 154
    :goto_4
    iput-object v0, v4, Lcom/google/android/gms/internal/ads/Nd;->i:Ljava/lang/Object;

    .line 155
    .line 156
    iget-object v0, p0, LZ3/d0;->b:LZ3/i;

    .line 157
    .line 158
    invoke-virtual {v0}, LZ3/i;->a()Ljava/util/HashMap;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iput-object v0, v4, Lcom/google/android/gms/internal/ads/Nd;->e:Ljava/lang/Object;

    .line 163
    .line 164
    iget-boolean p2, p2, Lv4/b;->a:Z

    .line 165
    .line 166
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    iput-object p2, v4, Lcom/google/android/gms/internal/ads/Nd;->d:Ljava/lang/Object;

    .line 171
    .line 172
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    iput-object p2, v4, Lcom/google/android/gms/internal/ads/Nd;->c:Ljava/lang/Object;

    .line 181
    .line 182
    new-instance p2, LF/d;

    .line 183
    .line 184
    const/16 v0, 0xc

    .line 185
    .line 186
    invoke-direct {p2, v0}, LF/d;-><init>(I)V

    .line 187
    .line 188
    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 190
    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iput-object v1, p2, LF/d;->J:Ljava/lang/Object;

    .line 196
    .line 197
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 198
    .line 199
    iput-object v1, p2, LF/d;->I:Ljava/lang/Object;

    .line 200
    .line 201
    iput v7, p2, LF/d;->H:I

    .line 202
    .line 203
    iput-object p2, v4, Lcom/google/android/gms/internal/ads/Nd;->b:Ljava/lang/Object;

    .line 204
    .line 205
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 218
    .line 219
    .line 220
    new-instance v1, Lm2/o;

    .line 221
    .line 222
    const/4 v6, 0x7

    .line 223
    invoke-direct {v1, v6}, Lm2/o;-><init>(I)V

    .line 224
    .line 225
    .line 226
    iget v6, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 227
    .line 228
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    iput-object v6, v1, Lm2/o;->G:Ljava/lang/Object;

    .line 233
    .line 234
    iget p2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 235
    .line 236
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    iput-object p2, v1, Lm2/o;->H:Ljava/lang/Object;

    .line 241
    .line 242
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 251
    .line 252
    float-to-double v6, p2

    .line 253
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    iput-object p2, v1, Lm2/o;->I:Ljava/lang/Object;

    .line 258
    .line 259
    const/16 p2, 0x1c

    .line 260
    .line 261
    if-ge v0, p2, :cond_a

    .line 262
    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    goto/16 :goto_a

    .line 268
    .line 269
    :cond_a
    if-nez p1, :cond_b

    .line 270
    .line 271
    move-object p1, v8

    .line 272
    goto :goto_5

    .line 273
    :cond_b
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    :goto_5
    if-nez p1, :cond_c

    .line 278
    .line 279
    move-object p1, v8

    .line 280
    goto :goto_6

    .line 281
    :cond_c
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    :goto_6
    if-nez p1, :cond_d

    .line 286
    .line 287
    move-object p1, v8

    .line 288
    goto :goto_7

    .line 289
    :cond_d
    invoke-static {p1}, LF2/D;->h(Landroid/view/View;)Landroid/view/WindowInsets;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    :goto_7
    if-nez p1, :cond_e

    .line 294
    .line 295
    move-object p1, v8

    .line 296
    goto :goto_8

    .line 297
    :cond_e
    invoke-static {p1}, LN/d0;->B(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    :goto_8
    if-nez p1, :cond_f

    .line 302
    .line 303
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    goto :goto_a

    .line 308
    :cond_f
    invoke-static {p1}, LN/d0;->r(Landroid/view/DisplayCutout;)V

    .line 309
    .line 310
    .line 311
    new-instance v0, Ljava/util/ArrayList;

    .line 312
    .line 313
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-static {p1}, Lj0/e;->d(Landroid/view/DisplayCutout;)Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    :cond_10
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    if-eqz v6, :cond_11

    .line 329
    .line 330
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    check-cast v6, Landroid/graphics/Rect;

    .line 335
    .line 336
    if-eqz v6, :cond_10

    .line 337
    .line 338
    new-instance v7, LZ3/A;

    .line 339
    .line 340
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 341
    .line 342
    .line 343
    iget v9, v6, Landroid/graphics/Rect;->left:I

    .line 344
    .line 345
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v9

    .line 349
    iput-object v9, v7, LZ3/A;->b:Ljava/lang/Integer;

    .line 350
    .line 351
    iget v9, v6, Landroid/graphics/Rect;->right:I

    .line 352
    .line 353
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    iput-object v9, v7, LZ3/A;->c:Ljava/lang/Integer;

    .line 358
    .line 359
    iget v9, v6, Landroid/graphics/Rect;->top:I

    .line 360
    .line 361
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v9

    .line 365
    iput-object v9, v7, LZ3/A;->a:Ljava/lang/Integer;

    .line 366
    .line 367
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 368
    .line 369
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    iput-object v6, v7, LZ3/A;->d:Ljava/lang/Integer;

    .line 374
    .line 375
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    goto :goto_9

    .line 379
    :cond_11
    move-object p1, v0

    .line 380
    :goto_a
    iput-object p1, v1, Lm2/o;->J:Ljava/lang/Object;

    .line 381
    .line 382
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/Nd;->f:Ljava/lang/Object;

    .line 383
    .line 384
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 393
    .line 394
    .line 395
    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 396
    goto :goto_b

    .line 397
    :catch_1
    move-object p1, v8

    .line 398
    :goto_b
    new-instance v0, LZ3/y;

    .line 399
    .line 400
    invoke-direct {v0, v2}, LZ3/y;-><init>(I)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    iput-object v1, v0, LZ3/y;->a:Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    if-eqz v1, :cond_12

    .line 422
    .line 423
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v8

    .line 427
    :cond_12
    iput-object v8, v0, LZ3/y;->b:Ljava/lang/String;

    .line 428
    .line 429
    if-eqz p1, :cond_14

    .line 430
    .line 431
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 432
    .line 433
    if-lt v1, p2, :cond_13

    .line 434
    .line 435
    invoke-static {p1}, LN/d0;->b(Landroid/content/pm/PackageInfo;)J

    .line 436
    .line 437
    .line 438
    move-result-wide p1

    .line 439
    goto :goto_c

    .line 440
    :cond_13
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 441
    .line 442
    int-to-long p1, p1

    .line 443
    :goto_c
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    iput-object p1, v0, LZ3/y;->c:Ljava/lang/String;

    .line 448
    .line 449
    :cond_14
    iput-object v0, v4, Lcom/google/android/gms/internal/ads/Nd;->g:Ljava/lang/Object;

    .line 450
    .line 451
    new-instance p1, Lp3/e;

    .line 452
    .line 453
    invoke-direct {p1, v5}, Lp3/e;-><init>(I)V

    .line 454
    .line 455
    .line 456
    const-string p2, "3.2.0"

    .line 457
    .line 458
    iput-object p2, p1, Lp3/e;->H:Ljava/lang/String;

    .line 459
    .line 460
    iput-object p1, v4, Lcom/google/android/gms/internal/ads/Nd;->h:Ljava/lang/Object;

    .line 461
    .line 462
    return-object v4

    .line 463
    :cond_15
    new-instance p1, LZ3/a0;

    .line 464
    .line 465
    const-string p2, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">"

    .line 466
    .line 467
    invoke-direct {p1, v5, p2}, LZ3/a0;-><init>(ILjava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw p1
.end method
