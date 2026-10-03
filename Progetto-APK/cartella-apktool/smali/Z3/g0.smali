.class public final LZ3/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:LZ3/i;

.field public final e:LZ3/p;

.field public final f:LZ3/d0;

.field public final g:LZ3/i0;

.field public final h:LZ3/Z;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/os/Handler;LZ3/F;LZ3/i;LZ3/p;LZ3/d0;LZ3/i0;LZ3/Z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LZ3/g0;->a:Landroid/app/Application;

    .line 5
    .line 6
    iput-object p2, p0, LZ3/g0;->b:Landroid/os/Handler;

    .line 7
    .line 8
    iput-object p3, p0, LZ3/g0;->c:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-object p4, p0, LZ3/g0;->d:LZ3/i;

    .line 11
    .line 12
    iput-object p5, p0, LZ3/g0;->e:LZ3/p;

    .line 13
    .line 14
    iput-object p6, p0, LZ3/g0;->f:LZ3/d0;

    .line 15
    .line 16
    iput-object p7, p0, LZ3/g0;->g:LZ3/i0;

    .line 17
    .line 18
    iput-object p8, p0, LZ3/g0;->h:LZ3/Z;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Nd;)Lm0/H;
    .locals 8

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 4
    .line 5
    const-string v2, "https://fundingchoicesmessages.google.com/a/consent"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 15
    .line 16
    const-string v2, "User-Agent"

    .line 17
    .line 18
    iget-object v3, p0, LZ3/g0;->a:Landroid/app/Application;

    .line 19
    .line 20
    invoke-static {v3}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/16 v2, 0x2710

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x7530

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 39
    .line 40
    .line 41
    const-string v3, "POST"

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v3, "Content-Type"

    .line 47
    .line 48
    const-string v4, "application/json"

    .line 49
    .line 50
    invoke-virtual {v1, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-direct {v3, v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    :try_start_1
    new-instance v4, Landroid/util/JsonWriter;

    .line 63
    .line 64
    invoke-direct {v4, v3}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 65
    .line 66
    .line 67
    :try_start_2
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 68
    .line 69
    .line 70
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/Nd;->a:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v5, Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v5, :cond_0

    .line 75
    .line 76
    const-string v6, "admob_app_id"

    .line 77
    .line 78
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto/16 :goto_9

    .line 87
    .line 88
    :cond_0
    :goto_0
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/Nd;->b:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v5, LF/d;

    .line 91
    .line 92
    if-eqz v5, :cond_6

    .line 93
    .line 94
    const-string v6, "device_info"

    .line 95
    .line 96
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 100
    .line 101
    .line 102
    iget v6, v5, LF/d;->H:I

    .line 103
    .line 104
    if-eq v6, v2, :cond_3

    .line 105
    .line 106
    const-string v7, "os_type"

    .line 107
    .line 108
    invoke-virtual {v4, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 109
    .line 110
    .line 111
    add-int/lit8 v6, v6, -0x1

    .line 112
    .line 113
    if-eqz v6, :cond_2

    .line 114
    .line 115
    if-eq v6, v2, :cond_1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    const-string v2, "ANDROID"

    .line 119
    .line 120
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    const-string v2, "UNKNOWN"

    .line 125
    .line 126
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 127
    .line 128
    .line 129
    :cond_3
    :goto_1
    iget-object v2, v5, LF/d;->I:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v2, Ljava/lang/String;

    .line 132
    .line 133
    if-eqz v2, :cond_4

    .line 134
    .line 135
    const-string v6, "model"

    .line 136
    .line 137
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 141
    .line 142
    .line 143
    :cond_4
    iget-object v2, v5, LF/d;->J:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v2, Ljava/lang/Integer;

    .line 146
    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    const-string v5, "android_api_level"

    .line 150
    .line 151
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 155
    .line 156
    .line 157
    :cond_5
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 158
    .line 159
    .line 160
    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Nd;->c:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v2, Ljava/lang/String;

    .line 163
    .line 164
    if-eqz v2, :cond_7

    .line 165
    .line 166
    const-string v5, "language_code"

    .line 167
    .line 168
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 172
    .line 173
    .line 174
    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Nd;->d:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v2, Ljava/lang/Boolean;

    .line 177
    .line 178
    if-eqz v2, :cond_8

    .line 179
    .line 180
    const-string v5, "tag_for_under_age_of_consent"

    .line 181
    .line 182
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 190
    .line 191
    .line 192
    :cond_8
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Nd;->e:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v2, Ljava/util/Map;

    .line 195
    .line 196
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-nez v5, :cond_a

    .line 201
    .line 202
    const-string v5, "stored_infos_map"

    .line 203
    .line 204
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 208
    .line 209
    .line 210
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    if-eqz v5, :cond_9

    .line 223
    .line 224
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    check-cast v5, Ljava/util/Map$Entry;

    .line 229
    .line 230
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    check-cast v6, Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 237
    .line 238
    .line 239
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    check-cast v5, Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_9
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 250
    .line 251
    .line 252
    :cond_a
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Nd;->f:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v2, Lm2/o;

    .line 255
    .line 256
    if-eqz v2, :cond_14

    .line 257
    .line 258
    const-string v5, "screen_info"

    .line 259
    .line 260
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 264
    .line 265
    .line 266
    iget-object v5, v2, Lm2/o;->G:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v5, Ljava/lang/Integer;

    .line 269
    .line 270
    if-eqz v5, :cond_b

    .line 271
    .line 272
    const-string v6, "width"

    .line 273
    .line 274
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 278
    .line 279
    .line 280
    :cond_b
    iget-object v5, v2, Lm2/o;->H:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v5, Ljava/lang/Integer;

    .line 283
    .line 284
    if-eqz v5, :cond_c

    .line 285
    .line 286
    const-string v6, "height"

    .line 287
    .line 288
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 292
    .line 293
    .line 294
    :cond_c
    iget-object v5, v2, Lm2/o;->I:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v5, Ljava/lang/Double;

    .line 297
    .line 298
    if-eqz v5, :cond_d

    .line 299
    .line 300
    const-string v6, "density"

    .line 301
    .line 302
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 306
    .line 307
    .line 308
    :cond_d
    iget-object v2, v2, Lm2/o;->J:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v2, Ljava/util/List;

    .line 311
    .line 312
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-nez v5, :cond_13

    .line 317
    .line 318
    const-string v5, "screen_insets"

    .line 319
    .line 320
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 324
    .line 325
    .line 326
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    if-eqz v5, :cond_12

    .line 335
    .line 336
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    check-cast v5, LZ3/A;

    .line 341
    .line 342
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 343
    .line 344
    .line 345
    iget-object v6, v5, LZ3/A;->a:Ljava/lang/Integer;

    .line 346
    .line 347
    if-eqz v6, :cond_e

    .line 348
    .line 349
    const-string v7, "top"

    .line 350
    .line 351
    invoke-virtual {v4, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 355
    .line 356
    .line 357
    :cond_e
    iget-object v6, v5, LZ3/A;->b:Ljava/lang/Integer;

    .line 358
    .line 359
    if-eqz v6, :cond_f

    .line 360
    .line 361
    const-string v7, "left"

    .line 362
    .line 363
    invoke-virtual {v4, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 367
    .line 368
    .line 369
    :cond_f
    iget-object v6, v5, LZ3/A;->c:Ljava/lang/Integer;

    .line 370
    .line 371
    if-eqz v6, :cond_10

    .line 372
    .line 373
    const-string v7, "right"

    .line 374
    .line 375
    invoke-virtual {v4, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 379
    .line 380
    .line 381
    :cond_10
    iget-object v5, v5, LZ3/A;->d:Ljava/lang/Integer;

    .line 382
    .line 383
    if-eqz v5, :cond_11

    .line 384
    .line 385
    const-string v6, "bottom"

    .line 386
    .line 387
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 391
    .line 392
    .line 393
    :cond_11
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 394
    .line 395
    .line 396
    goto :goto_3

    .line 397
    :cond_12
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 398
    .line 399
    .line 400
    :cond_13
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 401
    .line 402
    .line 403
    :cond_14
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Nd;->g:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast v2, LZ3/y;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    .line 407
    const-string v5, "version"

    .line 408
    .line 409
    if-eqz v2, :cond_18

    .line 410
    .line 411
    :try_start_3
    const-string v6, "app_info"

    .line 412
    .line 413
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 417
    .line 418
    .line 419
    iget-object v6, v2, LZ3/y;->a:Ljava/lang/String;

    .line 420
    .line 421
    if-eqz v6, :cond_15

    .line 422
    .line 423
    const-string v7, "package_name"

    .line 424
    .line 425
    invoke-virtual {v4, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 429
    .line 430
    .line 431
    :cond_15
    iget-object v6, v2, LZ3/y;->b:Ljava/lang/String;

    .line 432
    .line 433
    if-eqz v6, :cond_16

    .line 434
    .line 435
    const-string v7, "publisher_display_name"

    .line 436
    .line 437
    invoke-virtual {v4, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 441
    .line 442
    .line 443
    :cond_16
    iget-object v2, v2, LZ3/y;->c:Ljava/lang/String;

    .line 444
    .line 445
    if-eqz v2, :cond_17

    .line 446
    .line 447
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 451
    .line 452
    .line 453
    :cond_17
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 454
    .line 455
    .line 456
    :cond_18
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Nd;->h:Ljava/lang/Object;

    .line 457
    .line 458
    check-cast v2, Lp3/e;

    .line 459
    .line 460
    if-eqz v2, :cond_1a

    .line 461
    .line 462
    const-string v6, "sdk_info"

    .line 463
    .line 464
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 468
    .line 469
    .line 470
    iget-object v2, v2, Lp3/e;->H:Ljava/lang/String;

    .line 471
    .line 472
    if-eqz v2, :cond_19

    .line 473
    .line 474
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 478
    .line 479
    .line 480
    :cond_19
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 481
    .line 482
    .line 483
    :cond_1a
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Nd;->i:Ljava/lang/Object;

    .line 484
    .line 485
    check-cast p1, Ljava/util/List;

    .line 486
    .line 487
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    if-nez v2, :cond_1c

    .line 492
    .line 493
    const-string v2, "debug_params"

    .line 494
    .line 495
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 499
    .line 500
    .line 501
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    if-eqz v2, :cond_1b

    .line 510
    .line 511
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    check-cast v2, LZ3/z;

    .line 516
    .line 517
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 518
    .line 519
    .line 520
    move-result v2

    .line 521
    packed-switch v2, :pswitch_data_0

    .line 522
    .line 523
    .line 524
    goto :goto_4

    .line 525
    :pswitch_0
    const-string v2, "PREVIEWING_DEBUG_MESSAGES"

    .line 526
    .line 527
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 528
    .line 529
    .line 530
    goto :goto_4

    .line 531
    :pswitch_1
    const-string v2, "GEO_OVERRIDE_NON_EEA"

    .line 532
    .line 533
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 534
    .line 535
    .line 536
    goto :goto_4

    .line 537
    :pswitch_2
    const-string v2, "GEO_OVERRIDE_OTHER"

    .line 538
    .line 539
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 540
    .line 541
    .line 542
    goto :goto_4

    .line 543
    :pswitch_3
    const-string v2, "GEO_OVERRIDE_REGULATED_US_STATE"

    .line 544
    .line 545
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 546
    .line 547
    .line 548
    goto :goto_4

    .line 549
    :pswitch_4
    const-string v2, "GEO_OVERRIDE_EEA"

    .line 550
    .line 551
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 552
    .line 553
    .line 554
    goto :goto_4

    .line 555
    :pswitch_5
    const-string v2, "ALWAYS_SHOW"

    .line 556
    .line 557
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 558
    .line 559
    .line 560
    goto :goto_4

    .line 561
    :pswitch_6
    const-string v2, "DEBUG_PARAM_UNKNOWN"

    .line 562
    .line 563
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 564
    .line 565
    .line 566
    goto :goto_4

    .line 567
    :cond_1b
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 568
    .line 569
    .line 570
    :cond_1c
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 571
    .line 572
    .line 573
    :try_start_4
    invoke-virtual {v4}, Landroid/util/JsonWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 574
    .line 575
    .line 576
    :try_start_5
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 580
    .line 581
    .line 582
    move-result p1
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 583
    const/16 v2, 0xc8

    .line 584
    .line 585
    const-string v3, "\\A"

    .line 586
    .line 587
    if-ne p1, v2, :cond_1e

    .line 588
    .line 589
    :try_start_6
    const-string p1, "x-ump-using-header"

    .line 590
    .line 591
    invoke-virtual {v1, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    if-eqz p1, :cond_1d

    .line 596
    .line 597
    new-instance v0, Landroid/util/JsonReader;

    .line 598
    .line 599
    new-instance v2, Ljava/io/StringReader;

    .line 600
    .line 601
    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-direct {v0, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 605
    .line 606
    .line 607
    invoke-static {v0}, Lm0/H;->b(Landroid/util/JsonReader;)Lm0/H;

    .line 608
    .line 609
    .line 610
    move-result-object p1

    .line 611
    new-instance v0, Ljava/util/Scanner;

    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    iput-object v0, p1, Lm0/H;->a:Ljava/lang/String;

    .line 629
    .line 630
    goto :goto_5

    .line 631
    :catch_0
    move-exception p1

    .line 632
    goto/16 :goto_d

    .line 633
    .line 634
    :catch_1
    move-exception p1

    .line 635
    goto/16 :goto_e

    .line 636
    .line 637
    :cond_1d
    new-instance p1, Ljava/io/BufferedReader;

    .line 638
    .line 639
    new-instance v2, Ljava/io/InputStreamReader;

    .line 640
    .line 641
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    invoke-direct {v2, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 649
    .line 650
    .line 651
    :try_start_7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    new-instance v0, Landroid/util/JsonReader;

    .line 655
    .line 656
    invoke-direct {v0, p1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 657
    .line 658
    .line 659
    :try_start_8
    invoke-static {v0}, Lm0/H;->b(Landroid/util/JsonReader;)Lm0/H;

    .line 660
    .line 661
    .line 662
    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 663
    :try_start_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 664
    .line 665
    .line 666
    :try_start_a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 667
    .line 668
    .line 669
    move-object p1, v1

    .line 670
    :goto_5
    return-object p1

    .line 671
    :catchall_1
    move-exception v0

    .line 672
    goto :goto_7

    .line 673
    :catchall_2
    move-exception v1

    .line 674
    :try_start_b
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 675
    .line 676
    .line 677
    goto :goto_6

    .line 678
    :catchall_3
    move-exception v0

    .line 679
    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 680
    .line 681
    .line 682
    :goto_6
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 683
    :goto_7
    :try_start_d
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 684
    .line 685
    .line 686
    goto :goto_8

    .line 687
    :catchall_4
    move-exception p1

    .line 688
    :try_start_e
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 689
    .line 690
    .line 691
    :goto_8
    throw v0

    .line 692
    :cond_1e
    new-instance v0, Ljava/util/Scanner;

    .line 693
    .line 694
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v0, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    new-instance v1, Ljava/io/IOException;

    .line 710
    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    .line 712
    .line 713
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    .line 715
    .line 716
    const-string v3, "Http error code - "

    .line 717
    .line 718
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    const-string p1, ".\n"

    .line 725
    .line 726
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object p1

    .line 736
    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    throw v1
    :try_end_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 740
    :catchall_5
    move-exception p1

    .line 741
    goto :goto_b

    .line 742
    :goto_9
    :try_start_f
    invoke-virtual {v4}, Landroid/util/JsonWriter;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 743
    .line 744
    .line 745
    goto :goto_a

    .line 746
    :catchall_6
    move-exception v0

    .line 747
    :try_start_10
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 748
    .line 749
    .line 750
    :goto_a
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 751
    :goto_b
    :try_start_11
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 752
    .line 753
    .line 754
    goto :goto_c

    .line 755
    :catchall_7
    move-exception v0

    .line 756
    :try_start_12
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 757
    .line 758
    .line 759
    :goto_c
    throw p1
    :try_end_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    .line 760
    :goto_d
    new-instance v0, LZ3/a0;

    .line 761
    .line 762
    const/4 v1, 0x2

    .line 763
    const-string v2, "Error making request."

    .line 764
    .line 765
    invoke-direct {v0, v2, v1, p1}, LZ3/a0;-><init>(Ljava/lang/String;ILjava/io/IOException;)V

    .line 766
    .line 767
    .line 768
    throw v0

    .line 769
    :goto_e
    new-instance v0, LZ3/a0;

    .line 770
    .line 771
    const/4 v1, 0x4

    .line 772
    const-string v2, "The server timed out."

    .line 773
    .line 774
    invoke-direct {v0, v2, v1, p1}, LZ3/a0;-><init>(Ljava/lang/String;ILjava/io/IOException;)V

    .line 775
    .line 776
    .line 777
    throw v0

    .line 778
    nop

    .line 779
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
