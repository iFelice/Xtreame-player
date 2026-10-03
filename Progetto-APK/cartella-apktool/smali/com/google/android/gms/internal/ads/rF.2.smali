.class public final Lcom/google/android/gms/internal/ads/rF;
.super Lcom/google/android/gms/internal/ads/Nz;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/DH;


# instance fields
.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Lcom/google/android/gms/internal/ads/WD;

.field public final j:Lcom/google/android/gms/internal/ads/WD;

.field public k:Ljava/net/HttpURLConnection;

.field public l:Ljava/io/InputStream;

.field public m:Z

.field public n:I

.field public o:J

.field public p:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IIZLcom/google/android/gms/internal/ads/WD;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nz;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rF;->h:Ljava/lang/String;

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/gms/internal/ads/rF;->f:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/gms/internal/ads/rF;->g:I

    .line 10
    .line 11
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/rF;->e:Z

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/rF;->i:Lcom/google/android/gms/internal/ads/WD;

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/WD;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/WD;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rF;->j:Lcom/google/android/gms/internal/ads/WD;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/CD;)J
    .locals 25

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-wide/16 v11, 0x0

    .line 6
    .line 7
    iput-wide v11, v10, Lcom/google/android/gms/internal/ads/rF;->p:J

    .line 8
    .line 9
    iput-wide v11, v10, Lcom/google/android/gms/internal/ads/rF;->o:J

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/Nz;->j(Lcom/google/android/gms/internal/ads/CD;)V

    .line 12
    .line 13
    .line 14
    const/4 v13, 0x1

    .line 15
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/CD;->a:Landroid/net/Uri;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/CD;->c:J

    .line 27
    .line 28
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/CD;->d:J

    .line 29
    .line 30
    iget v1, v0, Lcom/google/android/gms/internal/ads/CD;->e:I

    .line 31
    .line 32
    and-int/2addr v1, v13

    .line 33
    const/4 v7, 0x0

    .line 34
    if-ne v1, v13, :cond_0

    .line 35
    .line 36
    const/16 v16, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 v16, 0x0

    .line 40
    .line 41
    :goto_0
    iget-boolean v1, v10, Lcom/google/android/gms/internal/ads/rF;->e:Z

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/CD;->b:Ljava/util/Map;

    .line 46
    .line 47
    const/16 v17, 0x1

    .line 48
    .line 49
    move-object/from16 v1, p0

    .line 50
    .line 51
    move-wide v3, v14

    .line 52
    move-object v14, v5

    .line 53
    move-wide v5, v8

    .line 54
    const/4 v15, 0x0

    .line 55
    move/from16 v7, v16

    .line 56
    .line 57
    move/from16 v8, v17

    .line 58
    .line 59
    move-object v9, v14

    .line 60
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/rF;->l(Ljava/net/URL;JJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    goto :goto_2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    goto/16 :goto_14

    .line 67
    .line 68
    :cond_1
    move-object v5, v2

    .line 69
    const/4 v1, 0x0

    .line 70
    :goto_1
    add-int/lit8 v6, v1, 0x1

    .line 71
    .line 72
    const/16 v2, 0x14

    .line 73
    .line 74
    if-gt v1, v2, :cond_1b

    .line 75
    .line 76
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/CD;->b:Ljava/util/Map;

    .line 77
    .line 78
    const/16 v17, 0x0

    .line 79
    .line 80
    move-object/from16 v1, p0

    .line 81
    .line 82
    move-object v2, v5

    .line 83
    move-object/from16 v18, v3

    .line 84
    .line 85
    move-wide v3, v14

    .line 86
    move-object/from16 v19, v5

    .line 87
    .line 88
    move/from16 v20, v6

    .line 89
    .line 90
    move-wide v5, v8

    .line 91
    move/from16 v7, v16

    .line 92
    .line 93
    move-wide/from16 v21, v8

    .line 94
    .line 95
    move/from16 v8, v17

    .line 96
    .line 97
    move-object/from16 v9, v18

    .line 98
    .line 99
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/rF;->l(Ljava/net/URL;JJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    const-string v3, "Location"

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const/16 v4, 0x12c

    .line 114
    .line 115
    if-eq v2, v4, :cond_2

    .line 116
    .line 117
    const/16 v4, 0x12d

    .line 118
    .line 119
    if-eq v2, v4, :cond_2

    .line 120
    .line 121
    const/16 v4, 0x12e

    .line 122
    .line 123
    if-eq v2, v4, :cond_2

    .line 124
    .line 125
    const/16 v4, 0x12f

    .line 126
    .line 127
    if-eq v2, v4, :cond_2

    .line 128
    .line 129
    const/16 v4, 0x133

    .line 130
    .line 131
    if-eq v2, v4, :cond_2

    .line 132
    .line 133
    const/16 v4, 0x134

    .line 134
    .line 135
    if-ne v2, v4, :cond_3

    .line 136
    .line 137
    :cond_2
    move-wide v7, v11

    .line 138
    const/4 v4, 0x0

    .line 139
    goto/16 :goto_13

    .line 140
    .line 141
    :cond_3
    :goto_2
    iput-object v1, v10, Lcom/google/android/gms/internal/ads/rF;->k:Ljava/net/HttpURLConnection;

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    iput v2, v10, Lcom/google/android/gms/internal/ads/rF;->n:I

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    .line 152
    iget v2, v10, Lcom/google/android/gms/internal/ads/rF;->n:I

    .line 153
    .line 154
    const-string v3, "Content-Range"

    .line 155
    .line 156
    const/16 v4, 0xc8

    .line 157
    .line 158
    const-wide/16 v5, -0x1

    .line 159
    .line 160
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/CD;->c:J

    .line 161
    .line 162
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/CD;->d:J

    .line 163
    .line 164
    if-lt v2, v4, :cond_14

    .line 165
    .line 166
    const/16 v9, 0x12b

    .line 167
    .line 168
    if-le v2, v9, :cond_4

    .line 169
    .line 170
    goto/16 :goto_e

    .line 171
    .line 172
    :cond_4
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    iget v2, v10, Lcom/google/android/gms/internal/ads/rF;->n:I

    .line 176
    .line 177
    if-ne v2, v4, :cond_5

    .line 178
    .line 179
    cmp-long v2, v7, v11

    .line 180
    .line 181
    if-nez v2, :cond_6

    .line 182
    .line 183
    :cond_5
    move-wide v7, v11

    .line 184
    :cond_6
    const-string v2, "Content-Encoding"

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    const-string v4, "gzip"

    .line 191
    .line 192
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-nez v2, :cond_d

    .line 197
    .line 198
    cmp-long v4, v14, v5

    .line 199
    .line 200
    if-eqz v4, :cond_7

    .line 201
    .line 202
    iput-wide v14, v10, Lcom/google/android/gms/internal/ads/rF;->o:J

    .line 203
    .line 204
    goto/16 :goto_8

    .line 205
    .line 206
    :cond_7
    const-string v4, "Content-Length"

    .line 207
    .line 208
    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    sget-object v9, Lcom/google/android/gms/internal/ads/VH;->a:Ljava/util/regex/Pattern;

    .line 217
    .line 218
    const-string v9, "Inconsistent headers ["

    .line 219
    .line 220
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 221
    .line 222
    .line 223
    move-result v14

    .line 224
    const-string v15, "HttpUtil"

    .line 225
    .line 226
    const-string v5, "]"

    .line 227
    .line 228
    if-nez v14, :cond_8

    .line 229
    .line 230
    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 231
    .line 232
    .line 233
    move-result-wide v18
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    move-wide/from16 v23, v18

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :catch_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v14, "Unexpected Content-Length ["

    .line 240
    .line 241
    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-static {v15, v6}, Lcom/google/android/gms/internal/ads/Zo;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_8
    const-wide/16 v23, -0x1

    .line 258
    .line 259
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    if-nez v6, :cond_a

    .line 264
    .line 265
    sget-object v6, Lcom/google/android/gms/internal/ads/VH;->a:Ljava/util/regex/Pattern;

    .line 266
    .line 267
    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 272
    .line 273
    .line 274
    move-result v14

    .line 275
    if-eqz v14, :cond_a

    .line 276
    .line 277
    const/4 v14, 0x2

    .line 278
    :try_start_2
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v14
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 282
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    :try_start_3
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 286
    .line 287
    .line 288
    move-result-wide v18

    .line 289
    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v6
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 293
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    :try_start_4
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 297
    .line 298
    .line 299
    move-result-wide v21
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 300
    sub-long v18, v18, v21

    .line 301
    .line 302
    move-wide/from16 v13, v23

    .line 303
    .line 304
    cmp-long v20, v13, v11

    .line 305
    .line 306
    const-wide/16 v21, 0x1

    .line 307
    .line 308
    add-long v11, v18, v21

    .line 309
    .line 310
    if-gez v20, :cond_9

    .line 311
    .line 312
    move-wide v3, v11

    .line 313
    goto :goto_4

    .line 314
    :cond_9
    cmp-long v18, v13, v11

    .line 315
    .line 316
    if-eqz v18, :cond_b

    .line 317
    .line 318
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v4, "] ["

    .line 327
    .line 328
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 345
    .line 346
    .line 347
    move-result-wide v3
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    .line 348
    :goto_4
    const-wide/16 v5, -0x1

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :catch_2
    move-wide/from16 v13, v23

    .line 352
    .line 353
    :catch_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    const-string v6, "Unexpected Content-Range ["

    .line 356
    .line 357
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/Zo;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_a
    move-wide/from16 v13, v23

    .line 375
    .line 376
    :cond_b
    :goto_5
    move-wide v3, v13

    .line 377
    goto :goto_4

    .line 378
    :goto_6
    cmp-long v9, v3, v5

    .line 379
    .line 380
    if-eqz v9, :cond_c

    .line 381
    .line 382
    sub-long v5, v3, v7

    .line 383
    .line 384
    goto :goto_7

    .line 385
    :cond_c
    const-wide/16 v5, -0x1

    .line 386
    .line 387
    :goto_7
    iput-wide v5, v10, Lcom/google/android/gms/internal/ads/rF;->o:J

    .line 388
    .line 389
    goto :goto_8

    .line 390
    :cond_d
    iput-wide v14, v10, Lcom/google/android/gms/internal/ads/rF;->o:J

    .line 391
    .line 392
    :goto_8
    const/16 v3, 0x7d0

    .line 393
    .line 394
    :try_start_6
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    iput-object v1, v10, Lcom/google/android/gms/internal/ads/rF;->l:Ljava/io/InputStream;

    .line 399
    .line 400
    if-eqz v2, :cond_e

    .line 401
    .line 402
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    .line 403
    .line 404
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/rF;->l:Ljava/io/InputStream;

    .line 405
    .line 406
    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 407
    .line 408
    .line 409
    iput-object v1, v10, Lcom/google/android/gms/internal/ads/rF;->l:Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 410
    .line 411
    :cond_e
    const/4 v1, 0x1

    .line 412
    goto :goto_9

    .line 413
    :catch_4
    move-exception v0

    .line 414
    const/4 v2, 0x1

    .line 415
    goto :goto_d

    .line 416
    :goto_9
    iput-boolean v1, v10, Lcom/google/android/gms/internal/ads/rF;->m:Z

    .line 417
    .line 418
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/Nz;->k(Lcom/google/android/gms/internal/ads/CD;)V

    .line 419
    .line 420
    .line 421
    const-wide/16 v0, 0x0

    .line 422
    .line 423
    cmp-long v2, v7, v0

    .line 424
    .line 425
    if-nez v2, :cond_f

    .line 426
    .line 427
    goto :goto_b

    .line 428
    :cond_f
    const/16 v2, 0x1000

    .line 429
    .line 430
    :try_start_7
    new-array v2, v2, [B

    .line 431
    .line 432
    :goto_a
    cmp-long v4, v7, v0

    .line 433
    .line 434
    if-lez v4, :cond_12

    .line 435
    .line 436
    const-wide/16 v0, 0x1000

    .line 437
    .line 438
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 439
    .line 440
    .line 441
    move-result-wide v0

    .line 442
    long-to-int v1, v0

    .line 443
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/rF;->l:Ljava/io/InputStream;

    .line 444
    .line 445
    sget v4, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 446
    .line 447
    const/4 v4, 0x0

    .line 448
    invoke-virtual {v0, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-nez v1, :cond_11

    .line 461
    .line 462
    const/4 v1, -0x1

    .line 463
    if-eq v0, v1, :cond_10

    .line 464
    .line 465
    int-to-long v11, v0

    .line 466
    sub-long/2addr v7, v11

    .line 467
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/Nz;->zzg(I)V

    .line 468
    .line 469
    .line 470
    const-wide/16 v0, 0x0

    .line 471
    .line 472
    goto :goto_a

    .line 473
    :catch_5
    move-exception v0

    .line 474
    goto :goto_c

    .line 475
    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/ads/GG;

    .line 476
    .line 477
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/GG;-><init>()V

    .line 478
    .line 479
    .line 480
    throw v0

    .line 481
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/GG;

    .line 482
    .line 483
    new-instance v1, Ljava/io/InterruptedIOException;

    .line 484
    .line 485
    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 486
    .line 487
    .line 488
    const/4 v2, 0x1

    .line 489
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/GG;-><init>(Ljava/io/IOException;II)V

    .line 490
    .line 491
    .line 492
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 493
    :cond_12
    :goto_b
    iget-wide v0, v10, Lcom/google/android/gms/internal/ads/rF;->o:J

    .line 494
    .line 495
    return-wide v0

    .line 496
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/rF;->n()V

    .line 497
    .line 498
    .line 499
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/GG;

    .line 500
    .line 501
    if-eqz v1, :cond_13

    .line 502
    .line 503
    check-cast v0, Lcom/google/android/gms/internal/ads/GG;

    .line 504
    .line 505
    throw v0

    .line 506
    :cond_13
    new-instance v1, Lcom/google/android/gms/internal/ads/GG;

    .line 507
    .line 508
    const/4 v2, 0x1

    .line 509
    invoke-direct {v1, v0, v3, v2}, Lcom/google/android/gms/internal/ads/GG;-><init>(Ljava/io/IOException;II)V

    .line 510
    .line 511
    .line 512
    throw v1

    .line 513
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/rF;->n()V

    .line 514
    .line 515
    .line 516
    new-instance v1, Lcom/google/android/gms/internal/ads/GG;

    .line 517
    .line 518
    invoke-direct {v1, v0, v3, v2}, Lcom/google/android/gms/internal/ads/GG;-><init>(Ljava/io/IOException;II)V

    .line 519
    .line 520
    .line 521
    throw v1

    .line 522
    :cond_14
    :goto_e
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 523
    .line 524
    .line 525
    iget v2, v10, Lcom/google/android/gms/internal/ads/rF;->n:I

    .line 526
    .line 527
    const/16 v4, 0x1a0

    .line 528
    .line 529
    if-ne v2, v4, :cond_18

    .line 530
    .line 531
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    sget-object v3, Lcom/google/android/gms/internal/ads/VH;->a:Ljava/util/regex/Pattern;

    .line 536
    .line 537
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 538
    .line 539
    .line 540
    move-result v3

    .line 541
    if-eqz v3, :cond_16

    .line 542
    .line 543
    :cond_15
    const/4 v3, 0x1

    .line 544
    goto :goto_f

    .line 545
    :cond_16
    sget-object v3, Lcom/google/android/gms/internal/ads/VH;->b:Ljava/util/regex/Pattern;

    .line 546
    .line 547
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 552
    .line 553
    .line 554
    move-result v3

    .line 555
    if-eqz v3, :cond_15

    .line 556
    .line 557
    const/4 v3, 0x1

    .line 558
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 566
    .line 567
    .line 568
    move-result-wide v5

    .line 569
    goto :goto_10

    .line 570
    :goto_f
    const-wide/16 v5, -0x1

    .line 571
    .line 572
    :goto_10
    cmp-long v2, v7, v5

    .line 573
    .line 574
    if-nez v2, :cond_18

    .line 575
    .line 576
    iput-boolean v3, v10, Lcom/google/android/gms/internal/ads/rF;->m:Z

    .line 577
    .line 578
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/Nz;->k(Lcom/google/android/gms/internal/ads/CD;)V

    .line 579
    .line 580
    .line 581
    const-wide/16 v0, -0x1

    .line 582
    .line 583
    cmp-long v2, v14, v0

    .line 584
    .line 585
    if-eqz v2, :cond_17

    .line 586
    .line 587
    return-wide v14

    .line 588
    :cond_17
    const-wide/16 v7, 0x0

    .line 589
    .line 590
    return-wide v7

    .line 591
    :cond_18
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    if-eqz v0, :cond_19

    .line 596
    .line 597
    :try_start_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jB;->a(Ljava/io/InputStream;)[B

    .line 598
    .line 599
    .line 600
    goto :goto_11

    .line 601
    :cond_19
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 602
    .line 603
    goto :goto_11

    .line 604
    :catch_6
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 605
    .line 606
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/rF;->n()V

    .line 607
    .line 608
    .line 609
    iget v0, v10, Lcom/google/android/gms/internal/ads/rF;->n:I

    .line 610
    .line 611
    if-ne v0, v4, :cond_1a

    .line 612
    .line 613
    new-instance v0, Lcom/google/android/gms/internal/ads/xC;

    .line 614
    .line 615
    const/16 v1, 0x7d8

    .line 616
    .line 617
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/xC;-><init>(I)V

    .line 618
    .line 619
    .line 620
    goto :goto_12

    .line 621
    :cond_1a
    const/4 v0, 0x0

    .line 622
    :goto_12
    new-instance v1, Lcom/google/android/gms/internal/ads/cH;

    .line 623
    .line 624
    iget v2, v10, Lcom/google/android/gms/internal/ads/rF;->n:I

    .line 625
    .line 626
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/cH;-><init>(ILcom/google/android/gms/internal/ads/xC;)V

    .line 627
    .line 628
    .line 629
    throw v1

    .line 630
    :goto_13
    :try_start_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 631
    .line 632
    .line 633
    move-object/from16 v2, v19

    .line 634
    .line 635
    invoke-virtual {v10, v2, v3}, Lcom/google/android/gms/internal/ads/rF;->m(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 636
    .line 637
    .line 638
    move-result-object v5

    .line 639
    move-wide v11, v7

    .line 640
    move/from16 v1, v20

    .line 641
    .line 642
    move-wide/from16 v8, v21

    .line 643
    .line 644
    const/4 v7, 0x0

    .line 645
    const/4 v13, 0x1

    .line 646
    goto/16 :goto_1

    .line 647
    .line 648
    :cond_1b
    move/from16 v20, v6

    .line 649
    .line 650
    new-instance v0, Lcom/google/android/gms/internal/ads/GG;

    .line 651
    .line 652
    new-instance v1, Ljava/net/NoRouteToHostException;

    .line 653
    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    .line 655
    .line 656
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    .line 658
    .line 659
    const-string v3, "Too many redirects: "

    .line 660
    .line 661
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    move/from16 v3, v20

    .line 665
    .line 666
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    const/16 v2, 0x7d1

    .line 677
    .line 678
    const/4 v3, 0x1

    .line 679
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/GG;-><init>(Ljava/io/IOException;II)V

    .line 680
    .line 681
    .line 682
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 683
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/rF;->n()V

    .line 684
    .line 685
    .line 686
    const/4 v1, 0x1

    .line 687
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/GG;->a(Ljava/io/IOException;I)Lcom/google/android/gms/internal/ads/GG;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    throw v0
.end method

.method public final e([BII)I
    .locals 6

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_2

    .line 5
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/rF;->o:J

    .line 6
    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    cmp-long v5, v0, v2

    .line 11
    .line 12
    if-eqz v5, :cond_2

    .line 13
    .line 14
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/rF;->p:J

    .line 15
    .line 16
    sub-long/2addr v0, v2

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v5, v0, v2

    .line 20
    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    :goto_0
    const/4 p1, -0x1

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    int-to-long v2, p3

    .line 26
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    long-to-int p3, v0

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    goto :goto_3

    .line 34
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rF;->l:Ljava/io/InputStream;

    .line 35
    .line 36
    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-ne p1, v4, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/rF;->p:J

    .line 46
    .line 47
    int-to-long v0, p1

    .line 48
    add-long/2addr p2, v0

    .line 49
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/rF;->p:J

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Nz;->zzg(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :goto_2
    return p1

    .line 55
    :goto_3
    sget p2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 56
    .line 57
    const/4 p2, 0x2

    .line 58
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/GG;->a(Ljava/io/IOException;I)Lcom/google/android/gms/internal/ads/GG;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    throw p1
.end method

.method public final l(Ljava/net/URL;JJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/rF;->f:I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/rF;->g:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rF;->i:Lcom/google/android/gms/internal/ads/WD;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/WD;->a()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rF;->j:Lcom/google/android/gms/internal/ads/WD;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/WD;->a()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object p8

    .line 47
    invoke-interface {p8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p8

    .line 51
    :goto_0
    invoke-interface {p8}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-interface {p8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const-wide/16 v0, 0x0

    .line 80
    .line 81
    const-wide/16 v2, -0x1

    .line 82
    .line 83
    cmp-long p8, p2, v0

    .line 84
    .line 85
    if-nez p8, :cond_2

    .line 86
    .line 87
    cmp-long p2, p4, v2

    .line 88
    .line 89
    if-nez p2, :cond_1

    .line 90
    .line 91
    const/4 p2, 0x0

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    move-wide p2, v0

    .line 94
    :cond_2
    const-string p8, "bytes="

    .line 95
    .line 96
    const-string v0, "-"

    .line 97
    .line 98
    invoke-static {p8, p2, p3, v0}, Lt/a;->d(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object p8

    .line 102
    cmp-long v0, p4, v2

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    add-long/2addr p2, p4

    .line 107
    add-long/2addr p2, v2

    .line 108
    invoke-virtual {p8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    :cond_3
    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    :goto_1
    if-eqz p2, :cond_4

    .line 116
    .line 117
    const-string p3, "Range"

    .line 118
    .line 119
    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rF;->h:Ljava/lang/String;

    .line 123
    .line 124
    if-eqz p2, :cond_5

    .line 125
    .line 126
    const-string p3, "User-Agent"

    .line 127
    .line 128
    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    const/4 p2, 0x1

    .line 132
    if-eq p2, p6, :cond_6

    .line 133
    .line 134
    const-string p2, "identity"

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    const-string p2, "gzip"

    .line 138
    .line 139
    :goto_2
    const-string p3, "Accept-Encoding"

    .line 140
    .line 141
    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 145
    .line 146
    .line 147
    const/4 p2, 0x0

    .line 148
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 149
    .line 150
    .line 151
    sget p2, Lcom/google/android/gms/internal/ads/CD;->f:I

    .line 152
    .line 153
    const-string p2, "GET"

    .line 154
    .line 155
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 159
    .line 160
    .line 161
    return-object p1
.end method

.method public final m(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x7d1

    .line 3
    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 7
    .line 8
    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v3, "https"

    .line 16
    .line 17
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    const-string v3, "http"

    .line 24
    .line 25
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance p2, Lcom/google/android/gms/internal/ads/GG;

    .line 37
    .line 38
    const-string v2, "Unsupported protocol redirect: "

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/GG;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    throw p2

    .line 48
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/rF;->e:Z

    .line 49
    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/ads/GG;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v3, "Disallowed cross-protocol redirect ("

    .line 70
    .line 71
    const-string v4, " to "

    .line 72
    .line 73
    const-string v5, ")"

    .line 74
    .line 75
    invoke-static {v3, p1, v4, p2, v5}, LA0/O;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/GG;-><init>(Ljava/lang/String;II)V

    .line 80
    .line 81
    .line 82
    throw v2

    .line 83
    :cond_3
    :goto_1
    return-object v2

    .line 84
    :catch_0
    move-exception p1

    .line 85
    new-instance p2, Lcom/google/android/gms/internal/ads/GG;

    .line 86
    .line 87
    invoke-direct {p2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/GG;-><init>(Ljava/io/IOException;II)V

    .line 88
    .line 89
    .line 90
    throw p2

    .line 91
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/GG;

    .line 92
    .line 93
    const-string p2, "Null location redirect"

    .line 94
    .line 95
    invoke-direct {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/GG;-><init>(Ljava/lang/String;II)V

    .line 96
    .line 97
    .line 98
    throw p1
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rF;->k:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "DefaultHttpDataSource"

    .line 11
    .line 12
    const-string v2, "Unexpected error while disconnecting"

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Zo;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rF;->k:Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rF;->k:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final zzd()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rF;->l:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v2

    .line 12
    goto :goto_1

    .line 13
    :catch_0
    move-exception v2

    .line 14
    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/ads/GG;

    .line 15
    .line 16
    sget v4, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 17
    .line 18
    const/16 v4, 0x7d0

    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/GG;-><init>(Ljava/io/IOException;II)V

    .line 22
    .line 23
    .line 24
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/rF;->l:Ljava/io/InputStream;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rF;->n()V

    .line 28
    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/rF;->m:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rF;->m:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nz;->i()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/rF;->l:Ljava/io/InputStream;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rF;->n()V

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/rF;->m:Z

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rF;->m:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nz;->i()V

    .line 52
    .line 53
    .line 54
    :cond_2
    throw v2
.end method

.method public final zze()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rF;->k:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/UA;->M:Lcom/google/android/gms/internal/ads/UA;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/VE;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/VE;-><init>(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    return-object v1
.end method
