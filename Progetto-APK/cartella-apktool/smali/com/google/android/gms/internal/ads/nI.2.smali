.class public abstract Lcom/google/android/gms/internal/ads/nI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:Ljava/lang/Class;

.field public static final c:Lcom/google/android/gms/internal/ads/mI;

.field public static final d:Z

.field public static final e:Z

.field public static final f:J

.field public static final g:J

.field public static final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const/4 v2, 0x2

    .line 2
    const/4 v3, 0x0

    .line 3
    const/4 v4, 0x1

    .line 4
    const-class v5, Ljava/lang/Class;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/nI;->l()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/ads/nI;->a:Lsun/misc/Unsafe;

    .line 11
    .line 12
    sget v6, Lcom/google/android/gms/internal/ads/RG;->a:I

    .line 13
    .line 14
    const-class v6, Llibcore/io/Memory;

    .line 15
    .line 16
    sput-object v6, Lcom/google/android/gms/internal/ads/nI;->b:Ljava/lang/Class;

    .line 17
    .line 18
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 19
    .line 20
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/nI;->v(Ljava/lang/Class;)Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 25
    .line 26
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/nI;->v(Ljava/lang/Class;)Z

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    :cond_0
    const/4 v7, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-eqz v7, :cond_2

    .line 35
    .line 36
    new-instance v7, Lcom/google/android/gms/internal/ads/lI;

    .line 37
    .line 38
    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/lI;-><init>(Lsun/misc/Unsafe;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-eqz v8, :cond_0

    .line 43
    .line 44
    new-instance v7, Lcom/google/android/gms/internal/ads/kI;

    .line 45
    .line 46
    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/kI;-><init>(Lsun/misc/Unsafe;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    sput-object v7, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 50
    .line 51
    const-string v8, "logMissingMethod"

    .line 52
    .line 53
    const-string v10, "com.google.protobuf.UnsafeUtil"

    .line 54
    .line 55
    const-string v11, "platform method missing - proto runtime falling back to safer methods: "

    .line 56
    .line 57
    const-class v12, Lcom/google/android/gms/internal/ads/nI;

    .line 58
    .line 59
    const-string v13, "address"

    .line 60
    .line 61
    const-string v14, "effectiveDirectAddress"

    .line 62
    .line 63
    const-class v15, Ljava/nio/Buffer;

    .line 64
    .line 65
    const-string v9, "getLong"

    .line 66
    .line 67
    const-class v16, Ljava/lang/reflect/Field;

    .line 68
    .line 69
    const-string v1, "objectFieldOffset"

    .line 70
    .line 71
    const-class v17, Ljava/lang/Object;

    .line 72
    .line 73
    if-nez v7, :cond_3

    .line 74
    .line 75
    :goto_1
    const/4 v0, 0x0

    .line 76
    goto :goto_5

    .line 77
    :cond_3
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Lsun/misc/Unsafe;

    .line 80
    .line 81
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-array v7, v4, [Ljava/lang/Class;

    .line 86
    .line 87
    aput-object v16, v7, v3

    .line 88
    .line 89
    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    .line 91
    .line 92
    new-array v7, v2, [Ljava/lang/Class;

    .line 93
    .line 94
    aput-object v17, v7, v3

    .line 95
    .line 96
    aput-object v6, v7, v4

    .line 97
    .line 98
    invoke-virtual {v0, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 99
    .line 100
    .line 101
    :try_start_1
    invoke-virtual {v15, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 102
    .line 103
    .line 104
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    goto :goto_2

    .line 106
    :catchall_0
    nop

    .line 107
    const/4 v0, 0x0

    .line 108
    :goto_2
    if-nez v0, :cond_5

    .line 109
    .line 110
    :try_start_2
    invoke-virtual {v15, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 111
    .line 112
    .line 113
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    goto :goto_3

    .line 115
    :catchall_1
    nop

    .line 116
    const/4 v0, 0x0

    .line 117
    :goto_3
    if-eqz v0, :cond_4

    .line 118
    .line 119
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 124
    .line 125
    if-ne v6, v7, :cond_4

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_4
    const/4 v0, 0x0

    .line 129
    :cond_5
    :goto_4
    if-nez v0, :cond_6

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_6
    const/4 v0, 0x1

    .line 133
    goto :goto_5

    .line 134
    :catchall_2
    move-exception v0

    .line 135
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v6, v7, v10, v8, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :goto_5
    sput-boolean v0, Lcom/google/android/gms/internal/ads/nI;->d:Z

    .line 158
    .line 159
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 160
    .line 161
    if-nez v0, :cond_7

    .line 162
    .line 163
    :goto_6
    const/4 v0, 0x0

    .line 164
    goto/16 :goto_7

    .line 165
    .line 166
    :cond_7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v0, Lsun/misc/Unsafe;

    .line 169
    .line 170
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    new-array v6, v4, [Ljava/lang/Class;

    .line 175
    .line 176
    aput-object v16, v6, v3

    .line 177
    .line 178
    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 179
    .line 180
    .line 181
    const-string v1, "arrayBaseOffset"

    .line 182
    .line 183
    new-array v6, v4, [Ljava/lang/Class;

    .line 184
    .line 185
    aput-object v5, v6, v3

    .line 186
    .line 187
    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 188
    .line 189
    .line 190
    const-string v1, "arrayIndexScale"

    .line 191
    .line 192
    new-array v6, v4, [Ljava/lang/Class;

    .line 193
    .line 194
    aput-object v5, v6, v3

    .line 195
    .line 196
    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 197
    .line 198
    .line 199
    const-string v1, "getInt"

    .line 200
    .line 201
    new-array v5, v2, [Ljava/lang/Class;

    .line 202
    .line 203
    aput-object v17, v5, v3

    .line 204
    .line 205
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 206
    .line 207
    aput-object v6, v5, v4

    .line 208
    .line 209
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 210
    .line 211
    .line 212
    const-string v1, "putInt"

    .line 213
    .line 214
    const/4 v5, 0x3

    .line 215
    new-array v7, v5, [Ljava/lang/Class;

    .line 216
    .line 217
    aput-object v17, v7, v3

    .line 218
    .line 219
    aput-object v6, v7, v4

    .line 220
    .line 221
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 222
    .line 223
    aput-object v5, v7, v2

    .line 224
    .line 225
    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 226
    .line 227
    .line 228
    new-array v1, v2, [Ljava/lang/Class;

    .line 229
    .line 230
    aput-object v17, v1, v3

    .line 231
    .line 232
    aput-object v6, v1, v4

    .line 233
    .line 234
    invoke-virtual {v0, v9, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 235
    .line 236
    .line 237
    const-string v1, "putLong"

    .line 238
    .line 239
    const/4 v5, 0x3

    .line 240
    new-array v7, v5, [Ljava/lang/Class;

    .line 241
    .line 242
    aput-object v17, v7, v3

    .line 243
    .line 244
    aput-object v6, v7, v4

    .line 245
    .line 246
    aput-object v6, v7, v2

    .line 247
    .line 248
    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 249
    .line 250
    .line 251
    const-string v1, "getObject"

    .line 252
    .line 253
    new-array v5, v2, [Ljava/lang/Class;

    .line 254
    .line 255
    aput-object v17, v5, v3

    .line 256
    .line 257
    aput-object v6, v5, v4

    .line 258
    .line 259
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 260
    .line 261
    .line 262
    const-string v1, "putObject"

    .line 263
    .line 264
    const/4 v5, 0x3

    .line 265
    new-array v5, v5, [Ljava/lang/Class;

    .line 266
    .line 267
    aput-object v17, v5, v3

    .line 268
    .line 269
    aput-object v6, v5, v4

    .line 270
    .line 271
    aput-object v17, v5, v2

    .line 272
    .line 273
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 274
    .line 275
    .line 276
    const/4 v0, 0x1

    .line 277
    goto :goto_7

    .line 278
    :catchall_3
    move-exception v0

    .line 279
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v1, v2, v10, v8, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_6

    .line 301
    .line 302
    :goto_7
    sput-boolean v0, Lcom/google/android/gms/internal/ads/nI;->e:Z

    .line 303
    .line 304
    const-class v0, [B

    .line 305
    .line 306
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nI;->a(Ljava/lang/Class;)I

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    int-to-long v0, v0

    .line 311
    sput-wide v0, Lcom/google/android/gms/internal/ads/nI;->f:J

    .line 312
    .line 313
    const-class v0, [Z

    .line 314
    .line 315
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nI;->a(Ljava/lang/Class;)I

    .line 316
    .line 317
    .line 318
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nI;->b(Ljava/lang/Class;)V

    .line 319
    .line 320
    .line 321
    const-class v0, [I

    .line 322
    .line 323
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nI;->a(Ljava/lang/Class;)I

    .line 324
    .line 325
    .line 326
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nI;->b(Ljava/lang/Class;)V

    .line 327
    .line 328
    .line 329
    const-class v0, [J

    .line 330
    .line 331
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nI;->a(Ljava/lang/Class;)I

    .line 332
    .line 333
    .line 334
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nI;->b(Ljava/lang/Class;)V

    .line 335
    .line 336
    .line 337
    const-class v0, [F

    .line 338
    .line 339
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nI;->a(Ljava/lang/Class;)I

    .line 340
    .line 341
    .line 342
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nI;->b(Ljava/lang/Class;)V

    .line 343
    .line 344
    .line 345
    const-class v0, [D

    .line 346
    .line 347
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nI;->a(Ljava/lang/Class;)I

    .line 348
    .line 349
    .line 350
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nI;->b(Ljava/lang/Class;)V

    .line 351
    .line 352
    .line 353
    const-class v0, [Ljava/lang/Object;

    .line 354
    .line 355
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nI;->a(Ljava/lang/Class;)I

    .line 356
    .line 357
    .line 358
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nI;->b(Ljava/lang/Class;)V

    .line 359
    .line 360
    .line 361
    sget v0, Lcom/google/android/gms/internal/ads/RG;->a:I

    .line 362
    .line 363
    :try_start_5
    invoke-virtual {v15, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 364
    .line 365
    .line 366
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 367
    goto :goto_8

    .line 368
    :catchall_4
    nop

    .line 369
    const/4 v0, 0x0

    .line 370
    :goto_8
    if-nez v0, :cond_8

    .line 371
    .line 372
    :try_start_6
    invoke-virtual {v15, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 373
    .line 374
    .line 375
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 376
    goto :goto_9

    .line 377
    :catchall_5
    nop

    .line 378
    const/4 v0, 0x0

    .line 379
    :goto_9
    if-eqz v0, :cond_9

    .line 380
    .line 381
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 386
    .line 387
    if-ne v1, v2, :cond_9

    .line 388
    .line 389
    :cond_8
    move-object v9, v0

    .line 390
    goto :goto_a

    .line 391
    :cond_9
    const/4 v9, 0x0

    .line 392
    :goto_a
    const-wide/16 v0, -0x1

    .line 393
    .line 394
    if-eqz v9, :cond_b

    .line 395
    .line 396
    sget-object v2, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 397
    .line 398
    if-nez v2, :cond_a

    .line 399
    .line 400
    goto :goto_b

    .line 401
    :cond_a
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v0, Lsun/misc/Unsafe;

    .line 404
    .line 405
    invoke-virtual {v0, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 406
    .line 407
    .line 408
    move-result-wide v0

    .line 409
    :cond_b
    :goto_b
    sput-wide v0, Lcom/google/android/gms/internal/ads/nI;->g:J

    .line 410
    .line 411
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 416
    .line 417
    if-ne v0, v1, :cond_c

    .line 418
    .line 419
    const/4 v3, 0x1

    .line 420
    :cond_c
    sput-boolean v3, Lcom/google/android/gms/internal/ads/nI;->h:Z

    .line 421
    .line 422
    return-void
.end method

.method public static a(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/nI;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lsun/misc/Unsafe;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    return p0
.end method

.method public static b(Ljava/lang/Class;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/nI;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lsun/misc/Unsafe;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/Object;JB)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lsun/misc/Unsafe;

    .line 6
    .line 7
    const-wide/16 v2, -0x4

    .line 8
    .line 9
    and-long/2addr v2, p1

    .line 10
    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    long-to-int p2, p1

    .line 15
    not-int p1, p2

    .line 16
    and-int/lit8 p1, p1, 0x3

    .line 17
    .line 18
    shl-int/lit8 p1, p1, 0x3

    .line 19
    .line 20
    const/16 p2, 0xff

    .line 21
    .line 22
    shl-int v4, p2, p1

    .line 23
    .line 24
    not-int v4, v4

    .line 25
    and-int/2addr v1, v4

    .line 26
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lsun/misc/Unsafe;

    .line 29
    .line 30
    and-int/2addr p2, p3

    .line 31
    shl-int p1, p2, p1

    .line 32
    .line 33
    or-int/2addr p1, v1

    .line 34
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static d(Ljava/lang/Object;JB)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lsun/misc/Unsafe;

    .line 6
    .line 7
    const-wide/16 v2, -0x4

    .line 8
    .line 9
    and-long/2addr v2, p1

    .line 10
    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    long-to-int p2, p1

    .line 15
    and-int/lit8 p1, p2, 0x3

    .line 16
    .line 17
    shl-int/lit8 p1, p1, 0x3

    .line 18
    .line 19
    const/16 p2, 0xff

    .line 20
    .line 21
    shl-int v4, p2, p1

    .line 22
    .line 23
    not-int v4, v4

    .line 24
    and-int/2addr v1, v4

    .line 25
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lsun/misc/Unsafe;

    .line 28
    .line 29
    and-int/2addr p2, p3

    .line 30
    shl-int p1, p2, p1

    .line 31
    .line 32
    or-int/2addr p1, v1

    .line 33
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static e(Ljava/lang/Object;J)D
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/mI;->M(Ljava/lang/Object;J)D

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static f(Ljava/lang/Object;J)F
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/mI;->Q0(Ljava/lang/Object;J)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static g(Ljava/lang/Object;J)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lsun/misc/Unsafe;

    .line 6
    .line 7
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static h(Ljava/nio/ByteBuffer;)J
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lsun/misc/Unsafe;

    .line 6
    .line 7
    sget-wide v1, Lcom/google/android/gms/internal/ads/nI;->g:J

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public static i(Ljava/lang/Object;J)J
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lsun/misc/Unsafe;

    .line 6
    .line 7
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static j(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->a:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public static k(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lsun/misc/Unsafe;

    .line 6
    .line 7
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static l()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/jI;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0
.end method

.method public static m(Ljava/lang/Object;JZ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/mI;->S0(Ljava/lang/Object;JZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static n([BJB)V
    .locals 2

    .line 1
    sget-wide v0, Lcom/google/android/gms/internal/ads/nI;->f:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 5
    .line 6
    invoke-virtual {p1, p0, v0, v1, p3}, Lcom/google/android/gms/internal/ads/mI;->T0(Ljava/lang/Object;JB)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static o(Ljava/lang/Object;JD)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-wide v2, p1

    .line 5
    move-wide v4, p3

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/mI;->U0(Ljava/lang/Object;JD)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static p(Ljava/lang/Object;JF)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/mI;->V0(Ljava/lang/Object;JF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static q(Ljava/lang/Object;IJ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lsun/misc/Unsafe;

    .line 6
    .line 7
    invoke-virtual {v0, p0, p2, p3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static r(Ljava/lang/Object;JJ)V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Lsun/misc/Unsafe;

    .line 7
    .line 8
    move-object v2, p0

    .line 9
    move-wide v3, p1

    .line 10
    move-wide v5, p3

    .line 11
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static s(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lsun/misc/Unsafe;

    .line 6
    .line 7
    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static bridge synthetic t(Ljava/lang/Object;J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lsun/misc/Unsafe;

    .line 6
    .line 7
    const-wide/16 v1, -0x4

    .line 8
    .line 9
    and-long/2addr v1, p1

    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    not-long p1, p1

    .line 15
    const-wide/16 v0, 0x3

    .line 16
    .line 17
    and-long/2addr p1, v0

    .line 18
    const/4 v0, 0x3

    .line 19
    shl-long/2addr p1, v0

    .line 20
    long-to-int p2, p1

    .line 21
    ushr-int/2addr p0, p2

    .line 22
    and-int/lit16 p0, p0, 0xff

    .line 23
    .line 24
    int-to-byte p0, p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public static bridge synthetic u(Ljava/lang/Object;J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lsun/misc/Unsafe;

    .line 6
    .line 7
    const-wide/16 v1, -0x4

    .line 8
    .line 9
    and-long/2addr v1, p1

    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const-wide/16 v0, 0x3

    .line 15
    .line 16
    and-long/2addr p1, v0

    .line 17
    const/4 v0, 0x3

    .line 18
    shl-long/2addr p1, v0

    .line 19
    long-to-int p2, p1

    .line 20
    ushr-int/2addr p0, p2

    .line 21
    and-int/lit16 p0, p0, 0xff

    .line 22
    .line 23
    int-to-byte p0, p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public static v(Ljava/lang/Class;)Z
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-class v2, [B

    .line 4
    .line 5
    sget v3, Lcom/google/android/gms/internal/ads/RG;->a:I

    .line 6
    .line 7
    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/ads/nI;->b:Ljava/lang/Class;

    .line 8
    .line 9
    const-string v4, "peekLong"

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    new-array v6, v5, [Ljava/lang/Class;

    .line 13
    .line 14
    aput-object p0, v6, v1

    .line 15
    .line 16
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    aput-object v7, v6, v0

    .line 19
    .line 20
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    const-string v4, "pokeLong"

    .line 24
    .line 25
    const/4 v6, 0x3

    .line 26
    new-array v8, v6, [Ljava/lang/Class;

    .line 27
    .line 28
    aput-object p0, v8, v1

    .line 29
    .line 30
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    aput-object v9, v8, v0

    .line 33
    .line 34
    aput-object v7, v8, v5

    .line 35
    .line 36
    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    const-string v4, "pokeInt"

    .line 40
    .line 41
    new-array v8, v6, [Ljava/lang/Class;

    .line 42
    .line 43
    aput-object p0, v8, v1

    .line 44
    .line 45
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 46
    .line 47
    aput-object v9, v8, v0

    .line 48
    .line 49
    aput-object v7, v8, v5

    .line 50
    .line 51
    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 52
    .line 53
    .line 54
    const-string v4, "peekInt"

    .line 55
    .line 56
    new-array v8, v5, [Ljava/lang/Class;

    .line 57
    .line 58
    aput-object p0, v8, v1

    .line 59
    .line 60
    aput-object v7, v8, v0

    .line 61
    .line 62
    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    .line 64
    .line 65
    const-string v4, "pokeByte"

    .line 66
    .line 67
    new-array v7, v5, [Ljava/lang/Class;

    .line 68
    .line 69
    aput-object p0, v7, v1

    .line 70
    .line 71
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 72
    .line 73
    aput-object v8, v7, v0

    .line 74
    .line 75
    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    .line 77
    .line 78
    const-string v4, "peekByte"

    .line 79
    .line 80
    new-array v7, v0, [Ljava/lang/Class;

    .line 81
    .line 82
    aput-object p0, v7, v1

    .line 83
    .line 84
    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 85
    .line 86
    .line 87
    const-string v4, "pokeByteArray"

    .line 88
    .line 89
    const/4 v7, 0x4

    .line 90
    new-array v8, v7, [Ljava/lang/Class;

    .line 91
    .line 92
    aput-object p0, v8, v1

    .line 93
    .line 94
    aput-object v2, v8, v0

    .line 95
    .line 96
    aput-object v9, v8, v5

    .line 97
    .line 98
    aput-object v9, v8, v6

    .line 99
    .line 100
    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 101
    .line 102
    .line 103
    const-string v4, "peekByteArray"

    .line 104
    .line 105
    new-array v7, v7, [Ljava/lang/Class;

    .line 106
    .line 107
    aput-object p0, v7, v1

    .line 108
    .line 109
    aput-object v2, v7, v0

    .line 110
    .line 111
    aput-object v9, v7, v5

    .line 112
    .line 113
    aput-object v9, v7, v6

    .line 114
    .line 115
    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    return v0

    .line 119
    :catchall_0
    return v1
.end method

.method public static w(Ljava/lang/Object;J)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/mI;->W0(Ljava/lang/Object;J)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
