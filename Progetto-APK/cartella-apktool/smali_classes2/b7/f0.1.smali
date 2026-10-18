.class public final Lb7/f0;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lb7/t0;


# direct methods
.method public synthetic constructor <init>(Lb7/t0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb7/f0;->a:I

    invoke-direct {p0, p1, v0}, Lb7/f0;-><init>(Lb7/t0;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lb7/t0;I)V
    .locals 0

    .line 2
    iput p2, p0, Lb7/f0;->a:I

    iput-object p1, p0, Lb7/f0;->b:Lb7/t0;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb7/t0;Ljava/lang/Object;)V
    .locals 0

    .line 3
    const/4 p2, 0x1

    iput p2, p0, Lb7/f0;->a:I

    invoke-direct {p0, p1, p2}, Lb7/f0;-><init>(Lb7/t0;I)V

    return-void
.end method


# virtual methods
.method public final varargs a()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb7/f0;->a:I

    .line 4
    .line 5
    const-string v2, "XCIPTV_TAG"

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    iget-object v4, v0, Lb7/f0;->b:Lb7/t0;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    const-string v1, "ORT_VOD_PORTAL"

    .line 15
    .line 16
    const-string v6, "no"

    .line 17
    .line 18
    invoke-static {v1, v6, v6}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    if-nez v7, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-virtual {v7, v1, v6}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, v4, Lb7/t0;->F0:Lh7/i;

    .line 34
    .line 35
    iget-object v1, v1, Lh7/i;->e:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :goto_0
    iget-object v6, v4, Lb7/t0;->F0:Lh7/i;

    .line 42
    .line 43
    iget-object v6, v6, Lh7/i;->c:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v6}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    iget-object v7, v4, Lb7/t0;->F0:Lh7/i;

    .line 50
    .line 51
    iget-object v7, v7, Lh7/i;->d:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v7}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    new-instance v8, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, "/player_api.php?username="

    .line 66
    .line 67
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "&password="

    .line 74
    .line 75
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, "&action=get_vod_info&vod_id="

    .line 82
    .line 83
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v1, v4, Lb7/t0;->J1:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    new-instance v6, LF2/G;

    .line 96
    .line 97
    invoke-direct {v6, v3}, LF2/G;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v1}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 107
    .line 108
    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v1, "info"

    .line 112
    .line 113
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iput-object v1, v4, Lb7/t0;->M1:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catch_0
    const-string v1, "-------------------No info"

    .line 121
    .line 122
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    iput-object v5, v4, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 126
    .line 127
    :cond_1
    :goto_1
    return-void

    .line 128
    :pswitch_0
    const-string v1, "yyyy/MM/dd HH:mm:ss"

    .line 129
    .line 130
    const-string v6, "yyyyMMddHHmmss"

    .line 131
    .line 132
    const-string v7, "stoptime="

    .line 133
    .line 134
    const-string v8, "starttime="

    .line 135
    .line 136
    const-string v9, "data - "

    .line 137
    .line 138
    const-string v10, "-------------------------Calling getEPGEZS"

    .line 139
    .line 140
    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    iget-object v10, v4, Lb7/t0;->D0:Lc7/a;

    .line 144
    .line 145
    const-string v11, "ORT_PROFILE"

    .line 146
    .line 147
    const-string v12, "Default (XC)"

    .line 148
    .line 149
    invoke-static {v11, v12, v10}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    new-instance v11, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    iget-object v10, v10, Lh7/i;->e:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v10}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v10, "/server/get_epg_info?token="

    .line 168
    .line 169
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-object v10, v4, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 173
    .line 174
    const-string v12, "token"

    .line 175
    .line 176
    invoke-interface {v10, v12, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-static {v5}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v5, "&ch_name="

    .line 188
    .line 189
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget-object v5, v4, Lb7/t0;->U1:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v5, "&from_year="

    .line 198
    .line 199
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    sget-object v5, Lpe/hf/black20/util/Methods;->a:Landroid/content/SharedPreferences;

    .line 203
    .line 204
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    const/4 v10, 0x1

    .line 209
    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v5, "&from_month="

    .line 221
    .line 222
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-static {}, Lpe/hf/black20/util/Methods;->K()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v5, "&to_month="

    .line 233
    .line 234
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-static {}, Lpe/hf/black20/util/Methods;->K()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    const-string v11, " "

    .line 249
    .line 250
    const-string v12, "%20"

    .line 251
    .line 252
    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    const-string v11, "[\\r\\n]+"

    .line 257
    .line 258
    const-string v12, ""

    .line 259
    .line 260
    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    const-string v11, "PlayStreamEPGActivity - "

    .line 265
    .line 266
    invoke-static {v11, v5, v2}, La/r;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :try_start_1
    new-instance v11, LF2/G;

    .line 270
    .line 271
    invoke-direct {v11, v3}, LF2/G;-><init>(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v11, v5}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    const-string v2, "epg--starttime="

    .line 294
    .line 295
    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    const-string v3, "epg--"

    .line 300
    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-static {}, Lpe/hf/black20/util/Methods;->F()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    const/4 v5, 0x0

    .line 310
    const/4 v9, 0x1

    .line 311
    const/4 v11, 0x0

    .line 312
    :goto_2
    array-length v13, v2

    .line 313
    if-ge v9, v13, :cond_8

    .line 314
    .line 315
    aget-object v13, v2, v9

    .line 316
    .line 317
    const-string v14, "\\n"

    .line 318
    .line 319
    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v13

    .line 323
    aget-object v14, v13, v5

    .line 324
    .line 325
    invoke-virtual {v14, v8, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v14

    .line 329
    invoke-static {v14}, Lpe/hf/black20/util/Methods;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v14

    .line 333
    aget-object v15, v13, v10

    .line 334
    .line 335
    invoke-virtual {v15, v7, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v15

    .line 339
    invoke-static {v15}, Lpe/hf/black20/util/Methods;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v15

    .line 343
    invoke-static {v15, v3}, Lpe/hf/black20/util/Methods;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    const-string v10, "larger"

    .line 348
    .line 349
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 353
    if-eqz v5, :cond_7

    .line 354
    .line 355
    const/4 v5, 0x2

    .line 356
    if-le v11, v5, :cond_2

    .line 357
    .line 358
    goto/16 :goto_8

    .line 359
    .line 360
    :cond_2
    const-string v10, "24"

    .line 361
    .line 362
    const-string v5, "12"

    .line 363
    .line 364
    const-string v0, "ORT_TIME_FORMAT"

    .line 365
    .line 366
    move-object/from16 v17, v2

    .line 367
    .line 368
    const-string v2, "description="

    .line 369
    .line 370
    const/16 v18, 0x3

    .line 371
    .line 372
    move-object/from16 v19, v3

    .line 373
    .line 374
    const-string v3, "title="

    .line 375
    .line 376
    move/from16 v20, v9

    .line 377
    .line 378
    const-string v9, " - "

    .line 379
    .line 380
    if-nez v11, :cond_4

    .line 381
    .line 382
    move-object/from16 v21, v7

    .line 383
    .line 384
    const/16 v16, 0x2

    .line 385
    .line 386
    :try_start_2
    aget-object v7, v13, v16

    .line 387
    .line 388
    invoke-virtual {v7, v3, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    iput-object v7, v4, Lb7/t0;->O1:Ljava/lang/String;

    .line 393
    .line 394
    aget-object v7, v13, v18

    .line 395
    .line 396
    invoke-virtual {v7, v2, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    iput-object v7, v4, Lb7/t0;->P1:Ljava/lang/String;

    .line 401
    .line 402
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 403
    .line 404
    .line 405
    move-result-object v7

    .line 406
    invoke-virtual {v7, v0, v5}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v7

    .line 414
    if-eqz v7, :cond_3

    .line 415
    .line 416
    new-instance v7, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .line 420
    .line 421
    move-object/from16 v22, v1

    .line 422
    .line 423
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-static {v1, v14, v6}, Lpe/hf/black20/util/Methods;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    invoke-static {v1, v15, v6}, Lpe/hf/black20/util/Methods;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    iput-object v1, v4, Lb7/t0;->Q1:Ljava/lang/String;

    .line 453
    .line 454
    :goto_3
    const/4 v1, 0x1

    .line 455
    goto :goto_4

    .line 456
    :cond_3
    move-object/from16 v22, v1

    .line 457
    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .line 462
    .line 463
    invoke-static {v14}, Lpe/hf/black20/util/Methods;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v7

    .line 467
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-static {v15}, Lpe/hf/black20/util/Methods;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    iput-object v1, v4, Lb7/t0;->Q1:Ljava/lang/String;

    .line 485
    .line 486
    goto :goto_3

    .line 487
    :cond_4
    move-object/from16 v22, v1

    .line 488
    .line 489
    move-object/from16 v21, v7

    .line 490
    .line 491
    goto :goto_3

    .line 492
    :goto_4
    if-ne v11, v1, :cond_6

    .line 493
    .line 494
    const/4 v1, 0x2

    .line 495
    aget-object v1, v13, v1

    .line 496
    .line 497
    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    iput-object v1, v4, Lb7/t0;->R1:Ljava/lang/String;

    .line 502
    .line 503
    aget-object v1, v13, v18

    .line 504
    .line 505
    invoke-virtual {v1, v2, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    iput-object v1, v4, Lb7/t0;->S1:Ljava/lang/String;

    .line 510
    .line 511
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    invoke-virtual {v1, v0, v5}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    if-eqz v0, :cond_5

    .line 524
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    .line 526
    .line 527
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    const/4 v2, 0x0

    .line 535
    aget-object v3, v13, v2

    .line 536
    .line 537
    invoke-virtual {v3, v8, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    move-object/from16 v3, v22

    .line 542
    .line 543
    invoke-static {v1, v2, v3}, Lpe/hf/black20/util/Methods;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    const/4 v2, 0x1

    .line 558
    aget-object v5, v13, v2

    .line 559
    .line 560
    move-object/from16 v2, v21

    .line 561
    .line 562
    invoke-virtual {v5, v2, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v5

    .line 566
    invoke-static {v1, v5, v3}, Lpe/hf/black20/util/Methods;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    iput-object v0, v4, Lb7/t0;->T1:Ljava/lang/String;

    .line 578
    .line 579
    :goto_5
    const/4 v1, 0x0

    .line 580
    const/4 v5, 0x1

    .line 581
    goto :goto_6

    .line 582
    :cond_5
    move-object/from16 v2, v21

    .line 583
    .line 584
    move-object/from16 v3, v22

    .line 585
    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    .line 587
    .line 588
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .line 590
    .line 591
    const/4 v1, 0x0

    .line 592
    aget-object v5, v13, v1

    .line 593
    .line 594
    invoke-virtual {v5, v8, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v5

    .line 598
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v5

    .line 602
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v5

    .line 606
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    const/4 v5, 0x1

    .line 613
    aget-object v7, v13, v5

    .line 614
    .line 615
    invoke-virtual {v7, v2, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v7

    .line 619
    invoke-static {v7}, Lpe/hf/black20/util/Methods;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v7

    .line 623
    invoke-static {v7}, Lpe/hf/black20/util/Methods;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v7

    .line 627
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    iput-object v0, v4, Lb7/t0;->T1:Ljava/lang/String;

    .line 635
    .line 636
    goto :goto_6

    .line 637
    :cond_6
    move-object/from16 v2, v21

    .line 638
    .line 639
    move-object/from16 v3, v22

    .line 640
    .line 641
    goto :goto_5

    .line 642
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 643
    .line 644
    goto :goto_7

    .line 645
    :cond_7
    move-object/from16 v17, v2

    .line 646
    .line 647
    move-object/from16 v19, v3

    .line 648
    .line 649
    move-object v2, v7

    .line 650
    move/from16 v20, v9

    .line 651
    .line 652
    const/4 v5, 0x1

    .line 653
    move-object v3, v1

    .line 654
    const/4 v1, 0x0

    .line 655
    :goto_7
    add-int/lit8 v9, v20, 0x1

    .line 656
    .line 657
    move-object/from16 v0, p0

    .line 658
    .line 659
    move-object v7, v2

    .line 660
    move-object v1, v3

    .line 661
    move-object/from16 v2, v17

    .line 662
    .line 663
    move-object/from16 v3, v19

    .line 664
    .line 665
    const/4 v5, 0x0

    .line 666
    const/4 v10, 0x1

    .line 667
    goto/16 :goto_2

    .line 668
    .line 669
    :cond_8
    :goto_8
    if-nez v11, :cond_9

    .line 670
    .line 671
    new-instance v0, Ljava/util/HashMap;

    .line 672
    .line 673
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 674
    .line 675
    .line 676
    const-string v1, "title"

    .line 677
    .line 678
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    const v3, 0x7f1301c5

    .line 683
    .line 684
    .line 685
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    const-string v1, "description"

    .line 693
    .line 694
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 695
    .line 696
    .line 697
    move-result-object v2

    .line 698
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v2

    .line 702
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    const-string v1, "start"

    .line 706
    .line 707
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    const v3, 0x7f130226

    .line 712
    .line 713
    .line 714
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v2

    .line 718
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    const-string v1, "end"

    .line 722
    .line 723
    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    iget-object v1, v4, Lb7/t0;->o1:Ljava/util/ArrayList;

    .line 727
    .line 728
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 729
    .line 730
    .line 731
    :catch_1
    :cond_9
    return-void

    .line 732
    nop

    .line 733
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Void;)V
    .locals 12

    .line 1
    iget v0, p0, Lb7/f0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lb7/f0;->b:Lb7/t0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string v0, "movie_image"

    .line 9
    .line 10
    const-string v2, "backdrop_path"

    .line 11
    .line 12
    const-string v3, "duration"

    .line 13
    .line 14
    const-string v4, "releasedate"

    .line 15
    .line 16
    const-string v5, "director"

    .line 17
    .line 18
    const-string v6, "cast"

    .line 19
    .line 20
    const-string v7, "rating"

    .line 21
    .line 22
    const-string v8, "Director: "

    .line 23
    .line 24
    const-string v9, "Cast: "

    .line 25
    .line 26
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 30
    .line 31
    if-eqz p1, :cond_8

    .line 32
    .line 33
    :try_start_0
    iget-object v10, v1, Lb7/t0;->t1:Landroid/widget/TextView;

    .line 34
    .line 35
    const-string v11, "genre"

    .line 36
    .line 37
    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v10, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v1, Lb7/t0;->u1:Landroid/widget/TextView;

    .line 45
    .line 46
    iget-object v10, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 47
    .line 48
    const-string v11, "plot"

    .line 49
    .line 50
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 58
    .line 59
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const/4 v10, 0x3

    .line 68
    if-le p1, v10, :cond_0

    .line 69
    .line 70
    iget-object p1, v1, Lb7/t0;->w1:Landroid/widget/TextView;

    .line 71
    .line 72
    new-instance v11, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v9, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 78
    .line 79
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    :cond_0
    iget-object p1, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 94
    .line 95
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-le p1, v10, :cond_1

    .line 104
    .line 105
    iget-object p1, v1, Lb7/t0;->v1:Landroid/widget/TextView;

    .line 106
    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v8, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 113
    .line 114
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    :cond_1
    iget-object p1, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 129
    .line 130
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object v5, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 135
    .line 136
    const-string v6, "duration_secs"

    .line 137
    .line 138
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 143
    .line 144
    .line 145
    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 146
    const/4 v8, 0x2

    .line 147
    const-string v9, ""

    .line 148
    .line 149
    if-le v6, v8, :cond_2

    .line 150
    .line 151
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-static {v3}, Lpe/hf/black20/util/Methods;->D(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    goto :goto_0

    .line 160
    :cond_2
    iget-object v5, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 161
    .line 162
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    const-string v6, "00:00:00"

    .line 167
    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_3

    .line 173
    .line 174
    move-object v3, v9

    .line 175
    goto :goto_0

    .line 176
    :cond_3
    iget-object v5, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 177
    .line 178
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 183
    .line 184
    .line 185
    move-result v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 186
    const/16 v6, 0x8

    .line 187
    .line 188
    if-le v5, v6, :cond_4

    .line 189
    .line 190
    :try_start_2
    iget-object v5, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 191
    .line 192
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-static {v4}, Lpe/hf/black20/util/Methods;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 200
    :catch_0
    :cond_4
    :try_start_3
    iget-object v4, v1, Lb7/t0;->s1:Landroid/widget/TextView;

    .line 201
    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v3, "   "

    .line 211
    .line 212
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    iget-object p1, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 226
    .line 227
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    iget-object p1, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 231
    .line 232
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 237
    .line 238
    .line 239
    move-result v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 240
    const/4 v4, 0x0

    .line 241
    if-lez v3, :cond_5

    .line 242
    .line 243
    const/4 v3, 0x1

    .line 244
    :try_start_4
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    move-object v5, v9

    .line 253
    const/4 v3, 0x0

    .line 254
    :goto_1
    if-ge v3, p1, :cond_5

    .line 255
    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v5, "\u2b50"

    .line 265
    .line 266
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    iget-object v6, v1, Lb7/t0;->r1:Landroid/widget/TextView;

    .line 274
    .line 275
    new-instance v8, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v10, " ("

    .line 284
    .line 285
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    iget-object v10, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 289
    .line 290
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v10, ")"

    .line 298
    .line 299
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 307
    .line 308
    .line 309
    add-int/lit8 v3, v3, 0x1

    .line 310
    .line 311
    goto :goto_1

    .line 312
    :catch_1
    :try_start_5
    iget-object p1, v1, Lb7/t0;->r1:Landroid/widget/TextView;

    .line 313
    .line 314
    iget-object v3, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 315
    .line 316
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .line 322
    .line 323
    :cond_5
    new-instance p1, Lorg/json/JSONArray;

    .line 324
    .line 325
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 326
    .line 327
    .line 328
    iget-object p1, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 329
    .line 330
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 335
    .line 336
    .line 337
    move-result p1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 338
    iget-object v3, v1, Lb7/t0;->N1:LN2/a;

    .line 339
    .line 340
    const-string v5, "XCIPTV_TAG"

    .line 341
    .line 342
    const-string v6, "\\\\"

    .line 343
    .line 344
    const-string v7, "%20"

    .line 345
    .line 346
    const-string v8, " "

    .line 347
    .line 348
    if-lez p1, :cond_6

    .line 349
    .line 350
    :try_start_6
    iget-object p1, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 351
    .line 352
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-virtual {p1, v6, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object p1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    .line 368
    :try_start_7
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    invoke-virtual {p1}, LL2/a;->b()LL2/a;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    check-cast p1, Lcom/bumptech/glide/l;

    .line 385
    .line 386
    invoke-static {v3}, LG2/c;->b(LN2/a;)LG2/c;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    const v0, 0x7f08053d

    .line 395
    .line 396
    .line 397
    invoke-virtual {p1, v0}, LL2/a;->f(I)LL2/a;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    check-cast p1, Lcom/bumptech/glide/l;

    .line 402
    .line 403
    iget-object v0, v1, Lb7/t0;->p1:Landroid/widget/ImageView;

    .line 404
    .line 405
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 406
    .line 407
    .line 408
    goto :goto_2

    .line 409
    :catch_2
    :try_start_8
    const-string p1, "--------Exception----------- Glide.with"

    .line 410
    .line 411
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    goto :goto_2

    .line 415
    :cond_6
    iget-object p1, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 416
    .line 417
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result p1

    .line 425
    if-eqz p1, :cond_7

    .line 426
    .line 427
    goto :goto_2

    .line 428
    :cond_7
    iget-object p1, v1, Lb7/t0;->M1:Lorg/json/JSONObject;

    .line 429
    .line 430
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    invoke-virtual {p1, v6, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object p1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    .line 442
    :try_start_9
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    invoke-virtual {p1}, LL2/a;->b()LL2/a;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    check-cast p1, Lcom/bumptech/glide/l;

    .line 459
    .line 460
    invoke-static {v3}, LG2/c;->b(LN2/a;)LG2/c;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    iget-object v0, v1, Lb7/t0;->p1:Landroid/widget/ImageView;

    .line 469
    .line 470
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 471
    .line 472
    .line 473
    goto :goto_2

    .line 474
    :catch_3
    :try_start_a
    const-string p1, "Picasso Crashed"

    .line 475
    .line 476
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4

    .line 477
    .line 478
    .line 479
    :catch_4
    :cond_8
    :goto_2
    return-void

    .line 480
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    iget-object p1, v1, Lb7/t0;->A1:Landroid/widget/TextView;

    .line 484
    .line 485
    iget-object v0, v1, Lb7/t0;->O1:Ljava/lang/String;

    .line 486
    .line 487
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    .line 489
    .line 490
    iget-object p1, v1, Lb7/t0;->C1:Landroid/widget/TextView;

    .line 491
    .line 492
    iget-object v0, v1, Lb7/t0;->P1:Ljava/lang/String;

    .line 493
    .line 494
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    .line 496
    .line 497
    iget-object p1, v1, Lb7/t0;->B1:Landroid/widget/TextView;

    .line 498
    .line 499
    iget-object v0, v1, Lb7/t0;->Q1:Ljava/lang/String;

    .line 500
    .line 501
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    .line 503
    .line 504
    iget-object p1, v1, Lb7/t0;->D1:Landroid/widget/TextView;

    .line 505
    .line 506
    iget-object v0, v1, Lb7/t0;->R1:Ljava/lang/String;

    .line 507
    .line 508
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    .line 510
    .line 511
    iget-object p1, v1, Lb7/t0;->F1:Landroid/widget/TextView;

    .line 512
    .line 513
    iget-object v0, v1, Lb7/t0;->S1:Ljava/lang/String;

    .line 514
    .line 515
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    .line 517
    .line 518
    iget-object p1, v1, Lb7/t0;->E1:Landroid/widget/TextView;

    .line 519
    .line 520
    iget-object v0, v1, Lb7/t0;->T1:Ljava/lang/String;

    .line 521
    .line 522
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    .line 524
    .line 525
    return-void

    .line 526
    nop

    .line 527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lb7/f0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, [Ljava/lang/Void;

    .line 8
    .line 9
    invoke-virtual {p0}, Lb7/f0;->a()V

    .line 10
    .line 11
    .line 12
    return-object v1

    .line 13
    :pswitch_0
    check-cast p1, [Ljava/lang/Void;

    .line 14
    .line 15
    invoke-virtual {p0}, Lb7/f0;->a()V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lb7/f0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Void;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lb7/f0;->b(Ljava/lang/Void;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lb7/f0;->b(Ljava/lang/Void;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreExecute()V
    .locals 1

    .line 1
    iget v0, p0, Lb7/f0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
