.class public final Lcom/google/android/gms/internal/ads/kf;
.super Lcom/google/android/gms/internal/ads/jf;
.source "SourceFile"


# static fields
.field public static final L:Ljava/util/Set;

.field public static final M:Ljava/text/DecimalFormat;


# instance fields
.field public J:Ljava/io/File;

.field public K:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/ads/kf;->L:Ljava/util/Set;

    .line 11
    .line 12
    new-instance v0, Ljava/text/DecimalFormat;

    .line 13
    .line 14
    const-string v1, "#,###"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/gms/internal/ads/kf;->M:Ljava/text/DecimalFormat;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final l()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kf;->K:Z

    return-void
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 27

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/kf;->J:Ljava/io/File;

    .line 6
    .line 7
    const/4 v9, 0x0

    .line 8
    const/4 v10, 0x0

    .line 9
    if-eqz v0, :cond_1b

    .line 10
    .line 11
    :cond_0
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/kf;->J:Ljava/io/File;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    array-length v1, v0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_3

    .line 25
    .line 26
    aget-object v4, v0, v2

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const-string v5, ".done"

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_2

    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->o:Lcom/google/android/gms/internal/ads/J7;

    .line 46
    .line 47
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 48
    .line 49
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-le v3, v0, :cond_9

    .line 62
    .line 63
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/kf;->J:Ljava/io/File;

    .line 64
    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    array-length v1, v0

    .line 73
    const-wide v2, 0x7fffffffffffffffL

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    move-object v5, v10

    .line 79
    const/4 v4, 0x0

    .line 80
    :goto_2
    if-ge v4, v1, :cond_6

    .line 81
    .line 82
    aget-object v6, v0, v4

    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    const-string v12, ".done"

    .line 89
    .line 90
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    if-nez v11, :cond_5

    .line 95
    .line 96
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    .line 97
    .line 98
    .line 99
    move-result-wide v11

    .line 100
    cmp-long v13, v11, v2

    .line 101
    .line 102
    if-gez v13, :cond_5

    .line 103
    .line 104
    move-object v5, v6

    .line 105
    move-wide v2, v11

    .line 106
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    if-eqz v5, :cond_8

    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/kf;->u(Ljava/io/File;)Ljava/io/File;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_7

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    and-int/2addr v0, v1

    .line 130
    :cond_7
    if-nez v0, :cond_0

    .line 131
    .line 132
    :cond_8
    :goto_3
    const-string v0, "Unable to expire stream cache"

    .line 133
    .line 134
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v0, "expireFailed"

    .line 138
    .line 139
    invoke-virtual {v7, v8, v10, v0, v10}, Lcom/google/android/gms/internal/ads/jf;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return v9

    .line 143
    :cond_9
    const-string v0, "MD5"

    .line 144
    .line 145
    invoke-static {v8, v0}, Lp3/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    new-instance v11, Ljava/io/File;

    .line 150
    .line 151
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/kf;->J:Ljava/io/File;

    .line 152
    .line 153
    sget v3, Lcom/google/android/gms/internal/ads/Ly;->d:I

    .line 154
    .line 155
    new-instance v3, Ljava/io/File;

    .line 156
    .line 157
    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/kf;->u(Ljava/io/File;)Ljava/io/File;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    const/4 v12, 0x1

    .line 176
    if-eqz v2, :cond_b

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-nez v2, :cond_a

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_a
    invoke-virtual {v11}, Ljava/io/File;->length()J

    .line 186
    .line 187
    .line 188
    move-result-wide v0

    .line 189
    long-to-int v1, v0

    .line 190
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string v2, "Stream cache hit at "

    .line 195
    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sget-object v2, Lp3/d;->b:LE1/W;

    .line 208
    .line 209
    new-instance v3, Lcom/google/android/gms/internal/ads/gf;

    .line 210
    .line 211
    invoke-direct {v3, v7, v8, v0, v1}, Lcom/google/android/gms/internal/ads/gf;-><init>(Lcom/google/android/gms/internal/ads/jf;Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    .line 216
    .line 217
    return v12

    .line 218
    :cond_b
    :goto_4
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/kf;->J:Ljava/io/File;

    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    sget-object v4, Lcom/google/android/gms/internal/ads/kf;->L:Ljava/util/Set;

    .line 233
    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v13

    .line 238
    monitor-enter v4

    .line 239
    :try_start_0
    invoke-interface {v4, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_c

    .line 244
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    const-string v1, "Stream cache already in progress at "

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    const-string v1, "inProgress"

    .line 270
    .line 271
    invoke-virtual {v7, v8, v0, v1, v10}, Lcom/google/android/gms/internal/ads/jf;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    monitor-exit v4

    .line 275
    return v9

    .line 276
    :catchall_0
    move-exception v0

    .line 277
    goto/16 :goto_11

    .line 278
    .line 279
    :cond_c
    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    const-string v14, "error"

    .line 284
    .line 285
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/Py;->k()Lcom/google/android/gms/internal/ads/Py;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    new-instance v3, Lcom/google/android/gms/internal/ads/J;

    .line 290
    .line 291
    const/4 v15, 0x3

    .line 292
    invoke-direct {v3, v8, v15, v9}, Lcom/google/android/gms/internal/ads/J;-><init>(Ljava/lang/String;II)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Py;->E(Lcom/google/android/gms/internal/ads/J;)Ljava/net/HttpURLConnection;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    const/16 v5, 0x190

    .line 304
    .line 305
    if-ge v3, v5, :cond_17

    .line 306
    .line 307
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    if-gez v6, :cond_d

    .line 312
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string v1, "Stream cache aborted, missing content-length header at "

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    const-string v1, "contentLengthMissing"

    .line 338
    .line 339
    invoke-virtual {v7, v8, v0, v1, v10}, Lcom/google/android/gms/internal/ads/jf;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-interface {v4, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    return v9

    .line 346
    :cond_d
    sget-object v3, Lcom/google/android/gms/internal/ads/kf;->M:Ljava/text/DecimalFormat;

    .line 347
    .line 348
    int-to-long v9, v6

    .line 349
    invoke-virtual {v3, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->p:Lcom/google/android/gms/internal/ads/J7;

    .line 354
    .line 355
    iget-object v9, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 356
    .line 357
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    check-cast v5, Ljava/lang/Integer;

    .line 362
    .line 363
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 364
    .line 365
    .line 366
    move-result v9

    .line 367
    if-le v6, v9, :cond_e

    .line 368
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    const-string v1, "Content length "

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v1, " exceeds limit at "

    .line 383
    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    .line 402
    const-string v1, "File too big for full file cache. Size: "

    .line 403
    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    const-string v2, "sizeExceeded"

    .line 419
    .line 420
    invoke-virtual {v7, v8, v1, v2, v0}, Lcom/google/android/gms/internal/ads/jf;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-interface {v4, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    const/4 v1, 0x0

    .line 427
    return v1

    .line 428
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    const-string v5, "Caching "

    .line 434
    .line 435
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string v3, " bytes from "

    .line 442
    .line 443
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    invoke-static {v3}, Lp3/h;->b(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    .line 461
    .line 462
    .line 463
    move-result-object v10

    .line 464
    new-instance v5, Ljava/io/FileOutputStream;

    .line 465
    .line 466
    invoke-direct {v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_9

    .line 467
    .line 468
    .line 469
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    const/high16 v2, 0x100000

    .line 474
    .line 475
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 480
    .line 481
    iget-object v2, v2, Lk3/l;->j:LP3/b;

    .line 482
    .line 483
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    .line 485
    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 487
    .line 488
    .line 489
    move-result-wide v16

    .line 490
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->w:Lcom/google/android/gms/internal/ads/J7;

    .line 491
    .line 492
    iget-object v12, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 493
    .line 494
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    check-cast v2, Ljava/lang/Long;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    .line 499
    .line 500
    move-object/from16 v18, v5

    .line 501
    .line 502
    move v12, v6

    .line 503
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 504
    .line 505
    .line 506
    move-result-wide v5

    .line 507
    new-instance v2, Lo3/z;

    .line 508
    .line 509
    invoke-direct {v2, v5, v6}, Lo3/z;-><init>(J)V

    .line 510
    .line 511
    .line 512
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->v:Lcom/google/android/gms/internal/ads/J7;

    .line 513
    .line 514
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 515
    .line 516
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    check-cast v1, Ljava/lang/Long;

    .line 521
    .line 522
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 523
    .line 524
    .line 525
    move-result-wide v19

    .line 526
    const/4 v1, 0x0

    .line 527
    :goto_5
    invoke-interface {v10, v3}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 528
    .line 529
    .line 530
    move-result v5

    .line 531
    if-ltz v5, :cond_14

    .line 532
    .line 533
    add-int v6, v1, v5

    .line 534
    .line 535
    if-gt v6, v9, :cond_13

    .line 536
    .line 537
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 538
    .line 539
    .line 540
    :cond_f
    invoke-virtual {v4, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 541
    .line 542
    .line 543
    move-result v1

    .line 544
    if-gtz v1, :cond_f

    .line 545
    .line 546
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 547
    .line 548
    .line 549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 550
    .line 551
    .line 552
    move-result-wide v21

    .line 553
    sub-long v21, v21, v16

    .line 554
    .line 555
    const-wide/16 v23, 0x3e8

    .line 556
    .line 557
    mul-long v23, v23, v19

    .line 558
    .line 559
    cmp-long v1, v21, v23

    .line 560
    .line 561
    if-gtz v1, :cond_12

    .line 562
    .line 563
    iget-boolean v1, v7, Lcom/google/android/gms/internal/ads/kf;->K:Z

    .line 564
    .line 565
    if-nez v1, :cond_11

    .line 566
    .line 567
    invoke-virtual {v2}, Lo3/z;->b()Z

    .line 568
    .line 569
    .line 570
    move-result v1

    .line 571
    if-eqz v1, :cond_10

    .line 572
    .line 573
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v5

    .line 577
    sget-object v1, Lp3/d;->b:LE1/W;

    .line 578
    .line 579
    new-instance v15, Lcom/google/android/gms/internal/ads/df;

    .line 580
    .line 581
    move/from16 v22, v9

    .line 582
    .line 583
    move-object v9, v1

    .line 584
    move-object v1, v15

    .line 585
    move-object/from16 v23, v2

    .line 586
    .line 587
    move-object/from16 v2, p0

    .line 588
    .line 589
    move-object/from16 v24, v3

    .line 590
    .line 591
    move-object/from16 v3, p1

    .line 592
    .line 593
    move-object/from16 v25, v4

    .line 594
    .line 595
    move-object v4, v5

    .line 596
    move v5, v6

    .line 597
    move/from16 v26, v6

    .line 598
    .line 599
    move v6, v12

    .line 600
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/df;-><init>(Lcom/google/android/gms/internal/ads/jf;Ljava/lang/String;Ljava/lang/String;II)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v9, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 604
    .line 605
    .line 606
    goto :goto_6

    .line 607
    :cond_10
    move-object/from16 v23, v2

    .line 608
    .line 609
    move-object/from16 v24, v3

    .line 610
    .line 611
    move-object/from16 v25, v4

    .line 612
    .line 613
    move/from16 v26, v6

    .line 614
    .line 615
    move/from16 v22, v9

    .line 616
    .line 617
    :goto_6
    move/from16 v9, v22

    .line 618
    .line 619
    move-object/from16 v2, v23

    .line 620
    .line 621
    move-object/from16 v3, v24

    .line 622
    .line 623
    move-object/from16 v4, v25

    .line 624
    .line 625
    move/from16 v1, v26

    .line 626
    .line 627
    const/4 v15, 0x3

    .line 628
    goto :goto_5

    .line 629
    :cond_11
    const-string v14, "externalAbort"

    .line 630
    .line 631
    new-instance v0, Ljava/io/IOException;

    .line 632
    .line 633
    const-string v1, "abort requested"

    .line 634
    .line 635
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    throw v0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    goto :goto_7

    .line 641
    :catch_1
    move-exception v0

    .line 642
    :goto_7
    move-object/from16 v10, v18

    .line 643
    .line 644
    const/4 v1, 0x0

    .line 645
    goto/16 :goto_d

    .line 646
    .line 647
    :cond_12
    const-string v14, "downloadTimeout"

    .line 648
    .line 649
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    .line 654
    .line 655
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .line 657
    .line 658
    const-string v2, "Timeout exceeded. Limit: "

    .line 659
    .line 660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    const-string v0, " sec"

    .line 667
    .line 668
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 675
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    .line 676
    .line 677
    const-string v1, "stream cache time limit exceeded"

    .line 678
    .line 679
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 683
    :catch_2
    move-exception v0

    .line 684
    goto :goto_8

    .line 685
    :catch_3
    move-exception v0

    .line 686
    :goto_8
    move-object v1, v10

    .line 687
    move-object/from16 v10, v18

    .line 688
    .line 689
    goto/16 :goto_d

    .line 690
    .line 691
    :cond_13
    move/from16 v26, v6

    .line 692
    .line 693
    :try_start_5
    const-string v14, "sizeExceeded"

    .line 694
    .line 695
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    .line 700
    .line 701
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .line 703
    .line 704
    const-string v2, "File too big for full file cache. Size: "

    .line 705
    .line 706
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 716
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    .line 717
    .line 718
    const-string v1, "stream cache file size limit exceeded"

    .line 719
    .line 720
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    .line 724
    :cond_14
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 725
    .line 726
    .line 727
    const/4 v2, 0x3

    .line 728
    invoke-static {v2}, Lp3/h;->j(I)Z

    .line 729
    .line 730
    .line 731
    move-result v2

    .line 732
    if-eqz v2, :cond_15

    .line 733
    .line 734
    sget-object v2, Lcom/google/android/gms/internal/ads/kf;->M:Ljava/text/DecimalFormat;

    .line 735
    .line 736
    int-to-long v3, v1

    .line 737
    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    .line 742
    .line 743
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .line 745
    .line 746
    const-string v4, "Preloaded "

    .line 747
    .line 748
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    const-string v2, " bytes from "

    .line 755
    .line 756
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    invoke-static {v2}, Lp3/h;->b(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    :cond_15
    const/4 v2, 0x0

    .line 770
    const/4 v3, 0x1

    .line 771
    invoke-virtual {v11, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 772
    .line 773
    .line 774
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 775
    .line 776
    .line 777
    move-result v2

    .line 778
    if-eqz v2, :cond_16

    .line 779
    .line 780
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 781
    .line 782
    .line 783
    move-result-wide v2

    .line 784
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 785
    .line 786
    .line 787
    goto :goto_9

    .line 788
    :cond_16
    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 789
    .line 790
    .line 791
    :catch_4
    :goto_9
    :try_start_9
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    sget-object v2, Lp3/d;->b:LE1/W;

    .line 796
    .line 797
    new-instance v3, Lcom/google/android/gms/internal/ads/gf;

    .line 798
    .line 799
    invoke-direct {v3, v7, v8, v0, v1}, Lcom/google/android/gms/internal/ads/gf;-><init>(Lcom/google/android/gms/internal/ads/jf;Ljava/lang/String;Ljava/lang/String;I)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 803
    .line 804
    .line 805
    sget-object v0, Lcom/google/android/gms/internal/ads/kf;->L:Ljava/util/Set;

    .line 806
    .line 807
    invoke-interface {v0, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 808
    .line 809
    .line 810
    const/4 v0, 0x1

    .line 811
    return v0

    .line 812
    :catch_5
    move-exception v0

    .line 813
    :goto_a
    move-object/from16 v18, v5

    .line 814
    .line 815
    goto/16 :goto_7

    .line 816
    .line 817
    :catch_6
    move-exception v0

    .line 818
    goto :goto_a

    .line 819
    :cond_17
    :try_start_a
    const-string v14, "badUrl"

    .line 820
    .line 821
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    .line 826
    .line 827
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 828
    .line 829
    .line 830
    const-string v2, "HTTP request failed. Code: "

    .line 831
    .line 832
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_9

    .line 842
    :try_start_b
    new-instance v0, Ljava/io/IOException;

    .line 843
    .line 844
    new-instance v2, Ljava/lang/StringBuilder;

    .line 845
    .line 846
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 847
    .line 848
    .line 849
    const-string v4, "HTTP status code "

    .line 850
    .line 851
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    const-string v3, " at "

    .line 858
    .line 859
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v2

    .line 869
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_7

    .line 873
    :catch_7
    move-exception v0

    .line 874
    goto :goto_b

    .line 875
    :catch_8
    move-exception v0

    .line 876
    :goto_b
    const/4 v10, 0x0

    .line 877
    goto :goto_d

    .line 878
    :catch_9
    move-exception v0

    .line 879
    goto :goto_c

    .line 880
    :catch_a
    move-exception v0

    .line 881
    :goto_c
    const/4 v1, 0x0

    .line 882
    goto :goto_b

    .line 883
    :goto_d
    instance-of v2, v0, Ljava/lang/RuntimeException;

    .line 884
    .line 885
    if-eqz v2, :cond_18

    .line 886
    .line 887
    const-string v2, "VideoStreamFullFileCache.preload"

    .line 888
    .line 889
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 890
    .line 891
    iget-object v3, v3, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 892
    .line 893
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 894
    .line 895
    .line 896
    :cond_18
    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_b

    .line 897
    .line 898
    .line 899
    goto :goto_e

    .line 900
    :catch_b
    nop

    .line 901
    :goto_e
    iget-boolean v2, v7, Lcom/google/android/gms/internal/ads/kf;->K:Z

    .line 902
    .line 903
    if-eqz v2, :cond_19

    .line 904
    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    .line 906
    .line 907
    const-string v2, "Preload aborted for URL \""

    .line 908
    .line 909
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    .line 915
    const-string v2, "\""

    .line 916
    .line 917
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    invoke-static {v0}, Lp3/h;->f(Ljava/lang/String;)V

    .line 925
    .line 926
    .line 927
    goto :goto_f

    .line 928
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 929
    .line 930
    const-string v3, "Preload failed for URL \""

    .line 931
    .line 932
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    const-string v3, "\""

    .line 939
    .line 940
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v2

    .line 947
    invoke-static {v2, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 948
    .line 949
    .line 950
    :goto_f
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 951
    .line 952
    .line 953
    move-result v0

    .line 954
    if-eqz v0, :cond_1a

    .line 955
    .line 956
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 957
    .line 958
    .line 959
    move-result v0

    .line 960
    if-nez v0, :cond_1a

    .line 961
    .line 962
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v0

    .line 970
    const-string v2, "Could not delete partial cache file at "

    .line 971
    .line 972
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    :cond_1a
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    invoke-virtual {v7, v8, v0, v14, v1}, Lcom/google/android/gms/internal/ads/jf;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    sget-object v0, Lcom/google/android/gms/internal/ads/kf;->L:Ljava/util/Set;

    .line 987
    .line 988
    invoke-interface {v0, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 989
    .line 990
    .line 991
    :goto_10
    const/4 v1, 0x0

    .line 992
    return v1

    .line 993
    :goto_11
    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 994
    throw v0

    .line 995
    :cond_1b
    const-string v0, "noCacheDir"

    .line 996
    .line 997
    const/4 v1, 0x0

    .line 998
    invoke-virtual {v7, v8, v1, v0, v1}, Lcom/google/android/gms/internal/ads/jf;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    goto :goto_10
.end method

.method public final u(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kf;->J:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v2, ".done"

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget v2, Lcom/google/android/gms/internal/ads/Ly;->d:I

    .line 20
    .line 21
    new-instance v2, Ljava/io/File;

    .line 22
    .line 23
    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
