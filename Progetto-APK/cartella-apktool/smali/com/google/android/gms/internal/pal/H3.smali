.class public abstract Lcom/google/android/gms/internal/pal/H3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/pal/K3;

    .line 4
    .line 5
    const-class v3, Lcom/google/android/gms/internal/pal/m3;

    .line 6
    .line 7
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/pal/K3;-><init>(ILjava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    new-array v4, v1, [Lcom/google/android/gms/internal/pal/w4;

    .line 11
    .line 12
    aput-object v2, v4, v0

    .line 13
    .line 14
    new-instance v2, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    :goto_0
    const-string v6, "KeyTypeManager constructed with duplicate factories for primitive "

    .line 21
    .line 22
    if-gtz v5, :cond_1

    .line 23
    .line 24
    aget-object v7, v4, v5

    .line 25
    .line 26
    iget-object v8, v7, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    iget-object v9, v7, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 33
    .line 34
    if-nez v8, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    add-int/2addr v5, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_1
    aget-object v4, v4, v0

    .line 60
    .line 61
    iget-object v4, v4, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 62
    .line 63
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    const-string v2, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 67
    .line 68
    sput-object v2, Lcom/google/android/gms/internal/pal/H3;->a:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v2, Lcom/google/android/gms/internal/pal/K3;

    .line 71
    .line 72
    const/4 v4, 0x3

    .line 73
    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/pal/K3;-><init>(ILjava/lang/Class;)V

    .line 74
    .line 75
    .line 76
    new-array v4, v1, [Lcom/google/android/gms/internal/pal/w4;

    .line 77
    .line 78
    aput-object v2, v4, v0

    .line 79
    .line 80
    new-instance v2, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    :goto_1
    if-gtz v5, :cond_3

    .line 87
    .line 88
    aget-object v7, v4, v5

    .line 89
    .line 90
    iget-object v8, v7, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 91
    .line 92
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    iget-object v9, v7, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 97
    .line 98
    if-nez v8, :cond_2

    .line 99
    .line 100
    invoke-virtual {v2, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    add-int/2addr v5, v1

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :cond_3
    aget-object v4, v4, v0

    .line 124
    .line 125
    iget-object v4, v4, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 126
    .line 127
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 128
    .line 129
    .line 130
    const-string v2, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    .line 131
    .line 132
    sput-object v2, Lcom/google/android/gms/internal/pal/H3;->b:Ljava/lang/String;

    .line 133
    .line 134
    new-instance v2, Lcom/google/android/gms/internal/pal/K3;

    .line 135
    .line 136
    const/4 v4, 0x4

    .line 137
    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/pal/K3;-><init>(ILjava/lang/Class;)V

    .line 138
    .line 139
    .line 140
    new-array v4, v1, [Lcom/google/android/gms/internal/pal/w4;

    .line 141
    .line 142
    aput-object v2, v4, v0

    .line 143
    .line 144
    new-instance v2, Ljava/util/HashMap;

    .line 145
    .line 146
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 147
    .line 148
    .line 149
    const/4 v5, 0x0

    .line 150
    :goto_2
    if-gtz v5, :cond_5

    .line 151
    .line 152
    aget-object v7, v4, v5

    .line 153
    .line 154
    iget-object v8, v7, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 155
    .line 156
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    iget-object v9, v7, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 161
    .line 162
    if-nez v8, :cond_4

    .line 163
    .line 164
    invoke-virtual {v2, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    add-int/2addr v5, v1

    .line 168
    goto :goto_2

    .line 169
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 170
    .line 171
    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :cond_5
    aget-object v4, v4, v0

    .line 188
    .line 189
    iget-object v4, v4, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 190
    .line 191
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 192
    .line 193
    .line 194
    new-instance v2, Lcom/google/android/gms/internal/pal/K3;

    .line 195
    .line 196
    const/4 v4, 0x2

    .line 197
    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/pal/K3;-><init>(ILjava/lang/Class;)V

    .line 198
    .line 199
    .line 200
    new-array v4, v1, [Lcom/google/android/gms/internal/pal/w4;

    .line 201
    .line 202
    aput-object v2, v4, v0

    .line 203
    .line 204
    new-instance v2, Ljava/util/HashMap;

    .line 205
    .line 206
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 207
    .line 208
    .line 209
    const/4 v5, 0x0

    .line 210
    :goto_3
    if-gtz v5, :cond_7

    .line 211
    .line 212
    aget-object v7, v4, v5

    .line 213
    .line 214
    iget-object v8, v7, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 215
    .line 216
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    iget-object v9, v7, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 221
    .line 222
    if-nez v8, :cond_6

    .line 223
    .line 224
    invoke-virtual {v2, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    add-int/2addr v5, v1

    .line 228
    goto :goto_3

    .line 229
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 230
    .line 231
    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v0

    .line 247
    :cond_7
    aget-object v4, v4, v0

    .line 248
    .line 249
    iget-object v4, v4, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 250
    .line 251
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 252
    .line 253
    .line 254
    new-instance v2, Lcom/google/android/gms/internal/pal/K3;

    .line 255
    .line 256
    const/4 v4, 0x6

    .line 257
    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/pal/K3;-><init>(ILjava/lang/Class;)V

    .line 258
    .line 259
    .line 260
    new-array v4, v1, [Lcom/google/android/gms/internal/pal/w4;

    .line 261
    .line 262
    aput-object v2, v4, v0

    .line 263
    .line 264
    new-instance v2, Ljava/util/HashMap;

    .line 265
    .line 266
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 267
    .line 268
    .line 269
    const/4 v5, 0x0

    .line 270
    :goto_4
    if-gtz v5, :cond_9

    .line 271
    .line 272
    aget-object v7, v4, v5

    .line 273
    .line 274
    iget-object v8, v7, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 275
    .line 276
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    iget-object v9, v7, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 281
    .line 282
    if-nez v8, :cond_8

    .line 283
    .line 284
    invoke-virtual {v2, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    add-int/2addr v5, v1

    .line 288
    goto :goto_4

    .line 289
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 290
    .line 291
    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v0

    .line 307
    :cond_9
    aget-object v4, v4, v0

    .line 308
    .line 309
    iget-object v4, v4, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 310
    .line 311
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 312
    .line 313
    .line 314
    new-instance v2, Lcom/google/android/gms/internal/pal/K3;

    .line 315
    .line 316
    const/4 v4, 0x7

    .line 317
    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/pal/K3;-><init>(ILjava/lang/Class;)V

    .line 318
    .line 319
    .line 320
    new-array v4, v1, [Lcom/google/android/gms/internal/pal/w4;

    .line 321
    .line 322
    aput-object v2, v4, v0

    .line 323
    .line 324
    new-instance v2, Ljava/util/HashMap;

    .line 325
    .line 326
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 327
    .line 328
    .line 329
    const/4 v5, 0x0

    .line 330
    :goto_5
    if-gtz v5, :cond_b

    .line 331
    .line 332
    aget-object v7, v4, v5

    .line 333
    .line 334
    iget-object v8, v7, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 335
    .line 336
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v8

    .line 340
    iget-object v9, v7, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 341
    .line 342
    if-nez v8, :cond_a

    .line 343
    .line 344
    invoke-virtual {v2, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    add-int/2addr v5, v1

    .line 348
    goto :goto_5

    .line 349
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 350
    .line 351
    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw v0

    .line 367
    :cond_b
    aget-object v4, v4, v0

    .line 368
    .line 369
    iget-object v4, v4, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 370
    .line 371
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 372
    .line 373
    .line 374
    new-instance v2, Lcom/google/android/gms/internal/pal/K3;

    .line 375
    .line 376
    const/4 v4, 0x5

    .line 377
    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/pal/K3;-><init>(ILjava/lang/Class;)V

    .line 378
    .line 379
    .line 380
    new-array v4, v1, [Lcom/google/android/gms/internal/pal/w4;

    .line 381
    .line 382
    aput-object v2, v4, v0

    .line 383
    .line 384
    new-instance v2, Ljava/util/HashMap;

    .line 385
    .line 386
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 387
    .line 388
    .line 389
    const/4 v5, 0x0

    .line 390
    :goto_6
    if-gtz v5, :cond_d

    .line 391
    .line 392
    aget-object v7, v4, v5

    .line 393
    .line 394
    iget-object v8, v7, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 395
    .line 396
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    iget-object v9, v7, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 401
    .line 402
    if-nez v8, :cond_c

    .line 403
    .line 404
    invoke-virtual {v2, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    add-int/2addr v5, v1

    .line 408
    goto :goto_6

    .line 409
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 410
    .line 411
    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    throw v0

    .line 427
    :cond_d
    aget-object v4, v4, v0

    .line 428
    .line 429
    iget-object v4, v4, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 430
    .line 431
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 432
    .line 433
    .line 434
    new-instance v2, Lcom/google/android/gms/internal/pal/K3;

    .line 435
    .line 436
    const/16 v4, 0x8

    .line 437
    .line 438
    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/pal/K3;-><init>(ILjava/lang/Class;)V

    .line 439
    .line 440
    .line 441
    new-array v3, v1, [Lcom/google/android/gms/internal/pal/w4;

    .line 442
    .line 443
    aput-object v2, v3, v0

    .line 444
    .line 445
    new-instance v2, Ljava/util/HashMap;

    .line 446
    .line 447
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 448
    .line 449
    .line 450
    const/4 v4, 0x0

    .line 451
    :goto_7
    if-gtz v4, :cond_f

    .line 452
    .line 453
    aget-object v5, v3, v4

    .line 454
    .line 455
    iget-object v7, v5, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 456
    .line 457
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v7

    .line 461
    iget-object v8, v5, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 462
    .line 463
    if-nez v7, :cond_e

    .line 464
    .line 465
    invoke-virtual {v2, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    add-int/2addr v4, v1

    .line 469
    goto :goto_7

    .line 470
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 471
    .line 472
    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    throw v0

    .line 488
    :cond_f
    aget-object v0, v3, v0

    .line 489
    .line 490
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 491
    .line 492
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 493
    .line 494
    .line 495
    sget v0, Lcom/google/android/gms/internal/pal/x6;->a:I

    .line 496
    .line 497
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/pal/H3;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .line 499
    .line 500
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 503
    .line 504
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    .line 505
    .line 506
    .line 507
    throw v1
.end method

.method public static a()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/J3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->f(Lcom/google/android/gms/internal/pal/D3;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/pal/I4;->a()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/pal/M3;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->e(Lcom/google/android/gms/internal/pal/M3;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/pal/M3;

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->e(Lcom/google/android/gms/internal/pal/M3;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/pal/U3;->a()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/pal/M3;

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->e(Lcom/google/android/gms/internal/pal/M3;)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    const-string v0, "AES/GCM-SIV/NoPadding"

    .line 47
    .line 48
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/google/android/gms/internal/pal/M3;

    .line 52
    .line 53
    const/4 v1, 0x4

    .line 54
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->e(Lcom/google/android/gms/internal/pal/M3;)V

    .line 58
    .line 59
    .line 60
    :catch_0
    new-instance v0, Lcom/google/android/gms/internal/pal/M3;

    .line 61
    .line 62
    const/4 v1, 0x5

    .line 63
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->e(Lcom/google/android/gms/internal/pal/M3;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lcom/google/android/gms/internal/pal/M3;

    .line 70
    .line 71
    const/4 v1, 0x6

    .line 72
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->e(Lcom/google/android/gms/internal/pal/M3;)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcom/google/android/gms/internal/pal/M3;

    .line 79
    .line 80
    const/4 v1, 0x7

    .line 81
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->e(Lcom/google/android/gms/internal/pal/M3;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/google/android/gms/internal/pal/M3;

    .line 88
    .line 89
    const/16 v1, 0x8

    .line 90
    .line 91
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->e(Lcom/google/android/gms/internal/pal/M3;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
