.class public final Lcom/google/android/gms/internal/ads/cB;
.super Lcom/google/android/gms/internal/ads/Nz;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public f:Landroid/content/res/AssetFileDescriptor;

.field public g:J

.field public h:Z

.field public final i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/ads/cB;->e:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eq p2, v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nz;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cB;->i:Ljava/lang/Object;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Nz;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cB;->i:Ljava/lang/Object;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/CD;)J
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Lcom/google/android/gms/internal/ads/cB;->e:I

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const-wide/16 v5, -0x1

    .line 10
    .line 11
    const/16 v7, 0x7d8

    .line 12
    .line 13
    const/4 v9, 0x0

    .line 14
    const/16 v10, 0x7d0

    .line 15
    .line 16
    const/4 v11, 0x1

    .line 17
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/cB;->i:Ljava/lang/Object;

    .line 18
    .line 19
    packed-switch v2, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cB;->j:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/Nz;->j(Lcom/google/android/gms/internal/ads/CD;)V

    .line 25
    .line 26
    .line 27
    check-cast v12, Landroid/content/Context;

    .line 28
    .line 29
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/CD;->a:Landroid/net/Uri;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v13

    .line 39
    const-string v14, "rawresource"

    .line 40
    .line 41
    invoke-static {v14, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v13

    .line 45
    const-string v14, "Resource identifier must be an integer."

    .line 46
    .line 47
    const/16 v15, 0x3ec

    .line 48
    .line 49
    if-eqz v13, :cond_1

    .line 50
    .line 51
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-ne v8, v11, :cond_0

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    check-cast v8, Ljava/lang/String;

    .line 71
    .line 72
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :catch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/iI;

    .line 79
    .line 80
    invoke-direct {v0, v14, v15, v9}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/iI;

    .line 85
    .line 86
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    const-string v3, "rawresource:// URI must have exactly one path element, found "

    .line 91
    .line 92
    invoke-static {v3, v2}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-direct {v0, v2, v10, v9}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    const-string v13, "android.resource"

    .line 105
    .line 106
    invoke-static {v13, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_12

    .line 111
    .line 112
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    const-string v13, "/"

    .line 120
    .line 121
    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    if-eqz v13, :cond_2

    .line 126
    .line 127
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v13

    .line 139
    if-eqz v13, :cond_3

    .line 140
    .line 141
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v13

    .line 150
    :goto_0
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    if-eqz v10, :cond_4

    .line 159
    .line 160
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    :goto_1
    move-object v12, v10

    .line 165
    goto :goto_2

    .line 166
    :cond_4
    :try_start_1
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    invoke-virtual {v10, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 171
    .line 172
    .line 173
    move-result-object v10
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 174
    goto :goto_1

    .line 175
    :goto_2
    const-string v10, "\\d+"

    .line 176
    .line 177
    invoke-virtual {v8, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    if-eqz v10, :cond_5

    .line 182
    .line 183
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 187
    goto :goto_3

    .line 188
    :catch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/iI;

    .line 189
    .line 190
    invoke-direct {v0, v14, v15, v9}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 191
    .line 192
    .line 193
    throw v0

    .line 194
    :cond_5
    const-string v10, ":"

    .line 195
    .line 196
    invoke-static {v13, v10, v8}, Lcom/google/protobuf/U2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    const-string v10, "raw"

    .line 201
    .line 202
    invoke-virtual {v12, v8, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    if-eqz v8, :cond_11

    .line 207
    .line 208
    :goto_3
    :try_start_3
    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    .line 209
    .line 210
    .line 211
    move-result-object v8
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 212
    if-eqz v8, :cond_10

    .line 213
    .line 214
    iput-object v8, v1, Lcom/google/android/gms/internal/ads/cB;->f:Landroid/content/res/AssetFileDescriptor;

    .line 215
    .line 216
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 217
    .line 218
    .line 219
    move-result-wide v12

    .line 220
    new-instance v2, Ljava/io/FileInputStream;

    .line 221
    .line 222
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/cB;->f:Landroid/content/res/AssetFileDescriptor;

    .line 223
    .line 224
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 229
    .line 230
    .line 231
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/cB;->k:Ljava/io/FileInputStream;

    .line 232
    .line 233
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/CD;->c:J

    .line 234
    .line 235
    cmp-long v8, v12, v5

    .line 236
    .line 237
    if-eqz v8, :cond_7

    .line 238
    .line 239
    cmp-long v10, v14, v12

    .line 240
    .line 241
    if-gtz v10, :cond_6

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_6
    :try_start_4
    new-instance v0, Lcom/google/android/gms/internal/ads/iI;

    .line 245
    .line 246
    invoke-direct {v0, v9, v7, v9}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 247
    .line 248
    .line 249
    throw v0

    .line 250
    :catch_2
    move-exception v0

    .line 251
    goto/16 :goto_8

    .line 252
    .line 253
    :catch_3
    move-exception v0

    .line 254
    goto/16 :goto_9

    .line 255
    .line 256
    :cond_7
    :goto_4
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/cB;->f:Landroid/content/res/AssetFileDescriptor;

    .line 257
    .line 258
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 259
    .line 260
    .line 261
    move-result-wide v17

    .line 262
    move-wide/from16 v19, v12

    .line 263
    .line 264
    add-long v11, v17, v14

    .line 265
    .line 266
    invoke-virtual {v2, v11, v12}, Ljava/io/FileInputStream;->skip(J)J

    .line 267
    .line 268
    .line 269
    move-result-wide v11

    .line 270
    sub-long v11, v11, v17

    .line 271
    .line 272
    cmp-long v13, v11, v14

    .line 273
    .line 274
    if-nez v13, :cond_f

    .line 275
    .line 276
    if-nez v8, :cond_a

    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    .line 283
    .line 284
    .line 285
    move-result-wide v11

    .line 286
    cmp-long v8, v11, v3

    .line 287
    .line 288
    if-nez v8, :cond_8

    .line 289
    .line 290
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/cB;->g:J

    .line 291
    .line 292
    move-wide v11, v5

    .line 293
    goto :goto_5

    .line 294
    :cond_8
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    .line 295
    .line 296
    .line 297
    move-result-wide v11

    .line 298
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    .line 299
    .line 300
    .line 301
    move-result-wide v13

    .line 302
    sub-long/2addr v11, v13

    .line 303
    iput-wide v11, v1, Lcom/google/android/gms/internal/ads/cB;->g:J

    .line 304
    .line 305
    cmp-long v2, v11, v3

    .line 306
    .line 307
    if-ltz v2, :cond_9

    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/iI;

    .line 311
    .line 312
    invoke-direct {v0, v9, v7, v9}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 313
    .line 314
    .line 315
    throw v0

    .line 316
    :cond_a
    sub-long v11, v19, v11

    .line 317
    .line 318
    iput-wide v11, v1, Lcom/google/android/gms/internal/ads/cB;->g:J
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/iI; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 319
    .line 320
    cmp-long v2, v11, v3

    .line 321
    .line 322
    if-ltz v2, :cond_e

    .line 323
    .line 324
    :goto_5
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/CD;->d:J

    .line 325
    .line 326
    cmp-long v4, v2, v5

    .line 327
    .line 328
    if-eqz v4, :cond_c

    .line 329
    .line 330
    cmp-long v7, v11, v5

    .line 331
    .line 332
    if-nez v7, :cond_b

    .line 333
    .line 334
    move-wide v5, v2

    .line 335
    goto :goto_6

    .line 336
    :cond_b
    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 337
    .line 338
    .line 339
    move-result-wide v5

    .line 340
    :goto_6
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/cB;->g:J

    .line 341
    .line 342
    :cond_c
    const/4 v5, 0x1

    .line 343
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/cB;->h:Z

    .line 344
    .line 345
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/Nz;->k(Lcom/google/android/gms/internal/ads/CD;)V

    .line 346
    .line 347
    .line 348
    if-eqz v4, :cond_d

    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_d
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/cB;->g:J

    .line 352
    .line 353
    :goto_7
    return-wide v2

    .line 354
    :cond_e
    :try_start_5
    new-instance v0, Lcom/google/android/gms/internal/ads/xC;

    .line 355
    .line 356
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/xC;-><init>(I)V

    .line 357
    .line 358
    .line 359
    throw v0

    .line 360
    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/ads/iI;

    .line 361
    .line 362
    invoke-direct {v0, v9, v7, v9}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 363
    .line 364
    .line 365
    throw v0
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/iI; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 366
    :goto_8
    new-instance v2, Lcom/google/android/gms/internal/ads/iI;

    .line 367
    .line 368
    const/16 v3, 0x7d0

    .line 369
    .line 370
    invoke-direct {v2, v9, v3, v0}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 371
    .line 372
    .line 373
    throw v2

    .line 374
    :goto_9
    throw v0

    .line 375
    :cond_10
    const/16 v3, 0x7d0

    .line 376
    .line 377
    new-instance v0, Lcom/google/android/gms/internal/ads/iI;

    .line 378
    .line 379
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    const-string v4, "Resource is compressed: "

    .line 384
    .line 385
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-direct {v0, v2, v3, v9}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 390
    .line 391
    .line 392
    throw v0

    .line 393
    :catch_4
    move-exception v0

    .line 394
    move-object v2, v0

    .line 395
    new-instance v0, Lcom/google/android/gms/internal/ads/iI;

    .line 396
    .line 397
    const/16 v8, 0x7d5

    .line 398
    .line 399
    invoke-direct {v0, v9, v8, v2}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 400
    .line 401
    .line 402
    throw v0

    .line 403
    :cond_11
    const/16 v8, 0x7d5

    .line 404
    .line 405
    new-instance v0, Lcom/google/android/gms/internal/ads/iI;

    .line 406
    .line 407
    const-string v2, "Resource not found."

    .line 408
    .line 409
    invoke-direct {v0, v2, v8, v9}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 410
    .line 411
    .line 412
    throw v0

    .line 413
    :catch_5
    move-exception v0

    .line 414
    const/16 v8, 0x7d5

    .line 415
    .line 416
    new-instance v2, Lcom/google/android/gms/internal/ads/iI;

    .line 417
    .line 418
    const-string v3, "Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility."

    .line 419
    .line 420
    invoke-direct {v2, v3, v8, v0}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 421
    .line 422
    .line 423
    throw v2

    .line 424
    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/ads/iI;

    .line 425
    .line 426
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    const-string v3, "Unsupported URI scheme ("

    .line 431
    .line 432
    const-string v4, "). Only android.resource is supported."

    .line 433
    .line 434
    invoke-static {v3, v2, v4}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-direct {v0, v2, v15, v9}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 439
    .line 440
    .line 441
    throw v0

    .line 442
    :pswitch_0
    const/16 v8, 0x7d5

    .line 443
    .line 444
    const-string v2, "Could not open file descriptor for: "

    .line 445
    .line 446
    :try_start_6
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/CD;->a:Landroid/net/Uri;

    .line 447
    .line 448
    invoke-virtual {v11}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    .line 449
    .line 450
    .line 451
    move-result-object v11

    .line 452
    iput-object v11, v1, Lcom/google/android/gms/internal/ads/cB;->j:Ljava/lang/Object;

    .line 453
    .line 454
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/Nz;->j(Lcom/google/android/gms/internal/ads/CD;)V

    .line 455
    .line 456
    .line 457
    const-string v13, "content"

    .line 458
    .line 459
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v14

    .line 463
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v13

    .line 467
    if-eqz v13, :cond_13

    .line 468
    .line 469
    new-instance v13, Landroid/os/Bundle;

    .line 470
    .line 471
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 472
    .line 473
    .line 474
    const-string v14, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    .line 475
    .line 476
    const/4 v10, 0x1

    .line 477
    invoke-virtual {v13, v14, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 478
    .line 479
    .line 480
    check-cast v12, Landroid/content/ContentResolver;

    .line 481
    .line 482
    const-string v14, "*/*"

    .line 483
    .line 484
    invoke-virtual {v12, v11, v14, v13}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    .line 485
    .line 486
    .line 487
    move-result-object v12

    .line 488
    goto :goto_a

    .line 489
    :catch_6
    move-exception v0

    .line 490
    const/16 v2, 0x7d0

    .line 491
    .line 492
    goto/16 :goto_f

    .line 493
    .line 494
    :catch_7
    move-exception v0

    .line 495
    goto/16 :goto_11

    .line 496
    .line 497
    :cond_13
    check-cast v12, Landroid/content/ContentResolver;

    .line 498
    .line 499
    const-string v13, "r"

    .line 500
    .line 501
    invoke-virtual {v12, v11, v13}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 502
    .line 503
    .line 504
    move-result-object v12

    .line 505
    :goto_a
    iput-object v12, v1, Lcom/google/android/gms/internal/ads/cB;->f:Landroid/content/res/AssetFileDescriptor;

    .line 506
    .line 507
    if-eqz v12, :cond_1e

    .line 508
    .line 509
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 510
    .line 511
    .line 512
    move-result-wide v13

    .line 513
    new-instance v2, Ljava/io/FileInputStream;

    .line 514
    .line 515
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 516
    .line 517
    .line 518
    move-result-object v11

    .line 519
    invoke-direct {v2, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 520
    .line 521
    .line 522
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/cB;->k:Ljava/io/FileInputStream;
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/JA; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 523
    .line 524
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/CD;->c:J

    .line 525
    .line 526
    cmp-long v16, v13, v5

    .line 527
    .line 528
    if-eqz v16, :cond_15

    .line 529
    .line 530
    cmp-long v17, v10, v13

    .line 531
    .line 532
    if-gtz v17, :cond_14

    .line 533
    .line 534
    goto :goto_b

    .line 535
    :cond_14
    :try_start_7
    new-instance v0, Lcom/google/android/gms/internal/ads/JA;

    .line 536
    .line 537
    invoke-direct {v0, v7, v9}, Lcom/google/android/gms/internal/ads/xC;-><init>(ILjava/lang/Throwable;)V

    .line 538
    .line 539
    .line 540
    throw v0

    .line 541
    :cond_15
    :goto_b
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 542
    .line 543
    .line 544
    move-result-wide v17

    .line 545
    add-long v7, v17, v10

    .line 546
    .line 547
    invoke-virtual {v2, v7, v8}, Ljava/io/FileInputStream;->skip(J)J

    .line 548
    .line 549
    .line 550
    move-result-wide v7

    .line 551
    sub-long v7, v7, v17

    .line 552
    .line 553
    cmp-long v17, v7, v10

    .line 554
    .line 555
    if-nez v17, :cond_1d

    .line 556
    .line 557
    if-nez v16, :cond_18

    .line 558
    .line 559
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    .line 564
    .line 565
    .line 566
    move-result-wide v7

    .line 567
    cmp-long v10, v7, v3

    .line 568
    .line 569
    if-nez v10, :cond_16

    .line 570
    .line 571
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/cB;->g:J

    .line 572
    .line 573
    move-wide v7, v5

    .line 574
    goto :goto_c

    .line 575
    :cond_16
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    .line 576
    .line 577
    .line 578
    move-result-wide v10

    .line 579
    sub-long/2addr v7, v10

    .line 580
    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/cB;->g:J

    .line 581
    .line 582
    cmp-long v2, v7, v3

    .line 583
    .line 584
    if-ltz v2, :cond_17

    .line 585
    .line 586
    goto :goto_c

    .line 587
    :cond_17
    new-instance v0, Lcom/google/android/gms/internal/ads/JA;

    .line 588
    .line 589
    const/16 v2, 0x7d8

    .line 590
    .line 591
    invoke-direct {v0, v2, v9}, Lcom/google/android/gms/internal/ads/xC;-><init>(ILjava/lang/Throwable;)V

    .line 592
    .line 593
    .line 594
    throw v0

    .line 595
    :cond_18
    sub-long v7, v13, v7

    .line 596
    .line 597
    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/cB;->g:J
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/JA; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 598
    .line 599
    cmp-long v2, v7, v3

    .line 600
    .line 601
    if-ltz v2, :cond_1c

    .line 602
    .line 603
    :goto_c
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/CD;->d:J

    .line 604
    .line 605
    cmp-long v4, v2, v5

    .line 606
    .line 607
    if-eqz v4, :cond_1a

    .line 608
    .line 609
    cmp-long v9, v7, v5

    .line 610
    .line 611
    if-nez v9, :cond_19

    .line 612
    .line 613
    move-wide v5, v2

    .line 614
    goto :goto_d

    .line 615
    :cond_19
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 616
    .line 617
    .line 618
    move-result-wide v5

    .line 619
    :goto_d
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/cB;->g:J

    .line 620
    .line 621
    :cond_1a
    const/4 v5, 0x1

    .line 622
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/cB;->h:Z

    .line 623
    .line 624
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/Nz;->k(Lcom/google/android/gms/internal/ads/CD;)V

    .line 625
    .line 626
    .line 627
    if-eqz v4, :cond_1b

    .line 628
    .line 629
    goto :goto_e

    .line 630
    :cond_1b
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/cB;->g:J

    .line 631
    .line 632
    :goto_e
    return-wide v2

    .line 633
    :cond_1c
    :try_start_8
    new-instance v0, Lcom/google/android/gms/internal/ads/JA;

    .line 634
    .line 635
    const/16 v2, 0x7d8

    .line 636
    .line 637
    invoke-direct {v0, v2, v9}, Lcom/google/android/gms/internal/ads/xC;-><init>(ILjava/lang/Throwable;)V

    .line 638
    .line 639
    .line 640
    throw v0

    .line 641
    :cond_1d
    new-instance v0, Lcom/google/android/gms/internal/ads/JA;

    .line 642
    .line 643
    const/16 v2, 0x7d8

    .line 644
    .line 645
    invoke-direct {v0, v2, v9}, Lcom/google/android/gms/internal/ads/xC;-><init>(ILjava/lang/Throwable;)V

    .line 646
    .line 647
    .line 648
    throw v0

    .line 649
    :cond_1e
    new-instance v0, Lcom/google/android/gms/internal/ads/JA;

    .line 650
    .line 651
    new-instance v3, Ljava/io/IOException;

    .line 652
    .line 653
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v4

    .line 657
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/JA; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 662
    .line 663
    .line 664
    const/16 v2, 0x7d0

    .line 665
    .line 666
    :try_start_9
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/xC;-><init>(ILjava/lang/Throwable;)V

    .line 667
    .line 668
    .line 669
    throw v0
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/JA; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 670
    :catch_8
    move-exception v0

    .line 671
    :goto_f
    new-instance v3, Lcom/google/android/gms/internal/ads/JA;

    .line 672
    .line 673
    instance-of v4, v0, Ljava/io/FileNotFoundException;

    .line 674
    .line 675
    const/4 v5, 0x1

    .line 676
    if-eq v5, v4, :cond_1f

    .line 677
    .line 678
    const/16 v8, 0x7d0

    .line 679
    .line 680
    goto :goto_10

    .line 681
    :cond_1f
    const/16 v8, 0x7d5

    .line 682
    .line 683
    :goto_10
    invoke-direct {v3, v8, v0}, Lcom/google/android/gms/internal/ads/xC;-><init>(ILjava/lang/Throwable;)V

    .line 684
    .line 685
    .line 686
    throw v3

    .line 687
    :goto_11
    throw v0

    .line 688
    nop

    .line 689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e([BII)I
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/cB;->e:I

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    const/16 v3, 0x7d0

    .line 6
    .line 7
    const/4 v4, -0x1

    .line 8
    const-wide/16 v5, 0x0

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/cB;->g:J

    .line 19
    .line 20
    cmp-long v0, v7, v5

    .line 21
    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    cmp-long v0, v7, v1

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    int-to-long v5, p3

    .line 29
    :try_start_0
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    long-to-int p3, v5

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cB;->k:Ljava/io/FileInputStream;

    .line 38
    .line 39
    sget v5, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 40
    .line 41
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 42
    .line 43
    .line 44
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    if-ne p1, v4, :cond_3

    .line 46
    .line 47
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/cB;->g:J

    .line 48
    .line 49
    cmp-long p3, p1, v1

    .line 50
    .line 51
    if-nez p3, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/iI;

    .line 55
    .line 56
    new-instance p2, Ljava/io/EOFException;

    .line 57
    .line 58
    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string p3, "End of stream reached having not read sufficient data."

    .line 62
    .line 63
    invoke-direct {p1, p3, v3, p2}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_3
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/cB;->g:J

    .line 68
    .line 69
    cmp-long v0, p2, v1

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    int-to-long v0, p1

    .line 74
    sub-long/2addr p2, v0

    .line 75
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/cB;->g:J

    .line 76
    .line 77
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Nz;->zzg(I)V

    .line 78
    .line 79
    .line 80
    move v4, p1

    .line 81
    goto :goto_2

    .line 82
    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/ads/iI;

    .line 83
    .line 84
    const/4 p3, 0x0

    .line 85
    invoke-direct {p2, p3, v3, p1}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw p2

    .line 89
    :cond_5
    :goto_2
    return v4

    .line 90
    :pswitch_0
    if-nez p3, :cond_6

    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    goto :goto_5

    .line 94
    :cond_6
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/cB;->g:J

    .line 95
    .line 96
    cmp-long v0, v7, v5

    .line 97
    .line 98
    if-eqz v0, :cond_a

    .line 99
    .line 100
    cmp-long v0, v7, v1

    .line 101
    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    int-to-long v5, p3

    .line 105
    :try_start_1
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 106
    .line 107
    .line 108
    move-result-wide v5

    .line 109
    long-to-int p3, v5

    .line 110
    goto :goto_3

    .line 111
    :catch_1
    move-exception p1

    .line 112
    goto :goto_4

    .line 113
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cB;->k:Ljava/io/FileInputStream;

    .line 114
    .line 115
    sget v5, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 116
    .line 117
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    .line 118
    .line 119
    .line 120
    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    if-ne p1, v4, :cond_8

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_8
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/cB;->g:J

    .line 125
    .line 126
    cmp-long v0, p2, v1

    .line 127
    .line 128
    if-eqz v0, :cond_9

    .line 129
    .line 130
    int-to-long v0, p1

    .line 131
    sub-long/2addr p2, v0

    .line 132
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/cB;->g:J

    .line 133
    .line 134
    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Nz;->zzg(I)V

    .line 135
    .line 136
    .line 137
    move v4, p1

    .line 138
    goto :goto_5

    .line 139
    :goto_4
    new-instance p2, Lcom/google/android/gms/internal/ads/JA;

    .line 140
    .line 141
    invoke-direct {p2, v3, p1}, Lcom/google/android/gms/internal/ads/xC;-><init>(ILjava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    throw p2

    .line 145
    :cond_a
    :goto_5
    return v4

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/cB;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cB;->j:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/ads/CD;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/CD;->a:Landroid/net/Uri;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cB;->j:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroid/net/Uri;

    .line 20
    .line 21
    return-object v0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/cB;->e:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x7d0

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cB;->j:Ljava/lang/Object;

    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cB;->k:Ljava/io/FileInputStream;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_4

    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto :goto_3

    .line 24
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cB;->k:Ljava/io/FileInputStream;

    .line 25
    .line 26
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cB;->f:Landroid/content/res/AssetFileDescriptor;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_1
    move-exception v0

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_1
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cB;->f:Landroid/content/res/AssetFileDescriptor;

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cB;->h:Z

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cB;->h:Z

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nz;->i()V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void

    .line 48
    :goto_2
    :try_start_2
    new-instance v4, Lcom/google/android/gms/internal/ads/iI;

    .line 49
    .line 50
    invoke-direct {v4, v3, v2, v0}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    :catchall_1
    move-exception v0

    .line 55
    goto :goto_7

    .line 56
    :goto_3
    :try_start_3
    new-instance v4, Lcom/google/android/gms/internal/ads/iI;

    .line 57
    .line 58
    invoke-direct {v4, v3, v2, v0}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :goto_4
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cB;->k:Ljava/io/FileInputStream;

    .line 63
    .line 64
    :try_start_4
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cB;->f:Landroid/content/res/AssetFileDescriptor;

    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 69
    .line 70
    .line 71
    goto :goto_5

    .line 72
    :catch_2
    move-exception v0

    .line 73
    goto :goto_6

    .line 74
    :cond_3
    :goto_5
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cB;->f:Landroid/content/res/AssetFileDescriptor;

    .line 75
    .line 76
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/cB;->h:Z

    .line 77
    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cB;->h:Z

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nz;->i()V

    .line 83
    .line 84
    .line 85
    :cond_4
    throw v0

    .line 86
    :goto_6
    :try_start_5
    new-instance v4, Lcom/google/android/gms/internal/ads/iI;

    .line 87
    .line 88
    invoke-direct {v4, v3, v2, v0}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 92
    :goto_7
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cB;->f:Landroid/content/res/AssetFileDescriptor;

    .line 93
    .line 94
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/cB;->h:Z

    .line 95
    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cB;->h:Z

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nz;->i()V

    .line 101
    .line 102
    .line 103
    :cond_5
    throw v0

    .line 104
    :pswitch_0
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cB;->j:Ljava/lang/Object;

    .line 105
    .line 106
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cB;->k:Ljava/io/FileInputStream;

    .line 107
    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 111
    .line 112
    .line 113
    goto :goto_8

    .line 114
    :catchall_2
    move-exception v0

    .line 115
    goto :goto_c

    .line 116
    :catch_3
    move-exception v0

    .line 117
    goto :goto_b

    .line 118
    :cond_6
    :goto_8
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cB;->k:Ljava/io/FileInputStream;

    .line 119
    .line 120
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cB;->f:Landroid/content/res/AssetFileDescriptor;

    .line 121
    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 125
    .line 126
    .line 127
    goto :goto_9

    .line 128
    :catch_4
    move-exception v0

    .line 129
    goto :goto_a

    .line 130
    :cond_7
    :goto_9
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cB;->f:Landroid/content/res/AssetFileDescriptor;

    .line 131
    .line 132
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cB;->h:Z

    .line 133
    .line 134
    if-eqz v0, :cond_8

    .line 135
    .line 136
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cB;->h:Z

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nz;->i()V

    .line 139
    .line 140
    .line 141
    :cond_8
    return-void

    .line 142
    :goto_a
    :try_start_8
    new-instance v4, Lcom/google/android/gms/internal/ads/JA;

    .line 143
    .line 144
    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/ads/xC;-><init>(ILjava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 148
    :catchall_3
    move-exception v0

    .line 149
    goto :goto_f

    .line 150
    :goto_b
    :try_start_9
    new-instance v4, Lcom/google/android/gms/internal/ads/JA;

    .line 151
    .line 152
    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/ads/xC;-><init>(ILjava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 156
    :goto_c
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cB;->k:Ljava/io/FileInputStream;

    .line 157
    .line 158
    :try_start_a
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cB;->f:Landroid/content/res/AssetFileDescriptor;

    .line 159
    .line 160
    if-eqz v4, :cond_9

    .line 161
    .line 162
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 163
    .line 164
    .line 165
    goto :goto_d

    .line 166
    :catch_5
    move-exception v0

    .line 167
    goto :goto_e

    .line 168
    :cond_9
    :goto_d
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cB;->f:Landroid/content/res/AssetFileDescriptor;

    .line 169
    .line 170
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/cB;->h:Z

    .line 171
    .line 172
    if-eqz v2, :cond_a

    .line 173
    .line 174
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cB;->h:Z

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nz;->i()V

    .line 177
    .line 178
    .line 179
    :cond_a
    throw v0

    .line 180
    :goto_e
    :try_start_b
    new-instance v4, Lcom/google/android/gms/internal/ads/JA;

    .line 181
    .line 182
    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/ads/xC;-><init>(ILjava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 186
    :goto_f
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cB;->f:Landroid/content/res/AssetFileDescriptor;

    .line 187
    .line 188
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/cB;->h:Z

    .line 189
    .line 190
    if-eqz v2, :cond_b

    .line 191
    .line 192
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cB;->h:Z

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nz;->i()V

    .line 195
    .line 196
    .line 197
    :cond_b
    throw v0

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
