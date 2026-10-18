.class public final Ll/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ll/c;->G:I

    iput-object p2, p0, Ll/c;->I:Ljava/lang/Object;

    iput-object p3, p0, Ll/c;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll/o1;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Ll/c;->G:I

    .line 4
    iput-object p1, p0, Ll/c;->I:Ljava/lang/Object;

    .line 5
    new-instance v0, Lk/a;

    iget-object v1, p1, Ll/o1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Ll/o1;->h:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, p1}, Lk/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Ll/c;->H:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ll/c;->G:I

    .line 4
    .line 5
    const-string v2, "ORT_WHICH_PANEL"

    .line 6
    .line 7
    const-string v3, "xtreamcodes"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    iget-object v6, v0, Ll/c;->I:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v7, v0, Ll/c;->H:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v7, Landroid/app/AlertDialog;

    .line 19
    .line 20
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 21
    .line 22
    .line 23
    check-cast v6, Lpe/hf/black20/updatecontents/XCUpdateContents;

    .line 24
    .line 25
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    check-cast v7, Landroid/app/AlertDialog;

    .line 30
    .line 31
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 32
    .line 33
    .line 34
    check-cast v6, Lpe/hf/black20/updatecontents/M3UUpdateContents;

    .line 35
    .line 36
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    check-cast v7, Landroid/app/AlertDialog;

    .line 41
    .line 42
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 43
    .line 44
    .line 45
    check-cast v6, Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 46
    .line 47
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_2
    check-cast v7, Landroid/app/AlertDialog;

    .line 52
    .line 53
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 54
    .line 55
    .line 56
    check-cast v6, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;

    .line 57
    .line 58
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_3
    check-cast v7, Landroid/app/AlertDialog;

    .line 63
    .line 64
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 65
    .line 66
    .line 67
    check-cast v6, Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 68
    .line 69
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_4
    check-cast v7, Ljava/lang/String;

    .line 74
    .line 75
    const-string v1, "not_setup"

    .line 76
    .line 77
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    const-string v1, "m3u"

    .line 84
    .line 85
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    .line 91
    new-instance v1, Lk3/j;

    .line 92
    .line 93
    check-cast v6, Lpe/hf/black20/UsersHistoryActivity;

    .line 94
    .line 95
    invoke-direct {v1, v6}, Lk3/j;-><init>(Lpe/hf/black20/UsersHistoryActivity;)V

    .line 96
    .line 97
    .line 98
    new-array v2, v5, [Ljava/lang/Void;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    check-cast v6, Lpe/hf/black20/UsersHistoryActivity;

    .line 105
    .line 106
    const v1, 0x7f13001e

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v6, v1}, Lpe/hf/black20/UsersHistoryActivity;->b(Lpe/hf/black20/UsersHistoryActivity;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    new-instance v1, Lk3/j;

    .line 118
    .line 119
    check-cast v6, Lpe/hf/black20/UsersHistoryActivity;

    .line 120
    .line 121
    invoke-direct {v1, v6}, Lk3/j;-><init>(Lpe/hf/black20/UsersHistoryActivity;)V

    .line 122
    .line 123
    .line 124
    new-array v2, v5, [Ljava/lang/Void;

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    .line 128
    .line 129
    :goto_0
    return-void

    .line 130
    :pswitch_5
    invoke-static {v2, v3, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    const-string v8, ""

    .line 135
    .line 136
    if-eqz v1, :cond_8

    .line 137
    .line 138
    check-cast v6, Lpe/hf/black20/SeriesActivity;

    .line 139
    .line 140
    iget-object v1, v6, Lpe/hf/black20/SeriesActivity;->t0:Ljava/lang/String;

    .line 141
    .line 142
    const-string v2, "arr"

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_2

    .line 149
    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    iput v1, v6, Lpe/hf/black20/SeriesActivity;->u0:I

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iput-object v1, v6, Lpe/hf/black20/SeriesActivity;->p0:Ljava/lang/String;

    .line 174
    .line 175
    :goto_1
    iput-object v4, v6, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 176
    .line 177
    new-instance v1, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object v1, v6, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 183
    .line 184
    sget-object v1, Lpe/hf/black20/SeriesActivity;->B0:Landroid/widget/ListView;

    .line 185
    .line 186
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v6, Lpe/hf/black20/SeriesActivity;->t0:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    const-string v2, "direct_source"

    .line 196
    .line 197
    const-string v3, "container_extension"

    .line 198
    .line 199
    const-string v7, "title"

    .line 200
    .line 201
    const-string v9, "episode_num"

    .line 202
    .line 203
    const-string v10, "id"

    .line 204
    .line 205
    const-string v11, "info"

    .line 206
    .line 207
    const-string v12, "season"

    .line 208
    .line 209
    const-string v13, "plot"

    .line 210
    .line 211
    if-eqz v1, :cond_4

    .line 212
    .line 213
    sput-object v4, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 214
    .line 215
    new-instance v1, Lorg/json/JSONArray;

    .line 216
    .line 217
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 218
    .line 219
    .line 220
    sput-object v1, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 221
    .line 222
    :try_start_0
    sget-object v1, Lpe/hf/black20/SeriesActivity;->D0:Lorg/json/JSONArray;

    .line 223
    .line 224
    iget v14, v6, Lpe/hf/black20/SeriesActivity;->u0:I

    .line 225
    .line 226
    invoke-virtual {v1, v14}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    sput-object v1, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :catch_0
    nop

    .line 234
    :goto_2
    sget-object v1, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 235
    .line 236
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-ge v5, v1, :cond_7

    .line 241
    .line 242
    :try_start_1
    sget-object v1, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 243
    .line 244
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 245
    .line 246
    .line 247
    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 248
    :try_start_2
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v14

    .line 252
    if-eqz v14, :cond_3

    .line 253
    .line 254
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 255
    .line 256
    .line 257
    move-result-object v14

    .line 258
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 259
    .line 260
    .line 261
    move-result v15

    .line 262
    if-eqz v15, :cond_3

    .line 263
    .line 264
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 268
    goto :goto_3

    .line 269
    :catch_1
    :cond_3
    move-object v14, v8

    .line 270
    :goto_3
    :try_start_3
    new-instance v15, Ljava/util/HashMap;

    .line 271
    .line 272
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-virtual {v15, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-virtual {v15, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v15, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-virtual {v15, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v15, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    iget-object v1, v6, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 323
    .line 324
    .line 325
    :catch_2
    add-int/lit8 v5, v5, 0x1

    .line 326
    .line 327
    const/4 v4, 0x0

    .line 328
    goto :goto_2

    .line 329
    :cond_4
    :goto_4
    sget-object v1, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 330
    .line 331
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    if-ge v5, v1, :cond_7

    .line 336
    .line 337
    :try_start_4
    iget-object v1, v6, Lpe/hf/black20/SeriesActivity;->S:Lorg/json/JSONObject;

    .line 338
    .line 339
    iget-object v4, v6, Lpe/hf/black20/SeriesActivity;->p0:Ljava/lang/String;

    .line 340
    .line 341
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    sput-object v1, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 350
    .line 351
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    iget-object v4, v6, Lpe/hf/black20/SeriesActivity;->p0:Ljava/lang/String;

    .line 356
    .line 357
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v14

    .line 361
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 365
    if-eqz v4, :cond_6

    .line 366
    .line 367
    :try_start_5
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    if-eqz v4, :cond_5

    .line 372
    .line 373
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result v14

    .line 381
    if-eqz v14, :cond_5

    .line 382
    .line 383
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 387
    goto :goto_5

    .line 388
    :catch_3
    :cond_5
    move-object v4, v8

    .line 389
    :goto_5
    :try_start_6
    new-instance v14, Ljava/util/HashMap;

    .line 390
    .line 391
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v15

    .line 398
    invoke-virtual {v14, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v15

    .line 405
    invoke-virtual {v14, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v15

    .line 412
    invoke-virtual {v14, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v15

    .line 419
    invoke-virtual {v14, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v15

    .line 426
    invoke-virtual {v14, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v14, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-virtual {v14, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    iget-object v1, v6, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 440
    .line 441
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    .line 442
    .line 443
    .line 444
    :catch_4
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 445
    .line 446
    goto :goto_4

    .line 447
    :cond_7
    sget-object v1, Lpe/hf/black20/SeriesActivity;->B0:Landroid/widget/ListView;

    .line 448
    .line 449
    const/4 v2, 0x0

    .line 450
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 451
    .line 452
    .line 453
    new-instance v1, Lb7/t;

    .line 454
    .line 455
    iget-object v2, v6, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 456
    .line 457
    const/4 v3, 0x1

    .line 458
    invoke-direct {v1, v3, v6, v2}, Lb7/t;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    .line 459
    .line 460
    .line 461
    sget-object v2, Lpe/hf/black20/SeriesActivity;->B0:Landroid/widget/ListView;

    .line 462
    .line 463
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 464
    .line 465
    .line 466
    sget-object v1, Lpe/hf/black20/SeriesActivity;->B0:Landroid/widget/ListView;

    .line 467
    .line 468
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 469
    .line 470
    .line 471
    goto :goto_6

    .line 472
    :cond_8
    const-string v1, "otr"

    .line 473
    .line 474
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    const-string v2, "SEASON "

    .line 479
    .line 480
    if-eqz v1, :cond_9

    .line 481
    .line 482
    :try_start_7
    move-object v1, v6

    .line 483
    check-cast v1, Lpe/hf/black20/SeriesActivity;

    .line 484
    .line 485
    new-instance v3, Lorg/json/JSONArray;

    .line 486
    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    sget-object v4, Lpe/hf/black20/SeriesActivity;->x0:Lc7/a;

    .line 499
    .line 500
    invoke-virtual {v1, v3}, Lpe/hf/black20/SeriesActivity;->b(Lorg/json/JSONArray;)V

    .line 501
    .line 502
    .line 503
    check-cast v6, Lpe/hf/black20/SeriesActivity;

    .line 504
    .line 505
    check-cast v7, Landroid/widget/Button;

    .line 506
    .line 507
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    iput-object v1, v6, Lpe/hf/black20/SeriesActivity;->m0:Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5

    .line 520
    .line 521
    goto :goto_6

    .line 522
    :cond_9
    move-object/from16 v1, p1

    .line 523
    .line 524
    check-cast v1, Landroid/widget/Button;

    .line 525
    .line 526
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    check-cast v6, Lpe/hf/black20/SeriesActivity;

    .line 539
    .line 540
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 541
    .line 542
    .line 543
    move-result v1

    .line 544
    iput v1, v6, Lpe/hf/black20/SeriesActivity;->X:I

    .line 545
    .line 546
    new-instance v1, Lb7/B1;

    .line 547
    .line 548
    const/4 v2, 0x0

    .line 549
    invoke-direct {v1, v6, v2}, Lb7/B1;-><init>(Lpe/hf/black20/SeriesActivity;Ljava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    new-array v2, v5, [Ljava/lang/Void;

    .line 553
    .line 554
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 555
    .line 556
    .line 557
    :catch_5
    :goto_6
    return-void

    .line 558
    :pswitch_6
    check-cast v7, Landroid/app/AlertDialog;

    .line 559
    .line 560
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 561
    .line 562
    .line 563
    new-instance v1, Lk3/j;

    .line 564
    .line 565
    check-cast v6, Lpe/hf/black20/ProgramRemindersActivity;

    .line 566
    .line 567
    invoke-direct {v1, v6}, Lk3/j;-><init>(Lpe/hf/black20/ProgramRemindersActivity;)V

    .line 568
    .line 569
    .line 570
    new-array v2, v5, [Ljava/lang/Void;

    .line 571
    .line 572
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 573
    .line 574
    .line 575
    return-void

    .line 576
    :pswitch_7
    check-cast v7, Landroid/app/AlertDialog;

    .line 577
    .line 578
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 579
    .line 580
    .line 581
    return-void

    .line 582
    :pswitch_8
    check-cast v7, Landroid/app/AlertDialog;

    .line 583
    .line 584
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 585
    .line 586
    .line 587
    return-void

    .line 588
    :pswitch_9
    check-cast v7, Landroid/app/AlertDialog;

    .line 589
    .line 590
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 591
    .line 592
    .line 593
    return-void

    .line 594
    :pswitch_a
    check-cast v7, Landroid/app/AlertDialog;

    .line 595
    .line 596
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 597
    .line 598
    .line 599
    return-void

    .line 600
    :pswitch_b
    check-cast v7, Landroid/app/AlertDialog;

    .line 601
    .line 602
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 603
    .line 604
    .line 605
    return-void

    .line 606
    :pswitch_c
    check-cast v7, Landroid/app/AlertDialog;

    .line 607
    .line 608
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 609
    .line 610
    .line 611
    return-void

    .line 612
    :pswitch_d
    check-cast v7, Landroid/app/AlertDialog;

    .line 613
    .line 614
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 615
    .line 616
    .line 617
    return-void

    .line 618
    :pswitch_e
    check-cast v7, Landroid/app/AlertDialog;

    .line 619
    .line 620
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 621
    .line 622
    .line 623
    return-void

    .line 624
    :pswitch_f
    check-cast v7, Landroid/app/AlertDialog;

    .line 625
    .line 626
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 627
    .line 628
    .line 629
    return-void

    .line 630
    :pswitch_10
    check-cast v7, Landroid/app/AlertDialog;

    .line 631
    .line 632
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 633
    .line 634
    .line 635
    return-void

    .line 636
    :pswitch_11
    check-cast v7, Landroid/app/AlertDialog;

    .line 637
    .line 638
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 639
    .line 640
    .line 641
    return-void

    .line 642
    :pswitch_12
    check-cast v6, LW4/e;

    .line 643
    .line 644
    iget-object v1, v6, LW4/e;->G:LV4/D;

    .line 645
    .line 646
    if-nez v1, :cond_a

    .line 647
    .line 648
    check-cast v7, Landroid/app/Activity;

    .line 649
    .line 650
    const-string v1, "Dismissing fiam"

    .line 651
    .line 652
    invoke-static {v1}, Ly4/k;->S(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v6, v7}, LW4/e;->a(Landroid/app/Activity;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    .line 660
    .line 661
    const/4 v2, 0x0

    .line 662
    iput-object v2, v6, LW4/e;->G:LV4/D;

    .line 663
    .line 664
    return-void

    .line 665
    :cond_a
    const/4 v2, 0x0

    .line 666
    check-cast v1, LM1/a;

    .line 667
    .line 668
    invoke-virtual {v1}, LM1/a;->c()V

    .line 669
    .line 670
    .line 671
    throw v2

    .line 672
    :pswitch_13
    check-cast v6, Ll/o1;

    .line 673
    .line 674
    iget-object v1, v6, Ll/o1;->k:Landroid/view/Window$Callback;

    .line 675
    .line 676
    if-eqz v1, :cond_b

    .line 677
    .line 678
    iget-boolean v2, v6, Ll/o1;->l:Z

    .line 679
    .line 680
    if-eqz v2, :cond_b

    .line 681
    .line 682
    check-cast v7, Lk/a;

    .line 683
    .line 684
    invoke-interface {v1, v5, v7}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 685
    .line 686
    .line 687
    :cond_b
    return-void

    .line 688
    :pswitch_14
    check-cast v7, Lj/b;

    .line 689
    .line 690
    invoke-virtual {v7}, Lj/b;->a()V

    .line 691
    .line 692
    .line 693
    return-void

    .line 694
    nop

    .line 695
    :pswitch_data_0
    .packed-switch 0x0
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
