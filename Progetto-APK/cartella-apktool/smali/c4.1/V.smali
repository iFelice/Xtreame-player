.class public final Lc4/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/net/URL;

.field public final I:[B

.field public final J:Ljava/lang/String;

.field public final K:Ljava/util/Map;

.field public final L:Ljava/lang/Object;

.field public final synthetic M:Lc1/d;


# direct methods
.method public constructor <init>(Lc4/N0;Ljava/lang/String;Ljava/net/URL;[BLjava/util/HashMap;Lc4/M0;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lc4/V;->G:I

    .line 8
    iput-object p1, p0, Lc4/V;->M:Lc1/d;

    invoke-static {p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 9
    iput-object p3, p0, Lc4/V;->H:Ljava/net/URL;

    iput-object p4, p0, Lc4/V;->I:[B

    iput-object p6, p0, Lc4/V;->L:Ljava/lang/Object;

    iput-object p2, p0, Lc4/V;->J:Ljava/lang/String;

    iput-object p5, p0, Lc4/V;->K:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lc4/W;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lc4/U;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc4/V;->G:I

    .line 3
    iput-object p1, p0, Lc4/V;->M:Lc1/d;

    invoke-static {p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 4
    invoke-static {p3}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 5
    iput-object p3, p0, Lc4/V;->H:Ljava/net/URL;

    iput-object p4, p0, Lc4/V;->I:[B

    iput-object p6, p0, Lc4/V;->L:Ljava/lang/Object;

    iput-object p2, p0, Lc4/V;->J:Ljava/lang/String;

    iput-object p5, p0, Lc4/V;->K:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(ILjava/io/IOException;[BLjava/util/Map;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lc4/V;->M:Lc1/d;

    .line 2
    .line 3
    check-cast v0, Lc4/N0;

    .line 4
    .line 5
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lc4/l0;

    .line 8
    .line 9
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 10
    .line 11
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 12
    .line 13
    .line 14
    new-instance v7, Lh3/a;

    .line 15
    .line 16
    move-object v1, v7

    .line 17
    move-object v2, p0

    .line 18
    move v3, p1

    .line 19
    move-object v4, p2

    .line 20
    move-object v5, p3

    .line 21
    move-object v6, p4

    .line 22
    invoke-direct/range {v1 .. v6}, Lh3/a;-><init>(Lc4/V;ILjava/io/IOException;[BLjava/util/Map;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v7}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lc4/V;->G:I

    .line 4
    .line 5
    const-string v2, "Failed to obtain HTTP connection"

    .line 6
    .line 7
    const-string v4, "gzip"

    .line 8
    .line 9
    const-string v5, "Content-Encoding"

    .line 10
    .line 11
    const-string v6, "Uploading data. size"

    .line 12
    .line 13
    iget-object v7, v1, Lc4/V;->I:[B

    .line 14
    .line 15
    iget-object v8, v1, Lc4/V;->K:Ljava/util/Map;

    .line 16
    .line 17
    const v10, 0xee48

    .line 18
    .line 19
    .line 20
    const v11, 0xea60

    .line 21
    .line 22
    .line 23
    iget-object v12, v1, Lc4/V;->H:Ljava/net/URL;

    .line 24
    .line 25
    const/4 v14, 0x0

    .line 26
    iget-object v15, v1, Lc4/V;->M:Lc1/d;

    .line 27
    .line 28
    iget-object v13, v1, Lc4/V;->J:Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, "Error closing HTTP compressed POST connection output stream. appId"

    .line 31
    .line 32
    packed-switch v0, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    move-object v9, v15

    .line 36
    check-cast v9, Lc4/N0;

    .line 37
    .line 38
    iget-object v0, v9, Lc1/d;->G:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lc4/l0;

    .line 41
    .line 42
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 43
    .line 44
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lc4/j0;->q()V

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    instance-of v12, v0, Ljava/net/HttpURLConnection;

    .line 55
    .line 56
    if-eqz v12, :cond_4

    .line 57
    .line 58
    move-object v2, v0

    .line 59
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 60
    .line 61
    invoke-virtual {v2, v14}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 62
    .line 63
    .line 64
    iget-object v0, v9, Lc1/d;->G:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Lc4/l0;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v11}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 82
    .line 83
    .line 84
    if-eqz v8, :cond_0

    .line 85
    .line 86
    :try_start_1
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    if-eqz v10, :cond_0

    .line 99
    .line 100
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    check-cast v10, Ljava/util/Map$Entry;

    .line 105
    .line 106
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    check-cast v11, Ljava/lang/String;

    .line 111
    .line 112
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    check-cast v10, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v2, v11, v10}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    goto/16 :goto_d

    .line 124
    .line 125
    :catch_0
    move-exception v0

    .line 126
    goto/16 :goto_e

    .line 127
    .line 128
    :cond_0
    if-eqz v7, :cond_1

    .line 129
    .line 130
    :try_start_2
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 131
    .line 132
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 133
    .line 134
    .line 135
    new-instance v10, Ljava/util/zip/GZIPOutputStream;

    .line 136
    .line 137
    invoke-direct {v10, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10, v7}, Ljava/io/OutputStream;->write([B)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 150
    .line 151
    .line 152
    move-result-object v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :try_start_3
    check-cast v15, Lc4/N0;

    .line 154
    .line 155
    iget-object v8, v15, Lc1/d;->G:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v8, Lc4/l0;

    .line 158
    .line 159
    iget-object v8, v8, Lc4/l0;->O:Lc4/T;

    .line 160
    .line 161
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 162
    .line 163
    .line 164
    iget-object v8, v8, Lc4/T;->T:Lc4/Q;

    .line 165
    .line 166
    array-length v10, v7

    .line 167
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    invoke-virtual {v8, v11, v6}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const/4 v0, 0x1

    .line 175
    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v5, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 188
    .line 189
    .line 190
    move-result-object v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    :try_start_4
    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :catchall_1
    move-exception v0

    .line 199
    goto :goto_1

    .line 200
    :catch_1
    move-exception v0

    .line 201
    goto :goto_4

    .line 202
    :goto_1
    move-object v5, v2

    .line 203
    :goto_2
    const/4 v6, 0x0

    .line 204
    :goto_3
    move-object v2, v0

    .line 205
    goto/16 :goto_10

    .line 206
    .line 207
    :goto_4
    const/4 v5, 0x0

    .line 208
    move-object/from16 v24, v2

    .line 209
    .line 210
    move-object v2, v0

    .line 211
    move-object v0, v4

    .line 212
    move-object/from16 v4, v24

    .line 213
    .line 214
    goto/16 :goto_13

    .line 215
    .line 216
    :catch_2
    move-exception v0

    .line 217
    :try_start_5
    check-cast v15, Lc4/N0;

    .line 218
    .line 219
    iget-object v4, v15, Lc1/d;->G:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v4, Lc4/l0;

    .line 222
    .line 223
    iget-object v4, v4, Lc4/l0;->O:Lc4/T;

    .line 224
    .line 225
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 226
    .line 227
    .line 228
    iget-object v4, v4, Lc4/T;->L:Lc4/Q;

    .line 229
    .line 230
    const-string v5, "Failed to gzip post request content"

    .line 231
    .line 232
    invoke-virtual {v4, v0, v5}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v0

    .line 236
    :cond_1
    :goto_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 237
    .line 238
    .line 239
    move-result v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 240
    :try_start_6
    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 241
    .line 242
    .line 243
    move-result-object v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 244
    :try_start_7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 245
    .line 246
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 250
    .line 251
    .line 252
    move-result-object v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 253
    const/16 v7, 0x400

    .line 254
    .line 255
    :try_start_8
    new-array v7, v7, [B

    .line 256
    .line 257
    :goto_6
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    .line 258
    .line 259
    .line 260
    move-result v8

    .line 261
    if-lez v8, :cond_2

    .line 262
    .line 263
    invoke-virtual {v0, v7, v14, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 264
    .line 265
    .line 266
    goto :goto_6

    .line 267
    :catchall_2
    move-exception v0

    .line 268
    goto :goto_7

    .line 269
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 270
    .line 271
    .line 272
    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 273
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 277
    .line 278
    .line 279
    const/4 v2, 0x0

    .line 280
    invoke-virtual {v1, v4, v2, v0, v5}, Lc4/V;->a(ILjava/io/IOException;[BLjava/util/Map;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_15

    .line 284
    .line 285
    :catchall_3
    move-exception v0

    .line 286
    goto :goto_8

    .line 287
    :catch_3
    move-exception v0

    .line 288
    goto :goto_9

    .line 289
    :catchall_4
    move-exception v0

    .line 290
    const/4 v6, 0x0

    .line 291
    :goto_7
    if-eqz v6, :cond_3

    .line 292
    .line 293
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 294
    .line 295
    .line 296
    :cond_3
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 297
    :goto_8
    move v14, v4

    .line 298
    move-object v6, v5

    .line 299
    const/4 v4, 0x0

    .line 300
    move-object v5, v2

    .line 301
    goto :goto_3

    .line 302
    :goto_9
    move v14, v4

    .line 303
    :goto_a
    move-object v4, v2

    .line 304
    :goto_b
    move-object v2, v0

    .line 305
    const/4 v0, 0x0

    .line 306
    goto :goto_13

    .line 307
    :catchall_5
    move-exception v0

    .line 308
    move-object v5, v2

    .line 309
    move v14, v4

    .line 310
    :goto_c
    const/4 v4, 0x0

    .line 311
    goto :goto_2

    .line 312
    :catch_4
    move-exception v0

    .line 313
    move v14, v4

    .line 314
    const/4 v5, 0x0

    .line 315
    goto :goto_a

    .line 316
    :goto_d
    move-object v5, v2

    .line 317
    goto :goto_c

    .line 318
    :goto_e
    move-object v4, v2

    .line 319
    const/4 v5, 0x0

    .line 320
    goto :goto_b

    .line 321
    :catchall_6
    move-exception v0

    .line 322
    goto :goto_f

    .line 323
    :catch_5
    move-exception v0

    .line 324
    goto :goto_12

    .line 325
    :cond_4
    :try_start_b
    new-instance v0, Ljava/io/IOException;

    .line 326
    .line 327
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 331
    :goto_f
    move-object v2, v0

    .line 332
    const/4 v4, 0x0

    .line 333
    const/4 v5, 0x0

    .line 334
    const/4 v6, 0x0

    .line 335
    :goto_10
    if-eqz v4, :cond_5

    .line 336
    .line 337
    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 338
    .line 339
    .line 340
    goto :goto_11

    .line 341
    :catch_6
    move-exception v0

    .line 342
    move-object v4, v0

    .line 343
    iget-object v0, v9, Lc1/d;->G:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v0, Lc4/l0;

    .line 346
    .line 347
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 348
    .line 349
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 350
    .line 351
    .line 352
    invoke-static {v13}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 357
    .line 358
    invoke-virtual {v0, v7, v4, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    :cond_5
    :goto_11
    if-eqz v5, :cond_6

    .line 362
    .line 363
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 364
    .line 365
    .line 366
    :cond_6
    const/4 v3, 0x0

    .line 367
    invoke-virtual {v1, v14, v3, v3, v6}, Lc4/V;->a(ILjava/io/IOException;[BLjava/util/Map;)V

    .line 368
    .line 369
    .line 370
    throw v2

    .line 371
    :goto_12
    move-object v2, v0

    .line 372
    const/4 v0, 0x0

    .line 373
    const/4 v4, 0x0

    .line 374
    const/4 v5, 0x0

    .line 375
    :goto_13
    if-eqz v0, :cond_7

    .line 376
    .line 377
    :try_start_d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 378
    .line 379
    .line 380
    goto :goto_14

    .line 381
    :catch_7
    move-exception v0

    .line 382
    move-object v6, v0

    .line 383
    iget-object v0, v9, Lc1/d;->G:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v0, Lc4/l0;

    .line 386
    .line 387
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 388
    .line 389
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 390
    .line 391
    .line 392
    invoke-static {v13}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 397
    .line 398
    invoke-virtual {v0, v7, v6, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    :cond_7
    :goto_14
    if-eqz v4, :cond_8

    .line 402
    .line 403
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 404
    .line 405
    .line 406
    :cond_8
    const/4 v9, 0x0

    .line 407
    invoke-virtual {v1, v14, v2, v9, v5}, Lc4/V;->a(ILjava/io/IOException;[BLjava/util/Map;)V

    .line 408
    .line 409
    .line 410
    :goto_15
    return-void

    .line 411
    :pswitch_0
    iget-object v9, v1, Lc4/V;->L:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast v15, Lc4/W;

    .line 414
    .line 415
    iget-object v0, v15, Lc1/d;->G:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v0, Lc4/l0;

    .line 418
    .line 419
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 420
    .line 421
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0}, Lc4/j0;->q()V

    .line 425
    .line 426
    .line 427
    :try_start_e
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    instance-of v12, v0, Ljava/net/HttpURLConnection;

    .line 432
    .line 433
    if-eqz v12, :cond_d

    .line 434
    .line 435
    move-object v2, v0

    .line 436
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 437
    .line 438
    invoke-virtual {v2, v14}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 439
    .line 440
    .line 441
    iget-object v0, v15, Lc1/d;->G:Ljava/lang/Object;

    .line 442
    .line 443
    move-object v12, v0

    .line 444
    check-cast v12, Lc4/l0;

    .line 445
    .line 446
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2, v11}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 456
    .line 457
    .line 458
    const/4 v0, 0x1

    .line 459
    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    .line 460
    .line 461
    .line 462
    if-eqz v8, :cond_9

    .line 463
    .line 464
    :try_start_f
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 465
    .line 466
    .line 467
    move-result-object v8

    .line 468
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 469
    .line 470
    .line 471
    move-result-object v8

    .line 472
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 473
    .line 474
    .line 475
    move-result v10

    .line 476
    if-eqz v10, :cond_9

    .line 477
    .line 478
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v10

    .line 482
    check-cast v10, Ljava/util/Map$Entry;

    .line 483
    .line 484
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v11

    .line 488
    check-cast v11, Ljava/lang/String;

    .line 489
    .line 490
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v10

    .line 494
    check-cast v10, Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {v2, v11, v10}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    goto :goto_16

    .line 500
    :catchall_7
    move-exception v0

    .line 501
    goto/16 :goto_23

    .line 502
    .line 503
    :catch_8
    move-exception v0

    .line 504
    goto/16 :goto_24

    .line 505
    .line 506
    :cond_9
    if-eqz v7, :cond_a

    .line 507
    .line 508
    iget-object v8, v15, Lc4/q1;->H:Lc4/A1;

    .line 509
    .line 510
    iget-object v8, v8, Lc4/A1;->M:Lc4/E1;

    .line 511
    .line 512
    invoke-static {v8}, Lc4/A1;->I(Lc4/u1;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v8, v7}, Lc4/E1;->r([B)[B

    .line 516
    .line 517
    .line 518
    move-result-object v7

    .line 519
    iget-object v8, v12, Lc4/l0;->O:Lc4/T;

    .line 520
    .line 521
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 522
    .line 523
    .line 524
    iget-object v8, v8, Lc4/T;->T:Lc4/Q;

    .line 525
    .line 526
    array-length v10, v7

    .line 527
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    .line 529
    .line 530
    move-result-object v11

    .line 531
    invoke-virtual {v8, v11, v6}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    const/4 v0, 0x1

    .line 535
    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2, v5, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 548
    .line 549
    .line 550
    move-result-object v4
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 551
    :try_start_10
    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 555
    .line 556
    .line 557
    goto :goto_1c

    .line 558
    :catchall_8
    move-exception v0

    .line 559
    goto :goto_17

    .line 560
    :catch_9
    move-exception v0

    .line 561
    goto :goto_19

    .line 562
    :goto_17
    move-object/from16 v16, v4

    .line 563
    .line 564
    const/16 v20, 0x0

    .line 565
    .line 566
    const/16 v23, 0x0

    .line 567
    .line 568
    move-object v4, v2

    .line 569
    :goto_18
    move-object v2, v0

    .line 570
    goto/16 :goto_27

    .line 571
    .line 572
    :goto_19
    move-object/from16 v21, v0

    .line 573
    .line 574
    move-object/from16 v16, v4

    .line 575
    .line 576
    :goto_1a
    const/16 v20, 0x0

    .line 577
    .line 578
    :goto_1b
    const/16 v23, 0x0

    .line 579
    .line 580
    goto/16 :goto_2a

    .line 581
    .line 582
    :cond_a
    :goto_1c
    :try_start_11
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 583
    .line 584
    .line 585
    move-result v20
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 586
    :try_start_12
    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 587
    .line 588
    .line 589
    move-result-object v23
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .line 590
    :try_start_13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 591
    .line 592
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 596
    .line 597
    .line 598
    move-result-object v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 599
    const/16 v5, 0x400

    .line 600
    .line 601
    :try_start_14
    new-array v5, v5, [B

    .line 602
    .line 603
    :goto_1d
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    .line 604
    .line 605
    .line 606
    move-result v6

    .line 607
    if-lez v6, :cond_b

    .line 608
    .line 609
    invoke-virtual {v0, v5, v14, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 610
    .line 611
    .line 612
    goto :goto_1d

    .line 613
    :catchall_9
    move-exception v0

    .line 614
    goto :goto_1f

    .line 615
    :cond_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 616
    .line 617
    .line 618
    move-result-object v22
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 619
    :try_start_15
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 620
    .line 621
    .line 622
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 623
    .line 624
    .line 625
    move-object/from16 v19, v9

    .line 626
    .line 627
    check-cast v19, Lc4/U;

    .line 628
    .line 629
    iget-object v0, v15, Lc1/d;->G:Ljava/lang/Object;

    .line 630
    .line 631
    check-cast v0, Lc4/l0;

    .line 632
    .line 633
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 634
    .line 635
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 636
    .line 637
    .line 638
    new-instance v2, LY/Y;

    .line 639
    .line 640
    iget-object v3, v1, Lc4/V;->J:Ljava/lang/String;

    .line 641
    .line 642
    const/16 v21, 0x0

    .line 643
    .line 644
    move-object/from16 v17, v2

    .line 645
    .line 646
    move-object/from16 v18, v3

    .line 647
    .line 648
    invoke-direct/range {v17 .. v23}, LY/Y;-><init>(Ljava/lang/String;Lc4/U;ILjava/io/IOException;[BLjava/util/Map;)V

    .line 649
    .line 650
    .line 651
    :goto_1e
    invoke-virtual {v0, v2}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 652
    .line 653
    .line 654
    goto/16 :goto_2c

    .line 655
    .line 656
    :catchall_a
    move-exception v0

    .line 657
    goto :goto_20

    .line 658
    :catch_a
    move-exception v0

    .line 659
    goto :goto_21

    .line 660
    :catchall_b
    move-exception v0

    .line 661
    const/4 v4, 0x0

    .line 662
    :goto_1f
    if-eqz v4, :cond_c

    .line 663
    .line 664
    :try_start_16
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 665
    .line 666
    .line 667
    :cond_c
    throw v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 668
    :goto_20
    move-object v4, v2

    .line 669
    const/16 v16, 0x0

    .line 670
    .line 671
    goto :goto_18

    .line 672
    :goto_21
    move-object/from16 v21, v0

    .line 673
    .line 674
    const/16 v16, 0x0

    .line 675
    .line 676
    goto/16 :goto_2a

    .line 677
    .line 678
    :catchall_c
    move-exception v0

    .line 679
    move-object v4, v2

    .line 680
    const/16 v16, 0x0

    .line 681
    .line 682
    :goto_22
    const/16 v23, 0x0

    .line 683
    .line 684
    goto :goto_18

    .line 685
    :catch_b
    move-exception v0

    .line 686
    move-object/from16 v21, v0

    .line 687
    .line 688
    const/16 v16, 0x0

    .line 689
    .line 690
    goto :goto_1b

    .line 691
    :goto_23
    move-object v4, v2

    .line 692
    const/16 v16, 0x0

    .line 693
    .line 694
    const/16 v20, 0x0

    .line 695
    .line 696
    goto :goto_22

    .line 697
    :goto_24
    move-object/from16 v21, v0

    .line 698
    .line 699
    :goto_25
    const/16 v16, 0x0

    .line 700
    .line 701
    goto :goto_1a

    .line 702
    :catchall_d
    move-exception v0

    .line 703
    goto :goto_26

    .line 704
    :catch_c
    move-exception v0

    .line 705
    goto :goto_29

    .line 706
    :cond_d
    :try_start_17
    new-instance v0, Ljava/io/IOException;

    .line 707
    .line 708
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    throw v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 712
    :goto_26
    move-object v2, v0

    .line 713
    const/4 v4, 0x0

    .line 714
    const/16 v16, 0x0

    .line 715
    .line 716
    const/16 v20, 0x0

    .line 717
    .line 718
    const/16 v23, 0x0

    .line 719
    .line 720
    :goto_27
    if-eqz v16, :cond_e

    .line 721
    .line 722
    :try_start_18
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d

    .line 723
    .line 724
    .line 725
    goto :goto_28

    .line 726
    :catch_d
    move-exception v0

    .line 727
    move-object v5, v0

    .line 728
    iget-object v0, v15, Lc1/d;->G:Ljava/lang/Object;

    .line 729
    .line 730
    check-cast v0, Lc4/l0;

    .line 731
    .line 732
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 733
    .line 734
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 735
    .line 736
    .line 737
    invoke-static {v13}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 738
    .line 739
    .line 740
    move-result-object v6

    .line 741
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 742
    .line 743
    invoke-virtual {v0, v6, v5, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    :cond_e
    :goto_28
    if-eqz v4, :cond_f

    .line 747
    .line 748
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 749
    .line 750
    .line 751
    :cond_f
    move-object/from16 v19, v9

    .line 752
    .line 753
    check-cast v19, Lc4/U;

    .line 754
    .line 755
    iget-object v0, v15, Lc1/d;->G:Ljava/lang/Object;

    .line 756
    .line 757
    check-cast v0, Lc4/l0;

    .line 758
    .line 759
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 760
    .line 761
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 762
    .line 763
    .line 764
    new-instance v3, LY/Y;

    .line 765
    .line 766
    const/16 v21, 0x0

    .line 767
    .line 768
    const/16 v22, 0x0

    .line 769
    .line 770
    iget-object v4, v1, Lc4/V;->J:Ljava/lang/String;

    .line 771
    .line 772
    move-object/from16 v17, v3

    .line 773
    .line 774
    move-object/from16 v18, v4

    .line 775
    .line 776
    invoke-direct/range {v17 .. v23}, LY/Y;-><init>(Ljava/lang/String;Lc4/U;ILjava/io/IOException;[BLjava/util/Map;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v0, v3}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 780
    .line 781
    .line 782
    throw v2

    .line 783
    :goto_29
    move-object/from16 v21, v0

    .line 784
    .line 785
    const/4 v2, 0x0

    .line 786
    goto :goto_25

    .line 787
    :goto_2a
    if-eqz v16, :cond_10

    .line 788
    .line 789
    :try_start_19
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e

    .line 790
    .line 791
    .line 792
    goto :goto_2b

    .line 793
    :catch_e
    move-exception v0

    .line 794
    move-object v4, v0

    .line 795
    iget-object v0, v15, Lc1/d;->G:Ljava/lang/Object;

    .line 796
    .line 797
    check-cast v0, Lc4/l0;

    .line 798
    .line 799
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 800
    .line 801
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 802
    .line 803
    .line 804
    invoke-static {v13}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 805
    .line 806
    .line 807
    move-result-object v5

    .line 808
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 809
    .line 810
    invoke-virtual {v0, v5, v4, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    :cond_10
    :goto_2b
    if-eqz v2, :cond_11

    .line 814
    .line 815
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 816
    .line 817
    .line 818
    :cond_11
    move-object/from16 v19, v9

    .line 819
    .line 820
    check-cast v19, Lc4/U;

    .line 821
    .line 822
    iget-object v0, v15, Lc1/d;->G:Ljava/lang/Object;

    .line 823
    .line 824
    check-cast v0, Lc4/l0;

    .line 825
    .line 826
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 827
    .line 828
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 829
    .line 830
    .line 831
    new-instance v2, LY/Y;

    .line 832
    .line 833
    iget-object v3, v1, Lc4/V;->J:Ljava/lang/String;

    .line 834
    .line 835
    const/16 v22, 0x0

    .line 836
    .line 837
    move-object/from16 v17, v2

    .line 838
    .line 839
    move-object/from16 v18, v3

    .line 840
    .line 841
    invoke-direct/range {v17 .. v23}, LY/Y;-><init>(Ljava/lang/String;Lc4/U;ILjava/io/IOException;[BLjava/util/Map;)V

    .line 842
    .line 843
    .line 844
    goto/16 :goto_1e

    .line 845
    .line 846
    :goto_2c
    return-void

    .line 847
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
