.class public final Lcom/google/android/gms/internal/ads/w4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/w4;->G:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/w4;->G:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/google/android/gms/internal/ads/w4;->G:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Vx;->i:Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/Vx;->j:Lcom/google/android/gms/internal/ads/w4;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/Vx;->i:Landroid/os/Handler;

    .line 19
    .line 20
    sget-object v2, Lcom/google/android/gms/internal/ads/Vx;->k:Lcom/google/android/gms/internal/ads/w4;

    .line 21
    .line 22
    const-wide/16 v3, 0xc8

    .line 23
    .line 24
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_1
    sget-object v2, Lcom/google/android/gms/internal/ads/Vx;->g:Lcom/google/android/gms/internal/ads/Vx;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/Vx;->b:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/google/android/gms/internal/ads/Hx;->c:Lcom/google/android/gms/internal/ads/Hx;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Hx;->b:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/google/android/gms/internal/ads/xx;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/Vx;->f:J

    .line 68
    .line 69
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/Vx;->d:Lcom/google/android/gms/internal/ads/Ux;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    sget-object v0, Lcom/google/android/gms/internal/ads/Hx;->c:Lcom/google/android/gms/internal/ads/Hx;

    .line 75
    .line 76
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/Ux;->b:Ljava/util/HashMap;

    .line 77
    .line 78
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/Ux;->c:Ljava/util/HashMap;

    .line 79
    .line 80
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/Ux;->d:Ljava/util/HashMap;

    .line 81
    .line 82
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/Ux;->g:Ljava/lang/Object;

    .line 83
    .line 84
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/Ux;->f:Ljava/io/Serializable;

    .line 85
    .line 86
    if-eqz v0, :cond_e

    .line 87
    .line 88
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Hx;->b:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_e

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Lcom/google/android/gms/internal/ads/xx;

    .line 109
    .line 110
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/xx;->c:Lcom/google/android/gms/internal/ads/ay;

    .line 111
    .line 112
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    check-cast v7, Landroid/view/View;

    .line 117
    .line 118
    iget-boolean v8, v6, Lcom/google/android/gms/internal/ads/xx;->e:Z

    .line 119
    .line 120
    if-eqz v8, :cond_2

    .line 121
    .line 122
    iget-boolean v8, v6, Lcom/google/android/gms/internal/ads/xx;->f:Z

    .line 123
    .line 124
    if-nez v8, :cond_2

    .line 125
    .line 126
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/xx;->g:Ljava/lang/String;

    .line 127
    .line 128
    if-eqz v7, :cond_d

    .line 129
    .line 130
    invoke-virtual {v7}, Landroid/view/View;->isAttachedToWindow()Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    const-string v10, "noWindowFocus"

    .line 135
    .line 136
    if-nez v9, :cond_3

    .line 137
    .line 138
    const-string v9, "notAttached"

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->hasWindowFocus()Z

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    iget-object v15, v3, Lcom/google/android/gms/internal/ads/Ux;->i:Ljava/lang/Object;

    .line 146
    .line 147
    if-eqz v9, :cond_4

    .line 148
    .line 149
    check-cast v15, Ljava/util/Map;

    .line 150
    .line 151
    invoke-interface {v15, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    check-cast v15, Ljava/util/Map;

    .line 158
    .line 159
    invoke-interface {v15, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-eqz v9, :cond_5

    .line 164
    .line 165
    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    check-cast v9, Ljava/lang/Boolean;

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_5
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-interface {v15, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    :goto_2
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-eqz v9, :cond_6

    .line 182
    .line 183
    move-object v9, v10

    .line 184
    goto :goto_4

    .line 185
    :cond_6
    new-instance v9, Ljava/util/HashSet;

    .line 186
    .line 187
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 188
    .line 189
    .line 190
    move-object v15, v7

    .line 191
    :goto_3
    if-eqz v15, :cond_9

    .line 192
    .line 193
    invoke-static {v15}, LU4/a;->i(Landroid/view/View;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v16

    .line 197
    if-eqz v16, :cond_7

    .line 198
    .line 199
    move-object/from16 v9, v16

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_7
    invoke-virtual {v9, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 206
    .line 207
    .line 208
    move-result-object v15

    .line 209
    instance-of v14, v15, Landroid/view/View;

    .line 210
    .line 211
    if-eqz v14, :cond_8

    .line 212
    .line 213
    check-cast v15, Landroid/view/View;

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_8
    const/4 v15, 0x0

    .line 217
    goto :goto_3

    .line 218
    :cond_9
    move-object v14, v13

    .line 219
    check-cast v14, Ljava/util/HashSet;

    .line 220
    .line 221
    invoke-virtual {v14, v9}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 222
    .line 223
    .line 224
    const/4 v9, 0x0

    .line 225
    :goto_4
    if-nez v9, :cond_c

    .line 226
    .line 227
    move-object v9, v5

    .line 228
    check-cast v9, Ljava/util/HashSet;

    .line 229
    .line 230
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/Ux;->a:Ljava/util/HashMap;

    .line 234
    .line 235
    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/xx;->b:Lcom/google/android/gms/internal/ads/Lx;

    .line 239
    .line 240
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/Lx;->a:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    :cond_a
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    if-eqz v7, :cond_2

    .line 251
    .line 252
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    check-cast v7, Lcom/google/android/gms/internal/ads/Kx;

    .line 257
    .line 258
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/Kx;->a:Lcom/google/android/gms/internal/ads/ay;

    .line 259
    .line 260
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    check-cast v9, Landroid/view/View;

    .line 265
    .line 266
    if-eqz v9, :cond_a

    .line 267
    .line 268
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    check-cast v10, Lcom/google/android/gms/internal/ads/Tx;

    .line 273
    .line 274
    if-eqz v10, :cond_b

    .line 275
    .line 276
    iget-object v7, v10, Lcom/google/android/gms/internal/ads/Tx;->b:Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_b
    new-instance v10, Lcom/google/android/gms/internal/ads/Tx;

    .line 283
    .line 284
    invoke-direct {v10, v7, v8}, Lcom/google/android/gms/internal/ads/Tx;-><init>(Lcom/google/android/gms/internal/ads/Kx;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_c
    if-eq v9, v10, :cond_2

    .line 292
    .line 293
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/Ux;->h:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v6, Ljava/util/HashSet;

    .line 296
    .line 297
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    invoke-virtual {v11, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v12, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    goto/16 :goto_1

    .line 307
    .line 308
    :cond_d
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/Ux;->h:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v6, Ljava/util/HashSet;

    .line 311
    .line 312
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    const-string v6, "noAdView"

    .line 316
    .line 317
    invoke-virtual {v12, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    goto/16 :goto_1

    .line 321
    .line 322
    :cond_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 323
    .line 324
    .line 325
    move-result-wide v14

    .line 326
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/Vx;->c:Lcom/google/android/gms/internal/ads/Om;

    .line 327
    .line 328
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 329
    .line 330
    move-object v7, v0

    .line 331
    check-cast v7, Lcom/google/android/gms/internal/ads/Xu;

    .line 332
    .line 333
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/Ux;->h:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v0, Ljava/util/HashSet;

    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    iget-object v10, v2, Lcom/google/android/gms/internal/ads/Vx;->e:Lcom/google/android/gms/internal/ads/Om;

    .line 342
    .line 343
    if-lez v0, :cond_10

    .line 344
    .line 345
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/Ux;->h:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v0, Ljava/util/HashSet;

    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_10

    .line 358
    .line 359
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    move-object v9, v0

    .line 364
    check-cast v9, Ljava/lang/String;

    .line 365
    .line 366
    move-object/from16 v24, v8

    .line 367
    .line 368
    const/4 v1, 0x0

    .line 369
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/Xu;->g(Landroid/view/View;)Lorg/json/JSONObject;

    .line 370
    .line 371
    .line 372
    move-result-object v8

    .line 373
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    check-cast v0, Landroid/view/View;

    .line 378
    .line 379
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v1, Lcom/google/android/gms/internal/ads/Xu;

    .line 382
    .line 383
    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v17

    .line 387
    move-object/from16 v25, v6

    .line 388
    .line 389
    move-object/from16 v6, v17

    .line 390
    .line 391
    check-cast v6, Ljava/lang/String;

    .line 392
    .line 393
    if-eqz v6, :cond_f

    .line 394
    .line 395
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Xu;->g(Landroid/view/View;)Lorg/json/JSONObject;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    sget-object v0, Lcom/google/android/gms/internal/ads/Sx;->a:Landroid/view/WindowManager;

    .line 400
    .line 401
    :try_start_0
    const-string v0, "adSessionId"

    .line 402
    .line 403
    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .line 405
    .line 406
    move-object/from16 v26, v12

    .line 407
    .line 408
    goto :goto_7

    .line 409
    :catch_0
    move-exception v0

    .line 410
    move-object/from16 v26, v12

    .line 411
    .line 412
    const-string v12, "Error with setting ad session id"

    .line 413
    .line 414
    invoke-static {v12, v0}, Lo3/r;->s(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 415
    .line 416
    .line 417
    :goto_7
    :try_start_1
    const-string v0, "notVisibleReason"

    .line 418
    .line 419
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 420
    .line 421
    .line 422
    goto :goto_8

    .line 423
    :catch_1
    move-exception v0

    .line 424
    const-string v6, "Error with setting not visible reason"

    .line 425
    .line 426
    invoke-static {v6, v0}, Lo3/r;->s(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 427
    .line 428
    .line 429
    :goto_8
    invoke-static {v8, v1}, Lcom/google/android/gms/internal/ads/Sx;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 430
    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_f
    move-object/from16 v26, v12

    .line 434
    .line 435
    :goto_9
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/Sx;->d(Lorg/json/JSONObject;)V

    .line 436
    .line 437
    .line 438
    new-instance v0, Ljava/util/HashSet;

    .line 439
    .line 440
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    new-instance v1, Lcom/google/android/gms/internal/ads/Zx;

    .line 450
    .line 451
    const/16 v23, 0x0

    .line 452
    .line 453
    move-object/from16 v17, v1

    .line 454
    .line 455
    move-object/from16 v18, v10

    .line 456
    .line 457
    move-object/from16 v19, v0

    .line 458
    .line 459
    move-object/from16 v20, v8

    .line 460
    .line 461
    move-wide/from16 v21, v14

    .line 462
    .line 463
    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/Zx;-><init>(Lcom/google/android/gms/internal/ads/Om;Ljava/util/HashSet;Lorg/json/JSONObject;JI)V

    .line 464
    .line 465
    .line 466
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 467
    .line 468
    check-cast v0, Lcom/google/android/gms/internal/ads/xc;

    .line 469
    .line 470
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xc;->p(Lcom/google/android/gms/internal/ads/Xx;)V

    .line 471
    .line 472
    .line 473
    move-object/from16 v1, p0

    .line 474
    .line 475
    move-object/from16 v8, v24

    .line 476
    .line 477
    move-object/from16 v6, v25

    .line 478
    .line 479
    move-object/from16 v12, v26

    .line 480
    .line 481
    goto/16 :goto_6

    .line 482
    .line 483
    :cond_10
    move-object/from16 v26, v12

    .line 484
    .line 485
    move-object v0, v5

    .line 486
    check-cast v0, Ljava/util/HashSet;

    .line 487
    .line 488
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    if-lez v1, :cond_11

    .line 493
    .line 494
    const/4 v1, 0x0

    .line 495
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/Xu;->g(Landroid/view/View;)Lorg/json/JSONObject;

    .line 496
    .line 497
    .line 498
    move-result-object v20

    .line 499
    const/4 v9, 0x1

    .line 500
    const/4 v1, 0x0

    .line 501
    const/4 v6, 0x0

    .line 502
    move-object v5, v2

    .line 503
    move-object/from16 v8, v20

    .line 504
    .line 505
    move-object v12, v10

    .line 506
    move v10, v1

    .line 507
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/Vx;->c(Landroid/view/View;Lcom/google/android/gms/internal/ads/Ox;Lorg/json/JSONObject;IZ)V

    .line 508
    .line 509
    .line 510
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Sx;->d(Lorg/json/JSONObject;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    .line 515
    .line 516
    new-instance v1, Lcom/google/android/gms/internal/ads/Zx;

    .line 517
    .line 518
    const/16 v23, 0x1

    .line 519
    .line 520
    move-object/from16 v17, v1

    .line 521
    .line 522
    move-object/from16 v18, v12

    .line 523
    .line 524
    move-object/from16 v19, v0

    .line 525
    .line 526
    move-wide/from16 v21, v14

    .line 527
    .line 528
    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/Zx;-><init>(Lcom/google/android/gms/internal/ads/Om;Ljava/util/HashSet;Lorg/json/JSONObject;JI)V

    .line 529
    .line 530
    .line 531
    iget-object v5, v12, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 532
    .line 533
    check-cast v5, Lcom/google/android/gms/internal/ads/xc;

    .line 534
    .line 535
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/xc;->p(Lcom/google/android/gms/internal/ads/Xx;)V

    .line 536
    .line 537
    .line 538
    goto :goto_a

    .line 539
    :cond_11
    move-object v12, v10

    .line 540
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/Om;->l()V

    .line 541
    .line 542
    .line 543
    :goto_a
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/Ux;->a:Ljava/util/HashMap;

    .line 544
    .line 545
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 552
    .line 553
    .line 554
    check-cast v13, Ljava/util/HashSet;

    .line 555
    .line 556
    invoke-virtual {v13}, Ljava/util/HashSet;->clear()V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 560
    .line 561
    .line 562
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/Ux;->h:Ljava/lang/Object;

    .line 563
    .line 564
    check-cast v0, Ljava/util/HashSet;

    .line 565
    .line 566
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 567
    .line 568
    .line 569
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->clear()V

    .line 570
    .line 571
    .line 572
    const/4 v0, 0x0

    .line 573
    iput-boolean v0, v3, Lcom/google/android/gms/internal/ads/Ux;->e:Z

    .line 574
    .line 575
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 576
    .line 577
    .line 578
    move-result-wide v0

    .line 579
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/Vx;->f:J

    .line 580
    .line 581
    sub-long/2addr v0, v3

    .line 582
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Vx;->a:Ljava/util/ArrayList;

    .line 583
    .line 584
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    if-lez v3, :cond_13

    .line 589
    .line 590
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    if-nez v3, :cond_12

    .line 599
    .line 600
    goto :goto_b

    .line 601
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    invoke-static {v2}, LA0/O;->I(Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 609
    .line 610
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 611
    .line 612
    .line 613
    const/4 v1, 0x0

    .line 614
    throw v1

    .line 615
    :cond_13
    :goto_b
    return-void

    .line 616
    :pswitch_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 621
    .line 622
    .line 623
    return-void

    .line 624
    :pswitch_3
    const-string v0, "Pinged SB successfully."

    .line 625
    .line 626
    invoke-static {v0}, LS3/e;->w(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    return-void

    .line 630
    :pswitch_4
    :try_start_2
    const-string v0, "MD5"

    .line 631
    .line 632
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    sput-object v0, Lcom/google/android/gms/internal/ads/x4;->b:Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 637
    .line 638
    sget-object v0, Lcom/google/android/gms/internal/ads/x4;->e:Ljava/util/concurrent/CountDownLatch;

    .line 639
    .line 640
    :goto_c
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 641
    .line 642
    .line 643
    goto :goto_d

    .line 644
    :catchall_0
    move-exception v0

    .line 645
    sget-object v1, Lcom/google/android/gms/internal/ads/x4;->e:Ljava/util/concurrent/CountDownLatch;

    .line 646
    .line 647
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 648
    .line 649
    .line 650
    throw v0

    .line 651
    :catch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/x4;->e:Ljava/util/concurrent/CountDownLatch;

    .line 652
    .line 653
    goto :goto_c

    .line 654
    :goto_d
    return-void

    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
