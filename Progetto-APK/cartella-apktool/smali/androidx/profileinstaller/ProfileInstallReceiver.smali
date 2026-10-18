.class public Landroidx/profileinstaller/ProfileInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v3, "androidx.profileinstaller.action.INSTALL_PROFILE"

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x4

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x7

    .line 21
    const/16 v7, 0xc

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    const/16 v10, 0xe

    .line 25
    .line 26
    if-eqz v3, :cond_19

    .line 27
    .line 28
    new-instance v13, Lm/a;

    .line 29
    .line 30
    invoke-direct {v13, v7}, Lm/a;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v3, LD0/U;

    .line 34
    .line 35
    invoke-direct {v3, v1, v10}, LD0/U;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 51
    .line 52
    .line 53
    move-result-object v15

    .line 54
    new-instance v0, Ljava/io/File;

    .line 55
    .line 56
    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    :try_start_0
    invoke-virtual {v10, v7, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_11

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 74
    .line 75
    .line 76
    move-result-object v14

    .line 77
    new-instance v11, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v12, "Installing profile for "

    .line 80
    .line 81
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    const-string v12, "ProfileInstaller"

    .line 96
    .line 97
    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    new-instance v12, Ljava/io/File;

    .line 101
    .line 102
    new-instance v11, Ljava/io/File;

    .line 103
    .line 104
    const-string v5, "/data/misc/profiles/cur/0"

    .line 105
    .line 106
    invoke-direct {v11, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v5, "primary.prof"

    .line 110
    .line 111
    invoke-direct {v12, v11, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v5, LM1/a;

    .line 115
    .line 116
    const-string v7, "dexopt/baseline.prof"

    .line 117
    .line 118
    move-object v11, v5

    .line 119
    move-object/from16 v17, v12

    .line 120
    .line 121
    move-object v12, v15

    .line 122
    move-object/from16 v18, v14

    .line 123
    .line 124
    move-object v14, v3

    .line 125
    move-object v8, v15

    .line 126
    move-object v15, v0

    .line 127
    move-object/from16 v16, v17

    .line 128
    .line 129
    invoke-direct/range {v11 .. v16}, LM1/a;-><init>(Landroid/content/res/AssetManager;Lm/a;LD0/U;Ljava/lang/String;Ljava/io/File;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, v5, LM1/a;->f:Ljava/lang/Object;

    .line 133
    .line 134
    move-object v11, v0

    .line 135
    check-cast v11, [B

    .line 136
    .line 137
    if-nez v11, :cond_1

    .line 138
    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 140
    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const/4 v3, 0x3

    .line 146
    invoke-virtual {v5, v3, v0}, LM1/a;->b(ILjava/io/Serializable;)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_2f

    .line 150
    .line 151
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_2

    .line 156
    .line 157
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->canWrite()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_3

    .line 162
    .line 163
    invoke-virtual {v5, v4, v9}, LM1/a;->b(ILjava/io/Serializable;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_2f

    .line 167
    .line 168
    :cond_2
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->createNewFile()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_3

    .line 173
    .line 174
    invoke-virtual {v5, v4, v9}, LM1/a;->b(ILjava/io/Serializable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10

    .line 175
    .line 176
    .line 177
    goto/16 :goto_2f

    .line 178
    .line 179
    :cond_3
    const/4 v12, 0x1

    .line 180
    iput-boolean v12, v5, LM1/a;->b:Z

    .line 181
    .line 182
    sget-object v13, LM1/d;->a:[B

    .line 183
    .line 184
    const/4 v14, 0x6

    .line 185
    :try_start_2
    invoke-virtual {v5, v8, v7}, LM1/a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 186
    .line 187
    .line 188
    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 189
    move-object v7, v0

    .line 190
    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    move-object v7, v0

    .line 193
    invoke-virtual {v3, v6, v7}, LD0/U;->q(ILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :catch_1
    move-exception v0

    .line 198
    move-object v7, v0

    .line 199
    invoke-virtual {v3, v14, v7}, LD0/U;->q(ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    :goto_0
    move-object v7, v9

    .line 203
    :goto_1
    const-string v15, "Invalid magic"

    .line 204
    .line 205
    const/16 v14, 0x8

    .line 206
    .line 207
    if-eqz v7, :cond_5

    .line 208
    .line 209
    :try_start_3
    invoke-static {v4, v7}, Lp0/b;->B(ILjava/io/InputStream;)[B

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {v13, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_4

    .line 218
    .line 219
    invoke-static {v4, v7}, Lp0/b;->B(ILjava/io/InputStream;)[B

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    iget-object v12, v5, LM1/a;->a:Ljava/lang/String;

    .line 224
    .line 225
    invoke-static {v7, v0, v12}, LM1/d;->i(Ljava/io/FileInputStream;[BLjava/lang/String;)[LM1/b;

    .line 226
    .line 227
    .line 228
    move-result-object v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :catch_2
    move-exception v0

    .line 234
    move-object v7, v0

    .line 235
    invoke-virtual {v3, v6, v7}, LD0/U;->q(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    goto :goto_6

    .line 239
    :goto_2
    move-object v2, v0

    .line 240
    goto :goto_7

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    goto :goto_2

    .line 243
    :catch_3
    move-exception v0

    .line 244
    goto :goto_3

    .line 245
    :catch_4
    move-exception v0

    .line 246
    goto :goto_4

    .line 247
    :cond_4
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 248
    .line 249
    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 253
    :goto_3
    :try_start_6
    invoke-virtual {v3, v14, v0}, LD0/U;->q(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 254
    .line 255
    .line 256
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 257
    .line 258
    .line 259
    goto :goto_5

    .line 260
    :catch_5
    move-exception v0

    .line 261
    move-object v7, v0

    .line 262
    invoke-virtual {v3, v6, v7}, LD0/U;->q(ILjava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    goto :goto_5

    .line 266
    :goto_4
    :try_start_8
    invoke-virtual {v3, v6, v0}, LD0/U;->q(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 267
    .line 268
    .line 269
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 270
    .line 271
    .line 272
    :goto_5
    move-object v12, v9

    .line 273
    :goto_6
    iput-object v12, v5, LM1/a;->k:Ljava/lang/Object;

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :goto_7
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 277
    .line 278
    .line 279
    goto :goto_8

    .line 280
    :catch_6
    move-exception v0

    .line 281
    move-object v4, v0

    .line 282
    invoke-virtual {v3, v6, v4}, LD0/U;->q(ILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    :goto_8
    throw v2

    .line 286
    :cond_5
    :goto_9
    iget-object v0, v5, LM1/a;->k:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v0, [LM1/b;

    .line 289
    .line 290
    if-eqz v0, :cond_c

    .line 291
    .line 292
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 293
    .line 294
    const/16 v12, 0x18

    .line 295
    .line 296
    if-ge v7, v12, :cond_6

    .line 297
    .line 298
    goto/16 :goto_12

    .line 299
    .line 300
    :cond_6
    const/16 v6, 0x1f

    .line 301
    .line 302
    if-lt v7, v6, :cond_7

    .line 303
    .line 304
    goto :goto_a

    .line 305
    :cond_7
    if-eq v7, v12, :cond_8

    .line 306
    .line 307
    const/16 v6, 0x19

    .line 308
    .line 309
    if-eq v7, v6, :cond_8

    .line 310
    .line 311
    goto :goto_12

    .line 312
    :cond_8
    :goto_a
    :try_start_b
    iget-object v6, v5, LM1/a;->j:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v6, Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v5, v8, v6}, LM1/a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 317
    .line 318
    .line 319
    move-result-object v6
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_7

    .line 320
    if-eqz v6, :cond_a

    .line 321
    .line 322
    :try_start_c
    sget-object v7, LM1/d;->b:[B

    .line 323
    .line 324
    invoke-static {v4, v6}, Lp0/b;->B(ILjava/io/InputStream;)[B

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    .line 329
    .line 330
    .line 331
    move-result v7

    .line 332
    if-eqz v7, :cond_9

    .line 333
    .line 334
    invoke-static {v4, v6}, Lp0/b;->B(ILjava/io/InputStream;)[B

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    invoke-static {v6, v4, v11, v0}, LM1/d;->f(Ljava/io/FileInputStream;[B[B[LM1/b;)[LM1/b;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    iput-object v0, v5, LM1/a;->k:Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 343
    .line 344
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_7

    .line 345
    .line 346
    .line 347
    move-object v0, v5

    .line 348
    goto :goto_11

    .line 349
    :catch_7
    move-exception v0

    .line 350
    goto :goto_d

    .line 351
    :catch_8
    move-exception v0

    .line 352
    const/4 v4, 0x7

    .line 353
    goto :goto_e

    .line 354
    :catch_9
    move-exception v0

    .line 355
    goto :goto_f

    .line 356
    :catchall_1
    move-exception v0

    .line 357
    move-object v4, v0

    .line 358
    goto :goto_b

    .line 359
    :cond_9
    :try_start_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 360
    .line 361
    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 365
    :goto_b
    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 366
    .line 367
    .line 368
    goto :goto_c

    .line 369
    :catchall_2
    move-exception v0

    .line 370
    move-object v6, v0

    .line 371
    :try_start_10
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 372
    .line 373
    .line 374
    :goto_c
    throw v4

    .line 375
    :cond_a
    if-eqz v6, :cond_b

    .line 376
    .line 377
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_7

    .line 378
    .line 379
    .line 380
    goto :goto_10

    .line 381
    :goto_d
    iput-object v9, v5, LM1/a;->k:Ljava/lang/Object;

    .line 382
    .line 383
    invoke-virtual {v3, v14, v0}, LD0/U;->q(ILjava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    goto :goto_10

    .line 387
    :goto_e
    invoke-virtual {v3, v4, v0}, LD0/U;->q(ILjava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    goto :goto_10

    .line 391
    :goto_f
    const/16 v4, 0x9

    .line 392
    .line 393
    invoke-virtual {v3, v4, v0}, LD0/U;->q(ILjava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    :cond_b
    :goto_10
    move-object v0, v9

    .line 397
    :goto_11
    if-eqz v0, :cond_c

    .line 398
    .line 399
    move-object v5, v0

    .line 400
    :cond_c
    :goto_12
    iget-object v3, v5, LM1/a;->e:Ljava/lang/Object;

    .line 401
    .line 402
    iget-object v0, v5, LM1/a;->k:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v0, [LM1/b;

    .line 405
    .line 406
    iget-object v4, v5, LM1/a;->f:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast v4, [B

    .line 409
    .line 410
    const-string v6, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    .line 411
    .line 412
    if-eqz v0, :cond_10

    .line 413
    .line 414
    if-nez v4, :cond_d

    .line 415
    .line 416
    goto :goto_18

    .line 417
    :cond_d
    iget-boolean v7, v5, LM1/a;->b:Z

    .line 418
    .line 419
    if-eqz v7, :cond_f

    .line 420
    .line 421
    :try_start_11
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 422
    .line 423
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_a

    .line 424
    .line 425
    .line 426
    :try_start_12
    invoke-virtual {v7, v13}, Ljava/io/OutputStream;->write([B)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v7, v4}, Ljava/io/OutputStream;->write([B)V

    .line 430
    .line 431
    .line 432
    invoke-static {v7, v4, v0}, LM1/d;->k(Ljava/io/ByteArrayOutputStream;[B[LM1/b;)Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-nez v0, :cond_e

    .line 437
    .line 438
    move-object v0, v3

    .line 439
    check-cast v0, LM1/c;

    .line 440
    .line 441
    const/4 v4, 0x5

    .line 442
    invoke-interface {v0, v4, v9}, LM1/c;->q(ILjava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    iput-object v9, v5, LM1/a;->k:Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 446
    .line 447
    :try_start_13
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_a

    .line 448
    .line 449
    .line 450
    goto :goto_18

    .line 451
    :catch_a
    move-exception v0

    .line 452
    goto :goto_15

    .line 453
    :catch_b
    move-exception v0

    .line 454
    goto :goto_16

    .line 455
    :catchall_3
    move-exception v0

    .line 456
    move-object v4, v0

    .line 457
    goto :goto_13

    .line 458
    :cond_e
    :try_start_14
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    iput-object v0, v5, LM1/a;->g:Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 463
    .line 464
    :try_start_15
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_a

    .line 465
    .line 466
    .line 467
    goto :goto_17

    .line 468
    :goto_13
    :try_start_16
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 469
    .line 470
    .line 471
    goto :goto_14

    .line 472
    :catchall_4
    move-exception v0

    .line 473
    move-object v7, v0

    .line 474
    :try_start_17
    invoke-virtual {v4, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 475
    .line 476
    .line 477
    :goto_14
    throw v4
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_a

    .line 478
    :goto_15
    check-cast v3, LM1/c;

    .line 479
    .line 480
    invoke-interface {v3, v14, v0}, LM1/c;->q(ILjava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    goto :goto_17

    .line 484
    :goto_16
    check-cast v3, LM1/c;

    .line 485
    .line 486
    const/4 v4, 0x7

    .line 487
    invoke-interface {v3, v4, v0}, LM1/c;->q(ILjava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    :goto_17
    iput-object v9, v5, LM1/a;->k:Ljava/lang/Object;

    .line 491
    .line 492
    goto :goto_18

    .line 493
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 494
    .line 495
    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    throw v0

    .line 499
    :cond_10
    :goto_18
    iget-object v0, v5, LM1/a;->g:Ljava/lang/Object;

    .line 500
    .line 501
    check-cast v0, [B

    .line 502
    .line 503
    if-nez v0, :cond_11

    .line 504
    .line 505
    const/4 v0, 0x0

    .line 506
    const/4 v8, 0x1

    .line 507
    goto/16 :goto_2d

    .line 508
    .line 509
    :cond_11
    iget-boolean v3, v5, LM1/a;->b:Z

    .line 510
    .line 511
    if-eqz v3, :cond_17

    .line 512
    .line 513
    :try_start_18
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 514
    .line 515
    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 516
    .line 517
    .line 518
    :try_start_19
    new-instance v4, Ljava/io/FileOutputStream;

    .line 519
    .line 520
    iget-object v0, v5, LM1/a;->h:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v0, Ljava/io/File;

    .line 523
    .line 524
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    .line 525
    .line 526
    .line 527
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 528
    .line 529
    .line 530
    move-result-object v6
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    .line 531
    :try_start_1b
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    .line 532
    .line 533
    .line 534
    move-result-object v7
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    .line 535
    if-eqz v7, :cond_13

    .line 536
    .line 537
    :try_start_1c
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->isValid()Z

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-eqz v0, :cond_13

    .line 542
    .line 543
    const/16 v0, 0x200

    .line 544
    .line 545
    new-array v0, v0, [B

    .line 546
    .line 547
    :goto_19
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 548
    .line 549
    .line 550
    move-result v8

    .line 551
    if-lez v8, :cond_12

    .line 552
    .line 553
    const/4 v11, 0x0

    .line 554
    invoke-virtual {v4, v0, v11, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    .line 555
    .line 556
    .line 557
    goto :goto_19

    .line 558
    :cond_12
    const/4 v8, 0x1

    .line 559
    :try_start_1d
    invoke-virtual {v5, v8, v9}, LM1/a;->b(ILjava/io/Serializable;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 560
    .line 561
    .line 562
    :try_start_1e
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 563
    .line 564
    .line 565
    :try_start_1f
    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    .line 566
    .line 567
    .line 568
    :try_start_20
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    .line 569
    .line 570
    .line 571
    :try_start_21
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_21} :catch_d
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_c
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    .line 572
    .line 573
    .line 574
    iput-object v9, v5, LM1/a;->g:Ljava/lang/Object;

    .line 575
    .line 576
    iput-object v9, v5, LM1/a;->k:Ljava/lang/Object;

    .line 577
    .line 578
    const/4 v0, 0x1

    .line 579
    goto/16 :goto_2d

    .line 580
    .line 581
    :catchall_5
    move-exception v0

    .line 582
    goto/16 :goto_2e

    .line 583
    .line 584
    :catch_c
    move-exception v0

    .line 585
    :goto_1a
    const/4 v3, 0x7

    .line 586
    goto/16 :goto_29

    .line 587
    .line 588
    :catch_d
    move-exception v0

    .line 589
    :goto_1b
    const/4 v3, 0x6

    .line 590
    goto/16 :goto_2b

    .line 591
    .line 592
    :catchall_6
    move-exception v0

    .line 593
    :goto_1c
    move-object v4, v0

    .line 594
    goto :goto_27

    .line 595
    :catchall_7
    move-exception v0

    .line 596
    :goto_1d
    move-object v6, v0

    .line 597
    goto :goto_25

    .line 598
    :catchall_8
    move-exception v0

    .line 599
    :goto_1e
    move-object v7, v0

    .line 600
    goto :goto_23

    .line 601
    :catchall_9
    move-exception v0

    .line 602
    :goto_1f
    move-object v11, v0

    .line 603
    goto :goto_21

    .line 604
    :cond_13
    const/4 v8, 0x1

    .line 605
    goto :goto_20

    .line 606
    :catchall_a
    move-exception v0

    .line 607
    const/4 v8, 0x1

    .line 608
    goto :goto_1f

    .line 609
    :goto_20
    :try_start_22
    new-instance v0, Ljava/io/IOException;

    .line 610
    .line 611
    const-string v11, "Unable to acquire a lock on the underlying file channel."

    .line 612
    .line 613
    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    .line 617
    :goto_21
    if-eqz v7, :cond_14

    .line 618
    .line 619
    :try_start_23
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    .line 620
    .line 621
    .line 622
    goto :goto_22

    .line 623
    :catchall_b
    move-exception v0

    .line 624
    move-object v7, v0

    .line 625
    :try_start_24
    invoke-virtual {v11, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 626
    .line 627
    .line 628
    :cond_14
    :goto_22
    throw v11
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    .line 629
    :catchall_c
    move-exception v0

    .line 630
    const/4 v8, 0x1

    .line 631
    goto :goto_1e

    .line 632
    :goto_23
    if-eqz v6, :cond_15

    .line 633
    .line 634
    :try_start_25
    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    .line 635
    .line 636
    .line 637
    goto :goto_24

    .line 638
    :catchall_d
    move-exception v0

    .line 639
    move-object v6, v0

    .line 640
    :try_start_26
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 641
    .line 642
    .line 643
    :cond_15
    :goto_24
    throw v7
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    .line 644
    :catchall_e
    move-exception v0

    .line 645
    const/4 v8, 0x1

    .line 646
    goto :goto_1d

    .line 647
    :goto_25
    :try_start_27
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    .line 648
    .line 649
    .line 650
    goto :goto_26

    .line 651
    :catchall_f
    move-exception v0

    .line 652
    move-object v4, v0

    .line 653
    :try_start_28
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 654
    .line 655
    .line 656
    :goto_26
    throw v6
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_6

    .line 657
    :catchall_10
    move-exception v0

    .line 658
    const/4 v8, 0x1

    .line 659
    goto :goto_1c

    .line 660
    :goto_27
    :try_start_29
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_11

    .line 661
    .line 662
    .line 663
    goto :goto_28

    .line 664
    :catchall_11
    move-exception v0

    .line 665
    move-object v3, v0

    .line 666
    :try_start_2a
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 667
    .line 668
    .line 669
    :goto_28
    throw v4
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2a} :catch_d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_c
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5

    .line 670
    :catch_e
    move-exception v0

    .line 671
    const/4 v8, 0x1

    .line 672
    goto :goto_1a

    .line 673
    :catch_f
    move-exception v0

    .line 674
    const/4 v8, 0x1

    .line 675
    goto :goto_1b

    .line 676
    :goto_29
    :try_start_2b
    invoke-virtual {v5, v3, v0}, LM1/a;->b(ILjava/io/Serializable;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_5

    .line 677
    .line 678
    .line 679
    :goto_2a
    iput-object v9, v5, LM1/a;->g:Ljava/lang/Object;

    .line 680
    .line 681
    iput-object v9, v5, LM1/a;->k:Ljava/lang/Object;

    .line 682
    .line 683
    goto :goto_2c

    .line 684
    :goto_2b
    :try_start_2c
    invoke-virtual {v5, v3, v0}, LM1/a;->b(ILjava/io/Serializable;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_5

    .line 685
    .line 686
    .line 687
    goto :goto_2a

    .line 688
    :goto_2c
    const/4 v0, 0x0

    .line 689
    :goto_2d
    if-eqz v0, :cond_16

    .line 690
    .line 691
    move-object/from16 v3, v18

    .line 692
    .line 693
    invoke-static {v10, v3}, LM1/d;->d(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 694
    .line 695
    .line 696
    :cond_16
    if-eqz v0, :cond_18

    .line 697
    .line 698
    const/4 v5, 0x1

    .line 699
    goto :goto_30

    .line 700
    :goto_2e
    iput-object v9, v5, LM1/a;->g:Ljava/lang/Object;

    .line 701
    .line 702
    iput-object v9, v5, LM1/a;->k:Ljava/lang/Object;

    .line 703
    .line 704
    throw v0

    .line 705
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 706
    .line 707
    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    throw v0

    .line 711
    :catch_10
    invoke-virtual {v5, v4, v9}, LM1/a;->b(ILjava/io/Serializable;)V

    .line 712
    .line 713
    .line 714
    :cond_18
    :goto_2f
    const/4 v5, 0x0

    .line 715
    :goto_30
    invoke-static {v2, v5}, LM1/g;->c(Landroid/content/Context;Z)V

    .line 716
    .line 717
    .line 718
    goto/16 :goto_32

    .line 719
    .line 720
    :catch_11
    move-exception v0

    .line 721
    move-object v4, v0

    .line 722
    const/4 v5, 0x7

    .line 723
    invoke-virtual {v3, v5, v4}, LD0/U;->q(ILjava/lang/Object;)V

    .line 724
    .line 725
    .line 726
    const/4 v3, 0x0

    .line 727
    invoke-static {v2, v3}, LM1/g;->c(Landroid/content/Context;Z)V

    .line 728
    .line 729
    .line 730
    goto/16 :goto_32

    .line 731
    .line 732
    :cond_19
    const-string v3, "androidx.profileinstaller.action.SKIP_FILE"

    .line 733
    .line 734
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v3

    .line 738
    const/16 v5, 0xa

    .line 739
    .line 740
    if-eqz v3, :cond_1b

    .line 741
    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    if-eqz v0, :cond_23

    .line 747
    .line 748
    const-string v3, "EXTRA_SKIP_FILE_OPERATION"

    .line 749
    .line 750
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    const-string v3, "WRITE_SKIP_FILE"

    .line 755
    .line 756
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    move-result v3

    .line 760
    if-eqz v3, :cond_1a

    .line 761
    .line 762
    new-instance v3, LD0/U;

    .line 763
    .line 764
    invoke-direct {v3, v1, v10}, LD0/U;-><init>(Ljava/lang/Object;I)V

    .line 765
    .line 766
    .line 767
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 768
    .line 769
    .line 770
    move-result-object v0

    .line 771
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 776
    .line 777
    .line 778
    move-result-object v6

    .line 779
    const/4 v7, 0x0

    .line 780
    :try_start_2d
    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 781
    .line 782
    .line 783
    move-result-object v0
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d .. :try_end_2d} :catch_12

    .line 784
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 785
    .line 786
    .line 787
    move-result-object v2

    .line 788
    invoke-static {v0, v2}, LM1/d;->d(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 789
    .line 790
    .line 791
    new-instance v0, Lp0/t;

    .line 792
    .line 793
    invoke-direct {v0, v3, v5, v9, v4}, Lp0/t;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 794
    .line 795
    .line 796
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 797
    .line 798
    .line 799
    goto/16 :goto_32

    .line 800
    .line 801
    :catch_12
    move-exception v0

    .line 802
    move-object v2, v0

    .line 803
    new-instance v0, Lp0/t;

    .line 804
    .line 805
    const/4 v5, 0x7

    .line 806
    invoke-direct {v0, v3, v5, v2, v4}, Lp0/t;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 807
    .line 808
    .line 809
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 810
    .line 811
    .line 812
    goto/16 :goto_32

    .line 813
    .line 814
    :cond_1a
    const-string v3, "DELETE_SKIP_FILE"

    .line 815
    .line 816
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result v0

    .line 820
    if-eqz v0, :cond_23

    .line 821
    .line 822
    new-instance v0, LD0/U;

    .line 823
    .line 824
    invoke-direct {v0, v1, v10}, LD0/U;-><init>(Ljava/lang/Object;I)V

    .line 825
    .line 826
    .line 827
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 828
    .line 829
    .line 830
    move-result-object v2

    .line 831
    new-instance v3, Ljava/io/File;

    .line 832
    .line 833
    const-string v5, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 834
    .line 835
    invoke-direct {v3, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 839
    .line 840
    .line 841
    new-instance v2, Lp0/t;

    .line 842
    .line 843
    const/16 v3, 0xb

    .line 844
    .line 845
    invoke-direct {v2, v0, v3, v9, v4}, Lp0/t;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 846
    .line 847
    .line 848
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 849
    .line 850
    .line 851
    goto/16 :goto_32

    .line 852
    .line 853
    :cond_1b
    const-string v3, "androidx.profileinstaller.action.SAVE_PROFILE"

    .line 854
    .line 855
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    move-result v3

    .line 859
    if-eqz v3, :cond_1d

    .line 860
    .line 861
    new-instance v0, LD0/U;

    .line 862
    .line 863
    invoke-direct {v0, v1, v10}, LD0/U;-><init>(Ljava/lang/Object;I)V

    .line 864
    .line 865
    .line 866
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 867
    .line 868
    const/16 v3, 0x18

    .line 869
    .line 870
    if-lt v2, v3, :cond_1c

    .line 871
    .line 872
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 873
    .line 874
    .line 875
    move-result v2

    .line 876
    invoke-static {v2, v5}, Landroid/os/Process;->sendSignal(II)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v0, v7, v9}, LD0/U;->q(ILjava/lang/Object;)V

    .line 880
    .line 881
    .line 882
    goto :goto_32

    .line 883
    :cond_1c
    const/16 v2, 0xd

    .line 884
    .line 885
    invoke-virtual {v0, v2, v9}, LD0/U;->q(ILjava/lang/Object;)V

    .line 886
    .line 887
    .line 888
    goto :goto_32

    .line 889
    :cond_1d
    const-string v3, "androidx.profileinstaller.action.BENCHMARK_OPERATION"

    .line 890
    .line 891
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 892
    .line 893
    .line 894
    move-result v0

    .line 895
    if-eqz v0, :cond_23

    .line 896
    .line 897
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    if-eqz v0, :cond_23

    .line 902
    .line 903
    const-string v3, "EXTRA_BENCHMARK_OPERATION"

    .line 904
    .line 905
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    new-instance v3, LD0/U;

    .line 910
    .line 911
    invoke-direct {v3, v1, v10}, LD0/U;-><init>(Ljava/lang/Object;I)V

    .line 912
    .line 913
    .line 914
    const-string v4, "DROP_SHADER_CACHE"

    .line 915
    .line 916
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    move-result v0

    .line 920
    if-eqz v0, :cond_22

    .line 921
    .line 922
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 923
    .line 924
    const/16 v4, 0x22

    .line 925
    .line 926
    if-lt v0, v4, :cond_1e

    .line 927
    .line 928
    invoke-static/range {p1 .. p1}, LD0/y;->d(Landroid/content/Context;)Landroid/content/Context;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    goto :goto_31

    .line 937
    :cond_1e
    const/16 v4, 0x18

    .line 938
    .line 939
    if-lt v0, v4, :cond_1f

    .line 940
    .line 941
    invoke-static/range {p1 .. p1}, LD0/y;->d(Landroid/content/Context;)Landroid/content/Context;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    invoke-virtual {v0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    goto :goto_31

    .line 950
    :cond_1f
    const/16 v4, 0x17

    .line 951
    .line 952
    if-ne v0, v4, :cond_20

    .line 953
    .line 954
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    goto :goto_31

    .line 959
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    :goto_31
    invoke-static {v0}, Ln0/c;->e(Ljava/io/File;)Z

    .line 964
    .line 965
    .line 966
    move-result v0

    .line 967
    if-eqz v0, :cond_21

    .line 968
    .line 969
    invoke-virtual {v3, v10, v9}, LD0/U;->q(ILjava/lang/Object;)V

    .line 970
    .line 971
    .line 972
    goto :goto_32

    .line 973
    :cond_21
    const/16 v0, 0xf

    .line 974
    .line 975
    invoke-virtual {v3, v0, v9}, LD0/U;->q(ILjava/lang/Object;)V

    .line 976
    .line 977
    .line 978
    goto :goto_32

    .line 979
    :cond_22
    const/16 v0, 0x10

    .line 980
    .line 981
    invoke-virtual {v3, v0, v9}, LD0/U;->q(ILjava/lang/Object;)V

    .line 982
    .line 983
    .line 984
    :cond_23
    :goto_32
    return-void
.end method
