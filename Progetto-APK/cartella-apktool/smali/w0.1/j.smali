.class public final Lw0/j;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lw0/j;->G:I

    iput-object p2, p0, Lw0/j;->H:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 2
    iput p2, p0, Lw0/j;->G:I

    iput-object p1, p0, Lw0/j;->H:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    .line 3
    const/4 v0, 0x7

    iput v0, p0, Lw0/j;->G:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5
    iput-object p1, p0, Lw0/j;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw0/k;)V
    .locals 1

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lw0/j;->G:I

    .line 7
    iput-object p1, p0, Lw0/j;->H:Ljava/lang/Object;

    const-string p1, "ExoPlayer:SimpleDecoder"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ly2/a;Ljava/lang/Runnable;)V
    .locals 1

    .line 8
    const/4 v0, 0x1

    iput v0, p0, Lw0/j;->G:I

    .line 9
    iput-object p1, p0, Lw0/j;->H:Ljava/lang/Object;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lw0/j;->G:I

    .line 2
    .line 3
    const-wide/16 v1, 0x3e8

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const v0, 0x25800

    .line 9
    .line 10
    .line 11
    new-array v3, v0, [B

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    :goto_0
    :try_start_0
    iget-object v1, p0, Lw0/j;->H:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ljava/net/URL;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 29
    .line 30
    .line 31
    const-string v2, "POST"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "Connection"

    .line 37
    .line 38
    const-string v6, "Keep-Alive"

    .line 39
    .line 40
    invoke-virtual {v1, v2, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Ljava/io/DataOutputStream;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-direct {v2, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    invoke-virtual {v2, v3, v6, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 60
    .line 61
    .line 62
    sget v6, Lk7/b;->K:I

    .line 63
    .line 64
    int-to-double v6, v6

    .line 65
    int-to-double v8, v0

    .line 66
    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    .line 67
    .line 68
    div-double/2addr v8, v10

    .line 69
    add-double/2addr v8, v6

    .line 70
    double-to-int v6, v8

    .line 71
    sput v6, Lk7/b;->K:I

    .line 72
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v6

    .line 77
    sub-long/2addr v6, v4

    .line 78
    long-to-double v6, v6

    .line 79
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    div-double/2addr v6, v8

    .line 85
    const/16 v8, 0xa

    .line 86
    .line 87
    int-to-double v8, v8

    .line 88
    cmpl-double v10, v6, v8

    .line 89
    .line 90
    if-ltz v10, :cond_0

    .line 91
    .line 92
    return-void

    .line 93
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :goto_1
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_1

    .line 110
    .line 111
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lw0/j;->H:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v0, Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 117
    .line 118
    new-instance v3, Lcom/google/android/gms/internal/cast/X;

    .line 119
    .line 120
    const/16 v4, 0x1a

    .line 121
    .line 122
    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catch_1
    :cond_1
    return-void

    .line 130
    :goto_2
    :pswitch_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_2

    .line 135
    .line 136
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lw0/j;->H:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v0, Lpe/hf/black20/ChannelListActivity;

    .line 142
    .line 143
    new-instance v3, Lcom/google/android/gms/internal/cast/X;

    .line 144
    .line 145
    const/16 v4, 0xf

    .line 146
    .line 147
    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :catch_2
    :cond_2
    return-void

    .line 155
    :goto_3
    :pswitch_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_3

    .line 160
    .line 161
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lw0/j;->H:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Lpe/hf/black20/CategoriesActivity;

    .line 167
    .line 168
    new-instance v3, Lcom/google/android/gms/internal/cast/X;

    .line 169
    .line 170
    const/16 v4, 0xd

    .line 171
    .line 172
    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :catch_3
    :cond_3
    return-void

    .line 180
    :pswitch_3
    new-instance v0, Lp3/k;

    .line 181
    .line 182
    const/4 v1, 0x0

    .line 183
    invoke-direct {v0, v1}, Lp3/k;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v1, p0, Lw0/j;->H:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v1, Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Lp3/k;->c(Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :pswitch_4
    iget-object v0, p0, Lw0/j;->H:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v0, Ljava/util/Map;

    .line 197
    .line 198
    const-string v1, "https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps"

    .line 199
    .line 200
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_4

    .line 221
    .line 222
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    check-cast v3, Ljava/lang/String;

    .line 227
    .line 228
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    check-cast v4, Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const-string v1, ". "

    .line 247
    .line 248
    const-string v2, "HttpUrlPinger"

    .line 249
    .line 250
    :try_start_4
    new-instance v3, Ljava/net/URL;

    .line 251
    .line 252
    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 260
    .line 261
    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    const/16 v5, 0xc8

    .line 266
    .line 267
    if-lt v4, v5, :cond_5

    .line 268
    .line 269
    const/16 v5, 0x12c

    .line 270
    .line 271
    if-lt v4, v5, :cond_6

    .line 272
    .line 273
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    add-int/lit8 v5, v5, 0x41

    .line 282
    .line 283
    new-instance v6, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 286
    .line 287
    .line 288
    const-string v5, "Received non-success response code "

    .line 289
    .line 290
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v4, " from pinging URL: "

    .line 297
    .line 298
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 309
    .line 310
    .line 311
    :cond_6
    :try_start_6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 312
    .line 313
    .line 314
    goto :goto_8

    .line 315
    :catchall_0
    move-exception v0

    .line 316
    goto :goto_5

    .line 317
    :catch_4
    move-exception v3

    .line 318
    goto :goto_6

    .line 319
    :catch_5
    move-exception v3

    .line 320
    goto :goto_6

    .line 321
    :catch_6
    move-exception v3

    .line 322
    goto :goto_7

    .line 323
    :catchall_1
    move-exception v4

    .line 324
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 325
    .line 326
    .line 327
    throw v4
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 328
    :goto_5
    throw v0

    .line 329
    :goto_6
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    add-int/lit8 v5, v5, 0x1b

    .line 342
    .line 343
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    add-int/2addr v6, v5

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 355
    .line 356
    .line 357
    const-string v6, "Error while pinging URL: "

    .line 358
    .line 359
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-static {v2, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    .line 377
    .line 378
    goto :goto_8

    .line 379
    :goto_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 388
    .line 389
    .line 390
    move-result v5

    .line 391
    add-int/lit8 v5, v5, 0x20

    .line 392
    .line 393
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 398
    .line 399
    .line 400
    move-result v6

    .line 401
    add-int/2addr v6, v5

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 405
    .line 406
    .line 407
    const-string v6, "Error while parsing ping URL: "

    .line 408
    .line 409
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-static {v2, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    .line 427
    .line 428
    :goto_8
    return-void

    .line 429
    :pswitch_5
    const/16 v0, 0x9

    .line 430
    .line 431
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 432
    .line 433
    .line 434
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    :pswitch_6
    iget-object v0, p0, Lw0/j;->H:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v0, Lw0/k;

    .line 441
    .line 442
    invoke-static {v0}, Lw0/k;->access$000(Lw0/k;)V

    .line 443
    .line 444
    .line 445
    return-void

    .line 446
    nop

    .line 447
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
