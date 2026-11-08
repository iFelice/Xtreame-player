.class public final Lcom/google/android/gms/internal/ads/Sn;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/Lg;

.field public final H:Lcom/google/android/gms/internal/ads/Qn;

.field public final I:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Lg;Lcom/google/android/gms/internal/ads/Qn;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.h5.client.IH5AdsManager"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Sn;->I:Ljava/util/HashMap;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sn;->G:Lcom/google/android/gms/internal/ads/Lg;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Sn;->H:Lcom/google/android/gms/internal/ads/Qn;

    .line 16
    .line 17
    return-void
.end method

.method public static z3(Ljava/util/HashMap;)Ll3/b1;
    .locals 36

    .line 1
    new-instance v4, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v6, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v15, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v22, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v23, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v30, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v0, "ad_request"

    .line 32
    .line 33
    move-object/from16 v1, p0

    .line 34
    .line 35
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    const/16 v21, -0x1

    .line 43
    .line 44
    const/16 v24, 0x0

    .line 45
    .line 46
    const v27, 0xea60

    .line 47
    .line 48
    .line 49
    const-wide/16 v34, 0x0

    .line 50
    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    new-instance v29, Ll3/b1;

    .line 54
    .line 55
    move-object/from16 v0, v29

    .line 56
    .line 57
    const/16 v19, 0x0

    .line 58
    .line 59
    const/16 v25, 0x0

    .line 60
    .line 61
    const/16 v1, 0x8

    .line 62
    .line 63
    const-wide/16 v2, -0x1

    .line 64
    .line 65
    const/4 v5, -0x1

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v11, 0x0

    .line 69
    const/4 v12, 0x0

    .line 70
    const/4 v13, 0x0

    .line 71
    const/16 v17, 0x0

    .line 72
    .line 73
    const/16 v18, 0x0

    .line 74
    .line 75
    const/16 v20, 0x0

    .line 76
    .line 77
    const/16 v26, 0x0

    .line 78
    .line 79
    move/from16 v8, v21

    .line 80
    .line 81
    move-object v14, v15

    .line 82
    move-object/from16 v15, v22

    .line 83
    .line 84
    move-object/from16 v16, v23

    .line 85
    .line 86
    move-object/from16 v22, v24

    .line 87
    .line 88
    move-object/from16 v23, v30

    .line 89
    .line 90
    move/from16 v24, v27

    .line 91
    .line 92
    move-wide/from16 v27, v34

    .line 93
    .line 94
    invoke-direct/range {v0 .. v28}, Ll3/b1;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Ll3/V0;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLl3/L;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V

    .line 95
    .line 96
    .line 97
    return-object v29

    .line 98
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v1, Landroid/util/JsonReader;

    .line 103
    .line 104
    new-instance v2, Ljava/io/StringReader;

    .line 105
    .line 106
    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 110
    .line 111
    .line 112
    :try_start_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    const/4 v0, -0x1

    .line 116
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_7

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 127
    .line 128
    .line 129
    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    const/4 v5, 0x0

    .line 131
    const/4 v8, 0x1

    .line 132
    sparse-switch v3, :sswitch_data_0

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :sswitch_0
    const-string v3, "tagForChildDirectedTreatment"

    .line 137
    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_2

    .line 143
    .line 144
    const/4 v2, 0x3

    .line 145
    goto :goto_2

    .line 146
    :sswitch_1
    const-string v3, "maxAdContentRating"

    .line 147
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_2

    .line 153
    .line 154
    const/4 v2, 0x5

    .line 155
    goto :goto_2

    .line 156
    :sswitch_2
    const-string v3, "keywords"

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_2

    .line 163
    .line 164
    const/4 v2, 0x1

    .line 165
    goto :goto_2

    .line 166
    :sswitch_3
    const-string v3, "httpTimeoutMillis"

    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_2

    .line 173
    .line 174
    const/4 v2, 0x6

    .line 175
    goto :goto_2

    .line 176
    :sswitch_4
    const-string v3, "tagForUnderAgeOfConsent"

    .line 177
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_2

    .line 183
    .line 184
    const/4 v2, 0x4

    .line 185
    goto :goto_2

    .line 186
    :sswitch_5
    const-string v3, "isTestDevice"

    .line 187
    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_2

    .line 193
    .line 194
    const/4 v2, 0x2

    .line 195
    goto :goto_2

    .line 196
    :sswitch_6
    const-string v3, "extras"

    .line 197
    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_2

    .line 203
    .line 204
    const/4 v2, 0x0

    .line 205
    goto :goto_2

    .line 206
    :cond_2
    :goto_1
    const/4 v2, -0x1

    .line 207
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 208
    .line 209
    .line 210
    :try_start_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    .line 211
    .line 212
    .line 213
    goto :goto_0

    .line 214
    :pswitch_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    .line 215
    .line 216
    .line 217
    move-result v27

    .line 218
    goto :goto_0

    .line 219
    :pswitch_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    sget-object v3, Lf3/o;->f:Ljava/util/List;

    .line 224
    .line 225
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eqz v3, :cond_1

    .line 230
    .line 231
    move-object/from16 v24, v2

    .line 232
    .line 233
    goto :goto_0

    .line 234
    :pswitch_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_3

    .line 239
    .line 240
    const/4 v0, 0x1

    .line 241
    goto :goto_0

    .line 242
    :cond_3
    const/4 v0, 0x0

    .line 243
    goto :goto_0

    .line 244
    :pswitch_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_4

    .line 249
    .line 250
    const/16 v21, 0x1

    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_4
    const/16 v21, 0x0

    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :pswitch_4
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :pswitch_5
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 265
    .line 266
    .line 267
    new-instance v2, Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .line 271
    .line 272
    :goto_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-eqz v3, :cond_5

    .line 277
    .line 278
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_5
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    .line 287
    .line 288
    .line 289
    move-object v6, v2

    .line 290
    goto/16 :goto_0

    .line 291
    .line 292
    :pswitch_6
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 293
    .line 294
    .line 295
    new-instance v2, Landroid/os/Bundle;

    .line 296
    .line 297
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 298
    .line 299
    .line 300
    :goto_4
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    if-eqz v3, :cond_6

    .line 305
    .line 306
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    goto :goto_4

    .line 318
    :cond_6
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    .line 319
    .line 320
    .line 321
    move-object v4, v2

    .line 322
    goto/16 :goto_0

    .line 323
    .line 324
    :cond_7
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 325
    .line 326
    .line 327
    :goto_5
    move/from16 v28, v0

    .line 328
    .line 329
    move-object v13, v6

    .line 330
    move v14, v7

    .line 331
    move-object/from16 v29, v24

    .line 332
    .line 333
    move/from16 v31, v27

    .line 334
    .line 335
    goto :goto_6

    .line 336
    :catch_0
    const/4 v0, -0x1

    .line 337
    :catch_1
    const-string v1, "Ad Request json was malformed, parsing ended early."

    .line 338
    .line 339
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    goto :goto_5

    .line 343
    :goto_6
    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 344
    .line 345
    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    if-nez v1, :cond_8

    .line 350
    .line 351
    invoke-virtual {v15, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 352
    .line 353
    .line 354
    move-object v11, v4

    .line 355
    goto :goto_7

    .line 356
    :cond_8
    move-object v11, v1

    .line 357
    :goto_7
    new-instance v0, Ll3/b1;

    .line 358
    .line 359
    move-object v7, v0

    .line 360
    const/16 v8, 0x8

    .line 361
    .line 362
    const-wide/16 v9, -0x1

    .line 363
    .line 364
    const/4 v12, -0x1

    .line 365
    const/16 v16, 0x0

    .line 366
    .line 367
    const/16 v17, 0x0

    .line 368
    .line 369
    const/16 v18, 0x0

    .line 370
    .line 371
    const/16 v19, 0x0

    .line 372
    .line 373
    const/16 v20, 0x0

    .line 374
    .line 375
    const/16 v24, 0x0

    .line 376
    .line 377
    const/16 v25, 0x0

    .line 378
    .line 379
    const/16 v26, 0x0

    .line 380
    .line 381
    const/16 v27, 0x0

    .line 382
    .line 383
    const/16 v32, 0x0

    .line 384
    .line 385
    const/16 v33, 0x0

    .line 386
    .line 387
    move-object v1, v15

    .line 388
    move/from16 v15, v21

    .line 389
    .line 390
    move-object/from16 v21, v1

    .line 391
    .line 392
    invoke-direct/range {v7 .. v35}, Ll3/b1;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Ll3/V0;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLl3/L;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V

    .line 393
    .line 394
    .line 395
    return-object v0

    .line 396
    nop

    .line 397
    :sswitch_data_0
    .sparse-switch
        -0x4cd5119d -> :sswitch_6
        -0x3203e9ae -> :sswitch_5
        -0x2bb75c13 -> :sswitch_4
        -0x5f434a1 -> :sswitch_3
        0x1f2e9faa -> :sswitch_2
        0x239f260f -> :sswitch_1
        0x54230b03 -> :sswitch_0
    .end sparse-switch

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final y3(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Sn;->I:Ljava/util/HashMap;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    if-eq v1, v5, :cond_1

    .line 11
    .line 12
    if-eq v1, v4, :cond_0

    .line 13
    .line 14
    goto/16 :goto_6

    .line 15
    .line 16
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 26
    .line 27
    .line 28
    sget-object v6, Lcom/google/android/gms/internal/ads/Q7;->k9:Lcom/google/android/gms/internal/ads/J7;

    .line 29
    .line 30
    sget-object v7, Ll3/q;->d:Ll3/q;

    .line 31
    .line 32
    iget-object v8, v7, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 33
    .line 34
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-nez v6, :cond_2

    .line 45
    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const-string v8, "Received H5 gmsg: "

    .line 53
    .line 54
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-static {v6}, Lo3/I;->k(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sget-object v6, Lk3/l;->A:Lk3/l;

    .line 66
    .line 67
    iget-object v6, v6, Lk3/l;->c:Lo3/O;

    .line 68
    .line 69
    invoke-static {v1}, Lo3/O;->l(Landroid/net/Uri;)Ljava/util/HashMap;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v6, "action"

    .line 74
    .line 75
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-eqz v8, :cond_3

    .line 86
    .line 87
    const-string v1, "H5 gmsg did not contain an action"

    .line 88
    .line 89
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    const v9, 0x2283a781

    .line 99
    .line 100
    .line 101
    const/4 v10, -0x1

    .line 102
    const-string v11, "initialize"

    .line 103
    .line 104
    if-eq v8, v9, :cond_5

    .line 105
    .line 106
    const v9, 0x33ebcb90

    .line 107
    .line 108
    .line 109
    if-eq v8, v9, :cond_4

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-eqz v8, :cond_6

    .line 117
    .line 118
    const/4 v8, 0x0

    .line 119
    goto :goto_1

    .line 120
    :cond_5
    const-string v8, "dispose_all"

    .line 121
    .line 122
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-eqz v8, :cond_6

    .line 127
    .line 128
    const/4 v8, 0x1

    .line 129
    goto :goto_1

    .line 130
    :cond_6
    :goto_0
    const/4 v8, -0x1

    .line 131
    :goto_1
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/Sn;->H:Lcom/google/android/gms/internal/ads/Qn;

    .line 132
    .line 133
    if-eqz v8, :cond_15

    .line 134
    .line 135
    if-eq v8, v5, :cond_13

    .line 136
    .line 137
    const-string v8, "obj_id"

    .line 138
    .line 139
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    check-cast v8, Ljava/lang/String;

    .line 144
    .line 145
    :try_start_0
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 149
    .line 150
    .line 151
    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    sparse-switch v8, :sswitch_data_0

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :sswitch_0
    const-string v3, "create_rewarded_ad"

    .line 161
    .line 162
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_7

    .line 167
    .line 168
    const/4 v3, 0x3

    .line 169
    goto :goto_3

    .line 170
    :sswitch_1
    const-string v3, "dispose"

    .line 171
    .line 172
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_7

    .line 177
    .line 178
    const/4 v3, 0x6

    .line 179
    goto :goto_3

    .line 180
    :sswitch_2
    const-string v3, "load_interstitial_ad"

    .line 181
    .line 182
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_7

    .line 187
    .line 188
    const/4 v3, 0x1

    .line 189
    goto :goto_3

    .line 190
    :sswitch_3
    const-string v4, "create_interstitial_ad"

    .line 191
    .line 192
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_7

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :sswitch_4
    const-string v3, "load_rewarded_ad"

    .line 200
    .line 201
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_7

    .line 206
    .line 207
    const/4 v3, 0x4

    .line 208
    goto :goto_3

    .line 209
    :sswitch_5
    const-string v3, "show_rewarded_ad"

    .line 210
    .line 211
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_7

    .line 216
    .line 217
    const/4 v3, 0x5

    .line 218
    goto :goto_3

    .line 219
    :sswitch_6
    const-string v3, "show_interstitial_ad"

    .line 220
    .line 221
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_7

    .line 226
    .line 227
    const/4 v3, 0x2

    .line 228
    goto :goto_3

    .line 229
    :cond_7
    :goto_2
    const/4 v3, -0x1

    .line 230
    :goto_3
    const-string v4, "interstitial"

    .line 231
    .line 232
    const-string v8, "nativeObjectCreated"

    .line 233
    .line 234
    const-string v10, "creation"

    .line 235
    .line 236
    const-string v13, "rewarded"

    .line 237
    .line 238
    const-string v14, "onNativeAdObjectNotAvailable"

    .line 239
    .line 240
    iget-object v7, v7, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 241
    .line 242
    const-string v15, " with ad unit "

    .line 243
    .line 244
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Sn;->G:Lcom/google/android/gms/internal/ads/Lg;

    .line 245
    .line 246
    const-string v16, "Could not create H5 ad, missing ad unit id"

    .line 247
    .line 248
    const-string v0, "ad_unit"

    .line 249
    .line 250
    const-string v17, "Could not create H5 ad, object ID already exists"

    .line 251
    .line 252
    const-string v18, "Could not create H5 ad, too many existing objects"

    .line 253
    .line 254
    const-string v19, "Could not load H5 ad, object ID does not exist"

    .line 255
    .line 256
    const-string v20, "Could not show H5 ad, object ID does not exist"

    .line 257
    .line 258
    packed-switch v3, :pswitch_data_0

    .line 259
    .line 260
    .line 261
    const-string v0, "H5 gmsg contained invalid action: "

    .line 262
    .line 263
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_5

    .line 271
    .line 272
    :pswitch_0
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    check-cast v1, Lcom/google/android/gms/internal/ads/Pn;

    .line 281
    .line 282
    if-nez v1, :cond_8

    .line 283
    .line 284
    const-string v0, "Could not dispose H5 ad, object ID does not exist"

    .line 285
    .line 286
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_5

    .line 290
    .line 291
    :cond_8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Pn;->zza()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    const-string v1, "Disposed H5 ad #"

    .line 300
    .line 301
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_5

    .line 315
    .line 316
    :pswitch_1
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    check-cast v0, Lcom/google/android/gms/internal/ads/Pn;

    .line 325
    .line 326
    if-nez v0, :cond_9

    .line 327
    .line 328
    invoke-static/range {v20 .. v20}, Lp3/h;->b(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    new-instance v0, Lcom/google/android/gms/internal/ads/rs;

    .line 335
    .line 336
    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/rs;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 344
    .line 345
    iput-object v14, v0, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 346
    .line 347
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/Qn;->b(Lcom/google/android/gms/internal/ads/rs;)V

    .line 348
    .line 349
    .line 350
    goto/16 :goto_5

    .line 351
    .line 352
    :cond_9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Pn;->zzc()V

    .line 353
    .line 354
    .line 355
    goto/16 :goto_5

    .line 356
    .line 357
    :pswitch_2
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    check-cast v0, Lcom/google/android/gms/internal/ads/Pn;

    .line 366
    .line 367
    if-nez v0, :cond_a

    .line 368
    .line 369
    invoke-static/range {v19 .. v19}, Lp3/h;->b(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    new-instance v0, Lcom/google/android/gms/internal/ads/rs;

    .line 376
    .line 377
    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/rs;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 385
    .line 386
    iput-object v14, v0, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 387
    .line 388
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/Qn;->b(Lcom/google/android/gms/internal/ads/rs;)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_5

    .line 392
    .line 393
    :cond_a
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Sn;->z3(Ljava/util/HashMap;)Ll3/b1;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Pn;->a(Ll3/b1;)V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_5

    .line 401
    .line 402
    :pswitch_3
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->l9:Lcom/google/android/gms/internal/ads/J7;

    .line 407
    .line 408
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    check-cast v4, Ljava/lang/Integer;

    .line 413
    .line 414
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    if-lt v3, v4, :cond_b

    .line 419
    .line 420
    invoke-static/range {v18 .. v18}, Lp3/h;->g(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/internal/ads/Qn;->a(J)V

    .line 424
    .line 425
    .line 426
    goto/16 :goto_5

    .line 427
    .line 428
    :cond_b
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-eqz v4, :cond_c

    .line 437
    .line 438
    invoke-static/range {v17 .. v17}, Lp3/h;->b(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/internal/ads/Qn;->a(J)V

    .line 442
    .line 443
    .line 444
    goto/16 :goto_5

    .line 445
    .line 446
    :cond_c
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    check-cast v0, Ljava/lang/String;

    .line 451
    .line 452
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    if-eqz v1, :cond_d

    .line 457
    .line 458
    invoke-static/range {v16 .. v16}, Lp3/h;->g(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/internal/ads/Qn;->a(J)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_5

    .line 465
    .line 466
    :cond_d
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/Lg;->d:Lcom/google/android/gms/internal/ads/Lg;

    .line 467
    .line 468
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    new-instance v6, Lcom/google/android/gms/internal/ads/Kg;

    .line 476
    .line 477
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Lg;->c:Lcom/google/android/gms/internal/ads/Bg;

    .line 478
    .line 479
    invoke-direct {v6, v5, v1, v4, v0}, Lcom/google/android/gms/internal/ads/Kg;-><init>(Lcom/google/android/gms/internal/ads/Bg;Lcom/google/android/gms/internal/ads/Lg;Ljava/lang/Long;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/Kg;->a:Ljava/lang/Long;

    .line 483
    .line 484
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 485
    .line 486
    .line 487
    move-result-wide v17

    .line 488
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/Kg;->d:Lcom/google/android/gms/internal/ads/Lg;

    .line 489
    .line 490
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Lg;->a:Landroid/content/Context;

    .line 491
    .line 492
    new-instance v5, Lcom/google/android/gms/internal/ads/Qn;

    .line 493
    .line 494
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Lg;->b:Lcom/google/android/gms/internal/ads/Z9;

    .line 495
    .line 496
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/Qn;-><init>(Lcom/google/android/gms/internal/ads/Z9;)V

    .line 497
    .line 498
    .line 499
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/Kg;->b:Ljava/lang/String;

    .line 500
    .line 501
    new-instance v7, Lcom/google/android/gms/internal/ads/Xn;

    .line 502
    .line 503
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/Kg;->c:Lcom/google/android/gms/internal/ads/Bg;

    .line 504
    .line 505
    move-object/from16 v16, v7

    .line 506
    .line 507
    move-object/from16 v19, v4

    .line 508
    .line 509
    move-object/from16 v20, v5

    .line 510
    .line 511
    move-object/from16 v21, v6

    .line 512
    .line 513
    move-object/from16 v22, v1

    .line 514
    .line 515
    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/Xn;-><init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/Qn;Lcom/google/android/gms/internal/ads/Bg;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    .line 523
    .line 524
    new-instance v1, Lcom/google/android/gms/internal/ads/rs;

    .line 525
    .line 526
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/rs;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 534
    .line 535
    iput-object v8, v1, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 536
    .line 537
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/Qn;->b(Lcom/google/android/gms/internal/ads/rs;)V

    .line 538
    .line 539
    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    const-string v2, "Created H5 rewarded #"

    .line 543
    .line 544
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_5

    .line 564
    .line 565
    :pswitch_4
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    check-cast v0, Lcom/google/android/gms/internal/ads/Pn;

    .line 574
    .line 575
    if-nez v0, :cond_e

    .line 576
    .line 577
    invoke-static/range {v20 .. v20}, Lp3/h;->b(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    new-instance v0, Lcom/google/android/gms/internal/ads/rs;

    .line 584
    .line 585
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/rs;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 593
    .line 594
    iput-object v14, v0, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 595
    .line 596
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/Qn;->b(Lcom/google/android/gms/internal/ads/rs;)V

    .line 597
    .line 598
    .line 599
    goto/16 :goto_5

    .line 600
    .line 601
    :cond_e
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Pn;->zzc()V

    .line 602
    .line 603
    .line 604
    goto/16 :goto_5

    .line 605
    .line 606
    :pswitch_5
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    check-cast v0, Lcom/google/android/gms/internal/ads/Pn;

    .line 615
    .line 616
    if-nez v0, :cond_f

    .line 617
    .line 618
    invoke-static/range {v19 .. v19}, Lp3/h;->b(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    .line 623
    .line 624
    new-instance v0, Lcom/google/android/gms/internal/ads/rs;

    .line 625
    .line 626
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/rs;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 634
    .line 635
    iput-object v14, v0, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 636
    .line 637
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/Qn;->b(Lcom/google/android/gms/internal/ads/rs;)V

    .line 638
    .line 639
    .line 640
    goto/16 :goto_5

    .line 641
    .line 642
    :cond_f
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Sn;->z3(Ljava/util/HashMap;)Ll3/b1;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Pn;->a(Ll3/b1;)V

    .line 647
    .line 648
    .line 649
    goto/16 :goto_5

    .line 650
    .line 651
    :pswitch_6
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 652
    .line 653
    .line 654
    move-result v3

    .line 655
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->l9:Lcom/google/android/gms/internal/ads/J7;

    .line 656
    .line 657
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v4

    .line 661
    check-cast v4, Ljava/lang/Integer;

    .line 662
    .line 663
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 664
    .line 665
    .line 666
    move-result v4

    .line 667
    if-lt v3, v4, :cond_10

    .line 668
    .line 669
    invoke-static/range {v18 .. v18}, Lp3/h;->g(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/internal/ads/Qn;->a(J)V

    .line 673
    .line 674
    .line 675
    goto/16 :goto_5

    .line 676
    .line 677
    :cond_10
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    move-result v4

    .line 685
    if-eqz v4, :cond_11

    .line 686
    .line 687
    invoke-static/range {v17 .. v17}, Lp3/h;->b(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/internal/ads/Qn;->a(J)V

    .line 691
    .line 692
    .line 693
    goto/16 :goto_5

    .line 694
    .line 695
    :cond_11
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    check-cast v0, Ljava/lang/String;

    .line 700
    .line 701
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 702
    .line 703
    .line 704
    move-result v1

    .line 705
    if-eqz v1, :cond_12

    .line 706
    .line 707
    invoke-static/range {v16 .. v16}, Lp3/h;->g(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/internal/ads/Qn;->a(J)V

    .line 711
    .line 712
    .line 713
    goto/16 :goto_5

    .line 714
    .line 715
    :cond_12
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/Lg;->d:Lcom/google/android/gms/internal/ads/Lg;

    .line 716
    .line 717
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 718
    .line 719
    .line 720
    move-result-object v4

    .line 721
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 722
    .line 723
    .line 724
    new-instance v6, Lcom/google/android/gms/internal/ads/Kg;

    .line 725
    .line 726
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Lg;->c:Lcom/google/android/gms/internal/ads/Bg;

    .line 727
    .line 728
    invoke-direct {v6, v5, v1, v4, v0}, Lcom/google/android/gms/internal/ads/Kg;-><init>(Lcom/google/android/gms/internal/ads/Bg;Lcom/google/android/gms/internal/ads/Lg;Ljava/lang/Long;Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/Kg;->a:Ljava/lang/Long;

    .line 732
    .line 733
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 734
    .line 735
    .line 736
    move-result-wide v17

    .line 737
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/Kg;->d:Lcom/google/android/gms/internal/ads/Lg;

    .line 738
    .line 739
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Lg;->a:Landroid/content/Context;

    .line 740
    .line 741
    new-instance v5, Lcom/google/android/gms/internal/ads/Qn;

    .line 742
    .line 743
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Lg;->b:Lcom/google/android/gms/internal/ads/Z9;

    .line 744
    .line 745
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/Qn;-><init>(Lcom/google/android/gms/internal/ads/Z9;)V

    .line 746
    .line 747
    .line 748
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/Kg;->b:Ljava/lang/String;

    .line 749
    .line 750
    new-instance v7, Lcom/google/android/gms/internal/ads/Un;

    .line 751
    .line 752
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/Kg;->c:Lcom/google/android/gms/internal/ads/Bg;

    .line 753
    .line 754
    move-object/from16 v16, v7

    .line 755
    .line 756
    move-object/from16 v19, v4

    .line 757
    .line 758
    move-object/from16 v20, v5

    .line 759
    .line 760
    move-object/from16 v21, v6

    .line 761
    .line 762
    move-object/from16 v22, v1

    .line 763
    .line 764
    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/Un;-><init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/Qn;Lcom/google/android/gms/internal/ads/Bg;Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 771
    .line 772
    .line 773
    new-instance v1, Lcom/google/android/gms/internal/ads/rs;

    .line 774
    .line 775
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/rs;-><init>(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 783
    .line 784
    iput-object v8, v1, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 785
    .line 786
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/Qn;->b(Lcom/google/android/gms/internal/ads/rs;)V

    .line 787
    .line 788
    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    .line 790
    .line 791
    const-string v2, "Created H5 interstitial #"

    .line 792
    .line 793
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    goto :goto_5

    .line 813
    :catch_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    const-string v1, "H5 gmsg did not contain a valid object id: "

    .line 818
    .line 819
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    goto :goto_5

    .line 827
    :cond_13
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 836
    .line 837
    .line 838
    move-result v1

    .line 839
    if-eqz v1, :cond_14

    .line 840
    .line 841
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object v1

    .line 845
    check-cast v1, Lcom/google/android/gms/internal/ads/Pn;

    .line 846
    .line 847
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Pn;->zza()V

    .line 848
    .line 849
    .line 850
    goto :goto_4

    .line 851
    :cond_14
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 852
    .line 853
    .line 854
    goto :goto_5

    .line 855
    :cond_15
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 859
    .line 860
    .line 861
    new-instance v0, Lcom/google/android/gms/internal/ads/rs;

    .line 862
    .line 863
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/rs;-><init>(Ljava/lang/String;)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/Qn;->b(Lcom/google/android/gms/internal/ads/rs;)V

    .line 867
    .line 868
    .line 869
    :goto_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    .line 871
    .line 872
    const/4 v3, 0x1

    .line 873
    :goto_6
    return v3

    .line 874
    nop

    .line 875
    :sswitch_data_0
    .sparse-switch
        -0x6abfbf2c -> :sswitch_6
        -0x4b7b584e -> :sswitch_5
        -0xf5303e5 -> :sswitch_4
        0x177a28d3 -> :sswitch_3
        0x22e638bd -> :sswitch_2
        0x63a5261f -> :sswitch_1
        0x7db86731 -> :sswitch_0
    .end sparse-switch

    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
