.class public final Ll7/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpe/hf/black20/updatecontents/EZServerUpdateContents;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/updatecontents/EZServerUpdateContents;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Ll7/b;->a:I

    invoke-direct {p0, p1, v0}, Ll7/b;-><init>(Lpe/hf/black20/updatecontents/EZServerUpdateContents;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/updatecontents/EZServerUpdateContents;I)V
    .locals 0

    .line 2
    iput p2, p0, Ll7/b;->a:I

    iput-object p1, p0, Ll7/b;->b:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/updatecontents/EZServerUpdateContents;Lcom/google/protobuf/U2;)V
    .locals 0

    .line 3
    const/4 p2, 0x5

    iput p2, p0, Ll7/b;->a:I

    invoke-direct {p0, p1, p2}, Ll7/b;-><init>(Lpe/hf/black20/updatecontents/EZServerUpdateContents;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/updatecontents/EZServerUpdateContents;Ljava/lang/Object;)V
    .locals 0

    .line 4
    const/4 p2, 0x3

    iput p2, p0, Ll7/b;->a:I

    invoke-direct {p0, p1, p2}, Ll7/b;-><init>(Lpe/hf/black20/updatecontents/EZServerUpdateContents;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/updatecontents/EZServerUpdateContents;Ll7/a;)V
    .locals 0

    .line 5
    const/4 p2, 0x6

    iput p2, p0, Ll7/b;->a:I

    invoke-direct {p0, p1, p2}, Ll7/b;-><init>(Lpe/hf/black20/updatecontents/EZServerUpdateContents;I)V

    return-void
.end method


# virtual methods
.method public final varargs a()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ll7/b;->a:I

    .line 4
    .line 5
    const-string v2, "category="

    .line 6
    .line 7
    const-string v3, "category_id"

    .line 8
    .line 9
    const-string v4, "file:/"

    .line 10
    .line 11
    const-string v5, "file"

    .line 12
    .line 13
    const-string v6, "name"

    .line 14
    .line 15
    const-string v8, "num"

    .line 16
    .line 17
    const-string v9, "\\n"

    .line 18
    .line 19
    const-string v11, ""

    .line 20
    .line 21
    const-string v12, "[\\r\\n]+"

    .line 22
    .line 23
    const-string v13, "%20"

    .line 24
    .line 25
    const-string v14, " "

    .line 26
    .line 27
    const-string v15, "token"

    .line 28
    .line 29
    iget-object v7, v0, Ll7/b;->b:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 30
    .line 31
    const/16 v16, 0x1

    .line 32
    .line 33
    const/4 v10, 0x0

    .line 34
    packed-switch v1, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    :pswitch_0
    const-string v1, "name="

    .line 38
    .line 39
    const-string v0, "CH="

    .line 40
    .line 41
    iput-object v10, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->M:Ljava/util/ArrayList;

    .line 42
    .line 43
    new-instance v10, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v10, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->M:Ljava/util/ArrayList;

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    iput-object v10, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->S:Lorg/json/JSONArray;

    .line 52
    .line 53
    new-instance v10, Lorg/json/JSONArray;

    .line 54
    .line 55
    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v10, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->S:Lorg/json/JSONArray;

    .line 59
    .line 60
    new-instance v10, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    move-object/from16 v19, v3

    .line 66
    .line 67
    iget-object v3, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->J:Lh7/i;

    .line 68
    .line 69
    iget-object v3, v3, Lh7/i;->e:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v3}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v3, "/server/get_channel_list?token="

    .line 79
    .line 80
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v3, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 84
    .line 85
    move-object/from16 v20, v2

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    invoke-interface {v3, v15, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, "&mine=1"

    .line 100
    .line 101
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2, v14, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    :try_start_0
    new-instance v3, LF2/G;

    .line 117
    .line 118
    const/4 v10, 0x5

    .line 119
    invoke-direct {v3, v10}, LF2/G;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v2}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const-string v3, "channel--CH="

    .line 127
    .line 128
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    const-string v3, "channel--"

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const/4 v3, 0x1

    .line 139
    :goto_0
    array-length v10, v2

    .line 140
    if-ge v3, v10, :cond_2

    .line 141
    .line 142
    aget-object v10, v2, v3

    .line 143
    .line 144
    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    new-instance v12, Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 151
    .line 152
    .line 153
    move-object/from16 v21, v13

    .line 154
    .line 155
    const/4 v15, 0x0

    .line 156
    aget-object v13, v10, v15

    .line 157
    .line 158
    invoke-virtual {v13, v0, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    invoke-virtual {v12, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    const-string v13, "stream_id"

    .line 166
    .line 167
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v15

    .line 171
    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    aget-object v13, v10, v16

    .line 175
    .line 176
    invoke-virtual {v13, v1, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v13

    .line 180
    invoke-virtual {v12, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    const-string v13, "stream_type"

    .line 184
    .line 185
    const-string v15, "live"

    .line 186
    .line 187
    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    const-string v13, "epg_channel_id"

    .line 191
    .line 192
    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    const-string v13, "added"

    .line 196
    .line 197
    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    const-string v13, "custom_sid"

    .line 201
    .line 202
    const-string v15, "0"

    .line 203
    .line 204
    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    const-string v13, "tv_archive"

    .line 208
    .line 209
    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    const-string v13, "tv_archive_duration"

    .line 213
    .line 214
    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    aget-object v13, v2, v3

    .line 218
    .line 219
    const-string v15, "icon="

    .line 220
    .line 221
    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v13

    .line 225
    aget-object v13, v13, v16

    .line 226
    .line 227
    invoke-virtual {v13, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v13

    .line 231
    array-length v15, v13

    .line 232
    if-lez v15, :cond_1

    .line 233
    .line 234
    const/4 v15, 0x0

    .line 235
    aget-object v13, v13, v15

    .line 236
    .line 237
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v15

    .line 241
    invoke-virtual {v15, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 242
    .line 243
    .line 244
    move-result v15

    .line 245
    if-eqz v15, :cond_0

    .line 246
    .line 247
    invoke-virtual {v13, v4, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v13

    .line 251
    new-instance v15, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    move-object/from16 v17, v0

    .line 257
    .line 258
    iget-object v0, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->J:Lh7/i;

    .line 259
    .line 260
    iget-object v0, v0, Lh7/i;->e:Ljava/lang/String;

    .line 261
    .line 262
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v13

    .line 276
    goto :goto_1

    .line 277
    :cond_0
    move-object/from16 v17, v0

    .line 278
    .line 279
    goto :goto_1

    .line 280
    :cond_1
    move-object/from16 v17, v0

    .line 281
    .line 282
    move-object v13, v11

    .line 283
    :goto_1
    const-string v0, "stream_icon"

    .line 284
    .line 285
    invoke-virtual {v12, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    const/4 v0, 0x4

    .line 289
    aget-object v0, v10, v0

    .line 290
    .line 291
    move-object/from16 v13, v20

    .line 292
    .line 293
    invoke-virtual {v0, v13, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    move-object/from16 v15, v19

    .line 298
    .line 299
    invoke-virtual {v12, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    const-string v0, "status"

    .line 303
    .line 304
    const/16 v18, 0x6

    .line 305
    .line 306
    move-object/from16 v19, v2

    .line 307
    .line 308
    aget-object v2, v10, v18

    .line 309
    .line 310
    move-object/from16 v18, v15

    .line 311
    .line 312
    const-string v15, "status="

    .line 313
    .line 314
    invoke-virtual {v2, v15, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {v12, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    aget-object v0, v10, v16

    .line 322
    .line 323
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    iget-object v2, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->J:Lh7/i;

    .line 328
    .line 329
    iget-object v2, v2, Lh7/i;->c:Ljava/lang/String;

    .line 330
    .line 331
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    iget-object v10, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->J:Lh7/i;

    .line 336
    .line 337
    iget-object v10, v10, Lh7/i;->d:Ljava/lang/String;

    .line 338
    .line 339
    invoke-static {v10}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v10

    .line 343
    new-instance v15, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    move-object/from16 v20, v1

    .line 349
    .line 350
    iget-object v1, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->Y:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v1, ":"

    .line 356
    .line 357
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    iget-object v1, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->X:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string v1, "/"

    .line 366
    .line 367
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string v0, "?u="

    .line 374
    .line 375
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const-string v0, ":p="

    .line 382
    .line 383
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    const-string v1, "\n"

    .line 394
    .line 395
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    const-string v1, "\r"

    .line 400
    .line 401
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    move-object/from16 v1, v21

    .line 406
    .line 407
    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    const-string v2, "direct_source"

    .line 412
    .line 413
    invoke-virtual {v12, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    iget-object v0, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->M:Ljava/util/ArrayList;

    .line 417
    .line 418
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .line 420
    .line 421
    add-int/lit8 v3, v3, 0x1

    .line 422
    .line 423
    move-object/from16 v0, v17

    .line 424
    .line 425
    move-object/from16 v2, v19

    .line 426
    .line 427
    move-object/from16 v19, v18

    .line 428
    .line 429
    move-object/from16 v22, v13

    .line 430
    .line 431
    move-object v13, v1

    .line 432
    move-object/from16 v1, v20

    .line 433
    .line 434
    move-object/from16 v20, v22

    .line 435
    .line 436
    goto/16 :goto_0

    .line 437
    .line 438
    :catch_0
    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    .line 439
    .line 440
    iget-object v1, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->M:Ljava/util/ArrayList;

    .line 441
    .line 442
    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 443
    .line 444
    .line 445
    iput-object v0, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->S:Lorg/json/JSONArray;

    .line 446
    .line 447
    return-void

    .line 448
    :pswitch_1
    move-object v0, v3

    .line 449
    move-object v1, v13

    .line 450
    move-object v13, v2

    .line 451
    const-string v2, "series="

    .line 452
    .line 453
    const/4 v3, 0x0

    .line 454
    iput-object v3, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->O:Ljava/util/ArrayList;

    .line 455
    .line 456
    new-instance v10, Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .line 460
    .line 461
    iput-object v10, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->O:Ljava/util/ArrayList;

    .line 462
    .line 463
    iput-object v3, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->V:Lorg/json/JSONArray;

    .line 464
    .line 465
    new-instance v3, Lorg/json/JSONArray;

    .line 466
    .line 467
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 468
    .line 469
    .line 470
    iput-object v3, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->V:Lorg/json/JSONArray;

    .line 471
    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    iget-object v10, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->J:Lh7/i;

    .line 478
    .line 479
    iget-object v10, v10, Lh7/i;->e:Ljava/lang/String;

    .line 480
    .line 481
    invoke-static {v10}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v10

    .line 485
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    const-string v10, "/server/get_series?token="

    .line 489
    .line 490
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    iget-object v10, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 494
    .line 495
    move-object/from16 v19, v0

    .line 496
    .line 497
    const/4 v0, 0x0

    .line 498
    invoke-interface {v10, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string v0, "&position=0&limit=1000"

    .line 510
    .line 511
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-virtual {v0, v12, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    :try_start_1
    new-instance v1, LF2/G;

    .line 527
    .line 528
    const/4 v3, 0x5

    .line 529
    invoke-direct {v1, v3}, LF2/G;-><init>(I)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v1, v0}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    const-string v1, "serieslist--series="

    .line 537
    .line 538
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    const-string v1, "serieslist--"

    .line 543
    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    const/4 v1, 0x1

    .line 549
    :goto_2
    array-length v3, v0

    .line 550
    if-ge v1, v3, :cond_5

    .line 551
    .line 552
    iget v3, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->Z:I

    .line 553
    .line 554
    add-int/lit8 v3, v3, 0x1

    .line 555
    .line 556
    iput v3, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->Z:I

    .line 557
    .line 558
    aget-object v3, v0, v1

    .line 559
    .line 560
    const-string v10, "img="

    .line 561
    .line 562
    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    aget-object v3, v3, v16

    .line 567
    .line 568
    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    array-length v10, v3

    .line 573
    if-lez v10, :cond_3

    .line 574
    .line 575
    const/4 v10, 0x0

    .line 576
    aget-object v3, v3, v10

    .line 577
    .line 578
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v10

    .line 582
    invoke-virtual {v10, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 583
    .line 584
    .line 585
    move-result v10

    .line 586
    if-eqz v10, :cond_4

    .line 587
    .line 588
    invoke-virtual {v3, v4, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    new-instance v10, Ljava/lang/StringBuilder;

    .line 593
    .line 594
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    .line 596
    .line 597
    iget-object v12, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->J:Lh7/i;

    .line 598
    .line 599
    iget-object v12, v12, Lh7/i;->e:Ljava/lang/String;

    .line 600
    .line 601
    invoke-static {v12}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v12

    .line 605
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    goto :goto_3

    .line 616
    :cond_3
    move-object v3, v11

    .line 617
    :cond_4
    :goto_3
    aget-object v10, v0, v1

    .line 618
    .line 619
    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v10

    .line 623
    new-instance v12, Ljava/util/HashMap;

    .line 624
    .line 625
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 626
    .line 627
    .line 628
    iget v14, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->Z:I

    .line 629
    .line 630
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v14

    .line 634
    invoke-virtual {v12, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    const/4 v14, 0x0

    .line 638
    aget-object v15, v10, v14

    .line 639
    .line 640
    invoke-virtual {v15, v2, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v15

    .line 644
    invoke-virtual {v12, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    const-string v15, "series_id"

    .line 648
    .line 649
    iget v14, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->Z:I

    .line 650
    .line 651
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v14

    .line 655
    invoke-virtual {v12, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    const-string v14, "cover"

    .line 659
    .line 660
    invoke-virtual {v12, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    const-string v3, "plot"

    .line 664
    .line 665
    invoke-virtual {v12, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    const-string v3, "cast"

    .line 669
    .line 670
    invoke-virtual {v12, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    const-string v3, "director"

    .line 674
    .line 675
    invoke-virtual {v12, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    const-string v3, "genre"

    .line 679
    .line 680
    invoke-virtual {v12, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    const-string v3, "releaseDate"

    .line 684
    .line 685
    invoke-virtual {v12, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    const-string v3, "last_modified"

    .line 689
    .line 690
    invoke-virtual {v12, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    const-string v3, "rating"

    .line 694
    .line 695
    invoke-virtual {v12, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    const-string v3, "rating_5based"

    .line 699
    .line 700
    invoke-virtual {v12, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    const-string v3, "backdrop_path"

    .line 704
    .line 705
    invoke-virtual {v12, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    const-string v3, "youtube_trailer"

    .line 709
    .line 710
    invoke-virtual {v12, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    const-string v3, "episode_run_time"

    .line 714
    .line 715
    const/4 v14, 0x3

    .line 716
    aget-object v14, v10, v14

    .line 717
    .line 718
    const-string v15, "season_no="

    .line 719
    .line 720
    invoke-virtual {v14, v15, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v14

    .line 724
    invoke-virtual {v12, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    aget-object v3, v10, v16

    .line 728
    .line 729
    invoke-virtual {v3, v13, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v3

    .line 733
    move-object/from16 v10, v19

    .line 734
    .line 735
    invoke-virtual {v12, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    iget-object v3, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->O:Ljava/util/ArrayList;

    .line 739
    .line 740
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 741
    .line 742
    .line 743
    add-int/lit8 v1, v1, 0x1

    .line 744
    .line 745
    move-object/from16 v19, v10

    .line 746
    .line 747
    goto/16 :goto_2

    .line 748
    .line 749
    :catch_1
    const-string v0, "XCIPTV_TAG"

    .line 750
    .line 751
    const-string v1, "Get Series List Exception"

    .line 752
    .line 753
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    .line 755
    .line 756
    :cond_5
    new-instance v0, Lorg/json/JSONArray;

    .line 757
    .line 758
    iget-object v1, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->O:Ljava/util/ArrayList;

    .line 759
    .line 760
    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 761
    .line 762
    .line 763
    iput-object v0, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->V:Lorg/json/JSONArray;

    .line 764
    .line 765
    return-void

    .line 766
    :pswitch_2
    move-object v1, v13

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    .line 768
    .line 769
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 770
    .line 771
    .line 772
    iget-object v2, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->J:Lh7/i;

    .line 773
    .line 774
    iget-object v2, v2, Lh7/i;->e:Ljava/lang/String;

    .line 775
    .line 776
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v2

    .line 780
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    const-string v2, "/server/inquery_server_httpport?token="

    .line 784
    .line 785
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    iget-object v2, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 789
    .line 790
    const/4 v3, 0x0

    .line 791
    invoke-interface {v2, v15, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v2

    .line 795
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v2

    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    invoke-virtual {v0, v12, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    :try_start_2
    new-instance v1, LF2/G;

    .line 815
    .line 816
    const/4 v2, 0x5

    .line 817
    invoke-direct {v1, v2}, LF2/G;-><init>(I)V

    .line 818
    .line 819
    .line 820
    invoke-virtual {v1, v0}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    iput-object v0, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->X:Ljava/lang/String;

    .line 825
    .line 826
    const-string v1, "httpport="

    .line 827
    .line 828
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    iput-object v0, v7, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->X:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 833
    .line 834
    :catch_2
    return-void

    .line 835
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final varargs b()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ll7/b;->a:I

    .line 4
    .line 5
    const-string v2, "0"

    .line 6
    .line 7
    const-string v3, "parent_id"

    .line 8
    .line 9
    const-string v4, "category_name"

    .line 10
    .line 11
    const-string v5, "category_id"

    .line 12
    .line 13
    const-string v7, "\\n"

    .line 14
    .line 15
    const-string v9, ""

    .line 16
    .line 17
    const-string v10, "[\\r\\n]+"

    .line 18
    .line 19
    const-string v11, "%20"

    .line 20
    .line 21
    const-string v12, " "

    .line 22
    .line 23
    const-string v13, "token"

    .line 24
    .line 25
    iget-object v14, v0, Ll7/b;->b:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 26
    .line 27
    const-string v15, "category="

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    :pswitch_0
    iput-object v6, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->Q:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v6, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->U:Lorg/json/JSONArray;

    .line 36
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->Q:Ljava/util/ArrayList;

    .line 43
    .line 44
    new-instance v1, Lorg/json/JSONArray;

    .line 45
    .line 46
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v1, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->U:Lorg/json/JSONArray;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v8, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->J:Lh7/i;

    .line 57
    .line 58
    iget-object v8, v8, Lh7/i;->e:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v8}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v8, "/server/get_movie_category?token="

    .line 68
    .line 69
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v8, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 73
    .line 74
    invoke-interface {v8, v13, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-static {v8}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1, v12, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :try_start_0
    new-instance v8, LF2/G;

    .line 98
    .line 99
    const/4 v10, 0x5

    .line 100
    invoke-direct {v8, v10}, LF2/G;-><init>(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8, v1}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/4 v7, 0x0

    .line 112
    :goto_0
    array-length v8, v1

    .line 113
    if-ge v7, v8, :cond_0

    .line 114
    .line 115
    new-instance v8, Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 118
    .line 119
    .line 120
    aget-object v10, v1, v7

    .line 121
    .line 122
    invoke-virtual {v10, v15, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    invoke-virtual {v8, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    aget-object v10, v1, v7

    .line 130
    .line 131
    invoke-virtual {v10, v15, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-virtual {v8, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    iget-object v10, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->Q:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    add-int/lit8 v7, v7, 0x1

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :catch_0
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    .line 150
    .line 151
    iget-object v2, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->Q:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 154
    .line 155
    .line 156
    iput-object v1, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->U:Lorg/json/JSONArray;

    .line 157
    .line 158
    iget-object v2, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->I:Lc7/d;

    .line 159
    .line 160
    invoke-virtual {v2, v1}, Lc7/d;->c0(Lorg/json/JSONArray;)V

    .line 161
    .line 162
    .line 163
    iget-object v1, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->I:Lc7/d;

    .line 164
    .line 165
    const-string v2, "vods"

    .line 166
    .line 167
    invoke-static {v1, v2, v6, v6}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_1
    iput-object v6, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->P:Ljava/util/ArrayList;

    .line 172
    .line 173
    iput-object v6, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->T:Lorg/json/JSONArray;

    .line 174
    .line 175
    new-instance v1, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v1, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->P:Ljava/util/ArrayList;

    .line 181
    .line 182
    new-instance v1, Lorg/json/JSONArray;

    .line 183
    .line 184
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 185
    .line 186
    .line 187
    iput-object v1, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->T:Lorg/json/JSONArray;

    .line 188
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    iget-object v8, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->J:Lh7/i;

    .line 195
    .line 196
    iget-object v8, v8, Lh7/i;->e:Ljava/lang/String;

    .line 197
    .line 198
    invoke-static {v8}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v8, "/server/get_channel_category?token="

    .line 206
    .line 207
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-object v8, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 211
    .line 212
    invoke-interface {v8, v13, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-static {v6}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v1, v12, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    :try_start_1
    new-instance v6, LF2/G;

    .line 236
    .line 237
    const/4 v8, 0x5

    .line 238
    invoke-direct {v6, v8}, LF2/G;-><init>(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6, v1}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    const/4 v6, 0x0

    .line 250
    :goto_1
    array-length v7, v1

    .line 251
    if-ge v6, v7, :cond_1

    .line 252
    .line 253
    new-instance v7, Ljava/util/HashMap;

    .line 254
    .line 255
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 256
    .line 257
    .line 258
    aget-object v8, v1, v6

    .line 259
    .line 260
    invoke-virtual {v8, v15, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    aget-object v8, v1, v6

    .line 268
    .line 269
    invoke-virtual {v8, v15, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    iget-object v8, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->P:Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 282
    .line 283
    .line 284
    add-int/lit8 v6, v6, 0x1

    .line 285
    .line 286
    goto :goto_1

    .line 287
    :catch_1
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    .line 288
    .line 289
    iget-object v2, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->P:Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 292
    .line 293
    .line 294
    iput-object v1, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->T:Lorg/json/JSONArray;

    .line 295
    .line 296
    return-void

    .line 297
    :pswitch_2
    iput-object v6, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->R:Ljava/util/ArrayList;

    .line 298
    .line 299
    iput-object v6, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->W:Lorg/json/JSONArray;

    .line 300
    .line 301
    new-instance v1, Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .line 305
    .line 306
    iput-object v1, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->R:Ljava/util/ArrayList;

    .line 307
    .line 308
    new-instance v1, Lorg/json/JSONArray;

    .line 309
    .line 310
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 311
    .line 312
    .line 313
    iput-object v1, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->W:Lorg/json/JSONArray;

    .line 314
    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    iget-object v8, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->J:Lh7/i;

    .line 321
    .line 322
    iget-object v8, v8, Lh7/i;->e:Ljava/lang/String;

    .line 323
    .line 324
    invoke-static {v8}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string v8, "/server/get_series_category?token="

    .line 332
    .line 333
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    iget-object v8, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 337
    .line 338
    invoke-interface {v8, v13, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-static {v6}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-virtual {v1, v12, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    :try_start_2
    new-instance v6, LF2/G;

    .line 362
    .line 363
    const/4 v8, 0x5

    .line 364
    invoke-direct {v6, v8}, LF2/G;-><init>(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v6, v1}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    const/4 v6, 0x0

    .line 376
    :goto_2
    array-length v7, v1

    .line 377
    if-ge v6, v7, :cond_2

    .line 378
    .line 379
    new-instance v7, Ljava/util/HashMap;

    .line 380
    .line 381
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 382
    .line 383
    .line 384
    aget-object v8, v1, v6

    .line 385
    .line 386
    invoke-virtual {v8, v15, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v8

    .line 390
    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    aget-object v8, v1, v6

    .line 394
    .line 395
    invoke-virtual {v8, v15, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v8

    .line 399
    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    iget-object v8, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->R:Ljava/util/ArrayList;

    .line 406
    .line 407
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 408
    .line 409
    .line 410
    add-int/lit8 v6, v6, 0x1

    .line 411
    .line 412
    goto :goto_2

    .line 413
    :catch_2
    const-string v1, "XCIPTV_TAG"

    .line 414
    .line 415
    const-string v2, "Get Series Cat List Exception"

    .line 416
    .line 417
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    :cond_2
    new-instance v1, Lorg/json/JSONArray;

    .line 421
    .line 422
    iget-object v2, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->R:Ljava/util/ArrayList;

    .line 423
    .line 424
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 425
    .line 426
    .line 427
    iput-object v1, v14, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->W:Lorg/json/JSONArray;

    .line 428
    .line 429
    return-void

    .line 430
    nop

    .line 431
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Ljava/lang/Long;)V
    .locals 5

    .line 1
    iget v0, p0, Ll7/b;->a:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Ll7/b;->b:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-boolean p1, v3, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->h0:Z

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, v3, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->e0:Landroid/widget/ProgressBar;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-boolean p1, v3, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->i0:Z

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Ll7/b;

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    invoke-direct {p1, v3, v0}, Ll7/b;-><init>(Lpe/hf/black20/updatecontents/EZServerUpdateContents;I)V

    .line 30
    .line 31
    .line 32
    new-array v0, v2, [Ljava/lang/Void;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :pswitch_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, v3, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->a0:Landroid/widget/TextView;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v1, v3, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->K:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 49
    .line 50
    const v4, 0x7f1301bb

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, "!"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, v3, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->S:Lorg/json/JSONArray;

    .line 73
    .line 74
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-lez p1, :cond_1

    .line 79
    .line 80
    iget-object p1, v3, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->I:Lc7/d;

    .line 81
    .line 82
    iget-object v0, v3, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->S:Lorg/json/JSONArray;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lc7/d;->k(Lorg/json/JSONArray;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    new-instance p1, Ll7/b;

    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-direct {p1, v3, v0}, Ll7/b;-><init>(Lpe/hf/black20/updatecontents/EZServerUpdateContents;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    new-array v0, v2, [Ljava/lang/Void;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, v3, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->V:Lorg/json/JSONArray;

    .line 103
    .line 104
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-lez p1, :cond_2

    .line 109
    .line 110
    iget-object p1, v3, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->I:Lc7/d;

    .line 111
    .line 112
    iget-object v0, v3, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->V:Lorg/json/JSONArray;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lc7/d;->E(Lorg/json/JSONArray;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    new-instance p1, Ll7/b;

    .line 118
    .line 119
    invoke-direct {p1, v3}, Ll7/b;-><init>(Lpe/hf/black20/updatecontents/EZServerUpdateContents;)V

    .line 120
    .line 121
    .line 122
    new-array v0, v2, [Ljava/lang/Void;

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, v3, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 132
    .line 133
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object v0, v3, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->X:Ljava/lang/String;

    .line 138
    .line 139
    const-string v4, "streamingPort"

    .line 140
    .line 141
    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    .line 143
    .line 144
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    .line 146
    .line 147
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    .line 149
    .line 150
    new-instance p1, Ll7/b;

    .line 151
    .line 152
    invoke-direct {p1, v3, v1}, Ll7/b;-><init>(Lpe/hf/black20/updatecontents/EZServerUpdateContents;I)V

    .line 153
    .line 154
    .line 155
    new-array v0, v2, [Ljava/lang/Void;

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final d(Ljava/lang/Void;)V
    .locals 9

    .line 1
    iget v0, p0, Ll7/b;->a:I

    .line 2
    .line 3
    const v1, 0x7f1301bb

    .line 4
    .line 5
    .line 6
    const-string v2, "!"

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    const-string v4, "XCIPTV_TAG"

    .line 10
    .line 11
    iget-object v5, p0, Ll7/b;->b:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->U:Lorg/json/JSONArray;

    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-ge v6, p1, :cond_1

    .line 27
    .line 28
    iget-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->U:Lorg/json/JSONArray;

    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    sub-int/2addr p1, v3

    .line 35
    if-ne v6, p1, :cond_0

    .line 36
    .line 37
    iput-boolean v3, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->h0:Z

    .line 38
    .line 39
    const-string p1, "EZServerUpdateContents isVodDownloadFished ------- True"

    .line 40
    .line 41
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const-string p1, "EZServerUpdateContents isVodDownloadFished ------- False"

    .line 46
    .line 47
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :goto_1
    :try_start_0
    iget-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->U:Lorg/json/JSONArray;

    .line 51
    .line 52
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v0, "category_name"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v0, Landroid/os/Handler;

    .line 63
    .line 64
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lp6/m;

    .line 68
    .line 69
    const/4 v7, 0x4

    .line 70
    invoke-direct {v1, v7, p0, p1}, Lp6/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const-wide/16 v7, 0x7d0

    .line 74
    .line 75
    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->b0:Landroid/widget/TextView;

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->K:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 94
    .line 95
    const v3, 0x7f13022c

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    const-string p1, "EZServerUpdateContents -----Completed - All VOD Categoires added to Local Databse"

    .line 116
    .line 117
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    const-string p1, "EZServerUpdateContents -----Completed - TV Categories added to Local Databse"

    .line 125
    .line 126
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    iget-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->a0:Landroid/widget/TextView;

    .line 130
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    iget-object v3, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->K:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 137
    .line 138
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->T:Lorg/json/JSONArray;

    .line 156
    .line 157
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-lez p1, :cond_2

    .line 162
    .line 163
    iget-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->I:Lc7/d;

    .line 164
    .line 165
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->T:Lorg/json/JSONArray;

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Lc7/d;->a0(Lorg/json/JSONArray;)V

    .line 168
    .line 169
    .line 170
    :cond_2
    new-instance p1, Ll7/b;

    .line 171
    .line 172
    const/4 v0, 0x0

    .line 173
    invoke-direct {p1, v5, v0}, Ll7/b;-><init>(Lpe/hf/black20/updatecontents/EZServerUpdateContents;Lcom/google/protobuf/U2;)V

    .line 174
    .line 175
    .line 176
    new-array v0, v6, [Ljava/lang/Void;

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :pswitch_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    const-string p1, "-----Completed - TV Categories added to Local Databse"

    .line 186
    .line 187
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    iget-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->d0:Landroid/widget/TextView;

    .line 191
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    iget-object v7, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->K:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 198
    .line 199
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->W:Lorg/json/JSONArray;

    .line 217
    .line 218
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-lez p1, :cond_3

    .line 223
    .line 224
    iget-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->I:Lc7/d;

    .line 225
    .line 226
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->W:Lorg/json/JSONArray;

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Lc7/d;->O(Lorg/json/JSONArray;)V

    .line 229
    .line 230
    .line 231
    :cond_3
    iget-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->c0:Landroid/widget/TextView;

    .line 232
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 256
    .line 257
    const-string v0, "MM/dd/yyyy HH:mm:ss"

    .line 258
    .line 259
    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    new-instance v0, Ljava/util/Date;

    .line 263
    .line 264
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    iput-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->g0:Ljava/lang/String;

    .line 272
    .line 273
    iget-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->b0:Landroid/widget/TextView;

    .line 274
    .line 275
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    iget-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 283
    .line 284
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    const-string v0, "tvvodseries_dl_time"

    .line 289
    .line 290
    iget-object v1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->g0:Ljava/lang/String;

    .line 291
    .line 292
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 293
    .line 294
    .line 295
    const-string v0, "epg_dl_time"

    .line 296
    .line 297
    iget-object v1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->g0:Ljava/lang/String;

    .line 298
    .line 299
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 300
    .line 301
    .line 302
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 303
    .line 304
    const-string v1, "epg_manual_download"

    .line 305
    .line 306
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-nez v0, :cond_4

    .line 311
    .line 312
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->g0:Ljava/lang/String;

    .line 313
    .line 314
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 315
    .line 316
    .line 317
    :cond_4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 318
    .line 319
    .line 320
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 321
    .line 322
    .line 323
    iget-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->L:Landroid/widget/Button;

    .line 324
    .line 325
    const-string v0, "Close"

    .line 326
    .line 327
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    .line 329
    .line 330
    iget-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->L:Landroid/widget/Button;

    .line 331
    .line 332
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 333
    .line 334
    .line 335
    const-string p1, "yes"

    .line 336
    .line 337
    iput-object p1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->f0:Ljava/lang/String;

    .line 338
    .line 339
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    const-string v0, "ORT_PROCESS_STATUS"

    .line 344
    .line 345
    invoke-virtual {p1, v6, v0}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 346
    .line 347
    .line 348
    invoke-static {v7}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    if-eqz p1, :cond_5

    .line 353
    .line 354
    sput-boolean v3, Lpe/hf/black20/ORPlayerMainActivity;->I0:Z

    .line 355
    .line 356
    :cond_5
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 357
    .line 358
    .line 359
    const-string p1, "EZServerUpdateContents processPorgrammeData Completed1 -- Updatecontents"

    .line 360
    .line 361
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .line 363
    .line 364
    invoke-static {v7}, Lpe/hf/black20/CategoriesActivity;->i(Landroid/content/Context;)Z

    .line 365
    .line 366
    .line 367
    move-result p1

    .line 368
    if-nez p1, :cond_6

    .line 369
    .line 370
    const-string p1, "EZServerUpdateContents JobScheduler is not Running"

    .line 371
    .line 372
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    const-string p1, "EZServerUpdateContents JobScheduler Started"

    .line 376
    .line 377
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    invoke-static {v7}, Lpe/hf/black20/CategoriesActivity;->l(Landroid/content/Context;)V

    .line 381
    .line 382
    .line 383
    goto :goto_3

    .line 384
    :cond_6
    const-string p1, "EZServerUpdateContents JobScheduler is Running"

    .line 385
    .line 386
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    :goto_3
    return-void

    .line 390
    nop

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Ll7/b;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    move-object/from16 v0, p1

    .line 10
    .line 11
    check-cast v0, [Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "direct_source"

    .line 14
    .line 15
    const-string v4, "category_id"

    .line 16
    .line 17
    const-string v5, "custom_sid"

    .line 18
    .line 19
    const-string v6, "container_extension"

    .line 20
    .line 21
    const-string v7, "added"

    .line 22
    .line 23
    const-string v8, "rating_5based"

    .line 24
    .line 25
    const-string v9, "rating"

    .line 26
    .line 27
    const-string v10, "stream_icon"

    .line 28
    .line 29
    const-string v11, "stream_type"

    .line 30
    .line 31
    const-string v12, "name"

    .line 32
    .line 33
    const-string v13, "stream_id"

    .line 34
    .line 35
    const-string v14, "num"

    .line 36
    .line 37
    const-string v15, "\\n"

    .line 38
    .line 39
    move-object/from16 p1, v3

    .line 40
    .line 41
    const-string v3, "name="

    .line 42
    .line 43
    move-object/from16 v16, v4

    .line 44
    .line 45
    iget-object v4, v1, Ll7/b;->b:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 46
    .line 47
    iput-object v2, v4, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->N:Ljava/util/ArrayList;

    .line 48
    .line 49
    new-instance v2, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v2, v4, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->N:Ljava/util/ArrayList;

    .line 55
    .line 56
    new-instance v2, Lorg/json/JSONArray;

    .line 57
    .line 58
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v1, v4, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->J:Lh7/i;

    .line 67
    .line 68
    iget-object v1, v1, Lh7/i;->e:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, "/server/get_movie_list?token="

    .line 78
    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v1, v4, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 83
    .line 84
    move-object/from16 v17, v5

    .line 85
    .line 86
    const-string v5, "token"

    .line 87
    .line 88
    move-object/from16 v18, v6

    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v1, "&category="

    .line 103
    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    aget-object v5, v0, v1

    .line 109
    .line 110
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    const-string v5, " "

    .line 118
    .line 119
    const-string v6, "%20"

    .line 120
    .line 121
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const-string v1, "[\\r\\n]+"

    .line 126
    .line 127
    move-object/from16 v20, v5

    .line 128
    .line 129
    const-string v5, ""

    .line 130
    .line 131
    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    new-instance v2, Lorg/json/JSONArray;

    .line 136
    .line 137
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 138
    .line 139
    .line 140
    move-object/from16 v21, v2

    .line 141
    .line 142
    :try_start_0
    new-instance v2, LF2/G;

    .line 143
    .line 144
    move-object/from16 v22, v6

    .line 145
    .line 146
    const/4 v6, 0x5

    .line 147
    invoke-direct {v2, v6}, LF2/G;-><init>(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v1}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const-string v2, "vod----name="

    .line 155
    .line 156
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const-string v2, "vod----"

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    const/4 v6, 0x1

    .line 167
    :goto_0
    array-length v2, v1

    .line 168
    if-ge v6, v2, :cond_2

    .line 169
    .line 170
    iget v2, v4, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->Z:I

    .line 171
    .line 172
    const/16 v23, 0x1

    .line 173
    .line 174
    add-int/lit8 v2, v2, 0x1

    .line 175
    .line 176
    iput v2, v4, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->Z:I

    .line 177
    .line 178
    aget-object v2, v1, v6

    .line 179
    .line 180
    move-object/from16 v24, v0

    .line 181
    .line 182
    const-string v0, "img="

    .line 183
    .line 184
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    aget-object v0, v0, v23

    .line 189
    .line 190
    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    array-length v2, v0

    .line 195
    if-lez v2, :cond_0

    .line 196
    .line 197
    const/4 v2, 0x0

    .line 198
    aget-object v0, v0, v2

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    move-object/from16 v25, v7

    .line 205
    .line 206
    :try_start_1
    const-string v7, "file"

    .line 207
    .line 208
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_1

    .line 213
    .line 214
    const-string v2, "file:/"

    .line 215
    .line 216
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    iget-object v7, v4, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->J:Lh7/i;

    .line 226
    .line 227
    iget-object v7, v7, Lh7/i;->e:Ljava/lang/String;

    .line 228
    .line 229
    invoke-static {v7}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    goto :goto_5

    .line 244
    :catch_0
    move-object/from16 v3, p1

    .line 245
    .line 246
    move-object/from16 v19, v18

    .line 247
    .line 248
    move-object/from16 v28, v25

    .line 249
    .line 250
    :goto_1
    move-object/from16 v25, v16

    .line 251
    .line 252
    :goto_2
    move-object/from16 v18, v17

    .line 253
    .line 254
    :goto_3
    const/16 v17, 0x0

    .line 255
    .line 256
    goto/16 :goto_6

    .line 257
    .line 258
    :catch_1
    move-object/from16 v3, p1

    .line 259
    .line 260
    move-object/from16 v28, v7

    .line 261
    .line 262
    :goto_4
    move-object/from16 v25, v16

    .line 263
    .line 264
    move-object/from16 v19, v18

    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_0
    move-object/from16 v25, v7

    .line 268
    .line 269
    move-object v0, v5

    .line 270
    :cond_1
    :goto_5
    aget-object v2, v1, v6

    .line 271
    .line 272
    invoke-virtual {v2, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    new-instance v7, Ljava/util/HashMap;

    .line 277
    .line 278
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 279
    .line 280
    .line 281
    move-object/from16 v26, v1

    .line 282
    .line 283
    iget v1, v4, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->Z:I

    .line 284
    .line 285
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {v7, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    iget v1, v4, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->Z:I

    .line 293
    .line 294
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {v7, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-object/from16 v27, v15

    .line 302
    .line 303
    const/4 v1, 0x0

    .line 304
    aget-object v15, v2, v1

    .line 305
    .line 306
    invoke-virtual {v15, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {v7, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    const-string v1, "video"

    .line 314
    .line 315
    invoke-virtual {v7, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v7, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    .line 326
    .line 327
    move-object/from16 v0, v25

    .line 328
    .line 329
    :try_start_2
    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 330
    .line 331
    .line 332
    move-object/from16 v1, v18

    .line 333
    .line 334
    :try_start_3
    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 335
    .line 336
    .line 337
    move-object/from16 v15, v17

    .line 338
    .line 339
    :try_start_4
    invoke-virtual {v7, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 340
    .line 341
    .line 342
    move-object/from16 v18, v15

    .line 343
    .line 344
    const/16 v17, 0x0

    .line 345
    .line 346
    :try_start_5
    aget-object v15, v24, v17
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 347
    .line 348
    move-object/from16 v19, v1

    .line 349
    .line 350
    move-object/from16 v1, v16

    .line 351
    .line 352
    :try_start_6
    invoke-virtual {v7, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    aget-object v2, v2, v17

    .line 356
    .line 357
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    iget-object v15, v4, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->J:Lh7/i;

    .line 362
    .line 363
    iget-object v15, v15, Lh7/i;->c:Ljava/lang/String;

    .line 364
    .line 365
    invoke-static {v15}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v15

    .line 369
    move-object/from16 v16, v3

    .line 370
    .line 371
    iget-object v3, v4, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->J:Lh7/i;

    .line 372
    .line 373
    iget-object v3, v3, Lh7/i;->d:Ljava/lang/String;

    .line 374
    .line 375
    invoke-static {v3}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 379
    move-object/from16 v25, v1

    .line 380
    .line 381
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 384
    .line 385
    .line 386
    move-object/from16 v28, v0

    .line 387
    .line 388
    :try_start_8
    iget-object v0, v4, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->Y:Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string v0, ":"

    .line 394
    .line 395
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    iget-object v0, v4, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->X:Ljava/lang/String;

    .line 399
    .line 400
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    const-string v0, "/"

    .line 404
    .line 405
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v0, "?u="

    .line 412
    .line 413
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const-string v0, ":p="

    .line 420
    .line 421
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    const-string v1, "\n"

    .line 432
    .line 433
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    const-string v1, "\r"

    .line 438
    .line 439
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    move-object/from16 v1, v20

    .line 444
    .line 445
    move-object/from16 v2, v22

    .line 446
    .line 447
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 451
    move-object/from16 v3, p1

    .line 452
    .line 453
    :try_start_9
    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    iget-object v0, v4, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->N:Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    add-int/lit8 v6, v6, 0x1

    .line 462
    .line 463
    move-object/from16 v20, v1

    .line 464
    .line 465
    move-object/from16 v22, v2

    .line 466
    .line 467
    move-object/from16 p1, v3

    .line 468
    .line 469
    move-object/from16 v3, v16

    .line 470
    .line 471
    move-object/from16 v17, v18

    .line 472
    .line 473
    move-object/from16 v18, v19

    .line 474
    .line 475
    move-object/from16 v0, v24

    .line 476
    .line 477
    move-object/from16 v16, v25

    .line 478
    .line 479
    move-object/from16 v1, v26

    .line 480
    .line 481
    move-object/from16 v15, v27

    .line 482
    .line 483
    move-object/from16 v7, v28

    .line 484
    .line 485
    goto/16 :goto_0

    .line 486
    .line 487
    :catch_2
    move-object/from16 v3, p1

    .line 488
    .line 489
    goto :goto_6

    .line 490
    :catch_3
    move-object/from16 v3, p1

    .line 491
    .line 492
    move-object/from16 v28, v0

    .line 493
    .line 494
    goto :goto_6

    .line 495
    :catch_4
    move-object/from16 v3, p1

    .line 496
    .line 497
    move-object/from16 v28, v0

    .line 498
    .line 499
    move-object/from16 v25, v1

    .line 500
    .line 501
    goto :goto_6

    .line 502
    :catch_5
    move-object/from16 v3, p1

    .line 503
    .line 504
    move-object/from16 v28, v0

    .line 505
    .line 506
    move-object/from16 v19, v1

    .line 507
    .line 508
    move-object/from16 v25, v16

    .line 509
    .line 510
    goto :goto_6

    .line 511
    :catch_6
    move-object/from16 v3, p1

    .line 512
    .line 513
    move-object/from16 v28, v0

    .line 514
    .line 515
    move-object/from16 v19, v1

    .line 516
    .line 517
    move-object/from16 v18, v15

    .line 518
    .line 519
    move-object/from16 v25, v16

    .line 520
    .line 521
    goto/16 :goto_3

    .line 522
    .line 523
    :catch_7
    move-object/from16 v3, p1

    .line 524
    .line 525
    move-object/from16 v28, v0

    .line 526
    .line 527
    move-object/from16 v19, v1

    .line 528
    .line 529
    goto/16 :goto_1

    .line 530
    .line 531
    :catch_8
    move-object/from16 v3, p1

    .line 532
    .line 533
    move-object/from16 v28, v0

    .line 534
    .line 535
    goto/16 :goto_4

    .line 536
    .line 537
    :cond_2
    move-object/from16 v3, p1

    .line 538
    .line 539
    move-object/from16 v28, v7

    .line 540
    .line 541
    move-object/from16 v25, v16

    .line 542
    .line 543
    move-object/from16 v19, v18

    .line 544
    .line 545
    move-object/from16 v18, v17

    .line 546
    .line 547
    const/16 v17, 0x0

    .line 548
    .line 549
    new-instance v0, Lorg/json/JSONArray;

    .line 550
    .line 551
    iget-object v1, v4, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->N:Ljava/util/ArrayList;

    .line 552
    .line 553
    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 554
    .line 555
    .line 556
    move-object v2, v0

    .line 557
    goto :goto_7

    .line 558
    :catch_9
    :goto_6
    move-object/from16 v2, v21

    .line 559
    .line 560
    :goto_7
    iget-object v0, v4, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->I:Lc7/d;

    .line 561
    .line 562
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 567
    .line 568
    .line 569
    :try_start_a
    new-instance v0, Landroid/content/ContentValues;

    .line 570
    .line 571
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 572
    .line 573
    .line 574
    const/4 v4, 0x0

    .line 575
    :goto_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 576
    .line 577
    .line 578
    move-result v6

    .line 579
    if-ge v4, v6, :cond_3

    .line 580
    .line 581
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 582
    .line 583
    .line 584
    move-result-object v6

    .line 585
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v7

    .line 589
    invoke-virtual {v0, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v7

    .line 596
    invoke-virtual {v0, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v7

    .line 603
    invoke-virtual {v0, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v7

    .line 610
    invoke-virtual {v0, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v7

    .line 617
    invoke-virtual {v0, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v0, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    move-object/from16 v7, v28

    .line 627
    .line 628
    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    move-object/from16 p1, v2

    .line 632
    .line 633
    move-object/from16 v15, v25

    .line 634
    .line 635
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    invoke-virtual {v0, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    move-object/from16 v25, v7

    .line 643
    .line 644
    move-object/from16 v2, v19

    .line 645
    .line 646
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v7

    .line 650
    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    move-object/from16 v7, v18

    .line 654
    .line 655
    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v6

    .line 662
    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    const-string v6, "vods"

    .line 666
    .line 667
    move-object/from16 v18, v2

    .line 668
    .line 669
    const/4 v2, 0x0

    .line 670
    invoke-virtual {v1, v6, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 671
    .line 672
    .line 673
    add-int/lit8 v4, v4, 0x1

    .line 674
    .line 675
    move-object/from16 v2, p1

    .line 676
    .line 677
    move-object/from16 v19, v18

    .line 678
    .line 679
    move-object/from16 v28, v25

    .line 680
    .line 681
    move-object/from16 v18, v7

    .line 682
    .line 683
    move-object/from16 v25, v15

    .line 684
    .line 685
    goto :goto_8

    .line 686
    :catchall_0
    move-exception v0

    .line 687
    goto :goto_9

    .line 688
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 689
    .line 690
    .line 691
    :catch_a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 692
    .line 693
    .line 694
    const/4 v0, 0x0

    .line 695
    goto :goto_a

    .line 696
    :goto_9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 697
    .line 698
    .line 699
    throw v0

    .line 700
    :goto_a
    return-object v0

    .line 701
    :pswitch_0
    move-object v0, v2

    .line 702
    move-object/from16 v1, p1

    .line 703
    .line 704
    check-cast v1, [Ljava/lang/Void;

    .line 705
    .line 706
    invoke-virtual/range {p0 .. p0}, Ll7/b;->b()V

    .line 707
    .line 708
    .line 709
    return-object v0

    .line 710
    :pswitch_1
    move-object v0, v2

    .line 711
    move-object/from16 v1, p1

    .line 712
    .line 713
    check-cast v1, [Ljava/lang/Void;

    .line 714
    .line 715
    invoke-virtual/range {p0 .. p0}, Ll7/b;->a()V

    .line 716
    .line 717
    .line 718
    return-object v0

    .line 719
    :pswitch_2
    move-object v0, v2

    .line 720
    move-object/from16 v1, p1

    .line 721
    .line 722
    check-cast v1, [Ljava/lang/Void;

    .line 723
    .line 724
    invoke-virtual/range {p0 .. p0}, Ll7/b;->b()V

    .line 725
    .line 726
    .line 727
    return-object v0

    .line 728
    :pswitch_3
    move-object v0, v2

    .line 729
    move-object/from16 v1, p1

    .line 730
    .line 731
    check-cast v1, [Ljava/lang/Void;

    .line 732
    .line 733
    invoke-virtual/range {p0 .. p0}, Ll7/b;->a()V

    .line 734
    .line 735
    .line 736
    return-object v0

    .line 737
    :pswitch_4
    move-object v0, v2

    .line 738
    move-object/from16 v1, p1

    .line 739
    .line 740
    check-cast v1, [Ljava/lang/Void;

    .line 741
    .line 742
    invoke-virtual/range {p0 .. p0}, Ll7/b;->b()V

    .line 743
    .line 744
    .line 745
    return-object v0

    .line 746
    :pswitch_5
    move-object v0, v2

    .line 747
    move-object/from16 v1, p1

    .line 748
    .line 749
    check-cast v1, [Ljava/lang/Void;

    .line 750
    .line 751
    invoke-virtual/range {p0 .. p0}, Ll7/b;->a()V

    .line 752
    .line 753
    .line 754
    return-object v0

    .line 755
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCancelled()V
    .locals 1

    .line 1
    iget v0, p0, Ll7/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_1
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_2
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_3
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_4
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Ll7/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ll7/b;->c(Ljava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ll7/b;->d(Ljava/lang/Void;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ll7/b;->c(Ljava/lang/Long;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    check-cast p1, Ljava/lang/Void;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ll7/b;->d(Ljava/lang/Void;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ll7/b;->c(Ljava/lang/Long;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_4
    check-cast p1, Ljava/lang/Void;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ll7/b;->d(Ljava/lang/Void;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ll7/b;->c(Ljava/lang/Long;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreExecute()V
    .locals 7

    .line 1
    iget v0, p0, Ll7/b;->a:I

    .line 2
    .line 3
    const v1, 0x7f1301ec

    .line 4
    .line 5
    .line 6
    const v2, 0x7f1301e9

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const v4, 0x7f13022c

    .line 11
    .line 12
    .line 13
    iget-object v5, p0, Ll7/b;->b:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 19
    .line 20
    .line 21
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->b0:Landroid/widget/TextView;

    .line 22
    .line 23
    iget-object v2, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->K:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 24
    .line 25
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->c0:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 43
    .line 44
    .line 45
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->c0:Landroid/widget/TextView;

    .line 46
    .line 47
    iget-object v2, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->K:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 58
    .line 59
    .line 60
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->I:Lc7/d;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "epg_channel"

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    invoke-virtual {v0, v1, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    const-string v1, "epg_programme"

    .line 73
    .line 74
    invoke-virtual {v0, v1, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 78
    .line 79
    .line 80
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->a0:Landroid/widget/TextView;

    .line 81
    .line 82
    iget-object v1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->K:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->e0:Landroid/widget/ProgressBar;

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->c0:Landroid/widget/TextView;

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_2
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 107
    .line 108
    .line 109
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->c0:Landroid/widget/TextView;

    .line 110
    .line 111
    iget-object v1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->K:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_3
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 122
    .line 123
    .line 124
    const/4 v0, 0x1

    .line 125
    iput-boolean v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->i0:Z

    .line 126
    .line 127
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->d0:Landroid/widget/TextView;

    .line 128
    .line 129
    iget-object v1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->K:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 130
    .line 131
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->c0:Landroid/widget/TextView;

    .line 139
    .line 140
    const v2, 0x7f1301ea

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->e0:Landroid/widget/ProgressBar;

    .line 151
    .line 152
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_4
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :pswitch_5
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 161
    .line 162
    .line 163
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->a0:Landroid/widget/TextView;

    .line 164
    .line 165
    iget-object v1, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->K:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 166
    .line 167
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->e0:Landroid/widget/ProgressBar;

    .line 175
    .line 176
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    iget-object v0, v5, Lpe/hf/black20/updatecontents/EZServerUpdateContents;->c0:Landroid/widget/TextView;

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
