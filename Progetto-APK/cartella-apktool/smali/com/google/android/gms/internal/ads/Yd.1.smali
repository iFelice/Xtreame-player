.class public abstract Lcom/google/android/gms/internal/ads/Yd;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Zd;


# static fields
.field public static final synthetic G:I


# virtual methods
.method public final y3(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    return v2

    .line 12
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-static {v5}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-static {v6}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    invoke-static {v8}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 41
    .line 42
    .line 43
    move-object/from16 v0, p0

    .line 44
    .line 45
    check-cast v0, Lv3/j;

    .line 46
    .line 47
    sget-object v9, Lcom/google/android/gms/internal/ads/Q7;->b9:Lcom/google/android/gms/internal/ads/J7;

    .line 48
    .line 49
    sget-object v10, Ll3/q;->d:Ll3/q;

    .line 50
    .line 51
    iget-object v10, v10, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 52
    .line 53
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    check-cast v9, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-nez v9, :cond_0

    .line 64
    .line 65
    new-instance v0, LR3/b;

    .line 66
    .line 67
    invoke-direct {v0, v4}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_0
    invoke-static {v5}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {v6}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Lo/e;

    .line 83
    .line 84
    invoke-static {v8}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Lcom/google/android/gms/internal/ads/b8;

    .line 89
    .line 90
    iget-object v8, v0, Lv3/j;->k0:Lcom/google/android/gms/internal/ads/c8;

    .line 91
    .line 92
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    if-eqz v4, :cond_6

    .line 96
    .line 97
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-nez v9, :cond_5

    .line 102
    .line 103
    if-eqz v5, :cond_4

    .line 104
    .line 105
    iput-object v4, v8, Lcom/google/android/gms/internal/ads/c8;->l:Landroid/content/Context;

    .line 106
    .line 107
    iput-object v7, v8, Lcom/google/android/gms/internal/ads/c8;->h:Ljava/lang/String;

    .line 108
    .line 109
    new-instance v4, Lcom/google/android/gms/internal/ads/b8;

    .line 110
    .line 111
    iget-object v7, v8, Lcom/google/android/gms/internal/ads/c8;->d:Lcom/google/android/gms/internal/ads/In;

    .line 112
    .line 113
    invoke-direct {v4, v8, v6, v7}, Lcom/google/android/gms/internal/ads/b8;-><init>(Lcom/google/android/gms/internal/ads/c8;Lcom/google/android/gms/internal/ads/b8;Lcom/google/android/gms/internal/ads/In;)V

    .line 114
    .line 115
    .line 116
    iput-object v4, v8, Lcom/google/android/gms/internal/ads/c8;->f:Lcom/google/android/gms/internal/ads/b8;

    .line 117
    .line 118
    invoke-virtual {v5, v4}, Lo/e;->a(Lcom/google/android/gms/internal/ads/b8;)Lo/j;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    iput-object v4, v8, Lcom/google/android/gms/internal/ads/c8;->g:Lo/j;

    .line 123
    .line 124
    if-nez v4, :cond_1

    .line 125
    .line 126
    const-string v4, "CustomTabsClient failed to create new session."

    .line 127
    .line 128
    invoke-static {v4}, Lp3/h;->d(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    new-instance v4, Landroid/util/Pair;

    .line 132
    .line 133
    const-string v5, "pe"

    .line 134
    .line 135
    const-string v6, "pact_init"

    .line 136
    .line 137
    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    new-array v5, v3, [Landroid/util/Pair;

    .line 141
    .line 142
    aput-object v4, v5, v2

    .line 143
    .line 144
    const-string v4, "pact_action"

    .line 145
    .line 146
    invoke-static {v7, v4, v5}, LU2/m;->m(Lcom/google/android/gms/internal/ads/In;Ljava/lang/String;[Landroid/util/Pair;)V

    .line 147
    .line 148
    .line 149
    sget-object v4, Lcom/google/android/gms/internal/ads/w8;->b:Lcom/google/android/gms/internal/ads/f8;

    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Ljava/lang/Boolean;

    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_2

    .line 162
    .line 163
    iget-object v4, v0, Lv3/j;->l0:Lv3/x;

    .line 164
    .line 165
    monitor-enter v4

    .line 166
    :try_start_0
    invoke-virtual {v4, v3}, Lv3/x;->c(Z)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v2}, Lv3/x;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .line 171
    .line 172
    monitor-exit v4

    .line 173
    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    monitor-exit v4

    .line 176
    throw v0

    .line 177
    :cond_2
    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/ads/w8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 178
    .line 179
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Ljava/lang/Boolean;

    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_3

    .line 190
    .line 191
    iget-object v0, v0, Lv3/j;->m0:Lv3/b;

    .line 192
    .line 193
    invoke-virtual {v0}, Lv3/b;->b()V

    .line 194
    .line 195
    .line 196
    :cond_3
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/c8;->g:Lo/j;

    .line 197
    .line 198
    new-instance v2, LR3/b;

    .line 199
    .line 200
    invoke-direct {v2, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    move-object v0, v2

    .line 204
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    .line 206
    .line 207
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 208
    .line 209
    .line 210
    :goto_2
    const/4 v0, 0x1

    .line 211
    goto/16 :goto_7

    .line 212
    .line 213
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 214
    .line 215
    const-string v1, "CustomTabsClient parameter is null"

    .line 216
    .line 217
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v0

    .line 221
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 222
    .line 223
    const-string v1, "Origin parameter is empty or null"

    .line 224
    .line 225
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v0

    .line 229
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 230
    .line 231
    const-string v1, "App Context parameter is null"

    .line 232
    .line 233
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v0

    .line 237
    :pswitch_1
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 238
    .line 239
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-static {v4}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/rc;->z3(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/sc;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 260
    .line 261
    .line 262
    move-object/from16 v0, p0

    .line 263
    .line 264
    check-cast v0, Lv3/j;

    .line 265
    .line 266
    invoke-virtual {v0, v2, v4, v5, v3}, Lv3/j;->D3(Ljava/util/ArrayList;LR3/a;Lcom/google/android/gms/internal/ads/sc;Z)V

    .line 267
    .line 268
    .line 269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :pswitch_2
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 274
    .line 275
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-static {v4}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/rc;->z3(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/sc;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 296
    .line 297
    .line 298
    move-object/from16 v0, p0

    .line 299
    .line 300
    check-cast v0, Lv3/j;

    .line 301
    .line 302
    invoke-virtual {v0, v2, v4, v5, v3}, Lv3/j;->E3(Ljava/util/ArrayList;LR3/a;Lcom/google/android/gms/internal/ads/sc;Z)V

    .line 303
    .line 304
    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    .line 307
    .line 308
    goto :goto_2

    .line 309
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-static {v2}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 318
    .line 319
    .line 320
    move-object/from16 v0, p0

    .line 321
    .line 322
    check-cast v0, Lv3/j;

    .line 323
    .line 324
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->N8:Lcom/google/android/gms/internal/ads/J7;

    .line 325
    .line 326
    sget-object v5, Ll3/q;->d:Ll3/q;

    .line 327
    .line 328
    iget-object v6, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 329
    .line 330
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    check-cast v4, Ljava/lang/Boolean;

    .line 335
    .line 336
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    if-nez v4, :cond_7

    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :cond_7
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->U6:Lcom/google/android/gms/internal/ads/J7;

    .line 345
    .line 346
    iget-object v5, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 347
    .line 348
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    check-cast v6, Ljava/lang/Boolean;

    .line 353
    .line 354
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 355
    .line 356
    .line 357
    move-result v6

    .line 358
    if-nez v6, :cond_8

    .line 359
    .line 360
    invoke-virtual {v0}, Lv3/j;->C3()V

    .line 361
    .line 362
    .line 363
    :cond_8
    invoke-static {v2}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    check-cast v2, Landroid/webkit/WebView;

    .line 368
    .line 369
    if-nez v2, :cond_9

    .line 370
    .line 371
    const-string v0, "The webView cannot be null."

    .line 372
    .line 373
    invoke-static {v0}, Lp3/h;->d(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_3

    .line 377
    .line 378
    :cond_9
    new-instance v15, Lv3/v;

    .line 379
    .line 380
    sget-object v6, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 381
    .line 382
    iget-object v14, v0, Lv3/j;->m0:Lv3/b;

    .line 383
    .line 384
    invoke-direct {v15, v2, v14, v6}, Lv3/v;-><init>(Landroid/webkit/WebView;Lv3/b;Lcom/google/android/gms/internal/ads/re;)V

    .line 385
    .line 386
    .line 387
    new-instance v13, Lv3/a;

    .line 388
    .line 389
    iget-object v12, v0, Lv3/j;->l0:Lv3/x;

    .line 390
    .line 391
    iget-object v11, v0, Lv3/j;->m0:Lv3/b;

    .line 392
    .line 393
    iget-object v8, v0, Lv3/j;->J:Lcom/google/android/gms/internal/ads/H4;

    .line 394
    .line 395
    iget-object v9, v0, Lv3/j;->R:Lcom/google/android/gms/internal/ads/In;

    .line 396
    .line 397
    iget-object v10, v0, Lv3/j;->S:Lcom/google/android/gms/internal/ads/ix;

    .line 398
    .line 399
    iget-object v7, v0, Lv3/j;->K:Lcom/google/android/gms/internal/ads/Zv;

    .line 400
    .line 401
    move-object v6, v13

    .line 402
    move-object/from16 v16, v7

    .line 403
    .line 404
    move-object v7, v2

    .line 405
    move-object/from16 v17, v11

    .line 406
    .line 407
    move-object/from16 v11, v16

    .line 408
    .line 409
    move-object v3, v13

    .line 410
    move-object/from16 v13, v17

    .line 411
    .line 412
    move-object/from16 v17, v14

    .line 413
    .line 414
    move-object v14, v15

    .line 415
    invoke-direct/range {v6 .. v14}, Lv3/a;-><init>(Landroid/webkit/WebView;Lcom/google/android/gms/internal/ads/H4;Lcom/google/android/gms/internal/ads/In;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Zv;Lv3/x;Lv3/b;Lv3/v;)V

    .line 416
    .line 417
    .line 418
    const-string v6, "gmaSdk"

    .line 419
    .line 420
    invoke-virtual {v2, v3, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->X8:Lcom/google/android/gms/internal/ads/J7;

    .line 424
    .line 425
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    check-cast v2, Ljava/lang/Boolean;

    .line 430
    .line 431
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    if-eqz v2, :cond_a

    .line 436
    .line 437
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 438
    .line 439
    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 440
    .line 441
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/le;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 442
    .line 443
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 444
    .line 445
    .line 446
    :cond_a
    sget-object v2, Lcom/google/android/gms/internal/ads/w8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 447
    .line 448
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    check-cast v2, Ljava/lang/Boolean;

    .line 453
    .line 454
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    if-eqz v2, :cond_b

    .line 459
    .line 460
    invoke-virtual/range {v17 .. v17}, Lv3/b;->b()V

    .line 461
    .line 462
    .line 463
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->Y8:Lcom/google/android/gms/internal/ads/J7;

    .line 464
    .line 465
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    check-cast v2, Ljava/lang/Integer;

    .line 470
    .line 471
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    sget-object v6, Lcom/google/android/gms/internal/ads/se;->d:Lcom/google/android/gms/internal/ads/pe;

    .line 476
    .line 477
    new-instance v7, Lv3/u;

    .line 478
    .line 479
    const/4 v3, 0x1

    .line 480
    invoke-direct {v7, v15, v3}, Lv3/u;-><init>(Lv3/v;I)V

    .line 481
    .line 482
    .line 483
    int-to-long v10, v2

    .line 484
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 485
    .line 486
    const-wide/16 v8, 0x0

    .line 487
    .line 488
    invoke-virtual/range {v6 .. v12}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 489
    .line 490
    .line 491
    :cond_b
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    check-cast v2, Ljava/lang/Boolean;

    .line 496
    .line 497
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    if-eqz v2, :cond_c

    .line 502
    .line 503
    invoke-virtual {v0}, Lv3/j;->C3()V

    .line 504
    .line 505
    .line 506
    :cond_c
    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_2

    .line 510
    .line 511
    :pswitch_4
    sget-object v2, Lcom/google/android/gms/internal/ads/yc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 512
    .line 513
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    check-cast v2, Lcom/google/android/gms/internal/ads/yc;

    .line 518
    .line 519
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 520
    .line 521
    .line 522
    move-object/from16 v0, p0

    .line 523
    .line 524
    check-cast v0, Lv3/j;

    .line 525
    .line 526
    iput-object v2, v0, Lv3/j;->O:Lcom/google/android/gms/internal/ads/yc;

    .line 527
    .line 528
    iget-object v0, v0, Lv3/j;->L:Lcom/google/android/gms/internal/ads/hw;

    .line 529
    .line 530
    const/4 v2, 0x1

    .line 531
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/hw;->c(I)V

    .line 532
    .line 533
    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    .line 536
    .line 537
    goto/16 :goto_2

    .line 538
    .line 539
    :pswitch_5
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 540
    .line 541
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    invoke-static {v4}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/rc;->z3(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/sc;

    .line 558
    .line 559
    .line 560
    move-result-object v5

    .line 561
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 562
    .line 563
    .line 564
    move-object/from16 v0, p0

    .line 565
    .line 566
    check-cast v0, Lv3/j;

    .line 567
    .line 568
    invoke-virtual {v0, v3, v4, v5, v2}, Lv3/j;->D3(Ljava/util/ArrayList;LR3/a;Lcom/google/android/gms/internal/ads/sc;Z)V

    .line 569
    .line 570
    .line 571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_2

    .line 575
    .line 576
    :pswitch_6
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 577
    .line 578
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    invoke-static {v4}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 587
    .line 588
    .line 589
    move-result-object v4

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 591
    .line 592
    .line 593
    move-result-object v5

    .line 594
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/rc;->z3(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/sc;

    .line 595
    .line 596
    .line 597
    move-result-object v5

    .line 598
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 599
    .line 600
    .line 601
    move-object/from16 v0, p0

    .line 602
    .line 603
    check-cast v0, Lv3/j;

    .line 604
    .line 605
    invoke-virtual {v0, v3, v4, v5, v2}, Lv3/j;->E3(Ljava/util/ArrayList;LR3/a;Lcom/google/android/gms/internal/ads/sc;Z)V

    .line 606
    .line 607
    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    .line 610
    .line 611
    goto/16 :goto_2

    .line 612
    .line 613
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    invoke-static {v2}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 618
    .line 619
    .line 620
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    .line 625
    .line 626
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 627
    .line 628
    .line 629
    goto/16 :goto_2

    .line 630
    .line 631
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    invoke-static {v2}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 636
    .line 637
    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    invoke-static {v2}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 643
    .line 644
    .line 645
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    .line 650
    .line 651
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 652
    .line 653
    .line 654
    goto/16 :goto_2

    .line 655
    .line 656
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 657
    .line 658
    .line 659
    move-result-object v3

    .line 660
    invoke-static {v3}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 661
    .line 662
    .line 663
    move-result-object v3

    .line 664
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 665
    .line 666
    .line 667
    move-object/from16 v0, p0

    .line 668
    .line 669
    check-cast v0, Lv3/j;

    .line 670
    .line 671
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->W6:Lcom/google/android/gms/internal/ads/J7;

    .line 672
    .line 673
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 674
    .line 675
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 676
    .line 677
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v5

    .line 681
    check-cast v5, Ljava/lang/Boolean;

    .line 682
    .line 683
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 684
    .line 685
    .line 686
    move-result v5

    .line 687
    if-nez v5, :cond_d

    .line 688
    .line 689
    goto :goto_5

    .line 690
    :cond_d
    invoke-static {v3}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v3

    .line 694
    check-cast v3, Landroid/view/MotionEvent;

    .line 695
    .line 696
    iget-object v5, v0, Lv3/j;->O:Lcom/google/android/gms/internal/ads/yc;

    .line 697
    .line 698
    if-nez v5, :cond_e

    .line 699
    .line 700
    goto :goto_4

    .line 701
    :cond_e
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/yc;->G:Landroid/view/View;

    .line 702
    .line 703
    :goto_4
    const/4 v5, 0x2

    .line 704
    new-array v5, v5, [I

    .line 705
    .line 706
    if-eqz v4, :cond_f

    .line 707
    .line 708
    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 709
    .line 710
    .line 711
    :cond_f
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    .line 712
    .line 713
    .line 714
    move-result v4

    .line 715
    float-to-int v4, v4

    .line 716
    aget v2, v5, v2

    .line 717
    .line 718
    sub-int/2addr v4, v2

    .line 719
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    .line 720
    .line 721
    .line 722
    move-result v2

    .line 723
    float-to-int v2, v2

    .line 724
    const/4 v6, 0x1

    .line 725
    aget v5, v5, v6

    .line 726
    .line 727
    sub-int/2addr v2, v5

    .line 728
    new-instance v5, Landroid/graphics/Point;

    .line 729
    .line 730
    invoke-direct {v5, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 731
    .line 732
    .line 733
    iput-object v5, v0, Lv3/j;->P:Landroid/graphics/Point;

    .line 734
    .line 735
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    .line 736
    .line 737
    .line 738
    move-result v2

    .line 739
    if-nez v2, :cond_10

    .line 740
    .line 741
    iget-object v2, v0, Lv3/j;->P:Landroid/graphics/Point;

    .line 742
    .line 743
    iput-object v2, v0, Lv3/j;->Q:Landroid/graphics/Point;

    .line 744
    .line 745
    :cond_10
    invoke-static {v3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    iget-object v3, v0, Lv3/j;->P:Landroid/graphics/Point;

    .line 750
    .line 751
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 752
    .line 753
    int-to-float v4, v4

    .line 754
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 755
    .line 756
    int-to-float v3, v3

    .line 757
    invoke-virtual {v2, v4, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 758
    .line 759
    .line 760
    iget-object v0, v0, Lv3/j;->J:Lcom/google/android/gms/internal/ads/H4;

    .line 761
    .line 762
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/H4;->b:Lcom/google/android/gms/internal/ads/E4;

    .line 763
    .line 764
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/E4;->zzk(Landroid/view/MotionEvent;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 768
    .line 769
    .line 770
    :goto_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    .line 772
    .line 773
    goto/16 :goto_2

    .line 774
    .line 775
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 776
    .line 777
    .line 778
    move-result-object v3

    .line 779
    invoke-static {v3}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 780
    .line 781
    .line 782
    move-result-object v3

    .line 783
    sget-object v5, Lcom/google/android/gms/internal/ads/de;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 784
    .line 785
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 786
    .line 787
    .line 788
    move-result-object v5

    .line 789
    check-cast v5, Lcom/google/android/gms/internal/ads/de;

    .line 790
    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 792
    .line 793
    .line 794
    move-result-object v6

    .line 795
    if-nez v6, :cond_11

    .line 796
    .line 797
    goto :goto_6

    .line 798
    :cond_11
    const-string v4, "com.google.android.gms.ads.internal.signals.ISignalCallback"

    .line 799
    .line 800
    invoke-interface {v6, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 801
    .line 802
    .line 803
    move-result-object v7

    .line 804
    instance-of v8, v7, Lcom/google/android/gms/internal/ads/Wd;

    .line 805
    .line 806
    if-eqz v8, :cond_12

    .line 807
    .line 808
    move-object v4, v7

    .line 809
    check-cast v4, Lcom/google/android/gms/internal/ads/Wd;

    .line 810
    .line 811
    goto :goto_6

    .line 812
    :cond_12
    new-instance v7, Lcom/google/android/gms/internal/ads/Vd;

    .line 813
    .line 814
    invoke-direct {v7, v6, v4, v2}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 815
    .line 816
    .line 817
    move-object v4, v7

    .line 818
    :goto_6
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 819
    .line 820
    .line 821
    move-object/from16 v0, p0

    .line 822
    .line 823
    check-cast v0, Lv3/j;

    .line 824
    .line 825
    invoke-virtual {v0, v3, v5, v4}, Lv3/j;->t1(LR3/a;Lcom/google/android/gms/internal/ads/de;Lcom/google/android/gms/internal/ads/Wd;)V

    .line 826
    .line 827
    .line 828
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    .line 830
    .line 831
    goto/16 :goto_2

    .line 832
    .line 833
    :goto_7
    return v0

    .line 834
    nop

    .line 835
    :pswitch_data_0
    .packed-switch 0x1
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
