.class public abstract Lcom/google/android/gms/internal/pal/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:Ljava/lang/Class;

.field public static final c:Lcom/google/android/gms/internal/pal/t0;

.field public static final d:Z

.field public static final e:Z

.field public static final f:J

.field public static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const/4 v2, 0x2

    .line 2
    const-class v3, Ljava/lang/Class;

    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/pal/v0;->j()Lsun/misc/Unsafe;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/google/android/gms/internal/pal/v0;->a:Lsun/misc/Unsafe;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/pal/l;->a()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    sput-object v4, Lcom/google/android/gms/internal/pal/v0;->b:Ljava/lang/Class;

    .line 15
    .line 16
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    invoke-static {v4}, Lcom/google/android/gms/internal/pal/v0;->t(Ljava/lang/Class;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    invoke-static {v6}, Lcom/google/android/gms/internal/pal/v0;->t(Ljava/lang/Class;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const/4 v8, 0x1

    .line 29
    const/4 v9, 0x0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    :cond_0
    const/4 v5, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-eqz v5, :cond_2

    .line 35
    .line 36
    new-instance v5, Lcom/google/android/gms/internal/pal/t0;

    .line 37
    .line 38
    invoke-direct {v5, v0, v8}, Lcom/google/android/gms/internal/pal/t0;-><init>(Lsun/misc/Unsafe;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-eqz v6, :cond_0

    .line 43
    .line 44
    new-instance v5, Lcom/google/android/gms/internal/pal/t0;

    .line 45
    .line 46
    invoke-direct {v5, v0, v9}, Lcom/google/android/gms/internal/pal/t0;-><init>(Lsun/misc/Unsafe;I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    sput-object v5, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 50
    .line 51
    const-string v6, "logMissingMethod"

    .line 52
    .line 53
    const-string v10, "com.google.protobuf.UnsafeUtil"

    .line 54
    .line 55
    const-string v11, "platform method missing - proto runtime falling back to safer methods: "

    .line 56
    .line 57
    const-class v12, Lcom/google/android/gms/internal/pal/v0;

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
    const-string v7, "getLong"

    .line 66
    .line 67
    const-string v1, "objectFieldOffset"

    .line 68
    .line 69
    const-class v16, Ljava/lang/reflect/Field;

    .line 70
    .line 71
    const-class v17, Ljava/lang/Object;

    .line 72
    .line 73
    if-nez v5, :cond_3

    .line 74
    .line 75
    :goto_1
    const/4 v0, 0x0

    .line 76
    goto :goto_5

    .line 77
    :cond_3
    iget-object v0, v5, Lcom/google/android/gms/internal/pal/u0;->a:Lsun/misc/Unsafe;

    .line 78
    .line 79
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-array v5, v8, [Ljava/lang/Class;

    .line 84
    .line 85
    aput-object v16, v5, v9

    .line 86
    .line 87
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 88
    .line 89
    .line 90
    new-array v5, v2, [Ljava/lang/Class;

    .line 91
    .line 92
    aput-object v17, v5, v9

    .line 93
    .line 94
    aput-object v4, v5, v8

    .line 95
    .line 96
    invoke-virtual {v0, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 97
    .line 98
    .line 99
    :try_start_1
    invoke-virtual {v15, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 100
    .line 101
    .line 102
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    goto :goto_2

    .line 104
    :catchall_0
    nop

    .line 105
    const/4 v0, 0x0

    .line 106
    :goto_2
    if-nez v0, :cond_5

    .line 107
    .line 108
    :try_start_2
    invoke-virtual {v15, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 109
    .line 110
    .line 111
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    goto :goto_3

    .line 113
    :catchall_1
    nop

    .line 114
    const/4 v0, 0x0

    .line 115
    :goto_3
    if-eqz v0, :cond_4

    .line 116
    .line 117
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 122
    .line 123
    if-ne v4, v5, :cond_4

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_4
    const/4 v0, 0x0

    .line 127
    :cond_5
    :goto_4
    if-nez v0, :cond_6

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_6
    const/4 v0, 0x1

    .line 131
    goto :goto_5

    .line 132
    :catchall_2
    move-exception v0

    .line 133
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v4, v5, v10, v6, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :goto_5
    sput-boolean v0, Lcom/google/android/gms/internal/pal/v0;->d:Z

    .line 156
    .line 157
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 158
    .line 159
    if-nez v0, :cond_7

    .line 160
    .line 161
    :goto_6
    const/4 v0, 0x0

    .line 162
    goto/16 :goto_7

    .line 163
    .line 164
    :cond_7
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/u0;->a:Lsun/misc/Unsafe;

    .line 165
    .line 166
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    new-array v4, v8, [Ljava/lang/Class;

    .line 171
    .line 172
    aput-object v16, v4, v9

    .line 173
    .line 174
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 175
    .line 176
    .line 177
    new-array v1, v8, [Ljava/lang/Class;

    .line 178
    .line 179
    aput-object v3, v1, v9

    .line 180
    .line 181
    const-string v4, "arrayBaseOffset"

    .line 182
    .line 183
    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 184
    .line 185
    .line 186
    new-array v1, v8, [Ljava/lang/Class;

    .line 187
    .line 188
    aput-object v3, v1, v9

    .line 189
    .line 190
    const-string v3, "arrayIndexScale"

    .line 191
    .line 192
    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 193
    .line 194
    .line 195
    new-array v1, v2, [Ljava/lang/Class;

    .line 196
    .line 197
    aput-object v17, v1, v9

    .line 198
    .line 199
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 200
    .line 201
    aput-object v3, v1, v8

    .line 202
    .line 203
    const-string v4, "getInt"

    .line 204
    .line 205
    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 206
    .line 207
    .line 208
    const/4 v1, 0x3

    .line 209
    new-array v4, v1, [Ljava/lang/Class;

    .line 210
    .line 211
    aput-object v17, v4, v9

    .line 212
    .line 213
    aput-object v3, v4, v8

    .line 214
    .line 215
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 216
    .line 217
    aput-object v1, v4, v2

    .line 218
    .line 219
    const-string v1, "putInt"

    .line 220
    .line 221
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 222
    .line 223
    .line 224
    new-array v1, v2, [Ljava/lang/Class;

    .line 225
    .line 226
    aput-object v17, v1, v9

    .line 227
    .line 228
    aput-object v3, v1, v8

    .line 229
    .line 230
    invoke-virtual {v0, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 231
    .line 232
    .line 233
    const/4 v1, 0x3

    .line 234
    new-array v4, v1, [Ljava/lang/Class;

    .line 235
    .line 236
    aput-object v17, v4, v9

    .line 237
    .line 238
    aput-object v3, v4, v8

    .line 239
    .line 240
    aput-object v3, v4, v2

    .line 241
    .line 242
    const-string v1, "putLong"

    .line 243
    .line 244
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 245
    .line 246
    .line 247
    new-array v1, v2, [Ljava/lang/Class;

    .line 248
    .line 249
    aput-object v17, v1, v9

    .line 250
    .line 251
    aput-object v3, v1, v8

    .line 252
    .line 253
    const-string v4, "getObject"

    .line 254
    .line 255
    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 256
    .line 257
    .line 258
    const/4 v1, 0x3

    .line 259
    new-array v1, v1, [Ljava/lang/Class;

    .line 260
    .line 261
    aput-object v17, v1, v9

    .line 262
    .line 263
    aput-object v3, v1, v8

    .line 264
    .line 265
    aput-object v17, v1, v2

    .line 266
    .line 267
    const-string v2, "putObject"

    .line 268
    .line 269
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 270
    .line 271
    .line 272
    const/4 v0, 0x1

    .line 273
    goto :goto_7

    .line 274
    :catchall_3
    move-exception v0

    .line 275
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v1, v2, v10, v6, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_6

    .line 297
    .line 298
    :goto_7
    sput-boolean v0, Lcom/google/android/gms/internal/pal/v0;->e:Z

    .line 299
    .line 300
    const-class v0, [B

    .line 301
    .line 302
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/v0;->v(Ljava/lang/Class;)I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    int-to-long v0, v0

    .line 307
    sput-wide v0, Lcom/google/android/gms/internal/pal/v0;->f:J

    .line 308
    .line 309
    const-class v0, [Z

    .line 310
    .line 311
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/v0;->v(Ljava/lang/Class;)I

    .line 312
    .line 313
    .line 314
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/v0;->a(Ljava/lang/Class;)V

    .line 315
    .line 316
    .line 317
    const-class v0, [I

    .line 318
    .line 319
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/v0;->v(Ljava/lang/Class;)I

    .line 320
    .line 321
    .line 322
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/v0;->a(Ljava/lang/Class;)V

    .line 323
    .line 324
    .line 325
    const-class v0, [J

    .line 326
    .line 327
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/v0;->v(Ljava/lang/Class;)I

    .line 328
    .line 329
    .line 330
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/v0;->a(Ljava/lang/Class;)V

    .line 331
    .line 332
    .line 333
    const-class v0, [F

    .line 334
    .line 335
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/v0;->v(Ljava/lang/Class;)I

    .line 336
    .line 337
    .line 338
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/v0;->a(Ljava/lang/Class;)V

    .line 339
    .line 340
    .line 341
    const-class v0, [D

    .line 342
    .line 343
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/v0;->v(Ljava/lang/Class;)I

    .line 344
    .line 345
    .line 346
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/v0;->a(Ljava/lang/Class;)V

    .line 347
    .line 348
    .line 349
    const-class v0, [Ljava/lang/Object;

    .line 350
    .line 351
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/v0;->v(Ljava/lang/Class;)I

    .line 352
    .line 353
    .line 354
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/v0;->a(Ljava/lang/Class;)V

    .line 355
    .line 356
    .line 357
    sget v0, Lcom/google/android/gms/internal/pal/l;->a:I

    .line 358
    .line 359
    :try_start_5
    invoke-virtual {v15, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 360
    .line 361
    .line 362
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 363
    goto :goto_8

    .line 364
    :catchall_4
    nop

    .line 365
    const/4 v0, 0x0

    .line 366
    :goto_8
    if-nez v0, :cond_8

    .line 367
    .line 368
    :try_start_6
    invoke-virtual {v15, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 369
    .line 370
    .line 371
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 372
    goto :goto_9

    .line 373
    :catchall_5
    nop

    .line 374
    const/4 v0, 0x0

    .line 375
    :goto_9
    if-eqz v0, :cond_9

    .line 376
    .line 377
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 382
    .line 383
    if-ne v1, v2, :cond_9

    .line 384
    .line 385
    :cond_8
    move-object v7, v0

    .line 386
    goto :goto_a

    .line 387
    :cond_9
    const/4 v7, 0x0

    .line 388
    :goto_a
    if-eqz v7, :cond_a

    .line 389
    .line 390
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 391
    .line 392
    if-eqz v0, :cond_a

    .line 393
    .line 394
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/pal/u0;->e(Ljava/lang/reflect/Field;)V

    .line 395
    .line 396
    .line 397
    :cond_a
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 402
    .line 403
    if-ne v0, v1, :cond_b

    .line 404
    .line 405
    goto :goto_b

    .line 406
    :cond_b
    const/4 v8, 0x0

    .line 407
    :goto_b
    sput-boolean v8, Lcom/google/android/gms/internal/pal/v0;->g:Z

    .line 408
    .line 409
    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/pal/v0;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/pal/u0;->b(Ljava/lang/Class;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Object;JB)V
    .locals 5

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 5
    .line 6
    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/pal/u0;->c(Ljava/lang/Object;J)I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    long-to-int p2, p1

    .line 11
    not-int p1, p2

    .line 12
    and-int/lit8 p1, p1, 0x3

    .line 13
    .line 14
    shl-int/lit8 p1, p1, 0x3

    .line 15
    .line 16
    const/16 p2, 0xff

    .line 17
    .line 18
    shl-int v4, p2, p1

    .line 19
    .line 20
    not-int v4, v4

    .line 21
    and-int/2addr v3, v4

    .line 22
    and-int/2addr p2, p3

    .line 23
    shl-int p1, p2, p1

    .line 24
    .line 25
    or-int/2addr p1, v3

    .line 26
    invoke-virtual {v2, p0, p1, v0, v1}, Lcom/google/android/gms/internal/pal/u0;->g(Ljava/lang/Object;IJ)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static c(Ljava/lang/Object;JB)V
    .locals 5

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 5
    .line 6
    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/pal/u0;->c(Ljava/lang/Object;J)I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    long-to-int p2, p1

    .line 11
    and-int/lit8 p1, p2, 0x3

    .line 12
    .line 13
    shl-int/lit8 p1, p1, 0x3

    .line 14
    .line 15
    const/16 p2, 0xff

    .line 16
    .line 17
    shl-int v4, p2, p1

    .line 18
    .line 19
    not-int v4, v4

    .line 20
    and-int/2addr v3, v4

    .line 21
    and-int/2addr p2, p3

    .line 22
    shl-int p1, p2, p1

    .line 23
    .line 24
    or-int/2addr p1, v3

    .line 25
    invoke-virtual {v2, p0, p1, v0, v1}, Lcom/google/android/gms/internal/pal/u0;->g(Ljava/lang/Object;IJ)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static d(Ljava/lang/Object;J)D
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/pal/t0;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/pal/u0;->d(Ljava/lang/Object;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/pal/u0;->d(Ljava/lang/Object;J)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 22
    .line 23
    .line 24
    move-result-wide p0

    .line 25
    :goto_0
    return-wide p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Ljava/lang/Object;J)F
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/pal/t0;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/pal/u0;->c(Ljava/lang/Object;J)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/pal/u0;->c(Ljava/lang/Object;J)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    :goto_0
    return p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static f(Ljava/lang/Object;J)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/pal/u0;->c(Ljava/lang/Object;J)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static g(Ljava/lang/Object;J)J
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/pal/u0;->d(Ljava/lang/Object;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static h(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->a:Lsun/misc/Unsafe;

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

.method public static i(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/pal/u0;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static j()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/pal/s0;

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

.method public static k(Ljava/lang/Object;JZ)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/gms/internal/pal/t0;->b:I

    .line 4
    .line 5
    sget-boolean v1, Lcom/google/android/gms/internal/pal/v0;->g:Z

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/pal/v0;->b(Ljava/lang/Object;JB)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/pal/v0;->c(Ljava/lang/Object;JB)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_0
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/pal/v0;->b(Ljava/lang/Object;JB)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/pal/v0;->c(Ljava/lang/Object;JB)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static l([BJB)V
    .locals 2

    .line 1
    sget-wide v0, Lcom/google/android/gms/internal/pal/v0;->f:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 5
    .line 6
    iget p1, p1, Lcom/google/android/gms/internal/pal/t0;->b:I

    .line 7
    .line 8
    sget-boolean p2, Lcom/google/android/gms/internal/pal/v0;->g:Z

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-static {p0, v0, v1, p3}, Lcom/google/android/gms/internal/pal/v0;->b(Ljava/lang/Object;JB)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p0, v0, v1, p3}, Lcom/google/android/gms/internal/pal/v0;->c(Ljava/lang/Object;JB)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_0
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-static {p0, v0, v1, p3}, Lcom/google/android/gms/internal/pal/v0;->b(Ljava/lang/Object;JB)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p0, v0, v1, p3}, Lcom/google/android/gms/internal/pal/v0;->c(Ljava/lang/Object;JB)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static m(Ljava/lang/Object;JD)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/pal/t0;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 9
    .line 10
    .line 11
    move-result-wide v4

    .line 12
    move-object v1, p0

    .line 13
    move-wide v2, p1

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/u0;->h(Ljava/lang/Object;JJ)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_0
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    move-object v1, p0

    .line 23
    move-wide v2, p1

    .line 24
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/u0;->h(Ljava/lang/Object;JJ)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static n(Ljava/lang/Object;JF)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/pal/t0;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    invoke-virtual {v0, p0, p3, p1, p2}, Lcom/google/android/gms/internal/pal/u0;->g(Ljava/lang/Object;IJ)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_0
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    invoke-virtual {v0, p0, p3, p1, p2}, Lcom/google/android/gms/internal/pal/u0;->g(Ljava/lang/Object;IJ)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static o(Ljava/lang/Object;JI)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p3, p1, p2}, Lcom/google/android/gms/internal/pal/u0;->g(Ljava/lang/Object;IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static p(Ljava/lang/Object;JJ)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-wide v2, p1

    .line 5
    move-wide v4, p3

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/u0;->h(Ljava/lang/Object;JJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static q(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/pal/u0;->i(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic r(Ljava/lang/Object;J)Z
    .locals 3

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 5
    .line 6
    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/pal/u0;->c(Ljava/lang/Object;J)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    not-long p1, p1

    .line 11
    const-wide/16 v0, 0x3

    .line 12
    .line 13
    and-long/2addr p1, v0

    .line 14
    const/4 v0, 0x3

    .line 15
    shl-long/2addr p1, v0

    .line 16
    long-to-int p2, p1

    .line 17
    ushr-int/2addr p0, p2

    .line 18
    and-int/lit16 p0, p0, 0xff

    .line 19
    .line 20
    int-to-byte p0, p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public static bridge synthetic s(Ljava/lang/Object;J)Z
    .locals 3

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 5
    .line 6
    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/pal/u0;->c(Ljava/lang/Object;J)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const-wide/16 v0, 0x3

    .line 11
    .line 12
    and-long/2addr p1, v0

    .line 13
    const/4 v0, 0x3

    .line 14
    shl-long/2addr p1, v0

    .line 15
    long-to-int p2, p1

    .line 16
    ushr-int/2addr p0, p2

    .line 17
    and-int/lit16 p0, p0, 0xff

    .line 18
    .line 19
    int-to-byte p0, p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public static t(Ljava/lang/Class;)Z
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-class v2, [B

    .line 4
    .line 5
    sget v3, Lcom/google/android/gms/internal/pal/l;->a:I

    .line 6
    .line 7
    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/pal/v0;->b:Ljava/lang/Class;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    new-array v5, v4, [Ljava/lang/Class;

    .line 11
    .line 12
    aput-object p0, v5, v1

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    aput-object v6, v5, v0

    .line 17
    .line 18
    const-string v7, "peekLong"

    .line 19
    .line 20
    invoke-virtual {v3, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    new-array v7, v5, [Ljava/lang/Class;

    .line 25
    .line 26
    aput-object p0, v7, v1

    .line 27
    .line 28
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    aput-object v8, v7, v0

    .line 31
    .line 32
    aput-object v6, v7, v4

    .line 33
    .line 34
    const-string v8, "pokeLong"

    .line 35
    .line 36
    invoke-virtual {v3, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    new-array v7, v5, [Ljava/lang/Class;

    .line 40
    .line 41
    aput-object p0, v7, v1

    .line 42
    .line 43
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    aput-object v8, v7, v0

    .line 46
    .line 47
    aput-object v6, v7, v4

    .line 48
    .line 49
    const-string v9, "pokeInt"

    .line 50
    .line 51
    invoke-virtual {v3, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 52
    .line 53
    .line 54
    new-array v7, v4, [Ljava/lang/Class;

    .line 55
    .line 56
    aput-object p0, v7, v1

    .line 57
    .line 58
    aput-object v6, v7, v0

    .line 59
    .line 60
    const-string v6, "peekInt"

    .line 61
    .line 62
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    .line 64
    .line 65
    new-array v6, v4, [Ljava/lang/Class;

    .line 66
    .line 67
    aput-object p0, v6, v1

    .line 68
    .line 69
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 70
    .line 71
    aput-object v7, v6, v0

    .line 72
    .line 73
    const-string v7, "pokeByte"

    .line 74
    .line 75
    invoke-virtual {v3, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    .line 77
    .line 78
    new-array v6, v0, [Ljava/lang/Class;

    .line 79
    .line 80
    aput-object p0, v6, v1

    .line 81
    .line 82
    const-string v7, "peekByte"

    .line 83
    .line 84
    invoke-virtual {v3, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 85
    .line 86
    .line 87
    const/4 v6, 0x4

    .line 88
    new-array v7, v6, [Ljava/lang/Class;

    .line 89
    .line 90
    aput-object p0, v7, v1

    .line 91
    .line 92
    aput-object v2, v7, v0

    .line 93
    .line 94
    aput-object v8, v7, v4

    .line 95
    .line 96
    aput-object v8, v7, v5

    .line 97
    .line 98
    const-string v9, "pokeByteArray"

    .line 99
    .line 100
    invoke-virtual {v3, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 101
    .line 102
    .line 103
    new-array v6, v6, [Ljava/lang/Class;

    .line 104
    .line 105
    aput-object p0, v6, v1

    .line 106
    .line 107
    aput-object v2, v6, v0

    .line 108
    .line 109
    aput-object v8, v6, v4

    .line 110
    .line 111
    aput-object v8, v6, v5

    .line 112
    .line 113
    const-string p0, "peekByteArray"

    .line 114
    .line 115
    invoke-virtual {v3, p0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
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

.method public static u(Ljava/lang/Object;J)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/gms/internal/pal/t0;->b:I

    .line 4
    .line 5
    sget-boolean v1, Lcom/google/android/gms/internal/pal/v0;->g:Z

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/pal/v0;->r(Ljava/lang/Object;J)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/pal/v0;->s(Ljava/lang/Object;J)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    goto :goto_0

    .line 22
    :pswitch_0
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/pal/v0;->r(Ljava/lang/Object;J)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/pal/v0;->s(Ljava/lang/Object;J)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static v(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/pal/v0;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/pal/v0;->c:Lcom/google/android/gms/internal/pal/t0;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/pal/u0;->a(Ljava/lang/Class;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method
