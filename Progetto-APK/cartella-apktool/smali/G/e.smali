.class public abstract LG/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf/S;

.field public static final b:Lr/l;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "TypefaceCompat static init"

    .line 2
    .line 3
    invoke-static {v0}, LJ6/r;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1d

    .line 9
    .line 10
    const/16 v2, 0x9

    .line 11
    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    .line 14
    new-instance v0, LG/j;

    .line 15
    .line 16
    invoke-direct {v0, v2}, Lf/S;-><init>(I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, LG/e;->a:Lf/S;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v1, 0x1c

    .line 23
    .line 24
    if-lt v0, v1, :cond_1

    .line 25
    .line 26
    new-instance v0, LG/i;

    .line 27
    .line 28
    invoke-direct {v0}, LG/h;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, LG/e;->a:Lf/S;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/16 v1, 0x1a

    .line 35
    .line 36
    if-lt v0, v1, :cond_2

    .line 37
    .line 38
    new-instance v0, LG/h;

    .line 39
    .line 40
    invoke-direct {v0}, LG/h;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v0, LG/e;->a:Lf/S;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/16 v1, 0x18

    .line 47
    .line 48
    if-lt v0, v1, :cond_4

    .line 49
    .line 50
    sget-object v0, LG/g;->K:Ljava/lang/reflect/Method;

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    const-string v1, "TypefaceCompatApi24Impl"

    .line 55
    .line 56
    const-string v3, "Unable to collect necessary private methods.Fallback to legacy implementation."

    .line 57
    .line 58
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_3
    if-eqz v0, :cond_4

    .line 62
    .line 63
    new-instance v0, LG/g;

    .line 64
    .line 65
    invoke-direct {v0, v2}, Lf/S;-><init>(I)V

    .line 66
    .line 67
    .line 68
    sput-object v0, LG/e;->a:Lf/S;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    new-instance v0, LG/f;

    .line 72
    .line 73
    invoke-direct {v0}, LG/f;-><init>()V

    .line 74
    .line 75
    .line 76
    sput-object v0, LG/e;->a:Lf/S;

    .line 77
    .line 78
    :goto_0
    new-instance v0, Lr/l;

    .line 79
    .line 80
    const/16 v1, 0x10

    .line 81
    .line 82
    invoke-direct {v0, v1}, Lr/l;-><init>(I)V

    .line 83
    .line 84
    .line 85
    sput-object v0, LG/e;->b:Lr/l;

    .line 86
    .line 87
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public static a(Landroid/content/Context;LF/e;Landroid/content/res/Resources;ILjava/lang/String;IILc/g;Z)Landroid/graphics/Typeface;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v7, p6

    .line 6
    .line 7
    move-object/from16 v2, p7

    .line 8
    .line 9
    const/4 v8, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v9, 0x1

    .line 12
    instance-of v4, v1, LF/h;

    .line 13
    .line 14
    if-eqz v4, :cond_10

    .line 15
    .line 16
    check-cast v1, LF/h;

    .line 17
    .line 18
    iget-object v4, v1, LF/h;->e:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v10, 0x0

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 35
    .line 36
    invoke-static {v5, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    move-object v4, v10

    .line 50
    :goto_1
    if-eqz v4, :cond_3

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2, v4}, Lc/g;->d(Landroid/graphics/Typeface;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-object v4

    .line 58
    :cond_3
    if-eqz p8, :cond_5

    .line 59
    .line 60
    iget v4, v1, LF/h;->d:I

    .line 61
    .line 62
    if-nez v4, :cond_4

    .line 63
    .line 64
    :goto_2
    const/4 v4, 0x1

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/4 v4, 0x0

    .line 67
    goto :goto_3

    .line 68
    :cond_5
    if-nez v2, :cond_4

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :goto_3
    const/4 v5, -0x1

    .line 72
    if-eqz p8, :cond_6

    .line 73
    .line 74
    iget v6, v1, LF/h;->c:I

    .line 75
    .line 76
    move v11, v6

    .line 77
    goto :goto_4

    .line 78
    :cond_6
    const/4 v11, -0x1

    .line 79
    :goto_4
    new-instance v6, Landroid/os/Handler;

    .line 80
    .line 81
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    invoke-direct {v6, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 86
    .line 87
    .line 88
    new-instance v12, Lf/S;

    .line 89
    .line 90
    invoke-direct {v12, v2}, Lf/S;-><init>(Lc/g;)V

    .line 91
    .line 92
    .line 93
    iget-object v2, v1, LF/h;->b:LK/f;

    .line 94
    .line 95
    if-eqz v2, :cond_8

    .line 96
    .line 97
    iget-object v1, v1, LF/h;->a:LK/f;

    .line 98
    .line 99
    new-array v13, v8, [Ljava/lang/Object;

    .line 100
    .line 101
    aput-object v1, v13, v3

    .line 102
    .line 103
    aput-object v2, v13, v9

    .line 104
    .line 105
    new-instance v1, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .line 109
    .line 110
    const/4 v2, 0x0

    .line 111
    :goto_5
    if-ge v2, v8, :cond_7

    .line 112
    .line 113
    aget-object v14, v13, v2

    .line 114
    .line 115
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    add-int/2addr v2, v9

    .line 122
    goto :goto_5

    .line 123
    :cond_7
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :goto_6
    move-object v13, v1

    .line 128
    goto :goto_7

    .line 129
    :cond_8
    iget-object v1, v1, LF/h;->a:LK/f;

    .line 130
    .line 131
    new-array v2, v9, [Ljava/lang/Object;

    .line 132
    .line 133
    aput-object v1, v2, v3

    .line 134
    .line 135
    new-instance v1, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .line 139
    .line 140
    aget-object v2, v2, v3

    .line 141
    .line 142
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    goto :goto_6

    .line 153
    :goto_7
    new-instance v15, Lm2/c;

    .line 154
    .line 155
    new-instance v1, LJ/e;

    .line 156
    .line 157
    invoke-direct {v1, v9, v6}, LJ/e;-><init>(ILandroid/os/Handler;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {v15, v8, v12, v1}, Lm2/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    if-eqz v4, :cond_c

    .line 164
    .line 165
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-gt v1, v9, :cond_b

    .line 170
    .line 171
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    move-object v4, v1

    .line 176
    check-cast v4, LK/f;

    .line 177
    .line 178
    sget-object v1, LK/j;->a:Lr/l;

    .line 179
    .line 180
    new-array v1, v9, [Ljava/lang/Object;

    .line 181
    .line 182
    aput-object v4, v1, v3

    .line 183
    .line 184
    new-instance v2, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .line 188
    .line 189
    aget-object v1, v1, v3

    .line 190
    .line 191
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-static {v7, v1}, LK/j;->a(ILjava/util/List;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    sget-object v1, LK/j;->a:Lr/l;

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Lr/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Landroid/graphics/Typeface;

    .line 212
    .line 213
    if-eqz v1, :cond_9

    .line 214
    .line 215
    iget-object v0, v15, Lm2/c;->H:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v0, Lf/S;

    .line 218
    .line 219
    iget-object v2, v15, Lm2/c;->I:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 222
    .line 223
    new-instance v4, LK/a;

    .line 224
    .line 225
    invoke-direct {v4, v15, v0, v1, v3}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 226
    .line 227
    .line 228
    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 229
    .line 230
    .line 231
    :goto_8
    move-object v10, v1

    .line 232
    goto/16 :goto_c

    .line 233
    .line 234
    :cond_9
    if-ne v11, v5, :cond_a

    .line 235
    .line 236
    new-array v1, v9, [Ljava/lang/Object;

    .line 237
    .line 238
    aput-object v4, v1, v3

    .line 239
    .line 240
    new-instance v4, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 243
    .line 244
    .line 245
    aget-object v1, v1, v3

    .line 246
    .line 247
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {v2, v0, v1, v7}, LK/j;->b(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)LK/i;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v15, v0}, Lm2/c;->w(LK/i;)V

    .line 262
    .line 263
    .line 264
    iget-object v10, v0, LK/i;->a:Landroid/graphics/Typeface;

    .line 265
    .line 266
    goto/16 :goto_c

    .line 267
    .line 268
    :cond_a
    new-instance v8, LK/g;

    .line 269
    .line 270
    const/4 v6, 0x0

    .line 271
    move-object v1, v8

    .line 272
    move-object/from16 v3, p0

    .line 273
    .line 274
    move/from16 v5, p6

    .line 275
    .line 276
    invoke-direct/range {v1 .. v6}, LK/g;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V

    .line 277
    .line 278
    .line 279
    :try_start_0
    sget-object v0, LK/j;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 280
    .line 281
    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 282
    .line 283
    .line 284
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 285
    int-to-long v1, v11

    .line 286
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 287
    .line 288
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    .line 292
    :try_start_2
    check-cast v0, LK/i;

    .line 293
    .line 294
    invoke-virtual {v15, v0}, Lm2/c;->w(LK/i;)V

    .line 295
    .line 296
    .line 297
    iget-object v10, v0, LK/i;->a:Landroid/graphics/Typeface;

    .line 298
    .line 299
    goto/16 :goto_c

    .line 300
    .line 301
    :catch_0
    move-exception v0

    .line 302
    goto :goto_9

    .line 303
    :catch_1
    move-exception v0

    .line 304
    goto :goto_a

    .line 305
    :catch_2
    new-instance v0, Ljava/lang/InterruptedException;

    .line 306
    .line 307
    const-string v1, "timeout"

    .line 308
    .line 309
    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw v0

    .line 313
    :goto_9
    throw v0

    .line 314
    :goto_a
    new-instance v1, Ljava/lang/RuntimeException;

    .line 315
    .line 316
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 317
    .line 318
    .line 319
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 320
    :catch_3
    iget-object v0, v15, Lm2/c;->H:Ljava/lang/Object;

    .line 321
    .line 322
    move-object/from16 v16, v0

    .line 323
    .line 324
    check-cast v16, Lf/S;

    .line 325
    .line 326
    iget-object v0, v15, Lm2/c;->I:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 329
    .line 330
    new-instance v1, La/g;

    .line 331
    .line 332
    const/16 v18, 0x4

    .line 333
    .line 334
    const/16 v19, 0x0

    .line 335
    .line 336
    const/16 v17, -0x3

    .line 337
    .line 338
    move-object v14, v1

    .line 339
    invoke-direct/range {v14 .. v19}, La/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 340
    .line 341
    .line 342
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_c

    .line 346
    .line 347
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 348
    .line 349
    const-string v1, "Fallbacks with blocking fetches are not supported for performance reasons"

    .line 350
    .line 351
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw v0

    .line 355
    :cond_c
    invoke-static {v7, v13}, LK/j;->a(ILjava/util/List;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v11

    .line 359
    sget-object v1, LK/j;->a:Lr/l;

    .line 360
    .line 361
    invoke-virtual {v1, v11}, Lr/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    check-cast v1, Landroid/graphics/Typeface;

    .line 366
    .line 367
    if-eqz v1, :cond_d

    .line 368
    .line 369
    iget-object v0, v15, Lm2/c;->H:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v0, Lf/S;

    .line 372
    .line 373
    iget-object v2, v15, Lm2/c;->I:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 376
    .line 377
    new-instance v4, LK/a;

    .line 378
    .line 379
    invoke-direct {v4, v15, v0, v1, v3}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 380
    .line 381
    .line 382
    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_8

    .line 386
    .line 387
    :cond_d
    new-instance v1, LK/h;

    .line 388
    .line 389
    invoke-direct {v1, v15, v3}, LK/h;-><init>(Ljava/lang/Object;I)V

    .line 390
    .line 391
    .line 392
    sget-object v3, LK/j;->c:Ljava/lang/Object;

    .line 393
    .line 394
    monitor-enter v3

    .line 395
    :try_start_3
    sget-object v2, LK/j;->d:Lr/m;

    .line 396
    .line 397
    invoke-virtual {v2, v11}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    check-cast v4, Ljava/util/ArrayList;

    .line 402
    .line 403
    if-eqz v4, :cond_e

    .line 404
    .line 405
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    monitor-exit v3

    .line 409
    goto :goto_c

    .line 410
    :catchall_0
    move-exception v0

    .line 411
    goto :goto_d

    .line 412
    :cond_e
    new-instance v4, Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2, v11, v4}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 424
    new-instance v12, LK/g;

    .line 425
    .line 426
    const/4 v6, 0x1

    .line 427
    move-object v1, v12

    .line 428
    move-object v2, v11

    .line 429
    move-object/from16 v3, p0

    .line 430
    .line 431
    move-object v4, v13

    .line 432
    move/from16 v5, p6

    .line 433
    .line 434
    invoke-direct/range {v1 .. v6}, LK/g;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V

    .line 435
    .line 436
    .line 437
    sget-object v0, LK/j;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 438
    .line 439
    new-instance v1, LK/h;

    .line 440
    .line 441
    invoke-direct {v1, v11, v9}, LK/h;-><init>(Ljava/lang/Object;I)V

    .line 442
    .line 443
    .line 444
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    if-nez v2, :cond_f

    .line 449
    .line 450
    new-instance v2, Landroid/os/Handler;

    .line 451
    .line 452
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 457
    .line 458
    .line 459
    goto :goto_b

    .line 460
    :cond_f
    new-instance v2, Landroid/os/Handler;

    .line 461
    .line 462
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 463
    .line 464
    .line 465
    :goto_b
    new-instance v3, LK/a;

    .line 466
    .line 467
    invoke-direct {v3, v2, v12, v1, v8}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 471
    .line 472
    .line 473
    :goto_c
    move-object/from16 v4, p2

    .line 474
    .line 475
    goto :goto_e

    .line 476
    :goto_d
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 477
    throw v0

    .line 478
    :cond_10
    sget-object v3, LG/e;->a:Lf/S;

    .line 479
    .line 480
    check-cast v1, LF/f;

    .line 481
    .line 482
    move-object/from16 v4, p2

    .line 483
    .line 484
    invoke-virtual {v3, v0, v1, v4, v7}, Lf/S;->G(Landroid/content/Context;LF/f;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    .line 485
    .line 486
    .line 487
    move-result-object v10

    .line 488
    if-eqz v2, :cond_12

    .line 489
    .line 490
    if-eqz v10, :cond_11

    .line 491
    .line 492
    invoke-virtual {v2, v10}, Lc/g;->d(Landroid/graphics/Typeface;)V

    .line 493
    .line 494
    .line 495
    goto :goto_e

    .line 496
    :cond_11
    invoke-virtual/range {p7 .. p7}, Lc/g;->c()V

    .line 497
    .line 498
    .line 499
    :cond_12
    :goto_e
    if-eqz v10, :cond_13

    .line 500
    .line 501
    sget-object v0, LG/e;->b:Lr/l;

    .line 502
    .line 503
    invoke-static/range {p2 .. p6}, LG/e;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-virtual {v0, v1, v10}, Lr/l;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    :cond_13
    return-object v10
.end method

.method public static b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x2d

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
