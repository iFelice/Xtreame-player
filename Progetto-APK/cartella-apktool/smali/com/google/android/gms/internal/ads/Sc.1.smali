.class public final synthetic Lcom/google/android/gms/internal/ads/Sc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vz;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Sc;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sc;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/Sc;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v5, 0x0

    .line 8
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Sc;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v6, Lcom/google/android/gms/internal/ads/pw;

    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Lcom/google/android/gms/internal/ads/xi;

    .line 18
    .line 19
    iput-object v1, v6, Lcom/google/android/gms/internal/ads/pw;->c:Lcom/google/android/gms/internal/ads/xi;

    .line 20
    .line 21
    return-object v6

    .line 22
    :pswitch_0
    check-cast v6, Lcom/google/android/gms/internal/ads/Wu;

    .line 23
    .line 24
    move-object/from16 v1, p1

    .line 25
    .line 26
    check-cast v1, Ljava/lang/Exception;

    .line 27
    .line 28
    const-string v2, "TrustlessTokenSignal"

    .line 29
    .line 30
    iget-object v3, v6, Lcom/google/android/gms/internal/ads/Wu;->a:Lcom/google/android/gms/internal/ads/le;

    .line 31
    .line 32
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return-object v5

    .line 36
    :pswitch_1
    check-cast v6, Lcom/google/android/gms/internal/ads/Fs;

    .line 37
    .line 38
    move-object/from16 v1, p1

    .line 39
    .line 40
    check-cast v1, Ljava/lang/Exception;

    .line 41
    .line 42
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/Fs;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Lcom/google/android/gms/internal/ads/le;

    .line 45
    .line 46
    const-string v3, "AttestationTokenSignal"

    .line 47
    .line 48
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    return-object v5

    .line 52
    :pswitch_2
    check-cast v6, Lcom/google/android/gms/internal/ads/Fs;

    .line 53
    .line 54
    move-object/from16 v1, p1

    .line 55
    .line 56
    check-cast v1, Ljava/lang/Exception;

    .line 57
    .line 58
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/Fs;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Lcom/google/android/gms/internal/ads/le;

    .line 61
    .line 62
    const-string v4, "AppSetIdInfoGmscoreSignal"

    .line 63
    .line 64
    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lcom/google/android/gms/internal/ads/Xs;

    .line 68
    .line 69
    const/4 v2, 0x2

    .line 70
    invoke-direct {v1, v5, v3, v2}, Lcom/google/android/gms/internal/ads/Xs;-><init>(Ljava/lang/String;II)V

    .line 71
    .line 72
    .line 73
    return-object v1

    .line 74
    :pswitch_3
    check-cast v6, Lcom/google/android/gms/internal/ads/Ws;

    .line 75
    .line 76
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/Ws;->a:Lcom/google/android/gms/internal/ads/le;

    .line 77
    .line 78
    move-object/from16 v4, p1

    .line 79
    .line 80
    check-cast v4, Ljava/lang/Exception;

    .line 81
    .line 82
    const-string v6, "AppSetIdInfoSignal"

    .line 83
    .line 84
    invoke-virtual {v1, v6, v4}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Lcom/google/android/gms/internal/ads/Xs;

    .line 88
    .line 89
    invoke-direct {v1, v5, v3, v2}, Lcom/google/android/gms/internal/ads/Xs;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :pswitch_4
    check-cast v6, Lcom/google/android/gms/internal/ads/Gs;

    .line 94
    .line 95
    move-object/from16 v1, p1

    .line 96
    .line 97
    check-cast v1, Lcom/google/android/gms/internal/ads/Au;

    .line 98
    .line 99
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/Gs;->b:Lcom/google/android/gms/internal/ads/Yv;

    .line 100
    .line 101
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Yv;->e:Ll3/d1;

    .line 102
    .line 103
    iget-object v7, v8, Ll3/d1;->M:[Ll3/d1;

    .line 104
    .line 105
    if-nez v7, :cond_0

    .line 106
    .line 107
    iget-object v7, v8, Ll3/d1;->G:Ljava/lang/String;

    .line 108
    .line 109
    iget-boolean v9, v8, Ll3/d1;->O:Z

    .line 110
    .line 111
    move v10, v9

    .line 112
    move-object v9, v7

    .line 113
    goto :goto_3

    .line 114
    :cond_0
    move-object v12, v5

    .line 115
    const/4 v9, 0x0

    .line 116
    const/4 v10, 0x0

    .line 117
    const/4 v11, 0x0

    .line 118
    const/4 v13, 0x0

    .line 119
    :goto_0
    array-length v14, v7

    .line 120
    if-ge v9, v14, :cond_4

    .line 121
    .line 122
    aget-object v14, v7, v9

    .line 123
    .line 124
    iget-boolean v15, v14, Ll3/d1;->O:Z

    .line 125
    .line 126
    if-nez v15, :cond_1

    .line 127
    .line 128
    if-nez v10, :cond_1

    .line 129
    .line 130
    iget-object v12, v14, Ll3/d1;->G:Ljava/lang/String;

    .line 131
    .line 132
    const/4 v10, 0x1

    .line 133
    :cond_1
    if-eqz v15, :cond_3

    .line 134
    .line 135
    if-nez v11, :cond_2

    .line 136
    .line 137
    const/4 v11, 0x1

    .line 138
    const/4 v13, 0x1

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    const/4 v11, 0x1

    .line 141
    :cond_3
    :goto_1
    if-eqz v10, :cond_5

    .line 142
    .line 143
    if-nez v11, :cond_4

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_4
    move-object v9, v12

    .line 147
    move v10, v13

    .line 148
    goto :goto_3

    .line 149
    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :goto_3
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/Gs;->c:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    if-eqz v7, :cond_6

    .line 159
    .line 160
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    if-eqz v7, :cond_6

    .line 165
    .line 166
    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    .line 167
    .line 168
    iget v12, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 169
    .line 170
    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 171
    .line 172
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/Gs;->d:Lcom/google/android/gms/internal/ads/le;

    .line 173
    .line 174
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v6}, Lo3/L;->B()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    move-object v15, v6

    .line 183
    move v14, v7

    .line 184
    move v13, v12

    .line 185
    move v12, v5

    .line 186
    goto :goto_4

    .line 187
    :cond_6
    move-object v15, v5

    .line 188
    const/4 v12, 0x0

    .line 189
    const/4 v13, 0x0

    .line 190
    const/4 v14, 0x0

    .line 191
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-object v6, v8, Ll3/d1;->M:[Ll3/d1;

    .line 197
    .line 198
    if-eqz v6, :cond_f

    .line 199
    .line 200
    const/4 v7, 0x0

    .line 201
    const/16 v16, 0x0

    .line 202
    .line 203
    :goto_5
    array-length v4, v6

    .line 204
    const-string v2, "|"

    .line 205
    .line 206
    if-ge v7, v4, :cond_d

    .line 207
    .line 208
    aget-object v4, v6, v7

    .line 209
    .line 210
    iget-boolean v11, v4, Ll3/d1;->O:Z

    .line 211
    .line 212
    if-eqz v11, :cond_7

    .line 213
    .line 214
    const/16 v16, 0x1

    .line 215
    .line 216
    const/16 v19, 0x0

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    if-eqz v11, :cond_8

    .line 224
    .line 225
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    :cond_8
    iget v2, v4, Ll3/d1;->K:I

    .line 229
    .line 230
    if-ne v2, v3, :cond_a

    .line 231
    .line 232
    const/4 v11, 0x0

    .line 233
    cmpl-float v2, v12, v11

    .line 234
    .line 235
    if-eqz v2, :cond_9

    .line 236
    .line 237
    iget v2, v4, Ll3/d1;->L:I

    .line 238
    .line 239
    int-to-float v2, v2

    .line 240
    div-float/2addr v2, v12

    .line 241
    float-to-int v2, v2

    .line 242
    goto :goto_6

    .line 243
    :cond_9
    const/4 v2, -0x1

    .line 244
    :cond_a
    :goto_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v2, "x"

    .line 248
    .line 249
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const/4 v2, -0x2

    .line 253
    iget v11, v4, Ll3/d1;->H:I

    .line 254
    .line 255
    const/16 v19, 0x0

    .line 256
    .line 257
    if-ne v11, v2, :cond_b

    .line 258
    .line 259
    cmpl-float v11, v12, v19

    .line 260
    .line 261
    if-eqz v11, :cond_c

    .line 262
    .line 263
    iget v2, v4, Ll3/d1;->I:I

    .line 264
    .line 265
    int-to-float v2, v2

    .line 266
    div-float/2addr v2, v12

    .line 267
    float-to-int v2, v2

    .line 268
    goto :goto_7

    .line 269
    :cond_b
    move v2, v11

    .line 270
    :cond_c
    :goto_7
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 274
    .line 275
    const/4 v2, 0x0

    .line 276
    goto :goto_5

    .line 277
    :cond_d
    if-eqz v16, :cond_f

    .line 278
    .line 279
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-eqz v3, :cond_e

    .line 284
    .line 285
    const/4 v3, 0x0

    .line 286
    invoke-virtual {v5, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    goto :goto_9

    .line 290
    :cond_e
    const/4 v3, 0x0

    .line 291
    :goto_9
    const-string v2, "320x50"

    .line 292
    .line 293
    invoke-virtual {v5, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v11

    .line 300
    new-instance v2, Lcom/google/android/gms/internal/ads/Hs;

    .line 301
    .line 302
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/Yv;->q:Z

    .line 303
    .line 304
    move-object v7, v2

    .line 305
    move/from16 v16, v1

    .line 306
    .line 307
    invoke-direct/range {v7 .. v16}, Lcom/google/android/gms/internal/ads/Hs;-><init>(Ll3/d1;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V

    .line 308
    .line 309
    .line 310
    return-object v2

    .line 311
    :pswitch_5
    check-cast v6, Lcom/google/android/gms/internal/ads/Gg;

    .line 312
    .line 313
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/Gg;->G0()Lcom/google/android/gms/internal/ads/Oh;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    return-object v1

    .line 318
    :pswitch_6
    check-cast v6, Lcom/google/android/gms/internal/ads/Ip;

    .line 319
    .line 320
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/Ip;->c:Ljava/util/Map;

    .line 321
    .line 322
    move-object/from16 v2, p1

    .line 323
    .line 324
    check-cast v2, Lorg/json/JSONObject;

    .line 325
    .line 326
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Mp;->a(Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 327
    .line 328
    .line 329
    return-object v6

    .line 330
    :pswitch_7
    check-cast v6, Lcom/google/android/gms/internal/ads/Tm;

    .line 331
    .line 332
    move-object/from16 v1, p1

    .line 333
    .line 334
    check-cast v1, Lcom/google/android/gms/internal/ads/Ef;

    .line 335
    .line 336
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/Tm;->h:Lcom/google/android/gms/internal/ads/Vl;

    .line 337
    .line 338
    const-string v3, "/result"

    .line 339
    .line 340
    invoke-interface {v1, v3, v2}, Lcom/google/android/gms/internal/ads/Ef;->L0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 341
    .line 342
    .line 343
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->zzN()Lcom/google/android/gms/internal/ads/Xf;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    new-instance v2, Lk3/b;

    .line 348
    .line 349
    move-object v15, v2

    .line 350
    iget-object v3, v6, Lcom/google/android/gms/internal/ads/Tm;->c:Landroid/content/Context;

    .line 351
    .line 352
    invoke-direct {v2, v3, v5}, Lk3/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Hd;)V

    .line 353
    .line 354
    .line 355
    iget-object v12, v6, Lcom/google/android/gms/internal/ads/Tm;->a:Lcom/google/android/gms/internal/ads/Mm;

    .line 356
    .line 357
    move-object v10, v12

    .line 358
    move-object v11, v12

    .line 359
    move-object v9, v12

    .line 360
    const/16 v24, 0x0

    .line 361
    .line 362
    const/16 v25, 0x0

    .line 363
    .line 364
    const/4 v8, 0x0

    .line 365
    const/4 v13, 0x0

    .line 366
    const/4 v14, 0x0

    .line 367
    const/16 v16, 0x0

    .line 368
    .line 369
    const/16 v17, 0x0

    .line 370
    .line 371
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/Tm;->i:Lcom/google/android/gms/internal/ads/cq;

    .line 372
    .line 373
    move-object/from16 v18, v2

    .line 374
    .line 375
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/Tm;->j:Lcom/google/android/gms/internal/ads/ix;

    .line 376
    .line 377
    move-object/from16 v19, v2

    .line 378
    .line 379
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/Tm;->d:Lcom/google/android/gms/internal/ads/Fn;

    .line 380
    .line 381
    move-object/from16 v20, v2

    .line 382
    .line 383
    const/16 v21, 0x0

    .line 384
    .line 385
    const/16 v22, 0x0

    .line 386
    .line 387
    const/16 v23, 0x0

    .line 388
    .line 389
    const/16 v26, 0x0

    .line 390
    .line 391
    invoke-virtual/range {v7 .. v26}, Lcom/google/android/gms/internal/ads/Xf;->y(Ll3/a;Lcom/google/android/gms/internal/ads/F9;Ln3/m;Lcom/google/android/gms/internal/ads/G9;Ln3/c;ZLcom/google/android/gms/internal/ads/P9;Lk3/b;Lcom/google/android/gms/internal/ads/Of;Lcom/google/android/gms/internal/ads/Hd;Lcom/google/android/gms/internal/ads/cq;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Fn;Lcom/google/android/gms/internal/ads/O9;Lcom/google/android/gms/internal/ads/Ok;Lcom/google/android/gms/internal/ads/E9;Lcom/google/android/gms/internal/ads/E9;Lcom/google/android/gms/internal/ads/O9;Lcom/google/android/gms/internal/ads/oh;)V

    .line 392
    .line 393
    .line 394
    return-object v1

    .line 395
    :pswitch_8
    check-cast v6, Lcom/google/android/gms/internal/ads/Tc;

    .line 396
    .line 397
    move-object/from16 v1, p1

    .line 398
    .line 399
    check-cast v1, Lorg/json/JSONObject;

    .line 400
    .line 401
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->a:Lcom/google/android/gms/internal/ads/J7;

    .line 405
    .line 406
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 407
    .line 408
    iget-object v3, v2, Ll3/q;->b:Lcom/google/android/gms/internal/ads/kH;

    .line 409
    .line 410
    iget-object v3, v6, Lcom/google/android/gms/internal/ads/Tc;->m:Landroid/content/Context;

    .line 411
    .line 412
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/kH;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    if-nez v3, :cond_10

    .line 417
    .line 418
    goto/16 :goto_c

    .line 419
    .line 420
    :cond_10
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    iget-object v2, v2, Ll3/q;->a:LF0/u;

    .line 425
    .line 426
    iget-object v2, v2, LF0/u;->a:Ljava/util/List;

    .line 427
    .line 428
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    :cond_11
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-eqz v4, :cond_12

    .line 437
    .line 438
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    check-cast v4, Lcom/google/android/gms/internal/ads/K7;

    .line 443
    .line 444
    iget v7, v4, Lcom/google/android/gms/internal/ads/K7;->a:I

    .line 445
    .line 446
    const/4 v8, 0x1

    .line 447
    if-ne v7, v8, :cond_11

    .line 448
    .line 449
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/K7;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v7

    .line 453
    check-cast v4, Lcom/google/android/gms/internal/ads/J7;

    .line 454
    .line 455
    iget v9, v4, Lcom/google/android/gms/internal/ads/J7;->e:I

    .line 456
    .line 457
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/K7;->b:Ljava/lang/String;

    .line 458
    .line 459
    packed-switch v9, :pswitch_data_1

    .line 460
    .line 461
    .line 462
    check-cast v7, Ljava/lang/String;

    .line 463
    .line 464
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    .line 466
    .line 467
    goto :goto_a

    .line 468
    :pswitch_9
    check-cast v7, Ljava/lang/Float;

    .line 469
    .line 470
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 471
    .line 472
    .line 473
    move-result v7

    .line 474
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 475
    .line 476
    .line 477
    goto :goto_a

    .line 478
    :pswitch_a
    check-cast v7, Ljava/lang/Long;

    .line 479
    .line 480
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 481
    .line 482
    .line 483
    move-result-wide v9

    .line 484
    invoke-interface {v3, v4, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 485
    .line 486
    .line 487
    goto :goto_a

    .line 488
    :pswitch_b
    check-cast v7, Ljava/lang/Integer;

    .line 489
    .line 490
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 491
    .line 492
    .line 493
    move-result v7

    .line 494
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 495
    .line 496
    .line 497
    goto :goto_a

    .line 498
    :pswitch_c
    check-cast v7, Ljava/lang/Boolean;

    .line 499
    .line 500
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 501
    .line 502
    .line 503
    move-result v7

    .line 504
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 505
    .line 506
    .line 507
    goto :goto_a

    .line 508
    :cond_12
    if-eqz v1, :cond_13

    .line 509
    .line 510
    const-string v2, "flag_configuration"

    .line 511
    .line 512
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 517
    .line 518
    .line 519
    goto :goto_b

    .line 520
    :cond_13
    const-string v1, "Flag Json is null."

    .line 521
    .line 522
    invoke-static {v1}, Lp3/h;->d(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    :goto_b
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 526
    .line 527
    iget-object v1, v1, Ll3/q;->b:Lcom/google/android/gms/internal/ads/kH;

    .line 528
    .line 529
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 530
    .line 531
    .line 532
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/Tc;->n:Landroid/content/SharedPreferences;

    .line 533
    .line 534
    if-eqz v1, :cond_14

    .line 535
    .line 536
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 541
    .line 542
    iget-object v2, v2, Lk3/l;->j:LP3/b;

    .line 543
    .line 544
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 548
    .line 549
    .line 550
    move-result-wide v2

    .line 551
    const-string v4, "js_last_update"

    .line 552
    .line 553
    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 558
    .line 559
    .line 560
    :cond_14
    :goto_c
    return-object v5

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
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

    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
