.class public final Lb7/g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpe/hf/black20/CatchupActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/CatchupActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb7/g;->a:I

    invoke-direct {p0, p1, v0}, Lb7/g;-><init>(Lpe/hf/black20/CatchupActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/CatchupActivity;I)V
    .locals 0

    .line 2
    iput p2, p0, Lb7/g;->a:I

    iput-object p1, p0, Lb7/g;->b:Lpe/hf/black20/CatchupActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/CatchupActivity;Ljava/lang/Object;)V
    .locals 0

    .line 3
    const/4 p2, 0x1

    iput p2, p0, Lb7/g;->a:I

    invoke-direct {p0, p1, p2}, Lb7/g;-><init>(Lpe/hf/black20/CatchupActivity;I)V

    return-void
.end method


# virtual methods
.method public final varargs a()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb7/g;->a:I

    .line 4
    .line 5
    const-string v2, "start_o"

    .line 6
    .line 7
    const-string v3, "date_time"

    .line 8
    .line 9
    const-string v4, " - "

    .line 10
    .line 11
    const-string v5, "24"

    .line 12
    .line 13
    const-string v6, "12"

    .line 14
    .line 15
    const-string v7, "ORT_TIME_FORMAT"

    .line 16
    .line 17
    const-string v8, "1"

    .line 18
    .line 19
    const-string v9, "has_archive"

    .line 20
    .line 21
    const-string v10, "yes"

    .line 22
    .line 23
    iget-object v12, v0, Lb7/g;->b:Lpe/hf/black20/CatchupActivity;

    .line 24
    .line 25
    const-string v13, "start"

    .line 26
    .line 27
    const-string v14, "title"

    .line 28
    .line 29
    const-string v15, "description"

    .line 30
    .line 31
    const-string v11, "end"

    .line 32
    .line 33
    const-string v0, "catchup_epg_timeshift"

    .line 34
    .line 35
    move-object/from16 v17, v2

    .line 36
    .line 37
    packed-switch v1, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    iget-object v1, v12, Lpe/hf/black20/CatchupActivity;->a0:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 43
    .line 44
    .line 45
    iget-object v1, v12, Lpe/hf/black20/CatchupActivity;->b0:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 48
    .line 49
    .line 50
    move-object/from16 v18, v1

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    :goto_0
    iget-object v1, v12, Lpe/hf/black20/CatchupActivity;->J:Lorg/json/JSONArray;

    .line 54
    .line 55
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-ge v2, v1, :cond_7

    .line 60
    .line 61
    :try_start_0
    iget-object v1, v12, Lpe/hf/black20/CatchupActivity;->J:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_f

    .line 62
    .line 63
    move-object/from16 v19, v15

    .line 64
    .line 65
    const/4 v15, 0x0

    .line 66
    :try_start_1
    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    iget-object v1, v12, Lpe/hf/black20/CatchupActivity;->J:Lorg/json/JSONArray;

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v15

    .line 83
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v20
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_e

    .line 87
    move-object/from16 v21, v11

    .line 88
    .line 89
    :try_start_2
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    move-object/from16 v22, v11

    .line 94
    .line 95
    iget-object v11, v12, Lpe/hf/black20/CatchupActivity;->J:Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_d

    .line 96
    .line 97
    move-object/from16 v23, v3

    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    :try_start_3
    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    iget-object v3, v12, Lpe/hf/black20/CatchupActivity;->J:Lorg/json/JSONArray;

    .line 108
    .line 109
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    add-int/lit8 v11, v11, -0x1

    .line 114
    .line 115
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    iget-object v3, v12, Lpe/hf/black20/CatchupActivity;->J:Lorg/json/JSONArray;

    .line 123
    .line 124
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    iget-object v11, v12, Lpe/hf/black20/CatchupActivity;->L:Landroid/content/SharedPreferences;

    .line 133
    .line 134
    invoke-interface {v11, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v11
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_c

    .line 138
    if-eqz v11, :cond_1

    .line 139
    .line 140
    :try_start_4
    iget-object v11, v12, Lpe/hf/black20/CatchupActivity;->L:Landroid/content/SharedPreferences;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 141
    .line 142
    move/from16 v24, v2

    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    :try_start_5
    invoke-interface {v11, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_0

    .line 154
    .line 155
    invoke-static {v15}, Lpe/hf/black20/util/Methods;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v15

    .line 159
    invoke-static/range {v20 .. v20}, Lpe/hf/black20/util/Methods;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v20

    .line 163
    invoke-static {v3}, Lpe/hf/black20/util/Methods;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    :cond_0
    :goto_1
    move-object/from16 v2, v20

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :catch_0
    move/from16 v24, v2

    .line 171
    .line 172
    goto/16 :goto_c

    .line 173
    .line 174
    :cond_1
    move/from16 v24, v2

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :goto_2
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v11

    .line 181
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    if-eqz v11, :cond_6

    .line 186
    .line 187
    iget-object v11, v12, Lpe/hf/black20/CatchupActivity;->W:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_b

    .line 188
    .line 189
    move-object/from16 v20, v8

    .line 190
    .line 191
    :try_start_6
    const-string v8, ""

    .line 192
    .line 193
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    if-nez v8, :cond_5

    .line 198
    .line 199
    iget-object v8, v12, Lpe/hf/black20/CatchupActivity;->W:Ljava/lang/String;

    .line 200
    .line 201
    sget-object v11, Lpe/hf/black20/util/Methods;->a:Landroid/content/SharedPreferences;

    .line 202
    .line 203
    new-instance v11, Ljava/text/SimpleDateFormat;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_a

    .line 204
    .line 205
    move-object/from16 v25, v9

    .line 206
    .line 207
    :try_start_7
    const-string v9, "yyyy-MM-dd HH:mm:ss"

    .line 208
    .line 209
    invoke-direct {v11, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    new-instance v9, Ljava/text/SimpleDateFormat;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_9

    .line 213
    .line 214
    move-object/from16 v26, v0

    .line 215
    .line 216
    :try_start_8
    const-string v0, "yyyy-MM-dd"

    .line 217
    .line 218
    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    .line 219
    .line 220
    .line 221
    :try_start_9
    invoke-virtual {v11, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 222
    .line 223
    .line 224
    move-result-object v0
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_8

    .line 225
    :try_start_a
    invoke-virtual {v11, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 226
    .line 227
    .line 228
    move-result-object v3
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_8

    .line 229
    goto :goto_3

    .line 230
    :catch_1
    const/4 v0, 0x0

    .line 231
    :catch_2
    const/4 v3, 0x0

    .line 232
    :goto_3
    :try_start_b
    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v9, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_2

    .line 245
    .line 246
    move-object v0, v10

    .line 247
    goto :goto_4

    .line 248
    :cond_2
    const-string v0, "no"

    .line 249
    .line 250
    :goto_4
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_4

    .line 255
    .line 256
    new-instance v0, Ljava/util/HashMap;

    .line 257
    .line 258
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-static {v3}, Lpe/hf/black20/util/Methods;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v0, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-virtual {v3, v7, v6}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v3
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_8

    .line 284
    if-eqz v3, :cond_3

    .line 285
    .line 286
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-static {v15}, Lpe/hf/black20/util/Methods;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_4

    .line 312
    move-object/from16 v8, v23

    .line 313
    .line 314
    :try_start_d
    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    :goto_5
    move-object/from16 v3, v19

    .line 318
    .line 319
    goto :goto_8

    .line 320
    :catch_3
    :goto_6
    move-object/from16 v9, v17

    .line 321
    .line 322
    move-object/from16 v1, v18

    .line 323
    .line 324
    move-object/from16 v3, v19

    .line 325
    .line 326
    :goto_7
    move-object/from16 v11, v21

    .line 327
    .line 328
    goto/16 :goto_f

    .line 329
    .line 330
    :catch_4
    move-object/from16 v8, v23

    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_3
    move-object/from16 v8, v23

    .line 334
    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .line 339
    .line 340
    invoke-static {v15}, Lpe/hf/black20/util/Methods;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v9

    .line 344
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v9

    .line 354
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_3

    .line 362
    .line 363
    .line 364
    goto :goto_5

    .line 365
    :goto_8
    :try_start_e
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v9

    .line 369
    invoke-static {v9}, Lpe/hf/black20/util/Methods;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v9

    .line 373
    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    iget-object v9, v12, Lpe/hf/black20/CatchupActivity;->a0:Ljava/util/ArrayList;

    .line 377
    .line 378
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    new-instance v0, Ljava/util/HashMap;

    .line 382
    .line 383
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v9

    .line 390
    invoke-static {v9}, Lpe/hf/black20/util/Methods;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v9

    .line 394
    invoke-virtual {v0, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_7

    .line 398
    .line 399
    .line 400
    move-object/from16 v9, v17

    .line 401
    .line 402
    move-object/from16 v11, v22

    .line 403
    .line 404
    :try_start_f
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_6

    .line 405
    .line 406
    .line 407
    move-object/from16 v11, v21

    .line 408
    .line 409
    :try_start_10
    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-static {v1}, Lpe/hf/black20/util/Methods;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_5

    .line 421
    .line 422
    .line 423
    move-object/from16 v1, v18

    .line 424
    .line 425
    :try_start_11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_10

    .line 426
    .line 427
    .line 428
    goto/16 :goto_f

    .line 429
    .line 430
    :catch_5
    move-object/from16 v1, v18

    .line 431
    .line 432
    goto/16 :goto_f

    .line 433
    .line 434
    :catch_6
    :goto_9
    move-object/from16 v1, v18

    .line 435
    .line 436
    goto :goto_7

    .line 437
    :catch_7
    move-object/from16 v9, v17

    .line 438
    .line 439
    goto :goto_9

    .line 440
    :catch_8
    :cond_4
    :goto_a
    move-object/from16 v9, v17

    .line 441
    .line 442
    move-object/from16 v1, v18

    .line 443
    .line 444
    move-object/from16 v3, v19

    .line 445
    .line 446
    move-object/from16 v11, v21

    .line 447
    .line 448
    move-object/from16 v8, v23

    .line 449
    .line 450
    goto :goto_f

    .line 451
    :catch_9
    move-object/from16 v26, v0

    .line 452
    .line 453
    goto :goto_a

    .line 454
    :catch_a
    :cond_5
    move-object/from16 v26, v0

    .line 455
    .line 456
    :goto_b
    move-object/from16 v25, v9

    .line 457
    .line 458
    goto :goto_a

    .line 459
    :catch_b
    :cond_6
    :goto_c
    move-object/from16 v26, v0

    .line 460
    .line 461
    :goto_d
    move-object/from16 v20, v8

    .line 462
    .line 463
    goto :goto_b

    .line 464
    :catch_c
    move-object/from16 v26, v0

    .line 465
    .line 466
    move/from16 v24, v2

    .line 467
    .line 468
    goto :goto_d

    .line 469
    :catch_d
    move-object/from16 v26, v0

    .line 470
    .line 471
    move/from16 v24, v2

    .line 472
    .line 473
    move-object/from16 v20, v8

    .line 474
    .line 475
    move-object/from16 v25, v9

    .line 476
    .line 477
    move-object/from16 v9, v17

    .line 478
    .line 479
    move-object/from16 v1, v18

    .line 480
    .line 481
    move-object/from16 v11, v21

    .line 482
    .line 483
    :goto_e
    move-object v8, v3

    .line 484
    move-object/from16 v3, v19

    .line 485
    .line 486
    goto :goto_f

    .line 487
    :catch_e
    move-object/from16 v26, v0

    .line 488
    .line 489
    move/from16 v24, v2

    .line 490
    .line 491
    move-object/from16 v20, v8

    .line 492
    .line 493
    move-object/from16 v25, v9

    .line 494
    .line 495
    move-object/from16 v9, v17

    .line 496
    .line 497
    move-object/from16 v1, v18

    .line 498
    .line 499
    goto :goto_e

    .line 500
    :catch_f
    move-object/from16 v26, v0

    .line 501
    .line 502
    move/from16 v24, v2

    .line 503
    .line 504
    move-object/from16 v20, v8

    .line 505
    .line 506
    move-object/from16 v25, v9

    .line 507
    .line 508
    move-object/from16 v9, v17

    .line 509
    .line 510
    move-object/from16 v1, v18

    .line 511
    .line 512
    move-object v8, v3

    .line 513
    move-object v3, v15

    .line 514
    :catch_10
    :goto_f
    add-int/lit8 v2, v24, 0x1

    .line 515
    .line 516
    move-object/from16 v18, v1

    .line 517
    .line 518
    move-object v15, v3

    .line 519
    move-object v3, v8

    .line 520
    move-object/from16 v17, v9

    .line 521
    .line 522
    move-object/from16 v8, v20

    .line 523
    .line 524
    move-object/from16 v9, v25

    .line 525
    .line 526
    move-object/from16 v0, v26

    .line 527
    .line 528
    goto/16 :goto_0

    .line 529
    .line 530
    :cond_7
    return-void

    .line 531
    :pswitch_0
    move-object/from16 v26, v0

    .line 532
    .line 533
    move-object/from16 v20, v8

    .line 534
    .line 535
    move-object/from16 v25, v9

    .line 536
    .line 537
    move-object/from16 v9, v17

    .line 538
    .line 539
    const/4 v0, 0x0

    .line 540
    move-object v8, v3

    .line 541
    move-object v3, v15

    .line 542
    iput-object v0, v12, Lpe/hf/black20/CatchupActivity;->J:Lorg/json/JSONArray;

    .line 543
    .line 544
    new-instance v0, Lorg/json/JSONArray;

    .line 545
    .line 546
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 547
    .line 548
    .line 549
    iput-object v0, v12, Lpe/hf/black20/CatchupActivity;->J:Lorg/json/JSONArray;

    .line 550
    .line 551
    iget-object v0, v12, Lpe/hf/black20/CatchupActivity;->M:Lh7/i;

    .line 552
    .line 553
    iget-object v0, v0, Lh7/i;->c:Ljava/lang/String;

    .line 554
    .line 555
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    iget-object v1, v12, Lpe/hf/black20/CatchupActivity;->M:Lh7/i;

    .line 560
    .line 561
    iget-object v1, v1, Lh7/i;->d:Ljava/lang/String;

    .line 562
    .line 563
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    .line 568
    .line 569
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .line 571
    .line 572
    iget-object v15, v12, Lpe/hf/black20/CatchupActivity;->M:Lh7/i;

    .line 573
    .line 574
    iget-object v15, v15, Lh7/i;->e:Ljava/lang/String;

    .line 575
    .line 576
    invoke-static {v15}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v15

    .line 580
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    const-string v15, "/player_api.php?username="

    .line 584
    .line 585
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    const-string v0, "&password="

    .line 592
    .line 593
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    const-string v0, "&action=get_simple_data_table&stream_id="

    .line 600
    .line 601
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    iget-object v0, v12, Lpe/hf/black20/CatchupActivity;->Q:Ljava/lang/String;

    .line 605
    .line 606
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    :try_start_12
    new-instance v1, LF2/G;

    .line 614
    .line 615
    const/4 v2, 0x5

    .line 616
    invoke-direct {v1, v2}, LF2/G;-><init>(I)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v1, v0}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    new-instance v1, Lorg/json/JSONObject;

    .line 624
    .line 625
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    iput-object v1, v12, Lpe/hf/black20/CatchupActivity;->Z:Lorg/json/JSONObject;

    .line 629
    .line 630
    new-instance v0, Lorg/json/JSONArray;

    .line 631
    .line 632
    iget-object v1, v12, Lpe/hf/black20/CatchupActivity;->Z:Lorg/json/JSONObject;

    .line 633
    .line 634
    const-string v2, "epg_listings"

    .line 635
    .line 636
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    iput-object v0, v12, Lpe/hf/black20/CatchupActivity;->J:Lorg/json/JSONArray;

    .line 644
    .line 645
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 646
    .line 647
    .line 648
    move-result v0

    .line 649
    new-array v0, v0, [Ljava/lang/String;

    .line 650
    .line 651
    const/4 v15, 0x0

    .line 652
    :goto_10
    iget-object v0, v12, Lpe/hf/black20/CatchupActivity;->J:Lorg/json/JSONArray;

    .line 653
    .line 654
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 655
    .line 656
    .line 657
    move-result v0
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_19

    .line 658
    if-ge v15, v0, :cond_c

    .line 659
    .line 660
    :try_start_13
    iget-object v0, v12, Lpe/hf/black20/CatchupActivity;->J:Lorg/json/JSONArray;

    .line 661
    .line 662
    const/4 v1, 0x0

    .line 663
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    iget-object v0, v12, Lpe/hf/black20/CatchupActivity;->J:Lorg/json/JSONArray;

    .line 671
    .line 672
    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v16

    .line 684
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v1
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_17

    .line 688
    move/from16 v18, v15

    .line 689
    .line 690
    :try_start_14
    iget-object v15, v12, Lpe/hf/black20/CatchupActivity;->L:Landroid/content/SharedPreferences;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_16

    .line 691
    .line 692
    move-object/from16 v21, v11

    .line 693
    .line 694
    move-object/from16 v11, v26

    .line 695
    .line 696
    :try_start_15
    invoke-interface {v15, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 697
    .line 698
    .line 699
    move-result v15

    .line 700
    if-eqz v15, :cond_9

    .line 701
    .line 702
    iget-object v15, v12, Lpe/hf/black20/CatchupActivity;->L:Landroid/content/SharedPreferences;

    .line 703
    .line 704
    move-object/from16 v19, v1

    .line 705
    .line 706
    const/4 v1, 0x0

    .line 707
    invoke-interface {v15, v11, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v15

    .line 711
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    move-result v15

    .line 715
    if-eqz v15, :cond_8

    .line 716
    .line 717
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    invoke-static/range {v16 .. v16}, Lpe/hf/black20/util/Methods;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v16

    .line 725
    :cond_8
    :goto_11
    move-object/from16 v15, v16

    .line 726
    .line 727
    move-object/from16 v1, v25

    .line 728
    .line 729
    move-object/from16 v16, v10

    .line 730
    .line 731
    goto :goto_14

    .line 732
    :catch_11
    move-object/from16 v16, v10

    .line 733
    .line 734
    :goto_12
    move-object/from16 v22, v20

    .line 735
    .line 736
    move-object/from16 v2, v21

    .line 737
    .line 738
    :goto_13
    move-object/from16 v20, v5

    .line 739
    .line 740
    goto/16 :goto_17

    .line 741
    .line 742
    :cond_9
    move-object/from16 v19, v1

    .line 743
    .line 744
    const/4 v1, 0x0

    .line 745
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    invoke-static/range {v16 .. v16}, Lpe/hf/black20/util/Methods;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v16
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_11

    .line 753
    goto :goto_11

    .line 754
    :goto_14
    :try_start_16
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v10
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_15

    .line 758
    move-object/from16 v25, v1

    .line 759
    .line 760
    move-object/from16 v1, v20

    .line 761
    .line 762
    :try_start_17
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    move-result v10

    .line 766
    if-eqz v10, :cond_b

    .line 767
    .line 768
    new-instance v10, Ljava/util/HashMap;

    .line 769
    .line 770
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v20
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_12

    .line 777
    move-object/from16 v22, v1

    .line 778
    .line 779
    :try_start_18
    invoke-static/range {v20 .. v20}, Lpe/hf/black20/util/Methods;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    invoke-virtual {v10, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    invoke-virtual {v1, v7, v6}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 795
    .line 796
    .line 797
    move-result v1

    .line 798
    if-eqz v1, :cond_a

    .line 799
    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    .line 801
    .line 802
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_13

    .line 803
    .line 804
    .line 805
    move-object/from16 v20, v5

    .line 806
    .line 807
    :try_start_19
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v5

    .line 811
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    invoke-static {v15}, Lpe/hf/black20/util/Methods;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v5

    .line 821
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v1

    .line 828
    invoke-virtual {v10, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    goto :goto_15

    .line 832
    :cond_a
    move-object/from16 v20, v5

    .line 833
    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    .line 835
    .line 836
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 837
    .line 838
    .line 839
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v5

    .line 843
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-static {v15}, Lpe/hf/black20/util/Methods;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v5

    .line 853
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    invoke-virtual {v10, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    :goto_15
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    invoke-static {v1}, Lpe/hf/black20/util/Methods;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v1

    .line 871
    invoke-virtual {v10, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    iget-object v1, v12, Lpe/hf/black20/CatchupActivity;->a0:Ljava/util/ArrayList;

    .line 875
    .line 876
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    .line 878
    .line 879
    new-instance v1, Ljava/util/HashMap;

    .line 880
    .line 881
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v5

    .line 888
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v5

    .line 892
    invoke-virtual {v1, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-object/from16 v2, v19

    .line 899
    .line 900
    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_14

    .line 901
    .line 902
    .line 903
    move-object/from16 v2, v21

    .line 904
    .line 905
    :try_start_1a
    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v0

    .line 912
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    iget-object v0, v12, Lpe/hf/black20/CatchupActivity;->b0:Ljava/util/ArrayList;

    .line 920
    .line 921
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_18

    .line 922
    .line 923
    .line 924
    goto :goto_17

    .line 925
    :catch_12
    :cond_b
    move-object/from16 v22, v1

    .line 926
    .line 927
    :catch_13
    move-object/from16 v20, v5

    .line 928
    .line 929
    :catch_14
    move-object/from16 v2, v21

    .line 930
    .line 931
    goto :goto_17

    .line 932
    :catch_15
    move-object/from16 v25, v1

    .line 933
    .line 934
    goto/16 :goto_12

    .line 935
    .line 936
    :catch_16
    move-object/from16 v16, v10

    .line 937
    .line 938
    move-object v2, v11

    .line 939
    :goto_16
    move-object/from16 v22, v20

    .line 940
    .line 941
    move-object/from16 v11, v26

    .line 942
    .line 943
    goto/16 :goto_13

    .line 944
    .line 945
    :catch_17
    move-object/from16 v16, v10

    .line 946
    .line 947
    move-object v2, v11

    .line 948
    move/from16 v18, v15

    .line 949
    .line 950
    goto :goto_16

    .line 951
    :catch_18
    :goto_17
    add-int/lit8 v15, v18, 0x1

    .line 952
    .line 953
    move-object/from16 v26, v11

    .line 954
    .line 955
    move-object/from16 v10, v16

    .line 956
    .line 957
    move-object/from16 v5, v20

    .line 958
    .line 959
    move-object/from16 v20, v22

    .line 960
    .line 961
    move-object v11, v2

    .line 962
    goto/16 :goto_10

    .line 963
    .line 964
    :catch_19
    :cond_c
    return-void

    .line 965
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Void;)V
    .locals 8

    .line 1
    iget v0, p0, Lb7/g;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "start"

    .line 5
    .line 6
    const-string v3, "EPG Length not empty"

    .line 7
    .line 8
    const-string v4, "XCIPTV_TAG"

    .line 9
    .line 10
    const-string v5, "EPG Length  empty"

    .line 11
    .line 12
    const/4 v6, 0x4

    .line 13
    iget-object v7, p0, Lb7/g;->b:Lpe/hf/black20/CatchupActivity;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, v7, Lpe/hf/black20/CatchupActivity;->N:Landroid/widget/ProgressBar;

    .line 22
    .line 23
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, v7, Lpe/hf/black20/CatchupActivity;->J:Lorg/json/JSONArray;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-lez p1, :cond_1

    .line 35
    .line 36
    iget-object p1, v7, Lpe/hf/black20/CatchupActivity;->b0:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-lez v0, :cond_0

    .line 43
    .line 44
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/String;

    .line 59
    .line 60
    iput-object v0, v7, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p1, v1}, Lcom/google/protobuf/U2;->g(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Ljava/lang/String;

    .line 73
    .line 74
    iput-object p1, v7, Lpe/hf/black20/CatchupActivity;->T:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v7}, Lpe/hf/black20/CatchupActivity;->b()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    invoke-static {v7}, Lpe/hf/black20/CatchupActivity;->a(Lpe/hf/black20/CatchupActivity;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    invoke-static {v7}, Lpe/hf/black20/CatchupActivity;->a(Lpe/hf/black20/CatchupActivity;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    return-void

    .line 94
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, v7, Lpe/hf/black20/CatchupActivity;->N:Landroid/widget/ProgressBar;

    .line 98
    .line 99
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, v7, Lpe/hf/black20/CatchupActivity;->J:Lorg/json/JSONArray;

    .line 103
    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-lez p1, :cond_3

    .line 111
    .line 112
    iget-object p1, v7, Lpe/hf/black20/CatchupActivity;->b0:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-lez v0, :cond_2

    .line 119
    .line 120
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7}, Lpe/hf/black20/CatchupActivity;->e()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, v7, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {p1, v1}, Lcom/google/protobuf/U2;->g(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Ljava/util/HashMap;

    .line 134
    .line 135
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Ljava/lang/String;

    .line 140
    .line 141
    iput-object p1, v7, Lpe/hf/black20/CatchupActivity;->T:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v7}, Lpe/hf/black20/CatchupActivity;->b()V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_2
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    invoke-static {v7}, Lpe/hf/black20/CatchupActivity;->a(Lpe/hf/black20/CatchupActivity;)V

    .line 151
    .line 152
    .line 153
    :goto_1
    iget-object p1, v7, Lpe/hf/black20/CatchupActivity;->S:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v0, v7, Lpe/hf/black20/CatchupActivity;->T:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v7, p1, v0}, Lpe/hf/black20/CatchupActivity;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_3
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    invoke-static {v7}, Lpe/hf/black20/CatchupActivity;->a(Lpe/hf/black20/CatchupActivity;)V

    .line 165
    .line 166
    .line 167
    :goto_2
    return-void

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lb7/g;->a:I

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
    invoke-virtual {p0}, Lb7/g;->a()V

    .line 10
    .line 11
    .line 12
    return-object v1

    .line 13
    :pswitch_0
    check-cast p1, [Ljava/lang/Void;

    .line 14
    .line 15
    invoke-virtual {p0}, Lb7/g;->a()V

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
    iget v0, p0, Lb7/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Void;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lb7/g;->b(Ljava/lang/Void;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lb7/g;->b(Ljava/lang/Void;)V

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
    .locals 3

    .line 1
    iget v0, p0, Lb7/g;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lb7/g;->b:Lpe/hf/black20/CatchupActivity;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 10
    .line 11
    .line 12
    iget-object v0, v2, Lpe/hf/black20/CatchupActivity;->N:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 19
    .line 20
    .line 21
    iget-object v0, v2, Lpe/hf/black20/CatchupActivity;->N:Landroid/widget/ProgressBar;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
