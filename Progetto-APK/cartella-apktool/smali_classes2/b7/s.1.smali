.class public final Lb7/s;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpe/hf/black20/CategoriesActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/CategoriesActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb7/s;->a:I

    invoke-direct {p0, p1, v0}, Lb7/s;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/CategoriesActivity;I)V
    .locals 0

    .line 2
    iput p2, p0, Lb7/s;->a:I

    iput-object p1, p0, Lb7/s;->b:Lpe/hf/black20/CategoriesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/CategoriesActivity;Ljava/lang/Object;)V
    .locals 0

    .line 3
    const/4 p2, 0x1

    iput p2, p0, Lb7/s;->a:I

    invoke-direct {p0, p1, p2}, Lb7/s;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb7/s;->a:I

    .line 4
    .line 5
    iget-object v2, v0, Lb7/s;->b:Lpe/hf/black20/CategoriesActivity;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    check-cast v1, [Ljava/lang/Void;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v4, v2, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 21
    .line 22
    iget-object v4, v4, Lh7/i;->e:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v4}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v4, "/server/query_user_days_left?token="

    .line 32
    .line 33
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v4, v2, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    const-string v5, "token"

    .line 39
    .line 40
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v4}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :try_start_0
    new-instance v4, LF2/G;

    .line 56
    .line 57
    const/4 v5, 0x5

    .line 58
    invoke-direct {v4, v5}, LF2/G;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v1}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, v2, Lpe/hf/black20/CategoriesActivity;->Z:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    :catch_0
    return-object v3

    .line 68
    :pswitch_0
    move-object/from16 v1, p1

    .line 69
    .line 70
    check-cast v1, [Ljava/lang/Void;

    .line 71
    .line 72
    const-string v1, "/"

    .line 73
    .line 74
    const-string v4, "direct_source"

    .line 75
    .line 76
    const-string v5, "stream_id"

    .line 77
    .line 78
    const-string v6, "ORT_LAST_CHANNEL_NAME"

    .line 79
    .line 80
    const-string v7, "ORT_LAST_CATEGORY_ID"

    .line 81
    .line 82
    iget-object v8, v2, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 83
    .line 84
    iget-object v8, v8, Lh7/i;->c:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v8}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    iget-object v9, v2, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 91
    .line 92
    iget-object v9, v9, Lh7/i;->d:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v9}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    iget-boolean v10, v2, Lpe/hf/black20/CategoriesActivity;->v0:Z

    .line 99
    .line 100
    iget-object v11, v2, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 101
    .line 102
    const-string v12, "default"

    .line 103
    .line 104
    const-string v13, "all"

    .line 105
    .line 106
    const/4 v14, 0x0

    .line 107
    const-string v15, ""

    .line 108
    .line 109
    if-eqz v10, :cond_0

    .line 110
    .line 111
    const-string v10, "0"

    .line 112
    .line 113
    invoke-static {v11, v14, v13, v12, v10}, Lz4/q0;->u(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    iput-object v10, v2, Lpe/hf/black20/CategoriesActivity;->w0:Ljava/util/ArrayList;

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_0
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    const-string v3, "ORT_program_reminder_Category_id"

    .line 125
    .line 126
    invoke-virtual {v10, v3, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-static {v11, v14, v13, v12, v3}, Lz4/q0;->u(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iput-object v3, v2, Lpe/hf/black20/CategoriesActivity;->w0:Ljava/util/ArrayList;

    .line 135
    .line 136
    :goto_0
    const/4 v3, 0x0

    .line 137
    :goto_1
    iget-object v10, v2, Lpe/hf/black20/CategoriesActivity;->w0:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    if-ge v3, v10, :cond_7

    .line 144
    .line 145
    :try_start_1
    iget-boolean v10, v2, Lpe/hf/black20/CategoriesActivity;->v0:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    .line 146
    .line 147
    const-string v14, "name"

    .line 148
    .line 149
    if-eqz v10, :cond_5

    .line 150
    .line 151
    :try_start_2
    iget-object v10, v2, Lpe/hf/black20/CategoriesActivity;->w0:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    check-cast v10, Ljava/util/HashMap;

    .line 158
    .line 159
    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    check-cast v10, Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0, v6, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_4

    .line 186
    .line 187
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iget-object v10, v2, Lpe/hf/black20/CategoriesActivity;->w0:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    check-cast v10, Ljava/util/HashMap;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8

    .line 198
    .line 199
    move-object/from16 v16, v9

    .line 200
    .line 201
    :try_start_3
    const-string v9, "category_id"

    .line 202
    .line 203
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    check-cast v9, Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v0, v7, v9}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 210
    .line 211
    .line 212
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const-string v9, "ORT_LAST_CATEGORY_NAME"

    .line 217
    .line 218
    iget-object v10, v2, Lpe/hf/black20/CategoriesActivity;->L:Lc7/d;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7

    .line 219
    .line 220
    move-object/from16 v17, v1

    .line 221
    .line 222
    :try_start_4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v1, v7, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v10, v1}, Lc7/d;->G0(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v0, v9, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 235
    .line 236
    .line 237
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0, v7, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    const/4 v1, 0x0

    .line 246
    invoke-static {v11, v1, v13, v12, v0}, Lz4/q0;->u(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iput-object v0, v2, Lpe/hf/black20/CategoriesActivity;->x0:Ljava/util/ArrayList;

    .line 251
    .line 252
    const/4 v0, 0x0

    .line 253
    iput-object v0, v2, Lpe/hf/black20/CategoriesActivity;->y0:Lorg/json/JSONArray;

    .line 254
    .line 255
    new-instance v0, Lorg/json/JSONArray;

    .line 256
    .line 257
    iget-object v9, v2, Lpe/hf/black20/CategoriesActivity;->x0:Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-direct {v0, v9}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 260
    .line 261
    .line 262
    iput-object v0, v2, Lpe/hf/black20/CategoriesActivity;->y0:Lorg/json/JSONArray;

    .line 263
    .line 264
    const/4 v0, 0x0

    .line 265
    :goto_2
    iget-object v9, v2, Lpe/hf/black20/CategoriesActivity;->y0:Lorg/json/JSONArray;

    .line 266
    .line 267
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    .line 268
    .line 269
    .line 270
    move-result v9

    .line 271
    if-ge v0, v9, :cond_3

    .line 272
    .line 273
    iget-object v9, v2, Lpe/hf/black20/CategoriesActivity;->y0:Lorg/json/JSONArray;

    .line 274
    .line 275
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v1, v6, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-eqz v1, :cond_2

    .line 304
    .line 305
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    const-string v10, "ORT_LAST_CHANNEL_POS"
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 310
    .line 311
    move-object/from16 v18, v6

    .line 312
    .line 313
    :try_start_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    invoke-virtual {v1, v10, v6}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 318
    .line 319
    .line 320
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    const-string v6, "ORT_LAST_STREAM_ID"

    .line 325
    .line 326
    iget-object v10, v2, Lpe/hf/black20/CategoriesActivity;->w0:Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v10

    .line 332
    check-cast v10, Ljava/util/HashMap;

    .line 333
    .line 334
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    check-cast v10, Ljava/lang/String;

    .line 339
    .line 340
    invoke-virtual {v1, v6, v10}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 351
    const-string v6, "ORT_LAST_STREAM_URL"

    .line 352
    .line 353
    if-eqz v1, :cond_1

    .line 354
    .line 355
    :try_start_6
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    new-instance v10, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    .line 362
    .line 363
    .line 364
    move-object/from16 v19, v7

    .line 365
    .line 366
    :try_start_7
    iget-object v7, v2, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 367
    .line 368
    iget-object v7, v7, Lh7/i;->e:Ljava/lang/String;

    .line 369
    .line 370
    invoke-static {v7}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    const-string v7, "/live/"

    .line 378
    .line 379
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    .line 383
    .line 384
    .line 385
    move-object/from16 v7, v17

    .line 386
    .line 387
    :try_start_8
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    .line 388
    .line 389
    .line 390
    move-object/from16 v17, v8

    .line 391
    .line 392
    move-object/from16 v8, v16

    .line 393
    .line 394
    :try_start_9
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v9

    .line 404
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string v9, "."

    .line 408
    .line 409
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    iget-object v9, v2, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    .line 413
    .line 414
    move-object/from16 v16, v5

    .line 415
    .line 416
    :try_start_a
    const-string v5, "streamFormat"
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    .line 417
    .line 418
    move-object/from16 v20, v7

    .line 419
    .line 420
    const/4 v7, 0x0

    .line 421
    :try_start_b
    invoke-interface {v9, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    invoke-virtual {v1, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 433
    .line 434
    .line 435
    goto :goto_4

    .line 436
    :catch_1
    :goto_3
    move-object/from16 v20, v7

    .line 437
    .line 438
    goto/16 :goto_6

    .line 439
    .line 440
    :catch_2
    move-object/from16 v16, v5

    .line 441
    .line 442
    goto :goto_3

    .line 443
    :catch_3
    move-object/from16 v20, v7

    .line 444
    .line 445
    goto :goto_5

    .line 446
    :cond_1
    move-object/from16 v19, v7

    .line 447
    .line 448
    move-object/from16 v20, v17

    .line 449
    .line 450
    move-object/from16 v17, v8

    .line 451
    .line 452
    move-object/from16 v8, v16

    .line 453
    .line 454
    move-object/from16 v16, v5

    .line 455
    .line 456
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    invoke-virtual {v1, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 465
    .line 466
    .line 467
    goto :goto_4

    .line 468
    :cond_2
    move-object/from16 v18, v6

    .line 469
    .line 470
    move-object/from16 v19, v7

    .line 471
    .line 472
    move-object/from16 v20, v17

    .line 473
    .line 474
    move-object/from16 v17, v8

    .line 475
    .line 476
    move-object/from16 v8, v16

    .line 477
    .line 478
    move-object/from16 v16, v5

    .line 479
    .line 480
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 481
    .line 482
    move-object/from16 v5, v16

    .line 483
    .line 484
    move-object/from16 v6, v18

    .line 485
    .line 486
    move-object/from16 v7, v19

    .line 487
    .line 488
    const/4 v1, 0x0

    .line 489
    move-object/from16 v16, v8

    .line 490
    .line 491
    move-object/from16 v8, v17

    .line 492
    .line 493
    move-object/from16 v17, v20

    .line 494
    .line 495
    goto/16 :goto_2

    .line 496
    .line 497
    :catch_4
    :cond_3
    move-object/from16 v18, v6

    .line 498
    .line 499
    :catch_5
    move-object/from16 v19, v7

    .line 500
    .line 501
    :catch_6
    move-object/from16 v20, v17

    .line 502
    .line 503
    :goto_5
    move-object/from16 v17, v8

    .line 504
    .line 505
    move-object/from16 v8, v16

    .line 506
    .line 507
    move-object/from16 v16, v5

    .line 508
    .line 509
    goto :goto_6

    .line 510
    :catch_7
    move-object/from16 v20, v1

    .line 511
    .line 512
    move-object/from16 v18, v6

    .line 513
    .line 514
    move-object/from16 v19, v7

    .line 515
    .line 516
    goto :goto_5

    .line 517
    :catch_8
    :cond_4
    move-object/from16 v20, v1

    .line 518
    .line 519
    move-object/from16 v16, v5

    .line 520
    .line 521
    move-object/from16 v18, v6

    .line 522
    .line 523
    move-object/from16 v19, v7

    .line 524
    .line 525
    move-object/from16 v17, v8

    .line 526
    .line 527
    move-object v8, v9

    .line 528
    goto :goto_6

    .line 529
    :cond_5
    move-object/from16 v20, v1

    .line 530
    .line 531
    move-object/from16 v16, v5

    .line 532
    .line 533
    move-object/from16 v18, v6

    .line 534
    .line 535
    move-object/from16 v19, v7

    .line 536
    .line 537
    move-object/from16 v17, v8

    .line 538
    .line 539
    move-object v8, v9

    .line 540
    iget-object v0, v2, Lpe/hf/black20/CategoriesActivity;->w0:Ljava/util/ArrayList;

    .line 541
    .line 542
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    check-cast v0, Ljava/util/HashMap;

    .line 547
    .line 548
    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    check-cast v0, Ljava/lang/String;

    .line 553
    .line 554
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    const-string v5, "ORT_program_reminder_Channel_name"

    .line 559
    .line 560
    invoke-virtual {v1, v5, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    if-eqz v0, :cond_6

    .line 569
    .line 570
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    const-string v1, "ORT_program_reminder_channel_pos"

    .line 575
    .line 576
    invoke-virtual {v0, v3, v1}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_9

    .line 577
    .line 578
    .line 579
    :catch_9
    :cond_6
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 580
    .line 581
    move-object/from16 v0, p0

    .line 582
    .line 583
    move-object v9, v8

    .line 584
    move-object/from16 v5, v16

    .line 585
    .line 586
    move-object/from16 v8, v17

    .line 587
    .line 588
    move-object/from16 v6, v18

    .line 589
    .line 590
    move-object/from16 v7, v19

    .line 591
    .line 592
    move-object/from16 v1, v20

    .line 593
    .line 594
    const/4 v14, 0x0

    .line 595
    goto/16 :goto_1

    .line 596
    .line 597
    :cond_7
    const/4 v0, 0x0

    .line 598
    return-object v0

    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget v0, p0, Lb7/s;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    iget-object v3, p0, Lb7/s;->b:Lpe/hf/black20/CategoriesActivity;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, v3, Lpe/hf/black20/CategoriesActivity;->Z:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-string v0, "daysleft="

    .line 21
    .line 22
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, v3, Lpe/hf/black20/CategoriesActivity;->Z:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, " "

    .line 29
    .line 30
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, v3, Lpe/hf/black20/CategoriesActivity;->Z:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, v3, Lpe/hf/black20/CategoriesActivity;->Z:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 47
    .line 48
    const-string v2, "EEE, MMM dd, yyyy"

    .line 49
    .line 50
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Ljava/util/Date;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 63
    .line 64
    .line 65
    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :catch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 71
    .line 72
    .line 73
    mul-int/lit8 p1, p1, 0x18

    .line 74
    .line 75
    const/16 v1, 0xb

    .line 76
    .line 77
    invoke-virtual {v2, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 78
    .line 79
    .line 80
    iget-object p1, v3, Lpe/hf/black20/CategoriesActivity;->s0:Landroid/widget/TextView;

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const v4, 0x7f1301ca

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v3, ": "

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    :cond_0
    return-void

    .line 121
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    .line 122
    .line 123
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget-boolean p1, v3, Lpe/hf/black20/CategoriesActivity;->v0:Z

    .line 127
    .line 128
    iget-object v0, v3, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 129
    .line 130
    const-string v4, "TV"

    .line 131
    .line 132
    const-string v5, "ORT_WHICH_CAT"

    .line 133
    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const-string v1, "ORT_LAST_STREAM_URL"

    .line 141
    .line 142
    invoke-virtual {p1, v1, v2}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    const/4 v1, 0x0

    .line 151
    if-nez p1, :cond_1

    .line 152
    .line 153
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p1, v5, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 158
    .line 159
    .line 160
    iput-boolean v1, v3, Lpe/hf/black20/CategoriesActivity;->v0:Z

    .line 161
    .line 162
    new-instance p1, Landroid/content/Intent;

    .line 163
    .line 164
    const-class v1, Lpe/hf/black20/ChannelListActivity;

    .line 165
    .line 166
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .line 168
    .line 169
    const-string v0, "forFavorNot"

    .line 170
    .line 171
    const-string v1, "no"

    .line 172
    .line 173
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :cond_1
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    const-string v0, "ORT_isLoadLastLiveTVChannel"

    .line 186
    .line 187
    invoke-virtual {p1, v0, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 188
    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :cond_2
    iget-object p1, v3, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 193
    .line 194
    iget-object p1, p1, Lh7/i;->c:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {p1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iget-object v6, v3, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 201
    .line 202
    iget-object v6, v6, Lh7/i;->d:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v6}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    invoke-virtual {v7, v5, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    const-string v7, "ORT_program_reminder_Category_name"

    .line 224
    .line 225
    invoke-virtual {v5, v7, v2}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    const-string v7, "ORT_CAT_NAME"

    .line 230
    .line 231
    invoke-virtual {v4, v7, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 232
    .line 233
    .line 234
    new-instance v4, Landroid/content/Intent;

    .line 235
    .line 236
    const-class v5, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 237
    .line 238
    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .line 240
    .line 241
    const-string v5, "ORT_program_reminder_Direct_source"

    .line 242
    .line 243
    invoke-static {v5, v2, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    const-string v8, "ORT_program_reminder_Stream_id"

    .line 248
    .line 249
    const-string v9, "streamurl"

    .line 250
    .line 251
    if-eqz v7, :cond_3

    .line 252
    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    iget-object v7, v3, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 259
    .line 260
    iget-object v7, v7, Lh7/i;->e:Ljava/lang/String;

    .line 261
    .line 262
    invoke-static {v7}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v7, "/live/"

    .line 270
    .line 271
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string p1, "/"

    .line 278
    .line 279
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-static {v5, v6, p1}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-static {p1}, Lcom/google/protobuf/U2;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    const-string v5, "."

    .line 291
    .line 292
    invoke-static {v8, v2, p1, v5}, Lcom/google/protobuf/U2;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v3, v3, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 296
    .line 297
    const-string v5, "streamFormat"

    .line 298
    .line 299
    invoke-static {v3, v5, v1, p1}, Lcom/google/protobuf/U2;->h(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-virtual {v4, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    .line 305
    .line 306
    goto :goto_0

    .line 307
    :cond_3
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-virtual {p1, v5, v2}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {v4, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    .line 317
    .line 318
    :goto_0
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    const-string v1, "ORT_program_reminder_Channel_name"

    .line 323
    .line 324
    invoke-virtual {p1, v1, v2}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    const-string v1, "name"

    .line 329
    .line 330
    invoke-virtual {v4, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    .line 332
    .line 333
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-virtual {p1, v8, v2}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    const-string v1, "stream_id"

    .line 342
    .line 343
    invoke-virtual {v4, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    .line 345
    .line 346
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    const-string v1, "ORT_program_reminder_channel_pos"

    .line 351
    .line 352
    invoke-virtual {p1, v1}, LQ5/a;->b(Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    const-string v1, "position"

    .line 361
    .line 362
    invoke-virtual {v4, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 366
    .line 367
    .line 368
    :goto_1
    return-void

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreExecute()V
    .locals 5

    .line 1
    iget v0, p0, Lb7/s;->a:I

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
    iget-object v0, p0, Lb7/s;->b:Lpe/hf/black20/CategoriesActivity;

    .line 14
    .line 15
    iget-boolean v1, v0, Lpe/hf/black20/CategoriesActivity;->v0:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, v0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    const-string v3, "last_profile"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "ORT_LAST_PROFILE"

    .line 33
    .line 34
    invoke-virtual {v1, v3, v2}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v0, v0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 42
    .line 43
    const-string v2, "last_channel_name"

    .line 44
    .line 45
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "ORT_LAST_CHANNEL_NAME"

    .line 50
    .line 51
    invoke-virtual {v1, v2, v0}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
