.class public final synthetic Lcom/google/android/gms/internal/ads/hh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/RB;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/hh;->a:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/hh;->a:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)LD4/b;
    .locals 8

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/hh;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    const-string v4, ""

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Ljava/lang/Throwable;

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Exception;

    .line 17
    .line 18
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/ww;

    .line 24
    .line 25
    sget-object p1, Lcom/google/android/gms/internal/ads/fC;->H:Lcom/google/android/gms/internal/ads/fC;

    .line 26
    .line 27
    return-object p1

    .line 28
    :pswitch_1
    check-cast p1, LA3/b;

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    new-instance p1, Lcom/google/android/gms/internal/ads/Xs;

    .line 34
    .line 35
    invoke-direct {p1, v6, v3, v0}, Lcom/google/android/gms/internal/ads/Xs;-><init>(Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/Xs;

    .line 44
    .line 45
    iget-object v2, p1, LA3/b;->a:Ljava/lang/String;

    .line 46
    .line 47
    iget p1, p1, LA3/b;->b:I

    .line 48
    .line 49
    invoke-direct {v1, v2, p1, v0}, Lcom/google/android/gms/internal/ads/Xs;-><init>(Ljava/lang/String;II)V

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_0
    return-object p1

    .line 57
    :pswitch_2
    check-cast p1, LL1/c;

    .line 58
    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    new-instance p1, Lcom/google/android/gms/internal/ads/Xs;

    .line 62
    .line 63
    invoke-direct {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Xs;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/uI;->A()Lcom/google/android/gms/internal/ads/tI;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object p1, p1, LL1/c;->a:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, LL1/f;

    .line 92
    .line 93
    invoke-static {}, Lcom/google/android/gms/internal/ads/sI;->A()Lcom/google/android/gms/internal/ads/rI;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget v3, v1, LL1/f;->c:I

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 100
    .line 101
    .line 102
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 103
    .line 104
    check-cast v4, Lcom/google/android/gms/internal/ads/sI;

    .line 105
    .line 106
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/sI;->B(Lcom/google/android/gms/internal/ads/sI;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 110
    .line 111
    .line 112
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 113
    .line 114
    check-cast v3, Lcom/google/android/gms/internal/ads/sI;

    .line 115
    .line 116
    iget-wide v6, v1, LL1/f;->b:J

    .line 117
    .line 118
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/ads/sI;->C(Lcom/google/android/gms/internal/ads/sI;J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 122
    .line 123
    .line 124
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 125
    .line 126
    check-cast v3, Lcom/google/android/gms/internal/ads/sI;

    .line 127
    .line 128
    iget-wide v6, v1, LL1/f;->a:J

    .line 129
    .line 130
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/ads/sI;->D(Lcom/google/android/gms/internal/ads/sI;J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Lcom/google/android/gms/internal/ads/sI;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 140
    .line 141
    .line 142
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 143
    .line 144
    check-cast v2, Lcom/google/android/gms/internal/ads/uI;

    .line 145
    .line 146
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/uI;->B(Lcom/google/android/gms/internal/ads/uI;Lcom/google/android/gms/internal/ads/sI;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lcom/google/android/gms/internal/ads/uI;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/PG;->d()[B

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    new-instance v0, Lcom/google/android/gms/internal/ads/Xs;

    .line 165
    .line 166
    invoke-direct {v0, p1, v5}, Lcom/google/android/gms/internal/ads/Xs;-><init>(Ljava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    :goto_2
    return-object p1

    .line 174
    :pswitch_3
    check-cast p1, LA3/b;

    .line 175
    .line 176
    if-nez p1, :cond_3

    .line 177
    .line 178
    new-instance p1, Lcom/google/android/gms/internal/ads/Xs;

    .line 179
    .line 180
    invoke-direct {p1, v6, v3, v2}, Lcom/google/android/gms/internal/ads/Xs;-><init>(Ljava/lang/String;II)V

    .line 181
    .line 182
    .line 183
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    goto :goto_3

    .line 188
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/Xs;

    .line 189
    .line 190
    iget-object v1, p1, LA3/b;->a:Ljava/lang/String;

    .line 191
    .line 192
    iget p1, p1, LA3/b;->b:I

    .line 193
    .line 194
    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/Xs;-><init>(Ljava/lang/String;II)V

    .line 195
    .line 196
    .line 197
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    :goto_3
    return-object p1

    .line 202
    :pswitch_4
    check-cast p1, Ljava/lang/Throwable;

    .line 203
    .line 204
    instance-of p1, p1, Ljava/util/concurrent/TimeoutException;

    .line 205
    .line 206
    if-eqz p1, :cond_4

    .line 207
    .line 208
    new-instance p1, Lcom/google/android/gms/internal/ads/Es;

    .line 209
    .line 210
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/Es;-><init>(I)V

    .line 211
    .line 212
    .line 213
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    goto :goto_4

    .line 218
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/Es;

    .line 219
    .line 220
    invoke-direct {p1, v5}, Lcom/google/android/gms/internal/ads/Es;-><init>(I)V

    .line 221
    .line 222
    .line 223
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    :goto_4
    return-object p1

    .line 228
    :pswitch_5
    check-cast p1, Ljava/lang/String;

    .line 229
    .line 230
    new-instance v0, Lcom/google/android/gms/internal/ads/Cs;

    .line 231
    .line 232
    invoke-direct {v0, p1, v5}, Lcom/google/android/gms/internal/ads/Cs;-><init>(Ljava/lang/String;I)V

    .line 233
    .line 234
    .line 235
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    return-object p1

    .line 240
    :pswitch_6
    check-cast p1, Ljava/io/InputStream;

    .line 241
    .line 242
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    aget-object v2, v1, v2

    .line 247
    .line 248
    aget-object v1, v1, v5

    .line 249
    .line 250
    sget-object v3, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 251
    .line 252
    new-instance v4, Lcom/google/android/gms/internal/ads/co;

    .line 253
    .line 254
    invoke-direct {v4, v0, p1, v1}, Lcom/google/android/gms/internal/ads/co;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    return-object p1

    .line 265
    :pswitch_7
    check-cast p1, Lorg/json/JSONObject;

    .line 266
    .line 267
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 268
    .line 269
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 274
    .line 275
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 280
    .line 281
    .line 282
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    return-object p1

    .line 287
    :pswitch_8
    check-cast p1, Lcom/google/android/gms/internal/ads/Jp;

    .line 288
    .line 289
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 290
    .line 291
    new-instance v1, Lorg/json/JSONObject;

    .line 292
    .line 293
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 294
    .line 295
    .line 296
    :try_start_0
    const-string v2, "response"

    .line 297
    .line 298
    iget v3, p1, Lcom/google/android/gms/internal/ads/Jp;->a:I

    .line 299
    .line 300
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 301
    .line 302
    .line 303
    new-instance v2, Lorg/json/JSONObject;

    .line 304
    .line 305
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 306
    .line 307
    .line 308
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/Jp;->b:Ljava/util/HashMap;

    .line 309
    .line 310
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    :cond_5
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    if-eqz v4, :cond_8

    .line 323
    .line 324
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    check-cast v4, Ljava/lang/String;

    .line 329
    .line 330
    if-eqz v4, :cond_5

    .line 331
    .line 332
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/Jp;->b:Ljava/util/HashMap;

    .line 333
    .line 334
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    check-cast v5, Ljava/util/List;

    .line 339
    .line 340
    new-instance v6, Lorg/json/JSONArray;

    .line 341
    .line 342
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    :cond_6
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    .line 351
    .line 352
    move-result v7

    .line 353
    if-eqz v7, :cond_7

    .line 354
    .line 355
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    check-cast v7, Ljava/lang/String;

    .line 360
    .line 361
    if-eqz v7, :cond_6

    .line 362
    .line 363
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 364
    .line 365
    .line 366
    goto :goto_6

    .line 367
    :catch_0
    move-exception p1

    .line 368
    goto :goto_7

    .line 369
    :cond_7
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    .line 371
    .line 372
    goto :goto_5

    .line 373
    :cond_8
    const-string v3, "headers"

    .line 374
    .line 375
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    .line 377
    .line 378
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Jp;->c:Ljava/lang/String;

    .line 379
    .line 380
    if-eqz v2, :cond_9

    .line 381
    .line 382
    const-string v3, "body"

    .line 383
    .line 384
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    .line 386
    .line 387
    :cond_9
    const-string v2, "latency"

    .line 388
    .line 389
    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/Jp;->d:J

    .line 390
    .line 391
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 399
    .line 400
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 405
    .line 406
    .line 407
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    return-object p1

    .line 412
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    const-string v1, "Error converting response to JSONObject: "

    .line 421
    .line 422
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    new-instance v0, Lorg/json/JSONException;

    .line 430
    .line 431
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    const-string v1, "Parsing HTTP Response: "

    .line 440
    .line 441
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw v0

    .line 449
    :pswitch_9
    check-cast p1, Ljava/io/InputStream;

    .line 450
    .line 451
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    aget-object v2, v1, v2

    .line 456
    .line 457
    aget-object v1, v1, v5

    .line 458
    .line 459
    sget-object v3, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 460
    .line 461
    new-instance v4, Lcom/google/android/gms/internal/ads/co;

    .line 462
    .line 463
    invoke-direct {v4, v0, p1, v1}, Lcom/google/android/gms/internal/ads/co;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 467
    .line 468
    .line 469
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    return-object p1

    .line 474
    :pswitch_a
    check-cast p1, Ljava/io/InputStream;

    .line 475
    .line 476
    new-instance v0, Lorg/json/JSONObject;

    .line 477
    .line 478
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 479
    .line 480
    .line 481
    if-nez p1, :cond_a

    .line 482
    .line 483
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    goto :goto_b

    .line 488
    :cond_a
    :try_start_1
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 489
    .line 490
    iget-object v1, v1, Lk3/l;->c:Lo3/O;

    .line 491
    .line 492
    new-instance v1, Ljava/io/InputStreamReader;

    .line 493
    .line 494
    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 495
    .line 496
    .line 497
    new-instance p1, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    const/16 v4, 0x2000

    .line 500
    .line 501
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 502
    .line 503
    .line 504
    const/16 v4, 0x800

    .line 505
    .line 506
    new-array v4, v4, [C

    .line 507
    .line 508
    :goto_8
    invoke-virtual {v1, v4}, Ljava/io/Reader;->read([C)I

    .line 509
    .line 510
    .line 511
    move-result v5

    .line 512
    if-eq v5, v3, :cond_b

    .line 513
    .line 514
    invoke-virtual {p1, v4, v2, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    goto :goto_8

    .line 518
    :cond_b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    new-instance v1, Lorg/json/JSONObject;

    .line 523
    .line 524
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 525
    .line 526
    .line 527
    move-object v0, v1

    .line 528
    goto :goto_a

    .line 529
    :catch_1
    move-exception p1

    .line 530
    goto :goto_9

    .line 531
    :catch_2
    move-exception p1

    .line 532
    :goto_9
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 533
    .line 534
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 535
    .line 536
    const-string v2, "AdsServiceSignalTask.startAdsServiceSignalTask"

    .line 537
    .line 538
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 539
    .line 540
    .line 541
    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    :goto_b
    return-object p1

    .line 546
    :pswitch_b
    check-cast p1, Lcom/google/android/gms/internal/ads/ep;

    .line 547
    .line 548
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    return-object p1

    .line 553
    :pswitch_c
    check-cast p1, Ljava/util/concurrent/ExecutionException;

    .line 554
    .line 555
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    if-eqz v0, :cond_c

    .line 560
    .line 561
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 562
    .line 563
    .line 564
    move-result-object p1

    .line 565
    :cond_c
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 566
    .line 567
    .line 568
    move-result-object p1

    .line 569
    return-object p1

    .line 570
    :pswitch_d
    check-cast p1, Ljava/util/concurrent/ExecutionException;

    .line 571
    .line 572
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    if-eqz v0, :cond_d

    .line 577
    .line 578
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    :cond_d
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    return-object p1

    .line 587
    :pswitch_e
    check-cast p1, Ljava/util/concurrent/ExecutionException;

    .line 588
    .line 589
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    if-eqz v0, :cond_e

    .line 594
    .line 595
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    :cond_e
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 600
    .line 601
    .line 602
    move-result-object p1

    .line 603
    return-object p1

    .line 604
    :pswitch_f
    check-cast p1, Lcom/google/android/gms/internal/ads/fp;

    .line 605
    .line 606
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/fp;->a:Ljava/io/InputStream;

    .line 607
    .line 608
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 609
    .line 610
    .line 611
    move-result-object p1

    .line 612
    return-object p1

    .line 613
    :pswitch_10
    check-cast p1, Ljava/io/InputStream;

    .line 614
    .line 615
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 616
    .line 617
    .line 618
    move-result-object p1

    .line 619
    return-object p1

    .line 620
    :pswitch_11
    check-cast p1, Ljava/util/concurrent/TimeoutException;

    .line 621
    .line 622
    new-instance p1, Lcom/google/android/gms/internal/ads/Bo;

    .line 623
    .line 624
    const/4 v0, 0x5

    .line 625
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/Bo;-><init>(I)V

    .line 626
    .line 627
    .line 628
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 629
    .line 630
    .line 631
    move-result-object p1

    .line 632
    return-object p1

    .line 633
    :pswitch_12
    check-cast p1, Ljava/util/concurrent/ExecutionException;

    .line 634
    .line 635
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 636
    .line 637
    .line 638
    move-result-object p1

    .line 639
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 640
    .line 641
    .line 642
    move-result-object p1

    .line 643
    return-object p1

    .line 644
    :pswitch_13
    const-string v0, "Error during loading assets."

    .line 645
    .line 646
    check-cast p1, Ljava/lang/Exception;

    .line 647
    .line 648
    invoke-static {v0, p1}, Lo3/I;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 649
    .line 650
    .line 651
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 652
    .line 653
    .line 654
    move-result-object p1

    .line 655
    return-object p1

    .line 656
    :pswitch_14
    check-cast p1, LD4/b;

    .line 657
    .line 658
    return-object p1

    .line 659
    :pswitch_15
    check-cast p1, Ljava/lang/Throwable;

    .line 660
    .line 661
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->J9:Lcom/google/android/gms/internal/ads/J7;

    .line 662
    .line 663
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 664
    .line 665
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 666
    .line 667
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    check-cast v0, Ljava/lang/Boolean;

    .line 672
    .line 673
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 674
    .line 675
    .line 676
    move-result v0

    .line 677
    if-eqz v0, :cond_f

    .line 678
    .line 679
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 680
    .line 681
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 682
    .line 683
    const-string v1, "GetTopicsApiWithRecordObservationActionHandlerUnsampled"

    .line 684
    .line 685
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/le;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    .line 687
    .line 688
    goto :goto_c

    .line 689
    :cond_f
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 690
    .line 691
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 692
    .line 693
    const-string v1, "GetTopicsApiWithRecordObservationActionHandler"

    .line 694
    .line 695
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 696
    .line 697
    .line 698
    :goto_c
    new-instance p1, LL1/c;

    .line 699
    .line 700
    sget-object v0, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 701
    .line 702
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 703
    .line 704
    invoke-direct {p1, v0}, LL1/c;-><init>(Ljava/util/List;)V

    .line 705
    .line 706
    .line 707
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 708
    .line 709
    .line 710
    move-result-object p1

    .line 711
    return-object p1

    .line 712
    nop

    .line 713
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
