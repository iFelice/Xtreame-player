.class public abstract Ll7/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/SharedPreferences;

.field public static b:Lh7/i;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, "yyyyMMddHH"

    .line 6
    .line 7
    const-string v4, "Download failed: "

    .line 8
    .line 9
    const-string v5, "/epg.xml"

    .line 10
    .line 11
    const-string v6, "XCDownloadXMLTV ---Started"

    .line 12
    .line 13
    const-string v7, "XCIPTV_TAG"

    .line 14
    .line 15
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const-string v8, "ORT_PROCESS_STATUS"

    .line 23
    .line 24
    invoke-virtual {v6, v2, v8}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 25
    .line 26
    .line 27
    const-string v6, "pe.hf.black20"

    .line 28
    .line 29
    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    sput-object v6, Ll7/g;->a:Landroid/content/SharedPreferences;

    .line 34
    .line 35
    new-instance v6, Lc7/a;

    .line 36
    .line 37
    invoke-direct {v6, v0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    const-string v9, "ORT_PROFILE"

    .line 41
    .line 42
    const-string v10, "Default (XC)"

    .line 43
    .line 44
    invoke-static {v9, v10, v6}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    sput-object v6, Ll7/g;->b:Lh7/i;

    .line 49
    .line 50
    iget-object v6, v6, Lh7/i;->c:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v6}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    sget-object v9, Ll7/g;->b:Lh7/i;

    .line 57
    .line 58
    iget-object v9, v9, Lh7/i;->d:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v9}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    new-instance v10, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    sget-object v11, Ll7/g;->b:Lh7/i;

    .line 70
    .line 71
    iget-object v11, v11, Lh7/i;->e:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v11}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v11, "/xmltv.php?username="

    .line 81
    .line 82
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v6, "&password="

    .line 89
    .line 90
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    new-instance v9, Ljava/io/File;

    .line 101
    .line 102
    sget-object v10, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-nez v10, :cond_0

    .line 120
    .line 121
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 122
    .line 123
    .line 124
    :cond_0
    new-instance v10, Ll7/f;

    .line 125
    .line 126
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 127
    .line 128
    .line 129
    new-array v11, v2, [Ljavax/net/ssl/TrustManager;

    .line 130
    .line 131
    aput-object v10, v11, v1

    .line 132
    .line 133
    :try_start_0
    const-string v10, "SSL"

    .line 134
    .line 135
    invoke-static {v10}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    new-instance v12, Ljava/security/SecureRandom;

    .line 140
    .line 141
    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    .line 142
    .line 143
    .line 144
    const/4 v13, 0x0

    .line 145
    invoke-virtual {v10, v13, v11, v12}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 146
    .line 147
    .line 148
    new-instance v12, Lokhttp3/OkHttpClient$Builder;

    .line 149
    .line 150
    invoke-direct {v12}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v10}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    aget-object v11, v11, v1

    .line 158
    .line 159
    check-cast v11, Ljavax/net/ssl/X509TrustManager;

    .line 160
    .line 161
    invoke-virtual {v12, v10, v11}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    new-instance v11, Ll7/c;

    .line 166
    .line 167
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v10, v11}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-virtual {v10}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    new-instance v11, Lokhttp3/Request$Builder;

    .line 179
    .line 180
    invoke-direct {v11}, Lokhttp3/Request$Builder;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v11, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 188
    .line 189
    .line 190
    move-result-object v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_2

    .line 191
    :try_start_1
    invoke-virtual {v10, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-interface {v6}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 196
    .line 197
    .line 198
    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_2

    .line 199
    :try_start_2
    invoke-virtual {v6}, Lokhttp3/Response;->isSuccessful()Z

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    if-eqz v10, :cond_7

    .line 204
    .line 205
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    if-eqz v10, :cond_7

    .line 210
    .line 211
    new-instance v4, Ljava/io/FileOutputStream;

    .line 212
    .line 213
    new-instance v10, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    .line 230
    .line 231
    :try_start_3
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    invoke-virtual {v9}, Lokhttp3/ResponseBody;->bytes()[B

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 240
    .line 241
    .line 242
    invoke-static {}, Lpe/hf/black20/util/Methods;->O()Z

    .line 243
    .line 244
    .line 245
    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    const-string v10, "epg_file_size"

    .line 247
    .line 248
    if-eqz v9, :cond_6

    .line 249
    .line 250
    :try_start_4
    new-instance v9, Ljava/io/File;

    .line 251
    .line 252
    sget-object v11, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 253
    .line 254
    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 255
    .line 256
    .line 257
    move-result-object v11

    .line 258
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v11

    .line 262
    invoke-virtual {v11, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v9}, Ljava/io/File;->length()J

    .line 270
    .line 271
    .line 272
    move-result-wide v11

    .line 273
    const-wide/32 v13, 0x100000

    .line 274
    .line 275
    .line 276
    div-long/2addr v11, v13

    .line 277
    sget-object v5, Ll7/g;->a:Landroid/content/SharedPreferences;

    .line 278
    .line 279
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    invoke-interface {v5, v10, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    .line 289
    .line 290
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    .line 292
    .line 293
    const-string v5, "XCDownloadXMLTV ------------ XmlTvParser.TvListing parsing started"

    .line 294
    .line 295
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    invoke-static/range {p0 .. p0}, Ld7/h;->a(Landroid/content/Context;)LI2/c;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    new-instance v9, Lr0/b;

    .line 303
    .line 304
    invoke-direct {v9, v0, v2}, Lr0/b;-><init>(Landroid/content/Context;I)V

    .line 305
    .line 306
    .line 307
    iget-object v10, v5, LI2/c;->G:Ljava/util/List;

    .line 308
    .line 309
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 310
    .line 311
    .line 312
    move-result v10

    .line 313
    if-nez v10, :cond_5

    .line 314
    .line 315
    new-instance v10, Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .line 319
    .line 320
    const/4 v11, 0x0

    .line 321
    :goto_0
    iget-object v12, v5, LI2/c;->G:Ljava/util/List;

    .line 322
    .line 323
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 324
    .line 325
    .line 326
    move-result v12

    .line 327
    if-ge v11, v12, :cond_2

    .line 328
    .line 329
    new-instance v12, Ljava/util/HashMap;

    .line 330
    .line 331
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 332
    .line 333
    .line 334
    const-string v13, "start"

    .line 335
    .line 336
    iget-object v14, v5, LI2/c;->G:Ljava/util/List;

    .line 337
    .line 338
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v14

    .line 342
    check-cast v14, Ld7/g;

    .line 343
    .line 344
    iget-object v14, v14, Ld7/g;->a:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    const-string v13, "stop"

    .line 350
    .line 351
    iget-object v14, v5, LI2/c;->G:Ljava/util/List;

    .line 352
    .line 353
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v14

    .line 357
    check-cast v14, Ld7/g;

    .line 358
    .line 359
    iget-object v14, v14, Ld7/g;->b:Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    const-string v13, "channel"

    .line 365
    .line 366
    iget-object v14, v5, LI2/c;->G:Ljava/util/List;

    .line 367
    .line 368
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v14

    .line 372
    check-cast v14, Ld7/g;

    .line 373
    .line 374
    iget-object v14, v14, Ld7/g;->c:Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    const-string v13, "title"

    .line 380
    .line 381
    iget-object v14, v5, LI2/c;->G:Ljava/util/List;

    .line 382
    .line 383
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v14

    .line 387
    check-cast v14, Ld7/g;

    .line 388
    .line 389
    iget-object v14, v14, Ld7/g;->d:Ljava/lang/String;

    .line 390
    .line 391
    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    iget-object v13, v5, LI2/c;->G:Ljava/util/List;

    .line 395
    .line 396
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v13

    .line 400
    check-cast v13, Ld7/g;

    .line 401
    .line 402
    iget-object v13, v13, Ld7/g;->e:Ljava/lang/String;

    .line 403
    .line 404
    if-eqz v13, :cond_1

    .line 405
    .line 406
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 407
    .line 408
    .line 409
    move-result v14

    .line 410
    if-nez v14, :cond_1

    .line 411
    .line 412
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 413
    .line 414
    .line 415
    move-result v14

    .line 416
    const/16 v15, 0x97

    .line 417
    .line 418
    if-le v14, v15, :cond_1

    .line 419
    .line 420
    const/16 v14, 0x96

    .line 421
    .line 422
    invoke-virtual {v13, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v13

    .line 426
    goto :goto_1

    .line 427
    :catchall_0
    move-exception v0

    .line 428
    move-object v1, v0

    .line 429
    goto/16 :goto_5

    .line 430
    .line 431
    :cond_1
    :goto_1
    const-string v14, "desc"

    .line 432
    .line 433
    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    add-int/2addr v11, v2

    .line 440
    goto :goto_0

    .line 441
    :cond_2
    iget-object v5, v5, LI2/c;->G:Ljava/util/List;

    .line 442
    .line 443
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 444
    .line 445
    .line 446
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 447
    .line 448
    invoke-direct {v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 452
    .line 453
    .line 454
    move-result-object v11

    .line 455
    new-instance v12, Ljava/util/Date;

    .line 456
    .line 457
    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v11, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 461
    .line 462
    .line 463
    const/16 v12, 0xb

    .line 464
    .line 465
    const/16 v13, -0xc

    .line 466
    .line 467
    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 471
    .line 472
    .line 473
    move-result-object v11

    .line 474
    invoke-virtual {v5, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    new-instance v11, Ljava/util/ArrayList;

    .line 479
    .line 480
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .line 482
    .line 483
    :goto_2
    const/16 v14, 0x15

    .line 484
    .line 485
    if-gt v13, v14, :cond_3

    .line 486
    .line 487
    new-instance v14, Ljava/text/SimpleDateFormat;

    .line 488
    .line 489
    invoke-direct {v14, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    const/16 v15, 0xa

    .line 493
    .line 494
    invoke-virtual {v5, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 498
    :try_start_5
    invoke-virtual {v14, v15}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    invoke-virtual {v14, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v15
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 520
    :catch_0
    :try_start_6
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    const/4 v1, 0x1

    .line 524
    add-int/2addr v13, v1

    .line 525
    const/4 v1, 0x0

    .line 526
    const/4 v2, 0x1

    .line 527
    goto :goto_2

    .line 528
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 529
    .line 530
    const/16 v2, 0x18

    .line 531
    .line 532
    if-lt v1, v2, :cond_4

    .line 533
    .line 534
    new-instance v1, Ljava/util/HashSet;

    .line 535
    .line 536
    invoke-direct {v1, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v10}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    new-instance v3, Ll7/d;

    .line 544
    .line 545
    invoke-direct {v3, v1}, Ll7/d;-><init>(Ljava/util/HashSet;)V

    .line 546
    .line 547
    .line 548
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    new-instance v2, Ll7/e;

    .line 553
    .line 554
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 555
    .line 556
    .line 557
    invoke-static {v2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    check-cast v1, Ljava/util/ArrayList;

    .line 566
    .line 567
    goto :goto_3

    .line 568
    :cond_4
    move-object v1, v10

    .line 569
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 570
    .line 571
    .line 572
    const-string v2, "XCDownloadXMLTV ------------ XmlTvParser.TvListing parsing finished"

    .line 573
    .line 574
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .line 576
    .line 577
    invoke-virtual {v9, v1}, Lr0/b;->k(Ljava/util/ArrayList;)V

    .line 578
    .line 579
    .line 580
    :cond_5
    const-string v1, "XCDownloadXMLTV ------------ EPG insert to DB finished"

    .line 581
    .line 582
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .line 584
    .line 585
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 586
    .line 587
    .line 588
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 589
    .line 590
    const-string v2, "MM/dd/yyyy HH:mm:ss"

    .line 591
    .line 592
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    new-instance v2, Ljava/util/Date;

    .line 596
    .line 597
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    sget-object v2, Ll7/g;->a:Landroid/content/SharedPreferences;

    .line 605
    .line 606
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    const-string v3, "epg_dl_time"

    .line 611
    .line 612
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 613
    .line 614
    .line 615
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 616
    .line 617
    .line 618
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    const/4 v2, 0x0

    .line 623
    invoke-virtual {v1, v2, v8}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 624
    .line 625
    .line 626
    const-string v1, "XCDownloadXMLTV ---Finished"

    .line 627
    .line 628
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .line 630
    .line 631
    invoke-static/range {p0 .. p0}, Ll7/g;->d(Landroid/content/Context;)V

    .line 632
    .line 633
    .line 634
    goto :goto_4

    .line 635
    :cond_6
    sget-object v0, Ll7/g;->a:Landroid/content/SharedPreferences;

    .line 636
    .line 637
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    const-string v1, "0"

    .line 642
    .line 643
    invoke-interface {v0, v10, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 644
    .line 645
    .line 646
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 647
    .line 648
    .line 649
    :goto_4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    const-string v1, "ORT_EPG_ERROR"

    .line 654
    .line 655
    const/4 v2, 0x0

    .line 656
    invoke-virtual {v0, v2, v1}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 657
    .line 658
    .line 659
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 660
    .line 661
    .line 662
    goto :goto_7

    .line 663
    :catchall_1
    move-exception v0

    .line 664
    move-object v1, v0

    .line 665
    goto :goto_8

    .line 666
    :goto_5
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 667
    .line 668
    .line 669
    goto :goto_6

    .line 670
    :catchall_2
    move-exception v0

    .line 671
    move-object v2, v0

    .line 672
    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 673
    .line 674
    .line 675
    :goto_6
    throw v1

    .line 676
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 677
    .line 678
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    .line 682
    .line 683
    .line 684
    move-result v1

    .line 685
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    const-string v1, " "

    .line 689
    .line 690
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v6}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .line 706
    .line 707
    invoke-static {}, Ll7/g;->c()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 708
    .line 709
    .line 710
    :goto_7
    :try_start_a
    invoke-virtual {v6}, Lokhttp3/Response;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_a .. :try_end_a} :catch_2

    .line 711
    .line 712
    .line 713
    goto :goto_a

    .line 714
    :goto_8
    if-eqz v6, :cond_8

    .line 715
    .line 716
    :try_start_b
    invoke-virtual {v6}, Lokhttp3/Response;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 717
    .line 718
    .line 719
    goto :goto_9

    .line 720
    :catchall_3
    move-exception v0

    .line 721
    move-object v2, v0

    .line 722
    :try_start_c
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 723
    .line 724
    .line 725
    :cond_8
    :goto_9
    throw v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_c .. :try_end_c} :catch_2

    .line 726
    :catch_1
    :try_start_d
    invoke-static {}, Ll7/g;->c()V
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_d .. :try_end_d} :catch_2

    .line 727
    .line 728
    .line 729
    goto :goto_a

    .line 730
    :catch_2
    invoke-static {}, Ll7/g;->c()V

    .line 731
    .line 732
    .line 733
    :goto_a
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ORT_PROCESS_STATUS"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, LQ5/a;->b(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lf/q;

    .line 18
    .line 19
    const/4 v2, 0x5

    .line 20
    invoke-direct {v1, p0, v2}, Lf/q;-><init>(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MM/dd/yyyy HH:mm:ss"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Ll7/g;->a:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "epg_dl_time"

    .line 24
    .line 25
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    const-string v2, "ORT_PROCESS_STATUS"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x1

    .line 46
    const-string v2, "ORT_EPG_ERROR"

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lpe/hf/black20/util/Methods;->B()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "XCUpdateContents JobScheduler is Running"

    .line 6
    .line 7
    const-string v2, "XCUpdateContents startBackgroudTask"

    .line 8
    .line 9
    const-string v3, "XCUpdateContents JobScheduler is not Running"

    .line 10
    .line 11
    const-string v4, "XCIPTV_TAG"

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {p0}, Lpe/hf/black20/ORPlayerMainActivity;->w(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lpe/hf/black20/ORPlayerMainActivity;->A(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p0}, Lpe/hf/black20/CategoriesActivity;->i(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lpe/hf/black20/CategoriesActivity;->l(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method
