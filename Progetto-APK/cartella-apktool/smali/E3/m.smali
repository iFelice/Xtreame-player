.class public final LE3/m;
.super LE3/r;
.source "SourceFile"


# instance fields
.field public final synthetic Z:I

.field public final synthetic a0:LE3/j;

.field public final synthetic b0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LE3/j;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, LE3/m;->Z:I

    iput-object p1, p0, LE3/m;->a0:LE3/j;

    iput-object p2, p0, LE3/m;->b0:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, LE3/r;-><init>(LE3/j;Z)V

    return-void
.end method

.method public constructor <init>(LE3/j;[I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, LE3/m;->Z:I

    .line 3
    iput-object p1, p0, LE3/m;->a0:LE3/j;

    iput-object p2, p0, LE3/m;->b0:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, LE3/r;-><init>(LE3/j;Z)V

    return-void
.end method


# virtual methods
.method public final Q0()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LE3/m;->Z:I

    .line 4
    .line 5
    const-string v3, "customData"

    .line 6
    .line 7
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-string v6, "currentTime"

    .line 13
    .line 14
    const-string v7, "mediaSessionId"

    .line 15
    .line 16
    const-string v9, "type"

    .line 17
    .line 18
    const-string v10, "requestId"

    .line 19
    .line 20
    iget-object v11, v1, LE3/m;->b0:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v12, v1, LE3/m;->a0:LE3/j;

    .line 23
    .line 24
    packed-switch v0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    iget-object v0, v12, LE3/j;->c:LH3/n;

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, LE3/r;->R0()LH3/o;

    .line 30
    .line 31
    .line 32
    move-result-object v12

    .line 33
    check-cast v11, LC3/q;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance v13, Lorg/json/JSONObject;

    .line 39
    .line 40
    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, LH3/q;->b()J

    .line 44
    .line 45
    .line 46
    move-result-wide v14

    .line 47
    iget-boolean v8, v11, LC3/q;->c:Z

    .line 48
    .line 49
    if-eqz v8, :cond_0

    .line 50
    .line 51
    const-wide v16, 0x3e800000000L

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    move-wide/from16 v18, v16

    .line 57
    .line 58
    move-object/from16 v16, v3

    .line 59
    .line 60
    move-wide/from16 v2, v18

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move-object/from16 v16, v3

    .line 64
    .line 65
    iget-wide v2, v11, LC3/q;->a:J

    .line 66
    .line 67
    :goto_0
    :try_start_0
    invoke-virtual {v13, v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    const-string v10, "SEEK"

    .line 71
    .line 72
    invoke-virtual {v13, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, LH3/n;->p()J

    .line 76
    .line 77
    .line 78
    move-result-wide v9

    .line 79
    invoke-virtual {v13, v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    sget-object v7, LH3/a;->a:Ljava/util/regex/Pattern;

    .line 83
    .line 84
    long-to-double v9, v2

    .line 85
    div-double/2addr v9, v4

    .line 86
    invoke-virtual {v13, v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    iget v4, v11, LC3/q;->b:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    const-string v5, "resumeState"

    .line 92
    .line 93
    const/4 v6, 0x1

    .line 94
    if-ne v4, v6, :cond_1

    .line 95
    .line 96
    :try_start_1
    const-string v4, "PLAYBACK_START"

    .line 97
    .line 98
    invoke-virtual {v13, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    const/4 v6, 0x2

    .line 103
    if-ne v4, v6, :cond_2

    .line 104
    .line 105
    const-string v4, "PLAYBACK_PAUSE"

    .line 106
    .line 107
    invoke-virtual {v13, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    :cond_2
    :goto_1
    iget-object v4, v11, LC3/q;->d:Lorg/json/JSONObject;

    .line 111
    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    move-object/from16 v7, v16

    .line 115
    .line 116
    invoke-virtual {v13, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    .line 118
    .line 119
    :catch_0
    :cond_3
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v0, v14, v15, v4}, LH3/q;->c(JLjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iput-object v2, v0, LH3/n;->g:Ljava/lang/Long;

    .line 131
    .line 132
    new-instance v2, LH3/k;

    .line 133
    .line 134
    const/4 v3, 0x0

    .line 135
    invoke-direct {v2, v0, v12, v3}, LH3/k;-><init>(LH3/n;LH3/o;I)V

    .line 136
    .line 137
    .line 138
    iget-object v0, v0, LH3/n;->m:LH3/p;

    .line 139
    .line 140
    invoke-virtual {v0, v14, v15, v2}, LH3/p;->a(JLH3/o;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :pswitch_0
    move-object v7, v3

    .line 145
    iget-object v2, v12, LE3/j;->c:LH3/n;

    .line 146
    .line 147
    invoke-virtual/range {p0 .. p0}, LE3/r;->R0()LH3/o;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v11, LC3/k;

    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    iget-object v0, v11, LC3/k;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 157
    .line 158
    iget-object v12, v11, LC3/k;->H:LC3/n;

    .line 159
    .line 160
    if-nez v0, :cond_5

    .line 161
    .line 162
    if-eqz v12, :cond_4

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    const-string v2, "MediaInfo and MediaQueueData should not be both null"

    .line 168
    .line 169
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v0

    .line 173
    :cond_5
    :goto_2
    new-instance v0, Lorg/json/JSONObject;

    .line 174
    .line 175
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 176
    .line 177
    .line 178
    :try_start_2
    iget-object v13, v11, LC3/k;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 179
    .line 180
    if-eqz v13, :cond_6

    .line 181
    .line 182
    const-string v14, "media"

    .line 183
    .line 184
    invoke-virtual {v13}, Lcom/google/android/gms/cast/MediaInfo;->i()Lorg/json/JSONObject;

    .line 185
    .line 186
    .line 187
    move-result-object v13

    .line 188
    invoke-virtual {v0, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :catch_1
    move-exception v0

    .line 193
    const/4 v4, 0x1

    .line 194
    goto :goto_5

    .line 195
    :cond_6
    :goto_3
    if-eqz v12, :cond_7

    .line 196
    .line 197
    const-string v13, "queueData"

    .line 198
    .line 199
    invoke-virtual {v12}, LC3/n;->i()Lorg/json/JSONObject;

    .line 200
    .line 201
    .line 202
    move-result-object v12

    .line 203
    invoke-virtual {v0, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    .line 205
    .line 206
    :cond_7
    const-string v12, "autoplay"

    .line 207
    .line 208
    iget-object v13, v11, LC3/k;->I:Ljava/lang/Boolean;

    .line 209
    .line 210
    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    .line 212
    .line 213
    iget-wide v12, v11, LC3/k;->J:J

    .line 214
    .line 215
    const-wide/16 v14, -0x1

    .line 216
    .line 217
    cmp-long v16, v12, v14

    .line 218
    .line 219
    if-eqz v16, :cond_8

    .line 220
    .line 221
    sget-object v14, LH3/a;->a:Ljava/util/regex/Pattern;

    .line 222
    .line 223
    long-to-double v12, v12

    .line 224
    div-double/2addr v12, v4

    .line 225
    invoke-virtual {v0, v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 226
    .line 227
    .line 228
    :cond_8
    const-string v4, "playbackRate"

    .line 229
    .line 230
    iget-wide v5, v11, LC3/k;->K:D

    .line 231
    .line 232
    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 233
    .line 234
    .line 235
    const-string v4, "credentials"

    .line 236
    .line 237
    iget-object v5, v11, LC3/k;->O:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    .line 241
    .line 242
    const-string v4, "credentialsType"

    .line 243
    .line 244
    iget-object v5, v11, LC3/k;->P:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    .line 248
    .line 249
    const-string v4, "atvCredentials"

    .line 250
    .line 251
    iget-object v5, v11, LC3/k;->Q:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    .line 255
    .line 256
    const-string v4, "atvCredentialsType"

    .line 257
    .line 258
    iget-object v5, v11, LC3/k;->R:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 261
    .line 262
    .line 263
    iget-object v4, v11, LC3/k;->L:[J

    .line 264
    .line 265
    if-eqz v4, :cond_a

    .line 266
    .line 267
    :try_start_3
    new-instance v5, Lorg/json/JSONArray;

    .line 268
    .line 269
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 270
    .line 271
    .line 272
    const/4 v6, 0x0

    .line 273
    :goto_4
    array-length v12, v4

    .line 274
    if-ge v6, v12, :cond_9

    .line 275
    .line 276
    aget-wide v12, v4, v6

    .line 277
    .line 278
    invoke-virtual {v5, v6, v12, v13}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    .line 279
    .line 280
    .line 281
    const/4 v8, 0x1

    .line 282
    add-int/2addr v6, v8

    .line 283
    goto :goto_4

    .line 284
    :cond_9
    const-string v4, "activeTrackIds"

    .line 285
    .line 286
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    .line 288
    .line 289
    :cond_a
    iget-object v4, v11, LC3/k;->N:Lorg/json/JSONObject;

    .line 290
    .line 291
    invoke-virtual {v0, v7, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    .line 293
    .line 294
    iget-wide v4, v11, LC3/k;->S:J

    .line 295
    .line 296
    invoke-virtual {v0, v10, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 297
    .line 298
    .line 299
    goto :goto_6

    .line 300
    :goto_5
    new-array v4, v4, [Ljava/lang/Object;

    .line 301
    .line 302
    const/4 v5, 0x0

    .line 303
    aput-object v0, v4, v5

    .line 304
    .line 305
    sget-object v0, LC3/k;->T:LH3/b;

    .line 306
    .line 307
    iget-object v5, v0, LH3/b;->a:Ljava/lang/String;

    .line 308
    .line 309
    const-string v6, "Error transforming MediaLoadRequestData into JSONObject"

    .line 310
    .line 311
    invoke-virtual {v0, v6, v4}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    new-instance v0, Lorg/json/JSONObject;

    .line 319
    .line 320
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 321
    .line 322
    .line 323
    :goto_6
    invoke-virtual {v2}, LH3/q;->b()J

    .line 324
    .line 325
    .line 326
    move-result-wide v4

    .line 327
    :try_start_4
    invoke-virtual {v0, v10, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 328
    .line 329
    .line 330
    const-string v6, "LOAD"

    .line 331
    .line 332
    invoke-virtual {v0, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 333
    .line 334
    .line 335
    :catch_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v2, v4, v5, v0}, LH3/q;->c(JLjava/lang/String;)V

    .line 340
    .line 341
    .line 342
    iget-object v0, v2, LH3/n;->j:LH3/p;

    .line 343
    .line 344
    invoke-virtual {v0, v4, v5, v3}, LH3/p;->a(JLH3/o;)V

    .line 345
    .line 346
    .line 347
    return-void

    .line 348
    :pswitch_1
    const/4 v5, 0x0

    .line 349
    iget-object v0, v12, LE3/j;->c:LH3/n;

    .line 350
    .line 351
    invoke-virtual/range {p0 .. p0}, LE3/r;->R0()LH3/o;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    check-cast v11, [I

    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    new-instance v3, Lorg/json/JSONObject;

    .line 361
    .line 362
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, LH3/q;->b()J

    .line 366
    .line 367
    .line 368
    move-result-wide v12

    .line 369
    :try_start_5
    invoke-virtual {v3, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 370
    .line 371
    .line 372
    const-string v4, "QUEUE_GET_ITEMS"

    .line 373
    .line 374
    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0}, LH3/n;->p()J

    .line 378
    .line 379
    .line 380
    move-result-wide v9

    .line 381
    invoke-virtual {v3, v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 382
    .line 383
    .line 384
    new-instance v4, Lorg/json/JSONArray;

    .line 385
    .line 386
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 387
    .line 388
    .line 389
    array-length v6, v11

    .line 390
    :goto_7
    if-ge v5, v6, :cond_b

    .line 391
    .line 392
    aget v7, v11, v5

    .line 393
    .line 394
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 395
    .line 396
    .line 397
    const/4 v7, 0x1

    .line 398
    add-int/2addr v5, v7

    .line 399
    goto :goto_7

    .line 400
    :cond_b
    const-string v5, "itemIds"

    .line 401
    .line 402
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 403
    .line 404
    .line 405
    :catch_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    invoke-virtual {v0, v12, v13, v3}, LH3/q;->c(JLjava/lang/String;)V

    .line 410
    .line 411
    .line 412
    iget-object v0, v0, LH3/n;->s:LH3/p;

    .line 413
    .line 414
    invoke-virtual {v0, v12, v13, v2}, LH3/p;->a(JLH3/o;)V

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    nop

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
