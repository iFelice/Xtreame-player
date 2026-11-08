.class public abstract Lcom/google/android/gms/internal/ads/fr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pq;


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;)LD4/b;
    .locals 36

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Ov;->v:Lorg/json/JSONObject;

    .line 7
    .line 8
    const-string v4, "pubid"

    .line 9
    .line 10
    const-string v5, ""

    .line 11
    .line 12
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tv;->a:Lcom/google/android/gms/internal/ads/Xu;

    .line 17
    .line 18
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v4, Lcom/google/android/gms/internal/ads/Yv;

    .line 21
    .line 22
    new-instance v5, Lcom/google/android/gms/internal/ads/Xv;

    .line 23
    .line 24
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/Xv;->o:Landroidx/leanback/widget/j;

    .line 28
    .line 29
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Yv;->o:Landroidx/leanback/widget/j;

    .line 30
    .line 31
    iget v7, v7, Landroidx/leanback/widget/j;->H:I

    .line 32
    .line 33
    iput v7, v6, Landroidx/leanback/widget/j;->H:I

    .line 34
    .line 35
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 36
    .line 37
    iput-object v6, v5, Lcom/google/android/gms/internal/ads/Xv;->a:Ll3/b1;

    .line 38
    .line 39
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Yv;->e:Ll3/d1;

    .line 40
    .line 41
    iput-object v7, v5, Lcom/google/android/gms/internal/ads/Xv;->b:Ll3/d1;

    .line 42
    .line 43
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Yv;->t:Ll3/Y;

    .line 44
    .line 45
    iput-object v7, v5, Lcom/google/android/gms/internal/ads/Xv;->u:Ll3/Y;

    .line 46
    .line 47
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v7, v5, Lcom/google/android/gms/internal/ads/Xv;->c:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Yv;->a:Ll3/Y0;

    .line 52
    .line 53
    iput-object v7, v5, Lcom/google/android/gms/internal/ads/Xv;->d:Ll3/Y0;

    .line 54
    .line 55
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Yv;->g:Ljava/util/ArrayList;

    .line 56
    .line 57
    iput-object v7, v5, Lcom/google/android/gms/internal/ads/Xv;->f:Ljava/util/ArrayList;

    .line 58
    .line 59
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Yv;->h:Ljava/util/ArrayList;

    .line 60
    .line 61
    iput-object v7, v5, Lcom/google/android/gms/internal/ads/Xv;->g:Ljava/util/ArrayList;

    .line 62
    .line 63
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Yv;->i:Lcom/google/android/gms/internal/ads/M8;

    .line 64
    .line 65
    iput-object v7, v5, Lcom/google/android/gms/internal/ads/Xv;->h:Lcom/google/android/gms/internal/ads/M8;

    .line 66
    .line 67
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Yv;->j:Ll3/h1;

    .line 68
    .line 69
    iput-object v7, v5, Lcom/google/android/gms/internal/ads/Xv;->i:Ll3/h1;

    .line 70
    .line 71
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Yv;->l:Li3/a;

    .line 72
    .line 73
    iput-object v7, v5, Lcom/google/android/gms/internal/ads/Xv;->j:Li3/a;

    .line 74
    .line 75
    if-eqz v7, :cond_0

    .line 76
    .line 77
    iget-boolean v7, v7, Li3/a;->G:Z

    .line 78
    .line 79
    iput-boolean v7, v5, Lcom/google/android/gms/internal/ads/Xv;->e:Z

    .line 80
    .line 81
    :cond_0
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Yv;->m:Li3/d;

    .line 82
    .line 83
    iput-object v7, v5, Lcom/google/android/gms/internal/ads/Xv;->k:Li3/d;

    .line 84
    .line 85
    if-eqz v7, :cond_1

    .line 86
    .line 87
    iget-boolean v8, v7, Li3/d;->G:Z

    .line 88
    .line 89
    iput-boolean v8, v5, Lcom/google/android/gms/internal/ads/Xv;->e:Z

    .line 90
    .line 91
    iget-object v7, v7, Li3/d;->H:Ll3/U;

    .line 92
    .line 93
    iput-object v7, v5, Lcom/google/android/gms/internal/ads/Xv;->l:Ll3/U;

    .line 94
    .line 95
    :cond_1
    iget-boolean v7, v4, Lcom/google/android/gms/internal/ads/Yv;->p:Z

    .line 96
    .line 97
    iput-boolean v7, v5, Lcom/google/android/gms/internal/ads/Xv;->p:Z

    .line 98
    .line 99
    iget-boolean v7, v4, Lcom/google/android/gms/internal/ads/Yv;->q:Z

    .line 100
    .line 101
    iput-boolean v7, v5, Lcom/google/android/gms/internal/ads/Xv;->q:Z

    .line 102
    .line 103
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Yv;->c:Lcom/google/android/gms/internal/ads/hs;

    .line 104
    .line 105
    iput-object v7, v5, Lcom/google/android/gms/internal/ads/Xv;->r:Lcom/google/android/gms/internal/ads/hs;

    .line 106
    .line 107
    iget-boolean v7, v4, Lcom/google/android/gms/internal/ads/Yv;->r:Z

    .line 108
    .line 109
    iput-boolean v7, v5, Lcom/google/android/gms/internal/ads/Xv;->s:Z

    .line 110
    .line 111
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Yv;->s:Landroid/os/Bundle;

    .line 112
    .line 113
    iput-object v4, v5, Lcom/google/android/gms/internal/ads/Xv;->t:Landroid/os/Bundle;

    .line 114
    .line 115
    iput-object v3, v5, Lcom/google/android/gms/internal/ads/Xv;->c:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v3, v6, Ll3/b1;->S:Landroid/os/Bundle;

    .line 118
    .line 119
    if-nez v3, :cond_2

    .line 120
    .line 121
    new-instance v3, Landroid/os/Bundle;

    .line 122
    .line 123
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    new-instance v4, Landroid/os/Bundle;

    .line 128
    .line 129
    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 130
    .line 131
    .line 132
    move-object v3, v4

    .line 133
    :goto_0
    const-string v4, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    if-nez v7, :cond_3

    .line 140
    .line 141
    new-instance v7, Landroid/os/Bundle;

    .line 142
    .line 143
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 144
    .line 145
    .line 146
    move-object v11, v7

    .line 147
    goto :goto_1

    .line 148
    :cond_3
    new-instance v8, Landroid/os/Bundle;

    .line 149
    .line 150
    invoke-direct {v8, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 151
    .line 152
    .line 153
    move-object v11, v8

    .line 154
    :goto_1
    const-string v7, "gw"

    .line 155
    .line 156
    invoke-virtual {v11, v7, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/Ov;->v:Lorg/json/JSONObject;

    .line 160
    .line 161
    const-string v8, "mad_hac"

    .line 162
    .line 163
    const/4 v9, 0x0

    .line 164
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    if-eqz v10, :cond_4

    .line 169
    .line 170
    invoke-virtual {v11, v8, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    const-string v8, "adJson"

    .line 174
    .line 175
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    if-eqz v7, :cond_5

    .line 180
    .line 181
    const-string v8, "_ad"

    .line 182
    .line 183
    invoke-virtual {v11, v8, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_5
    const-string v7, "_noRefresh"

    .line 187
    .line 188
    invoke-virtual {v11, v7, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    .line 190
    .line 191
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/Ov;->D:Lorg/json/JSONObject;

    .line 192
    .line 193
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    if-eqz v10, :cond_7

    .line 202
    .line 203
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    check-cast v10, Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v7, v10, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    if-eqz v10, :cond_6

    .line 214
    .line 215
    invoke-virtual {v11, v10, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_7
    invoke-virtual {v3, v4, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 220
    .line 221
    .line 222
    new-instance v4, Ll3/b1;

    .line 223
    .line 224
    move-object v7, v4

    .line 225
    iget v8, v6, Ll3/b1;->e0:I

    .line 226
    .line 227
    move/from16 v33, v8

    .line 228
    .line 229
    iget-wide v8, v6, Ll3/b1;->f0:J

    .line 230
    .line 231
    move-wide/from16 v34, v8

    .line 232
    .line 233
    iget v8, v6, Ll3/b1;->G:I

    .line 234
    .line 235
    iget-wide v9, v6, Ll3/b1;->H:J

    .line 236
    .line 237
    iget v12, v6, Ll3/b1;->J:I

    .line 238
    .line 239
    iget-object v13, v6, Ll3/b1;->K:Ljava/util/List;

    .line 240
    .line 241
    iget-boolean v14, v6, Ll3/b1;->L:Z

    .line 242
    .line 243
    iget v15, v6, Ll3/b1;->M:I

    .line 244
    .line 245
    iget-boolean v2, v6, Ll3/b1;->N:Z

    .line 246
    .line 247
    move/from16 v16, v2

    .line 248
    .line 249
    iget-object v2, v6, Ll3/b1;->O:Ljava/lang/String;

    .line 250
    .line 251
    move-object/from16 v17, v2

    .line 252
    .line 253
    iget-object v2, v6, Ll3/b1;->P:Ll3/V0;

    .line 254
    .line 255
    move-object/from16 v18, v2

    .line 256
    .line 257
    iget-object v2, v6, Ll3/b1;->Q:Landroid/location/Location;

    .line 258
    .line 259
    move-object/from16 v19, v2

    .line 260
    .line 261
    iget-object v2, v6, Ll3/b1;->R:Ljava/lang/String;

    .line 262
    .line 263
    move-object/from16 v20, v2

    .line 264
    .line 265
    iget-object v2, v6, Ll3/b1;->T:Landroid/os/Bundle;

    .line 266
    .line 267
    move-object/from16 v22, v2

    .line 268
    .line 269
    iget-object v2, v6, Ll3/b1;->U:Ljava/util/List;

    .line 270
    .line 271
    move-object/from16 v23, v2

    .line 272
    .line 273
    iget-object v2, v6, Ll3/b1;->V:Ljava/lang/String;

    .line 274
    .line 275
    move-object/from16 v24, v2

    .line 276
    .line 277
    iget-object v2, v6, Ll3/b1;->W:Ljava/lang/String;

    .line 278
    .line 279
    move-object/from16 v25, v2

    .line 280
    .line 281
    iget-boolean v2, v6, Ll3/b1;->X:Z

    .line 282
    .line 283
    move/from16 v26, v2

    .line 284
    .line 285
    iget-object v2, v6, Ll3/b1;->Y:Ll3/L;

    .line 286
    .line 287
    move-object/from16 v27, v2

    .line 288
    .line 289
    iget v2, v6, Ll3/b1;->Z:I

    .line 290
    .line 291
    move/from16 v28, v2

    .line 292
    .line 293
    iget-object v2, v6, Ll3/b1;->a0:Ljava/lang/String;

    .line 294
    .line 295
    move-object/from16 v29, v2

    .line 296
    .line 297
    iget-object v2, v6, Ll3/b1;->b0:Ljava/util/List;

    .line 298
    .line 299
    move-object/from16 v30, v2

    .line 300
    .line 301
    iget v2, v6, Ll3/b1;->c0:I

    .line 302
    .line 303
    move/from16 v31, v2

    .line 304
    .line 305
    iget-object v2, v6, Ll3/b1;->d0:Ljava/lang/String;

    .line 306
    .line 307
    move-object/from16 v32, v2

    .line 308
    .line 309
    move-object/from16 v21, v3

    .line 310
    .line 311
    invoke-direct/range {v7 .. v35}, Ll3/b1;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Ll3/V0;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLl3/L;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V

    .line 312
    .line 313
    .line 314
    iput-object v4, v5, Lcom/google/android/gms/internal/ads/Xv;->a:Ll3/b1;

    .line 315
    .line 316
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/Xv;->a()Lcom/google/android/gms/internal/ads/Yv;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    new-instance v3, Landroid/os/Bundle;

    .line 321
    .line 322
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 323
    .line 324
    .line 325
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 326
    .line 327
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v4, Lcom/google/android/gms/internal/ads/Qv;

    .line 330
    .line 331
    new-instance v5, Landroid/os/Bundle;

    .line 332
    .line 333
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 334
    .line 335
    .line 336
    new-instance v6, Ljava/util/ArrayList;

    .line 337
    .line 338
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Qv;->a:Ljava/util/List;

    .line 339
    .line 340
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 341
    .line 342
    .line 343
    const-string v7, "nofill_urls"

    .line 344
    .line 345
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 346
    .line 347
    .line 348
    const-string v6, "refresh_interval"

    .line 349
    .line 350
    iget v7, v4, Lcom/google/android/gms/internal/ads/Qv;->c:I

    .line 351
    .line 352
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 353
    .line 354
    .line 355
    const-string v6, "gws_query_id"

    .line 356
    .line 357
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Qv;->b:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    const-string v4, "parent_common_config"

    .line 363
    .line 364
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 365
    .line 366
    .line 367
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tv;->a:Lcom/google/android/gms/internal/ads/Xu;

    .line 368
    .line 369
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v4, Lcom/google/android/gms/internal/ads/Yv;

    .line 372
    .line 373
    new-instance v5, Landroid/os/Bundle;

    .line 374
    .line 375
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 376
    .line 377
    .line 378
    const-string v6, "initial_ad_unit_id"

    .line 379
    .line 380
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 381
    .line 382
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Ov;->w:Ljava/lang/String;

    .line 386
    .line 387
    const-string v6, "allocation_id"

    .line 388
    .line 389
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Ov;->F:Ljava/lang/String;

    .line 393
    .line 394
    const-string v6, "ad_source_name"

    .line 395
    .line 396
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    new-instance v4, Ljava/util/ArrayList;

    .line 400
    .line 401
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Ov;->c:Ljava/util/List;

    .line 402
    .line 403
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 404
    .line 405
    .line 406
    const-string v6, "click_urls"

    .line 407
    .line 408
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 409
    .line 410
    .line 411
    new-instance v4, Ljava/util/ArrayList;

    .line 412
    .line 413
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Ov;->d:Ljava/util/List;

    .line 414
    .line 415
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 416
    .line 417
    .line 418
    const-string v6, "imp_urls"

    .line 419
    .line 420
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 421
    .line 422
    .line 423
    new-instance v4, Ljava/util/ArrayList;

    .line 424
    .line 425
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Ov;->p:Ljava/util/List;

    .line 426
    .line 427
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 428
    .line 429
    .line 430
    const-string v6, "manual_tracking_urls"

    .line 431
    .line 432
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 433
    .line 434
    .line 435
    new-instance v4, Ljava/util/ArrayList;

    .line 436
    .line 437
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Ov;->m:Ljava/util/List;

    .line 438
    .line 439
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 440
    .line 441
    .line 442
    const-string v6, "fill_urls"

    .line 443
    .line 444
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 445
    .line 446
    .line 447
    new-instance v4, Ljava/util/ArrayList;

    .line 448
    .line 449
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Ov;->g:Ljava/util/List;

    .line 450
    .line 451
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 452
    .line 453
    .line 454
    const-string v6, "video_start_urls"

    .line 455
    .line 456
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 457
    .line 458
    .line 459
    new-instance v4, Ljava/util/ArrayList;

    .line 460
    .line 461
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Ov;->h:Ljava/util/List;

    .line 462
    .line 463
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 464
    .line 465
    .line 466
    const-string v6, "video_reward_urls"

    .line 467
    .line 468
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 469
    .line 470
    .line 471
    new-instance v4, Ljava/util/ArrayList;

    .line 472
    .line 473
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Ov;->i:Ljava/util/List;

    .line 474
    .line 475
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 476
    .line 477
    .line 478
    const-string v6, "video_complete_urls"

    .line 479
    .line 480
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 481
    .line 482
    .line 483
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Ov;->j:Ljava/lang/String;

    .line 484
    .line 485
    const-string v6, "transaction_id"

    .line 486
    .line 487
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Ov;->k:Ljava/lang/String;

    .line 491
    .line 492
    const-string v6, "valid_from_timestamp"

    .line 493
    .line 494
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/Ov;->P:Z

    .line 498
    .line 499
    const-string v6, "is_closable_area_disabled"

    .line 500
    .line 501
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 502
    .line 503
    .line 504
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Ov;->o0:Ljava/lang/String;

    .line 505
    .line 506
    const-string v6, "recursive_server_response_data"

    .line 507
    .line 508
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Ov;->l:Lcom/google/android/gms/internal/ads/ld;

    .line 512
    .line 513
    if-eqz v4, :cond_8

    .line 514
    .line 515
    new-instance v6, Landroid/os/Bundle;

    .line 516
    .line 517
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 518
    .line 519
    .line 520
    iget v7, v4, Lcom/google/android/gms/internal/ads/ld;->H:I

    .line 521
    .line 522
    const-string v8, "rb_amount"

    .line 523
    .line 524
    invoke-virtual {v6, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 525
    .line 526
    .line 527
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/ld;->G:Ljava/lang/String;

    .line 528
    .line 529
    const-string v7, "rb_type"

    .line 530
    .line 531
    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    const/4 v4, 0x1

    .line 535
    new-array v4, v4, [Landroid/os/Bundle;

    .line 536
    .line 537
    const/4 v7, 0x0

    .line 538
    aput-object v6, v4, v7

    .line 539
    .line 540
    const-string v6, "rewards"

    .line 541
    .line 542
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 543
    .line 544
    .line 545
    :cond_8
    const-string v4, "parent_ad_config"

    .line 546
    .line 547
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 548
    .line 549
    .line 550
    move-object/from16 v4, p0

    .line 551
    .line 552
    invoke-virtual {v4, v2, v3, v1, v0}, Lcom/google/android/gms/internal/ads/fr;->c(Lcom/google/android/gms/internal/ads/Yv;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Tv;)Lcom/google/android/gms/internal/ads/Fw;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;)Z
    .locals 1

    .line 1
    const-string p1, "pubid"

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/Ov;->v:Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public abstract c(Lcom/google/android/gms/internal/ads/Yv;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Tv;)Lcom/google/android/gms/internal/ads/Fw;
.end method
