.class public final Lb7/B1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpe/hf/black20/SeriesActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/SeriesActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb7/B1;->a:I

    invoke-direct {p0, p1, v0}, Lb7/B1;-><init>(Lpe/hf/black20/SeriesActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/SeriesActivity;I)V
    .locals 0

    .line 2
    iput p2, p0, Lb7/B1;->a:I

    iput-object p1, p0, Lb7/B1;->b:Lpe/hf/black20/SeriesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/SeriesActivity;La/r;)V
    .locals 0

    .line 3
    const/4 p2, 0x2

    iput p2, p0, Lb7/B1;->a:I

    invoke-direct {p0, p1, p2}, Lb7/B1;-><init>(Lpe/hf/black20/SeriesActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/SeriesActivity;Ljava/lang/Object;)V
    .locals 0

    .line 4
    const/4 p2, 0x1

    iput p2, p0, Lb7/B1;->a:I

    invoke-direct {p0, p1, p2}, Lb7/B1;-><init>(Lpe/hf/black20/SeriesActivity;I)V

    return-void
.end method


# virtual methods
.method public final varargs a()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb7/B1;->a:I

    .line 4
    .line 5
    const-string v2, "season_no"

    .line 6
    .line 7
    const-string v3, "direct_source"

    .line 8
    .line 9
    const-string v4, "season"

    .line 10
    .line 11
    const-string v5, "container_extension"

    .line 12
    .line 13
    const-string v6, "title"

    .line 14
    .line 15
    const-string v7, "episode_num"

    .line 16
    .line 17
    const-string v8, "id"

    .line 18
    .line 19
    const-string v10, "\\n"

    .line 20
    .line 21
    const-string v11, "[\\r\\n]+"

    .line 22
    .line 23
    const-string v12, "%20"

    .line 24
    .line 25
    const-string v13, " "

    .line 26
    .line 27
    const-string v14, "&name="

    .line 28
    .line 29
    const-string v15, "token"

    .line 30
    .line 31
    const-string v9, ""

    .line 32
    .line 33
    move-object/from16 v17, v2

    .line 34
    .line 35
    iget-object v2, v0, Lb7/B1;->b:Lpe/hf/black20/SeriesActivity;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    packed-switch v1, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, v2, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 47
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v1, v2, Lpe/hf/black20/SeriesActivity;->U:Ljava/util/ArrayList;

    .line 54
    .line 55
    new-instance v1, Lorg/json/JSONArray;

    .line 56
    .line 57
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 58
    .line 59
    .line 60
    sput-object v1, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    sget-object v3, Lpe/hf/black20/SeriesActivity;->A0:Lh7/i;

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
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v3, "/server/get_series_profile?token="

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v3, v2, Lpe/hf/black20/SeriesActivity;->H:Landroid/content/SharedPreferences;

    .line 84
    .line 85
    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v0, v2, Lpe/hf/black20/SeriesActivity;->Z:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :try_start_0
    new-instance v1, LF2/G;

    .line 117
    .line 118
    const/4 v3, 0x5

    .line 119
    invoke-direct {v1, v3}, LF2/G;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v0}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const/4 v1, 0x2

    .line 131
    aget-object v1, v0, v1

    .line 132
    .line 133
    const-string v3, "img="

    .line 134
    .line 135
    invoke-virtual {v1, v3, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iput-object v1, v2, Lpe/hf/black20/SeriesActivity;->h0:Ljava/lang/String;

    .line 140
    .line 141
    const/4 v1, 0x3

    .line 142
    aget-object v1, v0, v1

    .line 143
    .line 144
    const-string v3, "rating="

    .line 145
    .line 146
    invoke-virtual {v1, v3, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iput-object v1, v2, Lpe/hf/black20/SeriesActivity;->g0:Ljava/lang/String;

    .line 151
    .line 152
    const/4 v1, 0x4

    .line 153
    aget-object v1, v0, v1

    .line 154
    .line 155
    const-string v3, "description="

    .line 156
    .line 157
    invoke-virtual {v1, v3, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iput-object v1, v2, Lpe/hf/black20/SeriesActivity;->b0:Ljava/lang/String;

    .line 162
    .line 163
    const/4 v1, 0x5

    .line 164
    aget-object v1, v0, v1

    .line 165
    .line 166
    const-string v3, "season_no="

    .line 167
    .line 168
    invoke-virtual {v1, v3, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    const/4 v1, 0x6

    .line 172
    aget-object v0, v0, v1

    .line 173
    .line 174
    const-string v1, "released_date="

    .line 175
    .line 176
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iput-object v0, v2, Lpe/hf/black20/SeriesActivity;->f0:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :catch_0
    const-string v0, "XCIPTV_TAG"

    .line 184
    .line 185
    const-string v1, "EZS Sereis Profile Exception"

    .line 186
    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iput-object v0, v2, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 192
    .line 193
    new-instance v1, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    iput-object v1, v2, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 199
    .line 200
    new-instance v1, Lorg/json/JSONArray;

    .line 201
    .line 202
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 203
    .line 204
    .line 205
    sput-object v1, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 206
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    sget-object v0, Lpe/hf/black20/SeriesActivity;->A0:Lh7/i;

    .line 213
    .line 214
    iget-object v0, v0, Lh7/i;->e:Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v0, "/server/get_series_episode?token="

    .line 224
    .line 225
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    iget-object v0, v2, Lpe/hf/black20/SeriesActivity;->H:Landroid/content/SharedPreferences;

    .line 229
    .line 230
    move-object/from16 v18, v3

    .line 231
    .line 232
    const/4 v3, 0x0

    .line 233
    invoke-interface {v0, v15, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    iget-object v0, v2, Lpe/hf/black20/SeriesActivity;->Z:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v0, "&index="

    .line 253
    .line 254
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget v0, v2, Lpe/hf/black20/SeriesActivity;->X:I

    .line 258
    .line 259
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    new-instance v1, LF2/G;

    .line 275
    .line 276
    const/4 v3, 0x5

    .line 277
    invoke-direct {v1, v3}, LF2/G;-><init>(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v0}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-eqz v1, :cond_1

    .line 289
    .line 290
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    const/4 v1, 0x0

    .line 295
    :goto_1
    array-length v3, v0

    .line 296
    if-ge v1, v3, :cond_0

    .line 297
    .line 298
    invoke-static {v8, v9, v7, v9}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    aget-object v10, v0, v1

    .line 303
    .line 304
    invoke-virtual {v3, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    iget v10, v2, Lpe/hf/black20/SeriesActivity;->X:I

    .line 311
    .line 312
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v10

    .line 316
    invoke-virtual {v3, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    new-instance v10, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    iget-object v11, v2, Lpe/hf/black20/SeriesActivity;->W:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    const-string v11, ":"

    .line 330
    .line 331
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    iget-object v11, v2, Lpe/hf/black20/SeriesActivity;->V:Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v11, "/"

    .line 340
    .line 341
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v10

    .line 348
    invoke-virtual {v10, v13, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v10

    .line 352
    sget-object v11, Lpe/hf/black20/SeriesActivity;->A0:Lh7/i;

    .line 353
    .line 354
    iget-object v11, v11, Lh7/i;->c:Ljava/lang/String;

    .line 355
    .line 356
    invoke-static {v11}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v11

    .line 360
    sget-object v14, Lpe/hf/black20/SeriesActivity;->A0:Lh7/i;

    .line 361
    .line 362
    iget-object v14, v14, Lh7/i;->d:Ljava/lang/String;

    .line 363
    .line 364
    invoke-static {v14}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v14

    .line 368
    invoke-static {v10}, Lcom/google/protobuf/U2;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    move-result-object v10

    .line 372
    aget-object v15, v0, v1

    .line 373
    .line 374
    move-object/from16 v16, v0

    .line 375
    .line 376
    const-string v0, "?u="

    .line 377
    .line 378
    move-object/from16 v19, v5

    .line 379
    .line 380
    const-string v5, ":p="

    .line 381
    .line 382
    invoke-static {v10, v15, v0, v11, v5}, Lt/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    const-string v5, "\n"

    .line 393
    .line 394
    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    const-string v5, "\r"

    .line 399
    .line 400
    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    move-object/from16 v5, v18

    .line 409
    .line 410
    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    iget-object v0, v2, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 414
    .line 415
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    add-int/lit8 v1, v1, 0x1

    .line 419
    .line 420
    move-object/from16 v0, v16

    .line 421
    .line 422
    move-object/from16 v5, v19

    .line 423
    .line 424
    goto/16 :goto_1

    .line 425
    .line 426
    :cond_0
    iget-object v0, v2, Lpe/hf/black20/SeriesActivity;->i0:Ljava/lang/String;

    .line 427
    .line 428
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    const/4 v1, 0x0

    .line 433
    iput-object v1, v2, Lpe/hf/black20/SeriesActivity;->U:Ljava/util/ArrayList;

    .line 434
    .line 435
    new-instance v1, Ljava/util/ArrayList;

    .line 436
    .line 437
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .line 439
    .line 440
    iput-object v1, v2, Lpe/hf/black20/SeriesActivity;->U:Ljava/util/ArrayList;

    .line 441
    .line 442
    const/4 v1, 0x1

    .line 443
    const/4 v3, 0x1

    .line 444
    :goto_2
    add-int/lit8 v4, v0, 0x1

    .line 445
    .line 446
    if-ge v3, v4, :cond_1

    .line 447
    .line 448
    new-instance v4, Ljava/util/HashMap;

    .line 449
    .line 450
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 451
    .line 452
    .line 453
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v5

    .line 457
    move-object/from16 v10, v17

    .line 458
    .line 459
    invoke-virtual {v4, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    iget-object v5, v2, Lpe/hf/black20/SeriesActivity;->U:Ljava/util/ArrayList;

    .line 463
    .line 464
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    add-int/lit8 v3, v3, 0x1

    .line 468
    .line 469
    goto :goto_2

    .line 470
    :cond_1
    return-void

    .line 471
    :pswitch_1
    move-object/from16 v19, v5

    .line 472
    .line 473
    move-object/from16 v10, v17

    .line 474
    .line 475
    move-object v5, v3

    .line 476
    const-string v0, "episodes"

    .line 477
    .line 478
    const-string v1, "info"

    .line 479
    .line 480
    new-instance v3, Ljava/util/ArrayList;

    .line 481
    .line 482
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .line 484
    .line 485
    iput-object v3, v2, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 486
    .line 487
    new-instance v3, Ljava/util/ArrayList;

    .line 488
    .line 489
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .line 491
    .line 492
    iput-object v3, v2, Lpe/hf/black20/SeriesActivity;->U:Ljava/util/ArrayList;

    .line 493
    .line 494
    new-instance v3, Lorg/json/JSONArray;

    .line 495
    .line 496
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 497
    .line 498
    .line 499
    sput-object v3, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 500
    .line 501
    const-string v3, "ORT_SERIES_PORTAL"

    .line 502
    .line 503
    const-string v11, "no"

    .line 504
    .line 505
    invoke-static {v3, v11, v11}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 506
    .line 507
    .line 508
    move-result v12

    .line 509
    if-nez v12, :cond_2

    .line 510
    .line 511
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 512
    .line 513
    .line 514
    move-result-object v12

    .line 515
    invoke-virtual {v12, v3, v11}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    goto :goto_3

    .line 520
    :cond_2
    sget-object v3, Lpe/hf/black20/SeriesActivity;->A0:Lh7/i;

    .line 521
    .line 522
    iget-object v3, v3, Lh7/i;->e:Ljava/lang/String;

    .line 523
    .line 524
    invoke-static {v3}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    :goto_3
    sget-object v11, Lpe/hf/black20/SeriesActivity;->A0:Lh7/i;

    .line 529
    .line 530
    iget-object v11, v11, Lh7/i;->c:Ljava/lang/String;

    .line 531
    .line 532
    invoke-static {v11}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v11

    .line 536
    sget-object v12, Lpe/hf/black20/SeriesActivity;->A0:Lh7/i;

    .line 537
    .line 538
    iget-object v12, v12, Lh7/i;->d:Ljava/lang/String;

    .line 539
    .line 540
    invoke-static {v12}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v12

    .line 544
    new-instance v13, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    const-string v3, "/player_api.php?username="

    .line 553
    .line 554
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    const-string v3, "&password="

    .line 561
    .line 562
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    const-string v3, "&action=get_series_info&series_id="

    .line 569
    .line 570
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    iget-object v3, v2, Lpe/hf/black20/SeriesActivity;->a0:Ljava/lang/String;

    .line 574
    .line 575
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    new-instance v11, LF2/G;

    .line 583
    .line 584
    const/4 v12, 0x5

    .line 585
    invoke-direct {v11, v12}, LF2/G;-><init>(I)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v11, v3}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    if-eqz v3, :cond_b

    .line 593
    .line 594
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 595
    .line 596
    .line 597
    move-result v11

    .line 598
    if-nez v11, :cond_b

    .line 599
    .line 600
    :try_start_1
    new-instance v11, Lorg/json/JSONObject;

    .line 601
    .line 602
    invoke-direct {v11, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    iput-object v3, v2, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 610
    .line 611
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    const-string v12, "["

    .line 616
    .line 617
    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 618
    .line 619
    .line 620
    move-result v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 621
    const-string v12, "0"

    .line 622
    .line 623
    const-string v13, "plot"

    .line 624
    .line 625
    if-eqz v3, :cond_6

    .line 626
    .line 627
    :try_start_2
    const-string v3, "arr"

    .line 628
    .line 629
    iput-object v3, v2, Lpe/hf/black20/SeriesActivity;->t0:Ljava/lang/String;

    .line 630
    .line 631
    new-instance v3, Lorg/json/JSONArray;

    .line 632
    .line 633
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 634
    .line 635
    .line 636
    sput-object v3, Lpe/hf/black20/SeriesActivity;->D0:Lorg/json/JSONArray;

    .line 637
    .line 638
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    sput-object v0, Lpe/hf/black20/SeriesActivity;->D0:Lorg/json/JSONArray;

    .line 643
    .line 644
    const/4 v0, 0x0

    .line 645
    :goto_4
    sget-object v3, Lpe/hf/black20/SeriesActivity;->D0:Lorg/json/JSONArray;

    .line 646
    .line 647
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 648
    .line 649
    .line 650
    move-result v3

    .line 651
    if-ge v0, v3, :cond_4

    .line 652
    .line 653
    sget-object v3, Lpe/hf/black20/SeriesActivity;->D0:Lorg/json/JSONArray;

    .line 654
    .line 655
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    .line 656
    .line 657
    .line 658
    move-result-object v3

    .line 659
    const/4 v14, 0x0

    .line 660
    invoke-virtual {v3, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 661
    .line 662
    .line 663
    move-result-object v3

    .line 664
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v3

    .line 668
    new-instance v11, Ljava/util/HashMap;

    .line 669
    .line 670
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v11, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    iget-object v15, v2, Lpe/hf/black20/SeriesActivity;->U:Ljava/util/ArrayList;

    .line 677
    .line 678
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    iget-object v11, v2, Lpe/hf/black20/SeriesActivity;->p0:Ljava/lang/String;

    .line 682
    .line 683
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    move-result v11

    .line 687
    if-eqz v11, :cond_3

    .line 688
    .line 689
    iput-object v3, v2, Lpe/hf/black20/SeriesActivity;->p0:Ljava/lang/String;

    .line 690
    .line 691
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 692
    .line 693
    goto :goto_4

    .line 694
    :cond_4
    const/4 v0, 0x0

    .line 695
    const/4 v14, 0x0

    .line 696
    sput-object v0, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 697
    .line 698
    new-instance v0, Lorg/json/JSONArray;

    .line 699
    .line 700
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 701
    .line 702
    .line 703
    sput-object v0, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 704
    .line 705
    sget-object v0, Lpe/hf/black20/SeriesActivity;->D0:Lorg/json/JSONArray;

    .line 706
    .line 707
    iget v3, v2, Lpe/hf/black20/SeriesActivity;->u0:I

    .line 708
    .line 709
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    sput-object v0, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 714
    .line 715
    :goto_5
    sget-object v0, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 716
    .line 717
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 718
    .line 719
    .line 720
    move-result v0

    .line 721
    if-ge v14, v0, :cond_b

    .line 722
    .line 723
    sget-object v0, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 724
    .line 725
    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 726
    .line 727
    .line 728
    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 729
    :try_start_3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 730
    .line 731
    .line 732
    move-result v3

    .line 733
    if-eqz v3, :cond_5

    .line 734
    .line 735
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 736
    .line 737
    .line 738
    :catch_1
    :cond_5
    :try_start_4
    new-instance v3, Ljava/util/HashMap;

    .line 739
    .line 740
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v10

    .line 747
    invoke-virtual {v3, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v10

    .line 754
    invoke-virtual {v3, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v10

    .line 761
    invoke-virtual {v3, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-object/from16 v15, v19

    .line 765
    .line 766
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v10

    .line 770
    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v10

    .line 777
    invoke-virtual {v3, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v3, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    iget-object v0, v2, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 791
    .line 792
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    add-int/lit8 v14, v14, 0x1

    .line 796
    .line 797
    move-object/from16 v19, v15

    .line 798
    .line 799
    goto :goto_5

    .line 800
    :cond_6
    move-object/from16 v15, v19

    .line 801
    .line 802
    const/4 v14, 0x0

    .line 803
    const-string v3, "obj"

    .line 804
    .line 805
    iput-object v3, v2, Lpe/hf/black20/SeriesActivity;->t0:Ljava/lang/String;

    .line 806
    .line 807
    new-instance v3, Lorg/json/JSONObject;

    .line 808
    .line 809
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 810
    .line 811
    .line 812
    iput-object v3, v2, Lpe/hf/black20/SeriesActivity;->S:Lorg/json/JSONObject;

    .line 813
    .line 814
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    iput-object v0, v2, Lpe/hf/black20/SeriesActivity;->S:Lorg/json/JSONObject;

    .line 819
    .line 820
    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    const/4 v3, 0x0

    .line 825
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 826
    .line 827
    .line 828
    move-result v11

    .line 829
    if-ge v3, v11, :cond_8

    .line 830
    .line 831
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v11

    .line 835
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v11

    .line 839
    new-instance v14, Ljava/util/HashMap;

    .line 840
    .line 841
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v14, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-object/from16 v16, v0

    .line 848
    .line 849
    iget-object v0, v2, Lpe/hf/black20/SeriesActivity;->U:Ljava/util/ArrayList;

    .line 850
    .line 851
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    .line 853
    .line 854
    iget-object v0, v2, Lpe/hf/black20/SeriesActivity;->p0:Ljava/lang/String;

    .line 855
    .line 856
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 857
    .line 858
    .line 859
    move-result v0

    .line 860
    if-eqz v0, :cond_7

    .line 861
    .line 862
    iput-object v11, v2, Lpe/hf/black20/SeriesActivity;->p0:Ljava/lang/String;

    .line 863
    .line 864
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 865
    .line 866
    move-object/from16 v0, v16

    .line 867
    .line 868
    const/4 v14, 0x0

    .line 869
    goto :goto_6

    .line 870
    :cond_8
    const/4 v0, 0x0

    .line 871
    sput-object v0, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 872
    .line 873
    new-instance v0, Lorg/json/JSONArray;

    .line 874
    .line 875
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 876
    .line 877
    .line 878
    sput-object v0, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 879
    .line 880
    iget-object v0, v2, Lpe/hf/black20/SeriesActivity;->S:Lorg/json/JSONObject;

    .line 881
    .line 882
    iget-object v3, v2, Lpe/hf/black20/SeriesActivity;->p0:Ljava/lang/String;

    .line 883
    .line 884
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    sput-object v0, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 889
    .line 890
    const/4 v0, 0x0

    .line 891
    :goto_7
    sget-object v3, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 892
    .line 893
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 894
    .line 895
    .line 896
    move-result v3

    .line 897
    if-ge v0, v3, :cond_b

    .line 898
    .line 899
    sget-object v3, Lpe/hf/black20/SeriesActivity;->C0:Lorg/json/JSONArray;

    .line 900
    .line 901
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 902
    .line 903
    .line 904
    move-result-object v3

    .line 905
    iget-object v10, v2, Lpe/hf/black20/SeriesActivity;->p0:Ljava/lang/String;

    .line 906
    .line 907
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v11

    .line 911
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 912
    .line 913
    .line 914
    move-result v10
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 915
    if-eqz v10, :cond_a

    .line 916
    .line 917
    :try_start_5
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 918
    .line 919
    .line 920
    move-result v10

    .line 921
    if-eqz v10, :cond_9

    .line 922
    .line 923
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 924
    .line 925
    .line 926
    move-result-object v10

    .line 927
    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 928
    .line 929
    .line 930
    move-result v11

    .line 931
    if-eqz v11, :cond_9

    .line 932
    .line 933
    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 937
    goto :goto_8

    .line 938
    :catch_2
    :cond_9
    move-object v10, v9

    .line 939
    :goto_8
    :try_start_6
    new-instance v11, Ljava/util/HashMap;

    .line 940
    .line 941
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 942
    .line 943
    .line 944
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v12

    .line 948
    invoke-virtual {v11, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v12

    .line 955
    invoke-virtual {v11, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v12

    .line 962
    invoke-virtual {v11, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v12

    .line 969
    invoke-virtual {v11, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v12

    .line 976
    invoke-virtual {v11, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    invoke-virtual {v11, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v3

    .line 986
    invoke-virtual {v11, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    iget-object v3, v2, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 990
    .line 991
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    .line 992
    .line 993
    .line 994
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 995
    .line 996
    goto :goto_7

    .line 997
    :catch_3
    :cond_b
    return-void

    .line 998
    nop

    .line 999
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Void;)V
    .locals 10

    .line 1
    iget v0, p0, Lb7/B1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "Picasso Crashed"

    .line 6
    .line 7
    const-string v4, "XCIPTV_TAG"

    .line 8
    .line 9
    const v5, 0x7f08053b

    .line 10
    .line 11
    .line 12
    const v6, 0x7f0805f0

    .line 13
    .line 14
    .line 15
    const/16 v7, 0x8

    .line 16
    .line 17
    iget-object v8, p0, Lb7/B1;->b:Lpe/hf/black20/SeriesActivity;

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, v8, Lpe/hf/black20/SeriesActivity;->I:Landroid/widget/ProgressBar;

    .line 26
    .line 27
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v8, Lpe/hf/black20/SeriesActivity;->h0:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v0, "file"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iget-object p1, v8, Lpe/hf/black20/SeriesActivity;->h0:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "file:/"

    .line 47
    .line 48
    const-string v1, ""

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, v8, Lpe/hf/black20/SeriesActivity;->h0:Ljava/lang/String;

    .line 55
    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    sget-object v0, Lpe/hf/black20/SeriesActivity;->A0:Lh7/i;

    .line 62
    .line 63
    iget-object v0, v0, Lh7/i;->e:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v0, v8, Lpe/hf/black20/SeriesActivity;->h0:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, v8, Lpe/hf/black20/SeriesActivity;->h0:Ljava/lang/String;

    .line 82
    .line 83
    :cond_0
    iget-object p1, v8, Lpe/hf/black20/SeriesActivity;->G:Lpe/hf/black20/SeriesActivity;

    .line 84
    .line 85
    :try_start_0
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 86
    .line 87
    .line 88
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    iget-object v1, v8, Lpe/hf/black20/SeriesActivity;->v0:LN2/a;

    .line 90
    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    :try_start_1
    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object v0, v8, Lpe/hf/black20/SeriesActivity;->h0:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, LL2/a;->b()LL2/a;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lcom/bumptech/glide/l;

    .line 108
    .line 109
    invoke-static {v1}, LG2/c;->b(LN2/a;)LG2/c;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1, v6}, LL2/a;->f(I)LL2/a;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lcom/bumptech/glide/l;

    .line 122
    .line 123
    invoke-virtual {p1, v6}, LL2/a;->m(I)LL2/a;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lcom/bumptech/glide/l;

    .line 128
    .line 129
    iget-object v0, v8, Lpe/hf/black20/SeriesActivity;->r0:Landroid/widget/ImageView;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_1
    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object v0, v8, Lpe/hf/black20/SeriesActivity;->h0:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, LL2/a;->b()LL2/a;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Lcom/bumptech/glide/l;

    .line 150
    .line 151
    invoke-static {v1}, LG2/c;->b(LN2/a;)LG2/c;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1, v5}, LL2/a;->f(I)LL2/a;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Lcom/bumptech/glide/l;

    .line 164
    .line 165
    invoke-virtual {p1, v5}, LL2/a;->m(I)LL2/a;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Lcom/bumptech/glide/l;

    .line 170
    .line 171
    iget-object v0, v8, Lpe/hf/black20/SeriesActivity;->r0:Landroid/widget/ImageView;

    .line 172
    .line 173
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :catch_0
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    :goto_0
    iget-object p1, v8, Lpe/hf/black20/SeriesActivity;->L:Landroid/widget/TextView;

    .line 181
    .line 182
    iget-object v0, v8, Lpe/hf/black20/SeriesActivity;->b0:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, v8, Lpe/hf/black20/SeriesActivity;->O:Landroid/widget/TextView;

    .line 188
    .line 189
    iget-object v0, v8, Lpe/hf/black20/SeriesActivity;->e0:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, v8, Lpe/hf/black20/SeriesActivity;->Q:Landroid/widget/TextView;

    .line 195
    .line 196
    iget-object v0, v8, Lpe/hf/black20/SeriesActivity;->g0:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, v8, Lpe/hf/black20/SeriesActivity;->P:Landroid/widget/TextView;

    .line 202
    .line 203
    iget-object v0, v8, Lpe/hf/black20/SeriesActivity;->f0:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v8}, Lpe/hf/black20/SeriesActivity;->a(Lpe/hf/black20/SeriesActivity;)V

    .line 209
    .line 210
    .line 211
    new-instance p1, Lb7/B1;

    .line 212
    .line 213
    const/4 v0, 0x0

    .line 214
    invoke-direct {p1, v8, v0}, Lb7/B1;-><init>(Lpe/hf/black20/SeriesActivity;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    new-array v0, v2, [Ljava/lang/Void;

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, v8, Lpe/hf/black20/SeriesActivity;->I:Landroid/widget/ProgressBar;

    .line 227
    .line 228
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 229
    .line 230
    .line 231
    new-instance p1, Lb7/t;

    .line 232
    .line 233
    iget-object v0, v8, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-direct {p1, v1, v8, v0}, Lb7/t;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    .line 236
    .line 237
    .line 238
    sget-object v0, Lpe/hf/black20/SeriesActivity;->B0:Landroid/widget/ListView;

    .line 239
    .line 240
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    .line 242
    .line 243
    sget-object p1, Lpe/hf/black20/SeriesActivity;->B0:Landroid/widget/ListView;

    .line 244
    .line 245
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 246
    .line 247
    .line 248
    iget-boolean p1, v8, Lpe/hf/black20/SeriesActivity;->Y:Z

    .line 249
    .line 250
    if-nez p1, :cond_2

    .line 251
    .line 252
    invoke-virtual {v8}, Lpe/hf/black20/SeriesActivity;->c()V

    .line 253
    .line 254
    .line 255
    :cond_2
    return-void

    .line 256
    :pswitch_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    :try_start_2
    iget-object p1, v8, Lpe/hf/black20/SeriesActivity;->s0:Lorg/json/JSONObject;

    .line 260
    .line 261
    const-string v0, "backdrop_path"

    .line 262
    .line 263
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 276
    .line 277
    .line 278
    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 279
    const/16 v2, 0xa

    .line 280
    .line 281
    if-le v0, v2, :cond_4

    .line 282
    .line 283
    iget-object v0, v8, Lpe/hf/black20/SeriesActivity;->G:Lpe/hf/black20/SeriesActivity;

    .line 284
    .line 285
    :try_start_3
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 286
    .line 287
    .line 288
    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 289
    iget-object v9, v8, Lpe/hf/black20/SeriesActivity;->v0:LN2/a;

    .line 290
    .line 291
    if-eqz v2, :cond_3

    .line 292
    .line 293
    :try_start_4
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-virtual {p1}, LL2/a;->g()LL2/a;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    check-cast p1, Lcom/bumptech/glide/l;

    .line 306
    .line 307
    invoke-static {v9}, LG2/c;->b(LN2/a;)LG2/c;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {p1, v6}, LL2/a;->f(I)LL2/a;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    check-cast p1, Lcom/bumptech/glide/l;

    .line 320
    .line 321
    invoke-virtual {p1, v6}, LL2/a;->m(I)LL2/a;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    check-cast p1, Lcom/bumptech/glide/l;

    .line 326
    .line 327
    iget-object v0, v8, Lpe/hf/black20/SeriesActivity;->r0:Landroid/widget/ImageView;

    .line 328
    .line 329
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 330
    .line 331
    .line 332
    goto :goto_1

    .line 333
    :cond_3
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-virtual {p1}, LL2/a;->g()LL2/a;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    check-cast p1, Lcom/bumptech/glide/l;

    .line 346
    .line 347
    invoke-static {v9}, LG2/c;->b(LN2/a;)LG2/c;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    invoke-virtual {p1, v5}, LL2/a;->f(I)LL2/a;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    check-cast p1, Lcom/bumptech/glide/l;

    .line 360
    .line 361
    invoke-virtual {p1, v5}, LL2/a;->m(I)LL2/a;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    check-cast p1, Lcom/bumptech/glide/l;

    .line 366
    .line 367
    iget-object v0, v8, Lpe/hf/black20/SeriesActivity;->r0:Landroid/widget/ImageView;

    .line 368
    .line 369
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 370
    .line 371
    .line 372
    goto :goto_1

    .line 373
    :catch_1
    :try_start_5
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 374
    .line 375
    .line 376
    :catch_2
    :cond_4
    :goto_1
    iget-object p1, v8, Lpe/hf/black20/SeriesActivity;->I:Landroid/widget/ProgressBar;

    .line 377
    .line 378
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 379
    .line 380
    .line 381
    new-instance p1, Lb7/t;

    .line 382
    .line 383
    iget-object v0, v8, Lpe/hf/black20/SeriesActivity;->T:Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-direct {p1, v1, v8, v0}, Lb7/t;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    .line 386
    .line 387
    .line 388
    sget-object v0, Lpe/hf/black20/SeriesActivity;->B0:Landroid/widget/ListView;

    .line 389
    .line 390
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 391
    .line 392
    .line 393
    sget-object p1, Lpe/hf/black20/SeriesActivity;->B0:Landroid/widget/ListView;

    .line 394
    .line 395
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 396
    .line 397
    .line 398
    invoke-virtual {v8}, Lpe/hf/black20/SeriesActivity;->c()V

    .line 399
    .line 400
    .line 401
    invoke-static {v8}, Lpe/hf/black20/SeriesActivity;->a(Lpe/hf/black20/SeriesActivity;)V

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lb7/B1;->a:I

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
    invoke-virtual {p0}, Lb7/B1;->a()V

    .line 10
    .line 11
    .line 12
    return-object v1

    .line 13
    :pswitch_0
    check-cast p1, [Ljava/lang/Void;

    .line 14
    .line 15
    invoke-virtual {p0}, Lb7/B1;->a()V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :pswitch_1
    check-cast p1, [Ljava/lang/Void;

    .line 20
    .line 21
    invoke-virtual {p0}, Lb7/B1;->a()V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lb7/B1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Void;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lb7/B1;->b(Ljava/lang/Void;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lb7/B1;->b(Ljava/lang/Void;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast p1, Ljava/lang/Void;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lb7/B1;->b(Ljava/lang/Void;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreExecute()V
    .locals 5

    .line 1
    iget v0, p0, Lb7/B1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lb7/B1;->b:Lpe/hf/black20/SeriesActivity;

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
    iget-object v0, v2, Lpe/hf/black20/SeriesActivity;->I:Landroid/widget/ProgressBar;

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
    iget-object v0, v2, Lpe/hf/black20/SeriesActivity;->I:Landroid/widget/ProgressBar;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lpe/hf/black20/SeriesActivity;->A0:Lh7/i;

    .line 27
    .line 28
    iget-object v0, v0, Lh7/i;->e:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v3, ":"

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    aget-object v1, v0, v1

    .line 46
    .line 47
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    aget-object v0, v0, v1

    .line 55
    .line 56
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, v2, Lpe/hf/black20/SeriesActivity;->W:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v0, v2, Lpe/hf/black20/SeriesActivity;->H:Landroid/content/SharedPreferences;

    .line 66
    .line 67
    const-string v1, "streamingPort"

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, v2, Lpe/hf/black20/SeriesActivity;->V:Ljava/lang/String;

    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 78
    .line 79
    .line 80
    iget-object v0, v2, Lpe/hf/black20/SeriesActivity;->I:Landroid/widget/ProgressBar;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
