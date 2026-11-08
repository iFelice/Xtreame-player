.class public final Lk3/j;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lb7/S0;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    iput v0, p0, Lk3/j;->a:I

    invoke-direct {p0, p1, v0}, Lk3/j;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p2, p0, Lk3/j;->a:I

    iput-object p1, p0, Lk3/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk3/k;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Lk3/j;->a:I

    .line 4
    iput-object p1, p0, Lk3/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/DeviceStatus;)V
    .locals 1

    .line 5
    const/4 v0, 0x1

    iput v0, p0, Lk3/j;->a:I

    invoke-direct {p0, p1, v0}, Lk3/j;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/MovieInfoActivity;)V
    .locals 1

    .line 6
    const/4 v0, 0x2

    iput v0, p0, Lk3/j;->a:I

    invoke-direct {p0, p1, v0}, Lk3/j;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/ORPlayerMainActivity;)V
    .locals 1

    .line 7
    const/4 v0, 0x3

    iput v0, p0, Lk3/j;->a:I

    invoke-direct {p0, p1, v0}, Lk3/j;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/ProgramRemindersActivity;)V
    .locals 1

    .line 8
    const/4 v0, 0x5

    iput v0, p0, Lk3/j;->a:I

    invoke-direct {p0, p1, v0}, Lk3/j;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/ServiceStatusActivity;)V
    .locals 1

    .line 9
    const/4 v0, 0x6

    iput v0, p0, Lk3/j;->a:I

    invoke-direct {p0, p1, v0}, Lk3/j;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/UsersHistoryActivity;)V
    .locals 1

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lk3/j;->a:I

    invoke-direct {p0, p1, v0}, Lk3/j;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/updatecontents/M3UUpdateContents;)V
    .locals 1

    .line 11
    const/16 v0, 0x8

    iput v0, p0, Lk3/j;->a:I

    invoke-direct {p0, p1, v0}, Lk3/j;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/util/a;)V
    .locals 1

    .line 12
    const/16 v0, 0x9

    iput v0, p0, Lk3/j;->a:I

    invoke-direct {p0, p1, v0}, Lk3/j;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method private c(Ljava/lang/Void;)V
    .locals 18

    .line 1
    const-string v0, "backdrop_path"

    .line 2
    .line 3
    const-string v1, "movie_image"

    .line 4
    .line 5
    const-string v2, "duration"

    .line 6
    .line 7
    const-string v3, "duration_secs"

    .line 8
    .line 9
    const-string v4, "genre"

    .line 10
    .line 11
    const-string v5, ": "

    .line 12
    .line 13
    const-string v6, "releasedate"

    .line 14
    .line 15
    const-string v7, "rating"

    .line 16
    .line 17
    const-string v8, " "

    .line 18
    .line 19
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move-object/from16 v9, p0

    .line 23
    .line 24
    iget-object v10, v9, Lk3/j;->b:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v11, v10

    .line 27
    check-cast v11, Lpe/hf/black20/MovieInfoActivity;

    .line 28
    .line 29
    iget-object v12, v11, Lpe/hf/black20/MovieInfoActivity;->N:Landroid/widget/TextView;

    .line 30
    .line 31
    iget-object v13, v11, Lpe/hf/black20/MovieInfoActivity;->U:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v12, v11, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 37
    .line 38
    if-eqz v12, :cond_b

    .line 39
    .line 40
    :try_start_0
    move-object v12, v10

    .line 41
    check-cast v12, Lpe/hf/black20/MovieInfoActivity;

    .line 42
    .line 43
    iget-object v12, v12, Lpe/hf/black20/MovieInfoActivity;->O:Landroid/widget/TextView;

    .line 44
    .line 45
    move-object v13, v10

    .line 46
    check-cast v13, Lpe/hf/black20/MovieInfoActivity;

    .line 47
    .line 48
    iget-object v13, v13, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 49
    .line 50
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v13

    .line 54
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    move-object v12, v10

    .line 58
    check-cast v12, Lpe/hf/black20/MovieInfoActivity;

    .line 59
    .line 60
    iget-object v12, v12, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 61
    .line 62
    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v12

    .line 66
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v13
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 70
    const/4 v14, 0x0

    .line 71
    const-string v15, ""

    .line 72
    .line 73
    if-lez v13, :cond_0

    .line 74
    .line 75
    const/4 v13, 0x1

    .line 76
    :try_start_1
    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    move-object v14, v15

    .line 85
    const/4 v13, 0x0

    .line 86
    :goto_0
    if-ge v13, v12, :cond_0

    .line 87
    .line 88
    new-instance v9, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v14, "\u2b50"

    .line 97
    .line 98
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v14

    .line 105
    move-object v9, v10

    .line 106
    check-cast v9, Lpe/hf/black20/MovieInfoActivity;

    .line 107
    .line 108
    iget-object v9, v9, Lpe/hf/black20/MovieInfoActivity;->T:Landroid/widget/TextView;

    .line 109
    .line 110
    move/from16 v16, v12

    .line 111
    .line 112
    new-instance v12, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move-object/from16 v17, v14

    .line 121
    .line 122
    const-string v14, " ("

    .line 123
    .line 124
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    move-object v14, v10

    .line 128
    check-cast v14, Lpe/hf/black20/MovieInfoActivity;

    .line 129
    .line 130
    iget-object v14, v14, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 131
    .line 132
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v14

    .line 136
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v14, ")"

    .line 140
    .line 141
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v12

    .line 148
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    .line 150
    .line 151
    add-int/lit8 v13, v13, 0x1

    .line 152
    .line 153
    move-object/from16 v9, p0

    .line 154
    .line 155
    move/from16 v12, v16

    .line 156
    .line 157
    move-object/from16 v14, v17

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :catch_0
    :try_start_2
    move-object v9, v10

    .line 161
    check-cast v9, Lpe/hf/black20/MovieInfoActivity;

    .line 162
    .line 163
    iget-object v9, v9, Lpe/hf/black20/MovieInfoActivity;->T:Landroid/widget/TextView;

    .line 164
    .line 165
    move-object v12, v10

    .line 166
    check-cast v12, Lpe/hf/black20/MovieInfoActivity;

    .line 167
    .line 168
    iget-object v12, v12, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 169
    .line 170
    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    :cond_0
    move-object v9, v10

    .line 178
    check-cast v9, Lpe/hf/black20/MovieInfoActivity;

    .line 179
    .line 180
    iget-object v9, v9, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 181
    .line 182
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    move-object v12, v10

    .line 187
    check-cast v12, Lpe/hf/black20/MovieInfoActivity;

    .line 188
    .line 189
    iget-object v12, v12, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 190
    .line 191
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    if-eqz v12, :cond_2

    .line 196
    .line 197
    move-object v12, v10

    .line 198
    check-cast v12, Lpe/hf/black20/MovieInfoActivity;

    .line 199
    .line 200
    iget-object v12, v12, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 201
    .line 202
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v12

    .line 210
    const/4 v13, 0x2

    .line 211
    if-le v12, v13, :cond_1

    .line 212
    .line 213
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->D(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    goto :goto_1

    .line 222
    :cond_1
    move-object v3, v10

    .line 223
    check-cast v3, Lpe/hf/black20/MovieInfoActivity;

    .line 224
    .line 225
    iget-object v3, v3, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 226
    .line 227
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    const-string v12, "00:00:00"

    .line 232
    .line 233
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-eqz v3, :cond_3

    .line 238
    .line 239
    :cond_2
    move-object v2, v15

    .line 240
    goto :goto_1

    .line 241
    :cond_3
    move-object v3, v10

    .line 242
    check-cast v3, Lpe/hf/black20/MovieInfoActivity;

    .line 243
    .line 244
    iget-object v3, v3, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 245
    .line 246
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    const/16 v9, 0x8

    .line 255
    .line 256
    if-le v3, v9, :cond_5

    .line 257
    .line 258
    move-object v3, v10

    .line 259
    check-cast v3, Lpe/hf/black20/MovieInfoActivity;

    .line 260
    .line 261
    iget-object v3, v3, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 262
    .line 263
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-static {v3}, Lpe/hf/black20/util/Methods;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    if-eqz v9, :cond_4

    .line 276
    .line 277
    move-object v9, v10

    .line 278
    check-cast v9, Lpe/hf/black20/MovieInfoActivity;

    .line 279
    .line 280
    iget-object v9, v9, Lpe/hf/black20/MovieInfoActivity;->P:Landroid/widget/TextView;

    .line 281
    .line 282
    new-instance v12, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v2, "  "

    .line 291
    .line 292
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    .line 304
    .line 305
    goto :goto_2

    .line 306
    :cond_4
    move-object v2, v10

    .line 307
    check-cast v2, Lpe/hf/black20/MovieInfoActivity;

    .line 308
    .line 309
    iget-object v2, v2, Lpe/hf/black20/MovieInfoActivity;->P:Landroid/widget/TextView;

    .line 310
    .line 311
    move-object v3, v10

    .line 312
    check-cast v3, Lpe/hf/black20/MovieInfoActivity;

    .line 313
    .line 314
    iget-object v3, v3, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 315
    .line 316
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .line 322
    .line 323
    :cond_5
    :goto_2
    move-object v2, v10

    .line 324
    check-cast v2, Lpe/hf/black20/MovieInfoActivity;

    .line 325
    .line 326
    iget-object v2, v2, Lpe/hf/black20/MovieInfoActivity;->S:Landroid/widget/TextView;

    .line 327
    .line 328
    move-object v3, v10

    .line 329
    check-cast v3, Lpe/hf/black20/MovieInfoActivity;

    .line 330
    .line 331
    iget-object v3, v3, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 332
    .line 333
    const-string v9, "director"

    .line 334
    .line 335
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    .line 341
    .line 342
    move-object v2, v10

    .line 343
    check-cast v2, Lpe/hf/black20/MovieInfoActivity;

    .line 344
    .line 345
    iget-object v2, v2, Lpe/hf/black20/MovieInfoActivity;->R:Landroid/widget/TextView;

    .line 346
    .line 347
    move-object v3, v10

    .line 348
    check-cast v3, Lpe/hf/black20/MovieInfoActivity;

    .line 349
    .line 350
    iget-object v3, v3, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 351
    .line 352
    const-string v9, "cast"

    .line 353
    .line 354
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    .line 360
    .line 361
    move-object v2, v10

    .line 362
    check-cast v2, Lpe/hf/black20/MovieInfoActivity;

    .line 363
    .line 364
    iget-object v2, v2, Lpe/hf/black20/MovieInfoActivity;->Q:Landroid/widget/TextView;

    .line 365
    .line 366
    move-object v3, v10

    .line 367
    check-cast v3, Lpe/hf/black20/MovieInfoActivity;

    .line 368
    .line 369
    iget-object v3, v3, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 370
    .line 371
    const-string v9, "plot"

    .line 372
    .line 373
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    .line 379
    .line 380
    move-object v2, v10

    .line 381
    check-cast v2, Lpe/hf/black20/MovieInfoActivity;

    .line 382
    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    move-object v9, v10

    .line 389
    check-cast v9, Lpe/hf/black20/MovieInfoActivity;

    .line 390
    .line 391
    iget-object v9, v9, Lpe/hf/black20/MovieInfoActivity;->G:Lpe/hf/black20/MovieInfoActivity;

    .line 392
    .line 393
    const v12, 0x7f13020a

    .line 394
    .line 395
    .line 396
    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v9

    .line 400
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    move-object v9, v10

    .line 407
    check-cast v9, Lpe/hf/black20/MovieInfoActivity;

    .line 408
    .line 409
    iget-object v9, v9, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 410
    .line 411
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v7

    .line 415
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    move-object v7, v10

    .line 422
    check-cast v7, Lpe/hf/black20/MovieInfoActivity;

    .line 423
    .line 424
    iget-object v7, v7, Lpe/hf/black20/MovieInfoActivity;->G:Lpe/hf/black20/MovieInfoActivity;

    .line 425
    .line 426
    const v9, 0x7f1301d0

    .line 427
    .line 428
    .line 429
    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v7

    .line 433
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    move-object v7, v10

    .line 440
    check-cast v7, Lpe/hf/black20/MovieInfoActivity;

    .line 441
    .line 442
    iget-object v7, v7, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 443
    .line 444
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    move-object v4, v10

    .line 455
    check-cast v4, Lpe/hf/black20/MovieInfoActivity;

    .line 456
    .line 457
    iget-object v4, v4, Lpe/hf/black20/MovieInfoActivity;->G:Lpe/hf/black20/MovieInfoActivity;

    .line 458
    .line 459
    const v7, 0x7f1301be

    .line 460
    .line 461
    .line 462
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    move-object v4, v10

    .line 473
    check-cast v4, Lpe/hf/black20/MovieInfoActivity;

    .line 474
    .line 475
    iget-object v4, v4, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 476
    .line 477
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    iput-object v3, v2, Lpe/hf/black20/MovieInfoActivity;->Z:Ljava/lang/String;

    .line 489
    .line 490
    move-object v2, v10

    .line 491
    check-cast v2, Lpe/hf/black20/MovieInfoActivity;

    .line 492
    .line 493
    iget-object v2, v2, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 494
    .line 495
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 503
    const-string v3, "XCIPTV_TAG"

    .line 504
    .line 505
    const-string v4, "\\\\"

    .line 506
    .line 507
    const-string v5, "%20"

    .line 508
    .line 509
    const v6, 0x7f0809c4

    .line 510
    .line 511
    .line 512
    if-eqz v2, :cond_6

    .line 513
    .line 514
    :try_start_3
    move-object v1, v10

    .line 515
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 516
    .line 517
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->G:Lpe/hf/black20/MovieInfoActivity;

    .line 518
    .line 519
    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/n;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-virtual {v1}, LL2/a;->g()LL2/a;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    check-cast v1, Lcom/bumptech/glide/l;

    .line 536
    .line 537
    move-object v2, v10

    .line 538
    check-cast v2, Lpe/hf/black20/MovieInfoActivity;

    .line 539
    .line 540
    iget-object v2, v2, Lpe/hf/black20/MovieInfoActivity;->k0:LN2/a;

    .line 541
    .line 542
    invoke-static {v2}, LG2/c;->b(LN2/a;)LG2/c;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    move-object v2, v10

    .line 551
    check-cast v2, Lpe/hf/black20/MovieInfoActivity;

    .line 552
    .line 553
    iget-object v2, v2, Lpe/hf/black20/MovieInfoActivity;->d0:Landroid/widget/ImageView;

    .line 554
    .line 555
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 556
    .line 557
    .line 558
    goto :goto_3

    .line 559
    :cond_6
    move-object v2, v10

    .line 560
    check-cast v2, Lpe/hf/black20/MovieInfoActivity;

    .line 561
    .line 562
    iget-object v2, v2, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 563
    .line 564
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    invoke-virtual {v1, v4, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 576
    :try_start_4
    move-object v2, v10

    .line 577
    check-cast v2, Lpe/hf/black20/MovieInfoActivity;

    .line 578
    .line 579
    iget-object v2, v2, Lpe/hf/black20/MovieInfoActivity;->G:Lpe/hf/black20/MovieInfoActivity;

    .line 580
    .line 581
    invoke-static {v2}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    invoke-virtual {v1}, LL2/a;->g()LL2/a;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    check-cast v1, Lcom/bumptech/glide/l;

    .line 594
    .line 595
    move-object v2, v10

    .line 596
    check-cast v2, Lpe/hf/black20/MovieInfoActivity;

    .line 597
    .line 598
    iget-object v2, v2, Lpe/hf/black20/MovieInfoActivity;->k0:LN2/a;

    .line 599
    .line 600
    invoke-static {v2}, LG2/c;->b(LN2/a;)LG2/c;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    invoke-virtual {v1, v6}, LL2/a;->m(I)LL2/a;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    check-cast v1, Lcom/bumptech/glide/l;

    .line 613
    .line 614
    invoke-virtual {v1, v6}, LL2/a;->f(I)LL2/a;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    check-cast v1, Lcom/bumptech/glide/l;

    .line 619
    .line 620
    move-object v2, v10

    .line 621
    check-cast v2, Lpe/hf/black20/MovieInfoActivity;

    .line 622
    .line 623
    iget-object v2, v2, Lpe/hf/black20/MovieInfoActivity;->d0:Landroid/widget/ImageView;

    .line 624
    .line 625
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 626
    .line 627
    .line 628
    goto :goto_3

    .line 629
    :catch_1
    :try_start_5
    const-string v1, "Picasso Crashed"

    .line 630
    .line 631
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    .line 633
    .line 634
    :goto_3
    new-instance v1, Lorg/json/JSONArray;

    .line 635
    .line 636
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 637
    .line 638
    .line 639
    move-object v1, v10

    .line 640
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 641
    .line 642
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 643
    .line 644
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 649
    .line 650
    .line 651
    move-result v1

    .line 652
    if-lez v1, :cond_7

    .line 653
    .line 654
    move-object v1, v10

    .line 655
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 656
    .line 657
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 658
    .line 659
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    move-object v1, v10

    .line 664
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 665
    .line 666
    const/4 v2, 0x0

    .line 667
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    iput-object v0, v1, Lpe/hf/black20/MovieInfoActivity;->a0:Ljava/lang/String;

    .line 672
    .line 673
    move-object v0, v10

    .line 674
    check-cast v0, Lpe/hf/black20/MovieInfoActivity;

    .line 675
    .line 676
    move-object v1, v10

    .line 677
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 678
    .line 679
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->a0:Ljava/lang/String;

    .line 680
    .line 681
    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    iput-object v1, v0, Lpe/hf/black20/MovieInfoActivity;->a0:Ljava/lang/String;

    .line 686
    .line 687
    move-object v0, v10

    .line 688
    check-cast v0, Lpe/hf/black20/MovieInfoActivity;

    .line 689
    .line 690
    move-object v1, v10

    .line 691
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 692
    .line 693
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->a0:Ljava/lang/String;

    .line 694
    .line 695
    invoke-virtual {v1, v4, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    iput-object v1, v0, Lpe/hf/black20/MovieInfoActivity;->a0:Ljava/lang/String;

    .line 700
    .line 701
    goto :goto_4

    .line 702
    :cond_7
    move-object v0, v10

    .line 703
    check-cast v0, Lpe/hf/black20/MovieInfoActivity;

    .line 704
    .line 705
    iput-object v15, v0, Lpe/hf/black20/MovieInfoActivity;->a0:Ljava/lang/String;

    .line 706
    .line 707
    :goto_4
    move-object v0, v10

    .line 708
    check-cast v0, Lpe/hf/black20/MovieInfoActivity;

    .line 709
    .line 710
    iget-object v0, v0, Lpe/hf/black20/MovieInfoActivity;->a0:Ljava/lang/String;

    .line 711
    .line 712
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    const/16 v1, 0xa

    .line 717
    .line 718
    const v2, 0x7f08053b

    .line 719
    .line 720
    .line 721
    const v6, 0x7f0805f0

    .line 722
    .line 723
    .line 724
    if-ge v0, v1, :cond_9

    .line 725
    .line 726
    move-object v0, v10

    .line 727
    check-cast v0, Lpe/hf/black20/MovieInfoActivity;

    .line 728
    .line 729
    iget-object v0, v0, Lpe/hf/black20/MovieInfoActivity;->G:Lpe/hf/black20/MovieInfoActivity;

    .line 730
    .line 731
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 732
    .line 733
    .line 734
    move-result v0

    .line 735
    if-eqz v0, :cond_8

    .line 736
    .line 737
    move-object v0, v10

    .line 738
    check-cast v0, Lpe/hf/black20/MovieInfoActivity;

    .line 739
    .line 740
    iget-object v0, v0, Lpe/hf/black20/MovieInfoActivity;->G:Lpe/hf/black20/MovieInfoActivity;

    .line 741
    .line 742
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/n;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    invoke-virtual {v0}, LL2/a;->b()LL2/a;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    check-cast v0, Lcom/bumptech/glide/l;

    .line 759
    .line 760
    move-object v1, v10

    .line 761
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 762
    .line 763
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->k0:LN2/a;

    .line 764
    .line 765
    invoke-static {v1}, LG2/c;->b(LN2/a;)LG2/c;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    move-object v1, v10

    .line 774
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 775
    .line 776
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->h0:Landroid/widget/ImageView;

    .line 777
    .line 778
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 779
    .line 780
    .line 781
    goto/16 :goto_5

    .line 782
    .line 783
    :cond_8
    move-object v0, v10

    .line 784
    check-cast v0, Lpe/hf/black20/MovieInfoActivity;

    .line 785
    .line 786
    iget-object v0, v0, Lpe/hf/black20/MovieInfoActivity;->G:Lpe/hf/black20/MovieInfoActivity;

    .line 787
    .line 788
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/n;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    invoke-virtual {v0}, LL2/a;->b()LL2/a;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    check-cast v0, Lcom/bumptech/glide/l;

    .line 805
    .line 806
    move-object v1, v10

    .line 807
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 808
    .line 809
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->k0:LN2/a;

    .line 810
    .line 811
    invoke-static {v1}, LG2/c;->b(LN2/a;)LG2/c;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    move-object v1, v10

    .line 820
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 821
    .line 822
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->h0:Landroid/widget/ImageView;

    .line 823
    .line 824
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 825
    .line 826
    .line 827
    goto/16 :goto_5

    .line 828
    .line 829
    :cond_9
    :try_start_6
    move-object v0, v10

    .line 830
    check-cast v0, Lpe/hf/black20/MovieInfoActivity;

    .line 831
    .line 832
    move-object v1, v10

    .line 833
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 834
    .line 835
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->a0:Ljava/lang/String;

    .line 836
    .line 837
    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v1

    .line 841
    iput-object v1, v0, Lpe/hf/black20/MovieInfoActivity;->a0:Ljava/lang/String;

    .line 842
    .line 843
    move-object v0, v10

    .line 844
    check-cast v0, Lpe/hf/black20/MovieInfoActivity;

    .line 845
    .line 846
    move-object v1, v10

    .line 847
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 848
    .line 849
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->a0:Ljava/lang/String;

    .line 850
    .line 851
    invoke-virtual {v1, v4, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    iput-object v1, v0, Lpe/hf/black20/MovieInfoActivity;->a0:Ljava/lang/String;

    .line 856
    .line 857
    move-object v0, v10

    .line 858
    check-cast v0, Lpe/hf/black20/MovieInfoActivity;

    .line 859
    .line 860
    iget-object v0, v0, Lpe/hf/black20/MovieInfoActivity;->G:Lpe/hf/black20/MovieInfoActivity;

    .line 861
    .line 862
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 863
    .line 864
    .line 865
    move-result v0

    .line 866
    if-eqz v0, :cond_a

    .line 867
    .line 868
    move-object v0, v10

    .line 869
    check-cast v0, Lpe/hf/black20/MovieInfoActivity;

    .line 870
    .line 871
    iget-object v0, v0, Lpe/hf/black20/MovieInfoActivity;->G:Lpe/hf/black20/MovieInfoActivity;

    .line 872
    .line 873
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    move-object v1, v10

    .line 878
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 879
    .line 880
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->a0:Ljava/lang/String;

    .line 881
    .line 882
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    invoke-virtual {v0}, LL2/a;->b()LL2/a;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    check-cast v0, Lcom/bumptech/glide/l;

    .line 891
    .line 892
    move-object v1, v10

    .line 893
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 894
    .line 895
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->k0:LN2/a;

    .line 896
    .line 897
    invoke-static {v1}, LG2/c;->b(LN2/a;)LG2/c;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    invoke-virtual {v0, v6}, LL2/a;->f(I)LL2/a;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    check-cast v0, Lcom/bumptech/glide/l;

    .line 910
    .line 911
    invoke-virtual {v0, v6}, LL2/a;->m(I)LL2/a;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    check-cast v0, Lcom/bumptech/glide/l;

    .line 916
    .line 917
    move-object v1, v10

    .line 918
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 919
    .line 920
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->h0:Landroid/widget/ImageView;

    .line 921
    .line 922
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 923
    .line 924
    .line 925
    goto :goto_5

    .line 926
    :cond_a
    move-object v0, v10

    .line 927
    check-cast v0, Lpe/hf/black20/MovieInfoActivity;

    .line 928
    .line 929
    iget-object v0, v0, Lpe/hf/black20/MovieInfoActivity;->G:Lpe/hf/black20/MovieInfoActivity;

    .line 930
    .line 931
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 932
    .line 933
    .line 934
    move-result-object v0

    .line 935
    move-object v1, v10

    .line 936
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 937
    .line 938
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->a0:Ljava/lang/String;

    .line 939
    .line 940
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    invoke-virtual {v0}, LL2/a;->b()LL2/a;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    check-cast v0, Lcom/bumptech/glide/l;

    .line 949
    .line 950
    move-object v1, v10

    .line 951
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 952
    .line 953
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->k0:LN2/a;

    .line 954
    .line 955
    invoke-static {v1}, LG2/c;->b(LN2/a;)LG2/c;

    .line 956
    .line 957
    .line 958
    move-result-object v1

    .line 959
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    invoke-virtual {v0, v2}, LL2/a;->f(I)LL2/a;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    check-cast v0, Lcom/bumptech/glide/l;

    .line 968
    .line 969
    invoke-virtual {v0, v2}, LL2/a;->m(I)LL2/a;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    check-cast v0, Lcom/bumptech/glide/l;

    .line 974
    .line 975
    move-object v1, v10

    .line 976
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 977
    .line 978
    iget-object v1, v1, Lpe/hf/black20/MovieInfoActivity;->h0:Landroid/widget/ImageView;

    .line 979
    .line 980
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 981
    .line 982
    .line 983
    goto :goto_5

    .line 984
    :catch_2
    :try_start_7
    const-string v0, "Glide Crashed"

    .line 985
    .line 986
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    .line 988
    .line 989
    :goto_5
    move-object v0, v10

    .line 990
    check-cast v0, Lpe/hf/black20/MovieInfoActivity;

    .line 991
    .line 992
    check-cast v10, Lpe/hf/black20/MovieInfoActivity;

    .line 993
    .line 994
    iget-object v1, v10, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 995
    .line 996
    const-string v2, "youtube_trailer"

    .line 997
    .line 998
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v1

    .line 1002
    iput-object v1, v0, Lpe/hf/black20/MovieInfoActivity;->i0:Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1003
    .line 1004
    :catch_3
    :cond_b
    iget-object v0, v11, Lpe/hf/black20/MovieInfoActivity;->J:Landroid/widget/Button;

    .line 1005
    .line 1006
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1007
    .line 1008
    .line 1009
    return-void
.end method


# virtual methods
.method public final varargs a()V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lk3/j;->a:I

    .line 4
    .line 5
    const-string v2, "-------------------No info"

    .line 6
    .line 7
    const-string v3, "XCIPTV_TAG"

    .line 8
    .line 9
    const-string v4, "info"

    .line 10
    .line 11
    const-string v5, "&action=get_vod_info&vod_id="

    .line 12
    .line 13
    const-string v6, "&password="

    .line 14
    .line 15
    const-string v7, "/player_api.php?username="

    .line 16
    .line 17
    const-string v8, "no"

    .line 18
    .line 19
    const-string v9, "ORT_VOD_PORTAL"

    .line 20
    .line 21
    const/4 v10, 0x5

    .line 22
    const/4 v11, 0x0

    .line 23
    iget-object v12, v1, Lk3/j;->b:Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v13, 0x0

    .line 26
    packed-switch v0, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    :pswitch_0
    move-object v0, v12

    .line 30
    check-cast v0, Lpe/hf/black20/updatecontents/M3UUpdateContents;

    .line 31
    .line 32
    iget-object v0, v0, Lpe/hf/black20/updatecontents/M3UUpdateContents;->J:Lh7/i;

    .line 33
    .line 34
    iget-object v0, v0, Lh7/i;->e:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 50
    .line 51
    const-string v3, "GET"

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v3, "User-Agent"

    .line 57
    .line 58
    move-object v4, v12

    .line 59
    check-cast v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;

    .line 60
    .line 61
    iget-object v4, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 62
    .line 63
    const-string v5, "agent"

    .line 64
    .line 65
    invoke-interface {v4, v5, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v0, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const v3, 0x88b8

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 76
    .line 77
    .line 78
    const v3, 0x9c40

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    new-instance v3, Ljava/io/File;

    .line 96
    .line 97
    check-cast v12, Lpe/hf/black20/updatecontents/M3UUpdateContents;

    .line 98
    .line 99
    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-nez v4, :cond_0

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    goto :goto_2

    .line 122
    :catch_1
    move-exception v0

    .line 123
    goto :goto_3

    .line 124
    :catch_2
    move-exception v0

    .line 125
    goto :goto_4

    .line 126
    :cond_0
    :goto_0
    new-instance v4, Ljava/io/FileOutputStream;

    .line 127
    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v3, "/tv_m3u.txt"

    .line 137
    .line 138
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const/16 v3, 0x400

    .line 149
    .line 150
    new-array v3, v3, [B

    .line 151
    .line 152
    const-wide/16 v5, 0x0

    .line 153
    .line 154
    const/4 v7, 0x0

    .line 155
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    const/4 v9, -0x1

    .line 160
    if-eq v8, v9, :cond_2

    .line 161
    .line 162
    int-to-long v9, v8

    .line 163
    add-long/2addr v5, v9

    .line 164
    long-to-int v9, v5

    .line 165
    mul-int/lit8 v9, v9, 0x64

    .line 166
    .line 167
    div-int/2addr v9, v0

    .line 168
    rem-int/lit8 v10, v9, 0xa

    .line 169
    .line 170
    if-nez v10, :cond_1

    .line 171
    .line 172
    if-eq v7, v9, :cond_1

    .line 173
    .line 174
    move v7, v9

    .line 175
    :cond_1
    invoke-virtual {v4, v3, v11, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .line 184
    .line 185
    goto :goto_5

    .line 186
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    .line 196
    .line 197
    :goto_5
    return-void

    .line 198
    :pswitch_1
    check-cast v12, Lpe/hf/black20/UsersHistoryActivity;

    .line 199
    .line 200
    iget-object v0, v12, Lpe/hf/black20/UsersHistoryActivity;->G:Lpe/hf/black20/UsersHistoryActivity;

    .line 201
    .line 202
    const-string v2, "pe.hf.black20"

    .line 203
    .line 204
    invoke-virtual {v0, v2, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iput-object v0, v12, Lpe/hf/black20/UsersHistoryActivity;->H:Landroid/content/SharedPreferences;

    .line 209
    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iget-object v2, v12, Lpe/hf/black20/UsersHistoryActivity;->Y:Ljava/lang/String;

    .line 215
    .line 216
    const-string v3, "xciptv_profile"

    .line 217
    .line 218
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 219
    .line 220
    .line 221
    iget-object v2, v12, Lpe/hf/black20/UsersHistoryActivity;->Y:Ljava/lang/String;

    .line 222
    .line 223
    const-string v3, "(XC)"

    .line 224
    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    const-string v3, "xtreamcodes"

    .line 230
    .line 231
    const-string v4, "whichPanel"

    .line 232
    .line 233
    if-eqz v2, :cond_3

    .line 234
    .line 235
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_3
    iget-object v2, v12, Lpe/hf/black20/UsersHistoryActivity;->Y:Ljava/lang/String;

    .line 240
    .line 241
    const-string v5, "(M3U)"

    .line 242
    .line 243
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_4

    .line 248
    .line 249
    const-string v2, "m3u"

    .line 250
    .line 251
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_4
    iget-object v2, v12, Lpe/hf/black20/UsersHistoryActivity;->Y:Ljava/lang/String;

    .line 256
    .line 257
    const-string v5, "(EZS)"

    .line 258
    .line 259
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_5

    .line 264
    .line 265
    const-string v2, "ezserver"

    .line 266
    .line 267
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 268
    .line 269
    .line 270
    goto :goto_6

    .line 271
    :cond_5
    iget-object v2, v12, Lpe/hf/black20/UsersHistoryActivity;->Y:Ljava/lang/String;

    .line 272
    .line 273
    const-string v5, "(OTR)"

    .line 274
    .line 275
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_6

    .line 280
    .line 281
    const-string v2, "otr"

    .line 282
    .line 283
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 284
    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_6
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    .line 289
    .line 290
    :goto_6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    .line 292
    .line 293
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 294
    .line 295
    .line 296
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    iget-object v2, v12, Lpe/hf/black20/UsersHistoryActivity;->Y:Ljava/lang/String;

    .line 301
    .line 302
    const-string v3, "ORT_PROFILE"

    .line 303
    .line 304
    invoke-virtual {v0, v3, v2}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 305
    .line 306
    .line 307
    return-void

    .line 308
    :pswitch_2
    check-cast v12, Lpe/hf/black20/ProgramRemindersActivity;

    .line 309
    .line 310
    new-instance v0, Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    iget-object v0, v12, Lpe/hf/black20/ProgramRemindersActivity;->G:Lpe/hf/black20/ProgramRemindersActivity;

    .line 319
    .line 320
    invoke-static {v0}, Lz4/q0;->t(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :pswitch_3
    invoke-static {v9, v8, v8}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-nez v0, :cond_7

    .line 329
    .line 330
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v0, v9, v8}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    goto :goto_7

    .line 339
    :cond_7
    move-object v0, v12

    .line 340
    check-cast v0, Lb7/S0;

    .line 341
    .line 342
    iget-object v0, v0, Lb7/S0;->F0:Lh7/i;

    .line 343
    .line 344
    iget-object v0, v0, Lh7/i;->e:Ljava/lang/String;

    .line 345
    .line 346
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    :goto_7
    move-object v8, v12

    .line 351
    check-cast v8, Lb7/S0;

    .line 352
    .line 353
    iget-object v9, v8, Lb7/S0;->F0:Lh7/i;

    .line 354
    .line 355
    iget-object v9, v9, Lh7/i;->c:Ljava/lang/String;

    .line 356
    .line 357
    invoke-static {v9}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v9

    .line 361
    iget-object v11, v8, Lb7/S0;->F0:Lh7/i;

    .line 362
    .line 363
    iget-object v11, v11, Lh7/i;->d:Ljava/lang/String;

    .line 364
    .line 365
    invoke-static {v11}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v11

    .line 369
    new-instance v14, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget-object v0, v8, Lb7/S0;->f1:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    new-instance v5, LF2/G;

    .line 402
    .line 403
    invoke-direct {v5, v10}, LF2/G;-><init>(I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v5, v0}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    if-eqz v0, :cond_8

    .line 411
    .line 412
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    .line 413
    .line 414
    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    check-cast v12, Lb7/S0;

    .line 418
    .line 419
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    iput-object v0, v12, Lb7/S0;->c1:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 424
    .line 425
    goto :goto_8

    .line 426
    :catch_3
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    iput-object v13, v8, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 430
    .line 431
    :cond_8
    :goto_8
    return-void

    .line 432
    :pswitch_4
    const-string v0, "/"

    .line 433
    .line 434
    const-string v2, "direct_source"

    .line 435
    .line 436
    const-string v3, "stream_id"

    .line 437
    .line 438
    const-string v4, "ORT_LAST_CHANNEL_NAME"

    .line 439
    .line 440
    const-string v5, "ORT_LAST_CATEGORY_ID"

    .line 441
    .line 442
    move-object v6, v12

    .line 443
    check-cast v6, Lpe/hf/black20/ORPlayerMainActivity;

    .line 444
    .line 445
    iget-object v7, v6, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 446
    .line 447
    iget-object v7, v7, Lh7/i;->c:Ljava/lang/String;

    .line 448
    .line 449
    invoke-static {v7}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v7

    .line 453
    iget-object v8, v6, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 454
    .line 455
    iget-object v8, v8, Lh7/i;->d:Ljava/lang/String;

    .line 456
    .line 457
    invoke-static {v8}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v8

    .line 461
    new-instance v9, Ljava/util/ArrayList;

    .line 462
    .line 463
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .line 465
    .line 466
    iget-object v9, v6, Lpe/hf/black20/ORPlayerMainActivity;->e0:Lpe/hf/black20/ORPlayerMainActivity;

    .line 467
    .line 468
    invoke-static {v9}, Lz4/q0;->t(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 469
    .line 470
    .line 471
    iget-boolean v9, v6, Lpe/hf/black20/ORPlayerMainActivity;->v0:Z

    .line 472
    .line 473
    const-string v10, "default"

    .line 474
    .line 475
    const-string v14, "all"

    .line 476
    .line 477
    const-string v15, ""

    .line 478
    .line 479
    if-eqz v9, :cond_9

    .line 480
    .line 481
    iget-object v9, v6, Lpe/hf/black20/ORPlayerMainActivity;->e0:Lpe/hf/black20/ORPlayerMainActivity;

    .line 482
    .line 483
    const-string v13, "0"

    .line 484
    .line 485
    invoke-static {v9, v11, v14, v10, v13}, Lz4/q0;->u(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 486
    .line 487
    .line 488
    move-result-object v9

    .line 489
    iput-object v9, v6, Lpe/hf/black20/ORPlayerMainActivity;->w0:Ljava/util/ArrayList;

    .line 490
    .line 491
    goto :goto_9

    .line 492
    :cond_9
    iget-object v9, v6, Lpe/hf/black20/ORPlayerMainActivity;->e0:Lpe/hf/black20/ORPlayerMainActivity;

    .line 493
    .line 494
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 495
    .line 496
    .line 497
    move-result-object v13

    .line 498
    const-string v1, "ORT_program_reminder_Category_id"

    .line 499
    .line 500
    invoke-virtual {v13, v1, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-static {v9, v11, v14, v10, v1}, Lz4/q0;->u(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    iput-object v1, v6, Lpe/hf/black20/ORPlayerMainActivity;->w0:Ljava/util/ArrayList;

    .line 509
    .line 510
    :goto_9
    const/4 v1, 0x0

    .line 511
    :goto_a
    iget-object v9, v6, Lpe/hf/black20/ORPlayerMainActivity;->w0:Ljava/util/ArrayList;

    .line 512
    .line 513
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 514
    .line 515
    .line 516
    move-result v9

    .line 517
    if-ge v1, v9, :cond_10

    .line 518
    .line 519
    :try_start_2
    move-object v9, v12

    .line 520
    check-cast v9, Lpe/hf/black20/ORPlayerMainActivity;

    .line 521
    .line 522
    iget-boolean v9, v9, Lpe/hf/black20/ORPlayerMainActivity;->v0:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_a

    .line 523
    .line 524
    const-string v13, "name"

    .line 525
    .line 526
    if-eqz v9, :cond_e

    .line 527
    .line 528
    :try_start_3
    move-object v9, v12

    .line 529
    check-cast v9, Lpe/hf/black20/ORPlayerMainActivity;

    .line 530
    .line 531
    iget-object v9, v9, Lpe/hf/black20/ORPlayerMainActivity;->w0:Ljava/util/ArrayList;

    .line 532
    .line 533
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v9

    .line 537
    check-cast v9, Ljava/util/HashMap;

    .line 538
    .line 539
    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v9

    .line 543
    check-cast v9, Ljava/lang/String;

    .line 544
    .line 545
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v9

    .line 549
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 550
    .line 551
    .line 552
    move-result-object v11

    .line 553
    invoke-virtual {v11, v4, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v11

    .line 557
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v11

    .line 561
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v9

    .line 565
    if-eqz v9, :cond_d

    .line 566
    .line 567
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 568
    .line 569
    .line 570
    move-result-object v9

    .line 571
    move-object v11, v12

    .line 572
    check-cast v11, Lpe/hf/black20/ORPlayerMainActivity;

    .line 573
    .line 574
    iget-object v11, v11, Lpe/hf/black20/ORPlayerMainActivity;->w0:Ljava/util/ArrayList;

    .line 575
    .line 576
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v11

    .line 580
    check-cast v11, Ljava/util/HashMap;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_a

    .line 581
    .line 582
    move-object/from16 v16, v6

    .line 583
    .line 584
    :try_start_4
    const-string v6, "category_id"

    .line 585
    .line 586
    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v6

    .line 590
    check-cast v6, Ljava/lang/String;

    .line 591
    .line 592
    invoke-virtual {v9, v5, v6}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 593
    .line 594
    .line 595
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 596
    .line 597
    .line 598
    move-result-object v6

    .line 599
    const-string v9, "ORT_LAST_CATEGORY_NAME"

    .line 600
    .line 601
    move-object v11, v12

    .line 602
    check-cast v11, Lpe/hf/black20/ORPlayerMainActivity;

    .line 603
    .line 604
    iget-object v11, v11, Lpe/hf/black20/ORPlayerMainActivity;->q0:Lc7/d;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_9

    .line 605
    .line 606
    move-object/from16 v17, v8

    .line 607
    .line 608
    :try_start_5
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 609
    .line 610
    .line 611
    move-result-object v8

    .line 612
    invoke-virtual {v8, v5, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v8

    .line 616
    invoke-virtual {v11, v8}, Lc7/d;->G0(Ljava/lang/String;)Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v8

    .line 620
    invoke-virtual {v6, v9, v8}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 621
    .line 622
    .line 623
    move-object v6, v12

    .line 624
    check-cast v6, Lpe/hf/black20/ORPlayerMainActivity;

    .line 625
    .line 626
    move-object v8, v12

    .line 627
    check-cast v8, Lpe/hf/black20/ORPlayerMainActivity;

    .line 628
    .line 629
    iget-object v8, v8, Lpe/hf/black20/ORPlayerMainActivity;->e0:Lpe/hf/black20/ORPlayerMainActivity;

    .line 630
    .line 631
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 632
    .line 633
    .line 634
    move-result-object v9

    .line 635
    invoke-virtual {v9, v5, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v9

    .line 639
    const/4 v11, 0x0

    .line 640
    invoke-static {v8, v11, v14, v10, v9}, Lz4/q0;->u(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 641
    .line 642
    .line 643
    move-result-object v8

    .line 644
    iput-object v8, v6, Lpe/hf/black20/ORPlayerMainActivity;->x0:Ljava/util/ArrayList;

    .line 645
    .line 646
    move-object v6, v12

    .line 647
    check-cast v6, Lpe/hf/black20/ORPlayerMainActivity;

    .line 648
    .line 649
    const/4 v8, 0x0

    .line 650
    iput-object v8, v6, Lpe/hf/black20/ORPlayerMainActivity;->y0:Lorg/json/JSONArray;

    .line 651
    .line 652
    move-object v6, v12

    .line 653
    check-cast v6, Lpe/hf/black20/ORPlayerMainActivity;

    .line 654
    .line 655
    new-instance v8, Lorg/json/JSONArray;

    .line 656
    .line 657
    move-object v9, v12

    .line 658
    check-cast v9, Lpe/hf/black20/ORPlayerMainActivity;

    .line 659
    .line 660
    iget-object v9, v9, Lpe/hf/black20/ORPlayerMainActivity;->x0:Ljava/util/ArrayList;

    .line 661
    .line 662
    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 663
    .line 664
    .line 665
    iput-object v8, v6, Lpe/hf/black20/ORPlayerMainActivity;->y0:Lorg/json/JSONArray;

    .line 666
    .line 667
    const/4 v6, 0x0

    .line 668
    :goto_b
    move-object v8, v12

    .line 669
    check-cast v8, Lpe/hf/black20/ORPlayerMainActivity;

    .line 670
    .line 671
    iget-object v8, v8, Lpe/hf/black20/ORPlayerMainActivity;->y0:Lorg/json/JSONArray;

    .line 672
    .line 673
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 674
    .line 675
    .line 676
    move-result v8

    .line 677
    if-ge v6, v8, :cond_c

    .line 678
    .line 679
    move-object v8, v12

    .line 680
    check-cast v8, Lpe/hf/black20/ORPlayerMainActivity;

    .line 681
    .line 682
    iget-object v8, v8, Lpe/hf/black20/ORPlayerMainActivity;->y0:Lorg/json/JSONArray;

    .line 683
    .line 684
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 685
    .line 686
    .line 687
    move-result-object v8

    .line 688
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v9

    .line 692
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v9

    .line 696
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 697
    .line 698
    .line 699
    move-result-object v11

    .line 700
    invoke-virtual {v11, v4, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v11

    .line 704
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v11

    .line 708
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    move-result v9

    .line 712
    if-eqz v9, :cond_b

    .line 713
    .line 714
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 715
    .line 716
    .line 717
    move-result-object v9

    .line 718
    const-string v11, "ORT_LAST_CHANNEL_POS"
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_8

    .line 719
    .line 720
    move-object/from16 v18, v4

    .line 721
    .line 722
    :try_start_6
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v4

    .line 726
    invoke-virtual {v9, v11, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 727
    .line 728
    .line 729
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 730
    .line 731
    .line 732
    move-result-object v4

    .line 733
    const-string v9, "ORT_LAST_STREAM_ID"

    .line 734
    .line 735
    move-object v11, v12

    .line 736
    check-cast v11, Lpe/hf/black20/ORPlayerMainActivity;

    .line 737
    .line 738
    iget-object v11, v11, Lpe/hf/black20/ORPlayerMainActivity;->w0:Ljava/util/ArrayList;

    .line 739
    .line 740
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v11

    .line 744
    check-cast v11, Ljava/util/HashMap;

    .line 745
    .line 746
    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v11

    .line 750
    check-cast v11, Ljava/lang/String;

    .line 751
    .line 752
    invoke-virtual {v4, v9, v11}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 753
    .line 754
    .line 755
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v4

    .line 759
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    move-result v4
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_7

    .line 763
    const-string v9, "ORT_LAST_STREAM_URL"

    .line 764
    .line 765
    if-eqz v4, :cond_a

    .line 766
    .line 767
    :try_start_7
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 768
    .line 769
    .line 770
    move-result-object v4

    .line 771
    new-instance v11, Ljava/lang/StringBuilder;

    .line 772
    .line 773
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 774
    .line 775
    .line 776
    move-object/from16 v19, v5

    .line 777
    .line 778
    :try_start_8
    move-object v5, v12

    .line 779
    check-cast v5, Lpe/hf/black20/ORPlayerMainActivity;

    .line 780
    .line 781
    iget-object v5, v5, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 782
    .line 783
    iget-object v5, v5, Lh7/i;->e:Ljava/lang/String;

    .line 784
    .line 785
    invoke-static {v5}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v5

    .line 789
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    const-string v5, "/live/"

    .line 793
    .line 794
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6

    .line 801
    .line 802
    .line 803
    move-object/from16 v5, v17

    .line 804
    .line 805
    :try_start_9
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v8

    .line 815
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    const-string v8, "."

    .line 819
    .line 820
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    move-object v8, v12

    .line 824
    check-cast v8, Lpe/hf/black20/ORPlayerMainActivity;

    .line 825
    .line 826
    iget-object v8, v8, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_5

    .line 827
    .line 828
    move-object/from16 v17, v0

    .line 829
    .line 830
    :try_start_a
    const-string v0, "streamFormat"
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4

    .line 831
    .line 832
    move-object/from16 v20, v3

    .line 833
    .line 834
    const/4 v3, 0x0

    .line 835
    :try_start_b
    invoke-interface {v8, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    invoke-virtual {v4, v9, v0}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 847
    .line 848
    .line 849
    goto :goto_d

    .line 850
    :catch_4
    :goto_c
    move-object/from16 v20, v3

    .line 851
    .line 852
    goto/16 :goto_11

    .line 853
    .line 854
    :catch_5
    move-object/from16 v17, v0

    .line 855
    .line 856
    goto :goto_c

    .line 857
    :catch_6
    move-object/from16 v20, v3

    .line 858
    .line 859
    goto :goto_f

    .line 860
    :catch_7
    move-object/from16 v20, v3

    .line 861
    .line 862
    goto :goto_e

    .line 863
    :cond_a
    move-object/from16 v20, v3

    .line 864
    .line 865
    move-object/from16 v19, v5

    .line 866
    .line 867
    move-object/from16 v5, v17

    .line 868
    .line 869
    move-object/from16 v17, v0

    .line 870
    .line 871
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v3

    .line 879
    invoke-virtual {v0, v9, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 880
    .line 881
    .line 882
    goto :goto_d

    .line 883
    :cond_b
    move-object/from16 v20, v3

    .line 884
    .line 885
    move-object/from16 v18, v4

    .line 886
    .line 887
    move-object/from16 v19, v5

    .line 888
    .line 889
    move-object/from16 v5, v17

    .line 890
    .line 891
    move-object/from16 v17, v0

    .line 892
    .line 893
    :goto_d
    add-int/lit8 v6, v6, 0x1

    .line 894
    .line 895
    move-object/from16 v0, v17

    .line 896
    .line 897
    move-object/from16 v4, v18

    .line 898
    .line 899
    move-object/from16 v3, v20

    .line 900
    .line 901
    const/4 v11, 0x0

    .line 902
    move-object/from16 v17, v5

    .line 903
    .line 904
    move-object/from16 v5, v19

    .line 905
    .line 906
    goto/16 :goto_b

    .line 907
    .line 908
    :catch_8
    :cond_c
    move-object/from16 v20, v3

    .line 909
    .line 910
    move-object/from16 v18, v4

    .line 911
    .line 912
    :goto_e
    move-object/from16 v19, v5

    .line 913
    .line 914
    :goto_f
    move-object/from16 v5, v17

    .line 915
    .line 916
    move-object/from16 v17, v0

    .line 917
    .line 918
    goto :goto_11

    .line 919
    :catch_9
    move-object/from16 v17, v0

    .line 920
    .line 921
    move-object/from16 v20, v3

    .line 922
    .line 923
    move-object/from16 v18, v4

    .line 924
    .line 925
    move-object/from16 v19, v5

    .line 926
    .line 927
    goto :goto_10

    .line 928
    :catch_a
    :cond_d
    move-object/from16 v17, v0

    .line 929
    .line 930
    move-object/from16 v20, v3

    .line 931
    .line 932
    move-object/from16 v18, v4

    .line 933
    .line 934
    move-object/from16 v19, v5

    .line 935
    .line 936
    move-object/from16 v16, v6

    .line 937
    .line 938
    :goto_10
    move-object v5, v8

    .line 939
    goto :goto_11

    .line 940
    :cond_e
    move-object/from16 v17, v0

    .line 941
    .line 942
    move-object/from16 v20, v3

    .line 943
    .line 944
    move-object/from16 v18, v4

    .line 945
    .line 946
    move-object/from16 v19, v5

    .line 947
    .line 948
    move-object/from16 v16, v6

    .line 949
    .line 950
    move-object v5, v8

    .line 951
    move-object v0, v12

    .line 952
    check-cast v0, Lpe/hf/black20/ORPlayerMainActivity;

    .line 953
    .line 954
    iget-object v0, v0, Lpe/hf/black20/ORPlayerMainActivity;->w0:Ljava/util/ArrayList;

    .line 955
    .line 956
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    check-cast v0, Ljava/util/HashMap;

    .line 961
    .line 962
    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    check-cast v0, Ljava/lang/String;

    .line 967
    .line 968
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 969
    .line 970
    .line 971
    move-result-object v3

    .line 972
    const-string v4, "ORT_program_reminder_Channel_name"

    .line 973
    .line 974
    invoke-virtual {v3, v4, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v3

    .line 978
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 979
    .line 980
    .line 981
    move-result v0

    .line 982
    if-eqz v0, :cond_f

    .line 983
    .line 984
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    const-string v3, "ORT_program_reminder_channel_pos"

    .line 989
    .line 990
    invoke-virtual {v0, v1, v3}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    .line 991
    .line 992
    .line 993
    :catch_b
    :cond_f
    :goto_11
    add-int/lit8 v1, v1, 0x1

    .line 994
    .line 995
    move-object v8, v5

    .line 996
    move-object/from16 v6, v16

    .line 997
    .line 998
    move-object/from16 v0, v17

    .line 999
    .line 1000
    move-object/from16 v4, v18

    .line 1001
    .line 1002
    move-object/from16 v5, v19

    .line 1003
    .line 1004
    move-object/from16 v3, v20

    .line 1005
    .line 1006
    const/4 v11, 0x0

    .line 1007
    goto/16 :goto_a

    .line 1008
    .line 1009
    :cond_10
    return-void

    .line 1010
    :pswitch_5
    invoke-static {v9, v8, v8}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v0

    .line 1014
    if-nez v0, :cond_11

    .line 1015
    .line 1016
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    invoke-virtual {v0, v9, v8}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    goto :goto_12

    .line 1025
    :cond_11
    move-object v0, v12

    .line 1026
    check-cast v0, Lpe/hf/black20/MovieInfoActivity;

    .line 1027
    .line 1028
    iget-object v0, v0, Lpe/hf/black20/MovieInfoActivity;->I:Lh7/i;

    .line 1029
    .line 1030
    iget-object v0, v0, Lh7/i;->e:Ljava/lang/String;

    .line 1031
    .line 1032
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    :goto_12
    move-object v1, v12

    .line 1037
    check-cast v1, Lpe/hf/black20/MovieInfoActivity;

    .line 1038
    .line 1039
    iget-object v8, v1, Lpe/hf/black20/MovieInfoActivity;->I:Lh7/i;

    .line 1040
    .line 1041
    iget-object v8, v8, Lh7/i;->c:Ljava/lang/String;

    .line 1042
    .line 1043
    invoke-static {v8}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v8

    .line 1047
    iget-object v9, v1, Lpe/hf/black20/MovieInfoActivity;->I:Lh7/i;

    .line 1048
    .line 1049
    iget-object v9, v9, Lh7/i;->d:Ljava/lang/String;

    .line 1050
    .line 1051
    invoke-static {v9}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v9

    .line 1055
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1056
    .line 1057
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    .line 1078
    iget-object v0, v1, Lpe/hf/black20/MovieInfoActivity;->V:Ljava/lang/String;

    .line 1079
    .line 1080
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    new-instance v5, LF2/G;

    .line 1088
    .line 1089
    invoke-direct {v5, v10}, LF2/G;-><init>(I)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v5, v0}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    if-eqz v0, :cond_12

    .line 1097
    .line 1098
    :try_start_c
    move-object v5, v12

    .line 1099
    check-cast v5, Lpe/hf/black20/MovieInfoActivity;

    .line 1100
    .line 1101
    new-instance v6, Lorg/json/JSONObject;

    .line 1102
    .line 1103
    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    iput-object v6, v5, Lpe/hf/black20/MovieInfoActivity;->L:Lorg/json/JSONObject;

    .line 1107
    .line 1108
    move-object v0, v12

    .line 1109
    check-cast v0, Lpe/hf/black20/MovieInfoActivity;

    .line 1110
    .line 1111
    check-cast v12, Lpe/hf/black20/MovieInfoActivity;

    .line 1112
    .line 1113
    iget-object v5, v12, Lpe/hf/black20/MovieInfoActivity;->L:Lorg/json/JSONObject;

    .line 1114
    .line 1115
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v4

    .line 1119
    iput-object v4, v0, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_c

    .line 1120
    .line 1121
    goto :goto_13

    .line 1122
    :catch_c
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    .line 1124
    .line 1125
    const/4 v0, 0x0

    .line 1126
    iput-object v0, v1, Lpe/hf/black20/MovieInfoActivity;->M:Lorg/json/JSONObject;

    .line 1127
    .line 1128
    :cond_12
    :goto_13
    return-void

    .line 1129
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1132
    .line 1133
    .line 1134
    invoke-static {}, Lpe/hf/black20/DeviceStatus;->papi()Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v1

    .line 1138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    .line 1140
    .line 1141
    const-string v1, "ApiIPTV.php?tag=lic&l="

    .line 1142
    .line 1143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    sget-object v1, Lpe/hf/black20/util/Config;->a:Ljava/lang/String;

    .line 1147
    .line 1148
    invoke-static {v1}, Lpe/hf/black20/util/Methods;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v1

    .line 1152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v0

    .line 1159
    new-instance v1, LF2/G;

    .line 1160
    .line 1161
    invoke-direct {v1, v10}, LF2/G;-><init>(I)V

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v1, v0}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v0

    .line 1168
    :try_start_d
    move-object v1, v12

    .line 1169
    check-cast v1, Lpe/hf/black20/DeviceStatus;

    .line 1170
    .line 1171
    new-instance v2, Lorg/json/JSONObject;

    .line 1172
    .line 1173
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1174
    .line 1175
    .line 1176
    iput-object v2, v1, Lpe/hf/black20/DeviceStatus;->M:Lorg/json/JSONObject;

    .line 1177
    .line 1178
    move-object v0, v12

    .line 1179
    check-cast v0, Lpe/hf/black20/DeviceStatus;

    .line 1180
    .line 1181
    move-object v1, v12

    .line 1182
    check-cast v1, Lpe/hf/black20/DeviceStatus;

    .line 1183
    .line 1184
    iget-object v1, v1, Lpe/hf/black20/DeviceStatus;->M:Lorg/json/JSONObject;

    .line 1185
    .line 1186
    const-string v2, "success"

    .line 1187
    .line 1188
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v1

    .line 1192
    iput-object v1, v0, Lpe/hf/black20/DeviceStatus;->O:Ljava/lang/String;

    .line 1193
    .line 1194
    move-object v0, v12

    .line 1195
    check-cast v0, Lpe/hf/black20/DeviceStatus;

    .line 1196
    .line 1197
    new-instance v1, Lorg/json/JSONObject;

    .line 1198
    .line 1199
    move-object v2, v12

    .line 1200
    check-cast v2, Lpe/hf/black20/DeviceStatus;

    .line 1201
    .line 1202
    iget-object v2, v2, Lpe/hf/black20/DeviceStatus;->M:Lorg/json/JSONObject;

    .line 1203
    .line 1204
    const-string v3, "app"

    .line 1205
    .line 1206
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v2

    .line 1210
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1211
    .line 1212
    .line 1213
    iput-object v1, v0, Lpe/hf/black20/DeviceStatus;->N:Lorg/json/JSONObject;

    .line 1214
    .line 1215
    move-object v0, v12

    .line 1216
    check-cast v0, Lpe/hf/black20/DeviceStatus;

    .line 1217
    .line 1218
    check-cast v12, Lpe/hf/black20/DeviceStatus;

    .line 1219
    .line 1220
    iget-object v1, v12, Lpe/hf/black20/DeviceStatus;->N:Lorg/json/JSONObject;

    .line 1221
    .line 1222
    const-string v2, "status"

    .line 1223
    .line 1224
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v1

    .line 1228
    iput-object v1, v0, Lpe/hf/black20/DeviceStatus;->P:Ljava/lang/String;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_d

    .line 1229
    .line 1230
    :catch_d
    return-void

    .line 1231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Ljava/lang/Void;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lk3/j;->a:I

    .line 4
    .line 5
    const-string v3, "position"

    .line 6
    .line 7
    const-string v4, "streamFormat"

    .line 8
    .line 9
    const-string v5, "."

    .line 10
    .line 11
    const-string v6, "/"

    .line 12
    .line 13
    const-string v7, "/live/"

    .line 14
    .line 15
    const-string v8, "streamurl"

    .line 16
    .line 17
    const-class v9, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 18
    .line 19
    const-class v10, Lpe/hf/black20/SplashActivity;

    .line 20
    .line 21
    const-string v11, " "

    .line 22
    .line 23
    const-string v13, "stream_id"

    .line 24
    .line 25
    const-string v14, "name"

    .line 26
    .line 27
    const-string v2, "XCIPTV_TAG"

    .line 28
    .line 29
    const-string v15, ""

    .line 30
    .line 31
    iget-object v12, v1, Lk3/j;->b:Ljava/lang/Object;

    .line 32
    .line 33
    packed-switch v0, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    :pswitch_0
    const-string v3, "/tv_m3u2.txt"

    .line 37
    .line 38
    const-string v0, "/tv_m3u.txt"

    .line 39
    .line 40
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    move-object v4, v12

    .line 44
    check-cast v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;

    .line 45
    .line 46
    iget-object v5, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->S:Landroid/widget/ProgressBar;

    .line 47
    .line 48
    const/4 v6, 0x4

    .line 49
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v5, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->I:Lc7/d;

    .line 53
    .line 54
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const-string v6, "epg_channel"

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    invoke-virtual {v5, v6, v7, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const-string v6, "epg_programme"

    .line 65
    .line 66
    invoke-virtual {v5, v6, v7, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 70
    .line 71
    .line 72
    iput-object v7, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->N:Ljava/util/ArrayList;

    .line 73
    .line 74
    new-instance v5, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v5, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->N:Ljava/util/ArrayList;

    .line 80
    .line 81
    new-instance v5, Lorg/json/JSONArray;

    .line 82
    .line 83
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v7, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->M:Ljava/util/ArrayList;

    .line 87
    .line 88
    new-instance v5, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v5, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->M:Ljava/util/ArrayList;

    .line 94
    .line 95
    iput-object v7, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->O:Lorg/json/JSONArray;

    .line 96
    .line 97
    new-instance v5, Lorg/json/JSONArray;

    .line 98
    .line 99
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v5, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->O:Lorg/json/JSONArray;

    .line 103
    .line 104
    :try_start_0
    new-instance v5, Ljava/util/Scanner;

    .line 105
    .line 106
    new-instance v6, Ljava/io/File;

    .line 107
    .line 108
    move-object v7, v12

    .line 109
    check-cast v7, Lpe/hf/black20/updatecontents/M3UUpdateContents;

    .line 110
    .line 111
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v5, v6}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Ljava/io/PrintStream;

    .line 130
    .line 131
    new-instance v6, Ljava/io/File;

    .line 132
    .line 133
    move-object v7, v12

    .line 134
    check-cast v7, Lpe/hf/black20/updatecontents/M3UUpdateContents;

    .line 135
    .line 136
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-direct {v0, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V

    .line 152
    .line 153
    .line 154
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/Scanner;->hasNextLine()Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_1

    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-lez v7, :cond_0

    .line 173
    .line 174
    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    :try_start_1
    new-instance v5, Ljava/io/File;

    .line 188
    .line 189
    new-instance v6, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    check-cast v12, Lpe/hf/black20/updatecontents/M3UUpdateContents;

    .line 195
    .line 196
    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    new-instance v3, Ljava/io/BufferedReader;

    .line 218
    .line 219
    new-instance v6, Ljava/io/FileReader;

    .line 220
    .line 221
    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 222
    .line 223
    .line 224
    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 225
    .line 226
    .line 227
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    if-eqz v5, :cond_2

    .line 232
    .line 233
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const/16 v5, 0xa

    .line 237
    .line 238
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :catch_1
    const-string v3, "Failed to open M3U file"

    .line 243
    .line 244
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    const-string v3, "\""

    .line 252
    .line 253
    invoke-virtual {v0, v3, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    const-string v3, "\\n#EXTINF:"

    .line 258
    .line 259
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    array-length v3, v0

    .line 264
    new-array v3, v3, [Ljava/lang/String;

    .line 265
    .line 266
    iput-object v3, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->P:[Ljava/lang/String;

    .line 267
    .line 268
    const/4 v3, 0x1

    .line 269
    :goto_2
    array-length v5, v0

    .line 270
    if-ge v3, v5, :cond_d

    .line 271
    .line 272
    iget v5, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->Q:I

    .line 273
    .line 274
    const/4 v6, 0x1

    .line 275
    add-int/2addr v5, v6

    .line 276
    iput v5, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->Q:I

    .line 277
    .line 278
    aget-object v5, v0, v3

    .line 279
    .line 280
    const-string v7, "\\n"

    .line 281
    .line 282
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    const/4 v7, 0x0

    .line 287
    aget-object v8, v5, v7

    .line 288
    .line 289
    const-string v7, ","

    .line 290
    .line 291
    invoke-virtual {v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    array-length v10, v9

    .line 296
    if-le v10, v6, :cond_3

    .line 297
    .line 298
    aget-object v9, v9, v6

    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_3
    move-object v9, v15

    .line 302
    :goto_3
    const-string v10, "tvg-logo="

    .line 303
    .line 304
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 305
    .line 306
    .line 307
    move-result v12

    .line 308
    if-eqz v12, :cond_4

    .line 309
    .line 310
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v12

    .line 314
    move-object/from16 p1, v0

    .line 315
    .line 316
    array-length v0, v12

    .line 317
    if-le v0, v6, :cond_5

    .line 318
    .line 319
    aget-object v0, v12, v6

    .line 320
    .line 321
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    const/4 v6, 0x0

    .line 326
    aget-object v0, v0, v6

    .line 327
    .line 328
    goto :goto_4

    .line 329
    :cond_4
    move-object/from16 p1, v0

    .line 330
    .line 331
    :cond_5
    move-object v0, v15

    .line 332
    :goto_4
    const-string v6, "group-title="

    .line 333
    .line 334
    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 335
    .line 336
    .line 337
    move-result v12

    .line 338
    const-string v16, "All"

    .line 339
    .line 340
    if-eqz v12, :cond_a

    .line 341
    .line 342
    invoke-virtual {v8, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    array-length v8, v6

    .line 347
    const/4 v12, 0x1

    .line 348
    if-le v8, v12, :cond_9

    .line 349
    .line 350
    aget-object v6, v6, v12

    .line 351
    .line 352
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    const/4 v7, 0x0

    .line 357
    aget-object v8, v6, v7

    .line 358
    .line 359
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v8

    .line 363
    array-length v10, v8

    .line 364
    if-le v10, v12, :cond_6

    .line 365
    .line 366
    aget-object v6, v8, v7

    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_6
    aget-object v6, v6, v7

    .line 370
    .line 371
    :goto_5
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v8

    .line 375
    if-eqz v8, :cond_7

    .line 376
    .line 377
    move-object/from16 v6, v16

    .line 378
    .line 379
    :cond_7
    const-string v8, "user-agent="

    .line 380
    .line 381
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 382
    .line 383
    .line 384
    move-result v10

    .line 385
    if-eqz v10, :cond_8

    .line 386
    .line 387
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    aget-object v6, v6, v7

    .line 392
    .line 393
    :cond_8
    move-object/from16 v16, v6

    .line 394
    .line 395
    goto :goto_6

    .line 396
    :cond_9
    move-object/from16 v16, v15

    .line 397
    .line 398
    :cond_a
    :goto_6
    move-object/from16 v6, v16

    .line 399
    .line 400
    new-instance v7, Ljava/util/HashMap;

    .line 401
    .line 402
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 403
    .line 404
    .line 405
    iget v8, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->Q:I

    .line 406
    .line 407
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    const-string v10, "num"

    .line 412
    .line 413
    invoke-virtual {v7, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v7, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    const-string v8, "stream_type"

    .line 420
    .line 421
    const-string v9, "live"

    .line 422
    .line 423
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    iget v8, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->Q:I

    .line 427
    .line 428
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v8

    .line 432
    invoke-virtual {v7, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    const-string v8, "stream_icon"

    .line 436
    .line 437
    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    const-string v0, "epg_channel_id"

    .line 441
    .line 442
    invoke-virtual {v7, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    const-string v0, "added"

    .line 446
    .line 447
    invoke-virtual {v7, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    const-string v0, "tv_archive"

    .line 451
    .line 452
    invoke-virtual {v7, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    const-string v0, "tv_archive_duration"

    .line 456
    .line 457
    invoke-virtual {v7, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    const-string v0, "custom_sid"

    .line 461
    .line 462
    invoke-virtual {v7, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    const-string v0, "category_id"

    .line 466
    .line 467
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    const-string v8, "type"

    .line 471
    .line 472
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    array-length v8, v5

    .line 476
    const-string v9, "direct_source"

    .line 477
    .line 478
    const/4 v10, 0x1

    .line 479
    if-le v8, v10, :cond_b

    .line 480
    .line 481
    aget-object v5, v5, v10

    .line 482
    .line 483
    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    goto :goto_7

    .line 487
    :cond_b
    const-string v5, "nolink"

    .line 488
    .line 489
    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    :goto_7
    iget-object v5, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->M:Ljava/util/ArrayList;

    .line 493
    .line 494
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    iget-object v5, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->P:[Ljava/lang/String;

    .line 498
    .line 499
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 500
    .line 501
    .line 502
    move-result-object v5

    .line 503
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    if-nez v5, :cond_c

    .line 508
    .line 509
    const-string v5, "category_name"

    .line 510
    .line 511
    invoke-static {v0, v6, v5, v6}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    const-string v5, "parent_id"

    .line 516
    .line 517
    const-string v7, "0"

    .line 518
    .line 519
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    iget-object v5, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->N:Ljava/util/ArrayList;

    .line 523
    .line 524
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    :cond_c
    iget-object v0, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->P:[Ljava/lang/String;

    .line 528
    .line 529
    aput-object v6, v0, v3

    .line 530
    .line 531
    add-int/lit8 v3, v3, 0x1

    .line 532
    .line 533
    move-object/from16 v0, p1

    .line 534
    .line 535
    goto/16 :goto_2

    .line 536
    .line 537
    :cond_d
    new-instance v0, Lorg/json/JSONArray;

    .line 538
    .line 539
    iget-object v3, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->N:Ljava/util/ArrayList;

    .line 540
    .line 541
    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 542
    .line 543
    .line 544
    iget-object v3, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->I:Lc7/d;

    .line 545
    .line 546
    invoke-virtual {v3, v0}, Lc7/d;->a0(Lorg/json/JSONArray;)V

    .line 547
    .line 548
    .line 549
    new-instance v0, Lorg/json/JSONArray;

    .line 550
    .line 551
    iget-object v3, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->M:Ljava/util/ArrayList;

    .line 552
    .line 553
    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 554
    .line 555
    .line 556
    iput-object v0, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->O:Lorg/json/JSONArray;

    .line 557
    .line 558
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    if-lez v0, :cond_e

    .line 563
    .line 564
    iget-object v0, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->I:Lc7/d;

    .line 565
    .line 566
    iget-object v3, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->O:Lorg/json/JSONArray;

    .line 567
    .line 568
    invoke-virtual {v0, v3}, Lc7/d;->k(Lorg/json/JSONArray;)V

    .line 569
    .line 570
    .line 571
    :cond_e
    iget-object v0, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->R:Landroid/widget/TextView;

    .line 572
    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .line 577
    .line 578
    iget-object v5, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->K:Lpe/hf/black20/updatecontents/M3UUpdateContents;

    .line 579
    .line 580
    const v6, 0x7f1301bb

    .line 581
    .line 582
    .line 583
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v5

    .line 587
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    const-string v5, "!"

    .line 591
    .line 592
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    .line 601
    .line 602
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 603
    .line 604
    const-string v3, "MM/dd/yyyy HH:mm:ss"

    .line 605
    .line 606
    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    new-instance v3, Ljava/util/Date;

    .line 610
    .line 611
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    iput-object v0, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->U:Ljava/lang/String;

    .line 619
    .line 620
    iget-object v0, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 621
    .line 622
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    iget-object v3, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->U:Ljava/lang/String;

    .line 627
    .line 628
    const-string v5, "tvvodseries_dl_time"

    .line 629
    .line 630
    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 631
    .line 632
    .line 633
    iget-object v3, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->U:Ljava/lang/String;

    .line 634
    .line 635
    const-string v5, "epg_dl_time"

    .line 636
    .line 637
    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 638
    .line 639
    .line 640
    iget-object v3, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 641
    .line 642
    const-string v5, "epg_manual_download"

    .line 643
    .line 644
    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 645
    .line 646
    .line 647
    move-result v3

    .line 648
    if-nez v3, :cond_f

    .line 649
    .line 650
    iget-object v3, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->U:Ljava/lang/String;

    .line 651
    .line 652
    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 653
    .line 654
    .line 655
    :cond_f
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 656
    .line 657
    .line 658
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 659
    .line 660
    .line 661
    iget-object v0, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->L:Landroid/widget/Button;

    .line 662
    .line 663
    const-string v3, "Close"

    .line 664
    .line 665
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    .line 667
    .line 668
    iget-object v0, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->L:Landroid/widget/Button;

    .line 669
    .line 670
    const/4 v3, 0x1

    .line 671
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 672
    .line 673
    .line 674
    const-string v0, "yes"

    .line 675
    .line 676
    iput-object v0, v4, Lpe/hf/black20/updatecontents/M3UUpdateContents;->T:Ljava/lang/String;

    .line 677
    .line 678
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    const-string v3, "ORT_PROCESS_STATUS"

    .line 683
    .line 684
    const/4 v5, 0x0

    .line 685
    invoke-virtual {v0, v5, v3}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 689
    .line 690
    .line 691
    const-string v0, "processPorgrammeData Completed1 -- Updatecontents"

    .line 692
    .line 693
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .line 695
    .line 696
    return-void

    .line 697
    :pswitch_1
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 698
    .line 699
    .line 700
    check-cast v12, Lpe/hf/black20/UsersHistoryActivity;

    .line 701
    .line 702
    iget-object v0, v12, Lpe/hf/black20/UsersHistoryActivity;->G:Lpe/hf/black20/UsersHistoryActivity;

    .line 703
    .line 704
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 705
    .line 706
    .line 707
    move-result v0

    .line 708
    if-eqz v0, :cond_10

    .line 709
    .line 710
    const/4 v2, 0x1

    .line 711
    sput-boolean v2, Lpe/hf/black20/ORPlayerMainActivity;->I0:Z

    .line 712
    .line 713
    :cond_10
    iget-object v0, v12, Lpe/hf/black20/UsersHistoryActivity;->V:Landroid/app/AlertDialog;

    .line 714
    .line 715
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 716
    .line 717
    .line 718
    new-instance v0, Landroid/content/Intent;

    .line 719
    .line 720
    const-string v2, "finish_alert_login"

    .line 721
    .line 722
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v12, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 726
    .line 727
    .line 728
    new-instance v0, Landroid/content/Intent;

    .line 729
    .line 730
    const-string v2, "finish_alert"

    .line 731
    .line 732
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v12, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 736
    .line 737
    .line 738
    new-instance v0, Landroid/content/Intent;

    .line 739
    .line 740
    invoke-direct {v0, v12, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v12, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v12}, Landroid/app/Activity;->finish()V

    .line 747
    .line 748
    .line 749
    return-void

    .line 750
    :pswitch_2
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 751
    .line 752
    .line 753
    check-cast v12, Lpe/hf/black20/ProgramRemindersActivity;

    .line 754
    .line 755
    iget-object v0, v12, Lpe/hf/black20/ProgramRemindersActivity;->N:Lh7/i;

    .line 756
    .line 757
    iget-object v0, v0, Lh7/i;->c:Ljava/lang/String;

    .line 758
    .line 759
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    iget-object v2, v12, Lpe/hf/black20/ProgramRemindersActivity;->N:Lh7/i;

    .line 764
    .line 765
    iget-object v2, v2, Lh7/i;->d:Ljava/lang/String;

    .line 766
    .line 767
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v2

    .line 771
    new-instance v10, Landroid/content/Intent;

    .line 772
    .line 773
    iget-object v11, v12, Lpe/hf/black20/ProgramRemindersActivity;->G:Lpe/hf/black20/ProgramRemindersActivity;

    .line 774
    .line 775
    invoke-direct {v10, v11, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 776
    .line 777
    .line 778
    iget-object v9, v12, Lpe/hf/black20/ProgramRemindersActivity;->O:[Ljava/lang/String;

    .line 779
    .line 780
    const/16 v16, 0x6

    .line 781
    .line 782
    aget-object v9, v9, v16

    .line 783
    .line 784
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 785
    .line 786
    .line 787
    move-result v9

    .line 788
    if-eqz v9, :cond_11

    .line 789
    .line 790
    new-instance v9, Ljava/lang/StringBuilder;

    .line 791
    .line 792
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 793
    .line 794
    .line 795
    iget-object v15, v12, Lpe/hf/black20/ProgramRemindersActivity;->N:Lh7/i;

    .line 796
    .line 797
    iget-object v15, v15, Lh7/i;->e:Ljava/lang/String;

    .line 798
    .line 799
    invoke-static {v15}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v15

    .line 803
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-static {v9, v2, v6}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    invoke-static {v0}, Lcom/google/protobuf/U2;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    iget-object v2, v12, Lpe/hf/black20/ProgramRemindersActivity;->O:[Ljava/lang/String;

    .line 824
    .line 825
    const/4 v6, 0x5

    .line 826
    aget-object v2, v2, v6

    .line 827
    .line 828
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    .line 830
    .line 831
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    iget-object v2, v12, Lpe/hf/black20/ProgramRemindersActivity;->H:Landroid/content/SharedPreferences;

    .line 835
    .line 836
    const/4 v5, 0x0

    .line 837
    invoke-static {v2, v4, v5, v0}, Lcom/google/protobuf/U2;->h(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    invoke-virtual {v10, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    .line 843
    .line 844
    goto :goto_8

    .line 845
    :cond_11
    iget-object v0, v12, Lpe/hf/black20/ProgramRemindersActivity;->O:[Ljava/lang/String;

    .line 846
    .line 847
    aget-object v0, v0, v16

    .line 848
    .line 849
    invoke-virtual {v10, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    .line 851
    .line 852
    :goto_8
    iget-object v0, v12, Lpe/hf/black20/ProgramRemindersActivity;->O:[Ljava/lang/String;

    .line 853
    .line 854
    const/4 v2, 0x1

    .line 855
    aget-object v0, v0, v2

    .line 856
    .line 857
    invoke-virtual {v10, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    .line 859
    .line 860
    iget-object v0, v12, Lpe/hf/black20/ProgramRemindersActivity;->O:[Ljava/lang/String;

    .line 861
    .line 862
    const/4 v2, 0x5

    .line 863
    aget-object v0, v0, v2

    .line 864
    .line 865
    invoke-virtual {v10, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    .line 867
    .line 868
    iget-object v0, v12, Lpe/hf/black20/ProgramRemindersActivity;->O:[Ljava/lang/String;

    .line 869
    .line 870
    const/4 v2, 0x7

    .line 871
    aget-object v0, v0, v2

    .line 872
    .line 873
    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v11, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 877
    .line 878
    .line 879
    return-void

    .line 880
    :pswitch_3
    const-string v0, "movie_image"

    .line 881
    .line 882
    const-string v3, "backdrop_path"

    .line 883
    .line 884
    const-string v4, "duration"

    .line 885
    .line 886
    const-string v5, "releasedate"

    .line 887
    .line 888
    const-string v6, "director"

    .line 889
    .line 890
    const-string v7, "cast"

    .line 891
    .line 892
    const-string v8, "rating"

    .line 893
    .line 894
    const-string v9, "Director: "

    .line 895
    .line 896
    const-string v10, "Cast: "

    .line 897
    .line 898
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 899
    .line 900
    .line 901
    move-object v13, v12

    .line 902
    check-cast v13, Lb7/S0;

    .line 903
    .line 904
    iget-object v13, v13, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 905
    .line 906
    if-eqz v13, :cond_1a

    .line 907
    .line 908
    :try_start_2
    move-object v13, v12

    .line 909
    check-cast v13, Lb7/S0;

    .line 910
    .line 911
    iget-object v13, v13, Lb7/S0;->V0:Landroid/widget/TextView;

    .line 912
    .line 913
    move-object v14, v12

    .line 914
    check-cast v14, Lb7/S0;

    .line 915
    .line 916
    iget-object v14, v14, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 917
    .line 918
    const-string v1, "genre"

    .line 919
    .line 920
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v1

    .line 924
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    .line 926
    .line 927
    move-object v1, v12

    .line 928
    check-cast v1, Lb7/S0;

    .line 929
    .line 930
    iget-object v1, v1, Lb7/S0;->W0:Landroid/widget/TextView;

    .line 931
    .line 932
    move-object v13, v12

    .line 933
    check-cast v13, Lb7/S0;

    .line 934
    .line 935
    iget-object v13, v13, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 936
    .line 937
    const-string v14, "plot"

    .line 938
    .line 939
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v13

    .line 943
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 944
    .line 945
    .line 946
    move-object v1, v12

    .line 947
    check-cast v1, Lb7/S0;

    .line 948
    .line 949
    iget-object v1, v1, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 950
    .line 951
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v1

    .line 955
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 956
    .line 957
    .line 958
    move-result v1

    .line 959
    const/4 v13, 0x3

    .line 960
    if-le v1, v13, :cond_12

    .line 961
    .line 962
    move-object v1, v12

    .line 963
    check-cast v1, Lb7/S0;

    .line 964
    .line 965
    iget-object v1, v1, Lb7/S0;->Y0:Landroid/widget/TextView;

    .line 966
    .line 967
    new-instance v13, Ljava/lang/StringBuilder;

    .line 968
    .line 969
    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 970
    .line 971
    .line 972
    move-object v10, v12

    .line 973
    check-cast v10, Lb7/S0;

    .line 974
    .line 975
    iget-object v10, v10, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 976
    .line 977
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v7

    .line 981
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    .line 983
    .line 984
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object v7

    .line 988
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    .line 990
    .line 991
    :cond_12
    move-object v1, v12

    .line 992
    check-cast v1, Lb7/S0;

    .line 993
    .line 994
    iget-object v1, v1, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 995
    .line 996
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v1

    .line 1000
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1001
    .line 1002
    .line 1003
    move-result v1

    .line 1004
    const/4 v7, 0x3

    .line 1005
    if-le v1, v7, :cond_13

    .line 1006
    .line 1007
    move-object v1, v12

    .line 1008
    check-cast v1, Lb7/S0;

    .line 1009
    .line 1010
    iget-object v1, v1, Lb7/S0;->X0:Landroid/widget/TextView;

    .line 1011
    .line 1012
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1015
    .line 1016
    .line 1017
    move-object v9, v12

    .line 1018
    check-cast v9, Lb7/S0;

    .line 1019
    .line 1020
    iget-object v9, v9, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 1021
    .line 1022
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v6

    .line 1026
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v6

    .line 1033
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    .line 1035
    .line 1036
    :cond_13
    move-object v1, v12

    .line 1037
    check-cast v1, Lb7/S0;

    .line 1038
    .line 1039
    iget-object v1, v1, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 1040
    .line 1041
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v1

    .line 1045
    move-object v6, v12

    .line 1046
    check-cast v6, Lb7/S0;

    .line 1047
    .line 1048
    iget-object v6, v6, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 1049
    .line 1050
    const-string v7, "duration_secs"

    .line 1051
    .line 1052
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v6

    .line 1056
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1057
    .line 1058
    .line 1059
    move-result v7

    .line 1060
    const/4 v9, 0x2

    .line 1061
    if-le v7, v9, :cond_14

    .line 1062
    .line 1063
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1064
    .line 1065
    .line 1066
    move-result v4

    .line 1067
    invoke-static {v4}, Lpe/hf/black20/util/Methods;->D(I)Ljava/lang/String;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v4

    .line 1071
    goto :goto_9

    .line 1072
    :cond_14
    move-object v6, v12

    .line 1073
    check-cast v6, Lb7/S0;

    .line 1074
    .line 1075
    iget-object v6, v6, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 1076
    .line 1077
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v6

    .line 1081
    const-string v7, "00:00:00"

    .line 1082
    .line 1083
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1084
    .line 1085
    .line 1086
    move-result v6

    .line 1087
    if-eqz v6, :cond_15

    .line 1088
    .line 1089
    move-object v4, v15

    .line 1090
    goto :goto_9

    .line 1091
    :cond_15
    move-object v6, v12

    .line 1092
    check-cast v6, Lb7/S0;

    .line 1093
    .line 1094
    iget-object v6, v6, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 1095
    .line 1096
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v4

    .line 1100
    :goto_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1101
    .line 1102
    .line 1103
    move-result v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1104
    const/16 v7, 0x8

    .line 1105
    .line 1106
    if-le v6, v7, :cond_16

    .line 1107
    .line 1108
    :try_start_3
    move-object v6, v12

    .line 1109
    check-cast v6, Lb7/S0;

    .line 1110
    .line 1111
    iget-object v6, v6, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 1112
    .line 1113
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v5

    .line 1117
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1121
    :catch_2
    :cond_16
    :try_start_4
    move-object v5, v12

    .line 1122
    check-cast v5, Lb7/S0;

    .line 1123
    .line 1124
    iget-object v5, v5, Lb7/S0;->U0:Landroid/widget/TextView;

    .line 1125
    .line 1126
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    .line 1134
    const-string v4, "   "

    .line 1135
    .line 1136
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v1

    .line 1146
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    .line 1148
    .line 1149
    move-object v1, v12

    .line 1150
    check-cast v1, Lb7/S0;

    .line 1151
    .line 1152
    iget-object v1, v1, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 1153
    .line 1154
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v1

    .line 1158
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1159
    .line 1160
    .line 1161
    move-result v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1162
    if-lez v4, :cond_17

    .line 1163
    .line 1164
    const/4 v4, 0x0

    .line 1165
    const/4 v5, 0x1

    .line 1166
    :try_start_5
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v1

    .line 1170
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1171
    .line 1172
    .line 1173
    move-result v1

    .line 1174
    move-object v5, v15

    .line 1175
    const/4 v4, 0x0

    .line 1176
    :goto_a
    if-ge v4, v1, :cond_17

    .line 1177
    .line 1178
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1179
    .line 1180
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    .line 1186
    const-string v5, "\u2b50"

    .line 1187
    .line 1188
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v5

    .line 1195
    move-object v6, v12

    .line 1196
    check-cast v6, Lb7/S0;

    .line 1197
    .line 1198
    iget-object v6, v6, Lb7/S0;->T0:Landroid/widget/TextView;

    .line 1199
    .line 1200
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1201
    .line 1202
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    .line 1207
    .line 1208
    const-string v9, " ("

    .line 1209
    .line 1210
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    .line 1212
    .line 1213
    move-object v9, v12

    .line 1214
    check-cast v9, Lb7/S0;

    .line 1215
    .line 1216
    iget-object v9, v9, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 1217
    .line 1218
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v9

    .line 1222
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    .line 1224
    .line 1225
    const-string v9, ")"

    .line 1226
    .line 1227
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v7

    .line 1234
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1235
    .line 1236
    .line 1237
    add-int/lit8 v4, v4, 0x1

    .line 1238
    .line 1239
    goto :goto_a

    .line 1240
    :catch_3
    :try_start_6
    move-object v1, v12

    .line 1241
    check-cast v1, Lb7/S0;

    .line 1242
    .line 1243
    iget-object v1, v1, Lb7/S0;->T0:Landroid/widget/TextView;

    .line 1244
    .line 1245
    move-object v4, v12

    .line 1246
    check-cast v4, Lb7/S0;

    .line 1247
    .line 1248
    iget-object v4, v4, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 1249
    .line 1250
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v4

    .line 1254
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    .line 1256
    .line 1257
    :cond_17
    new-instance v1, Lorg/json/JSONArray;

    .line 1258
    .line 1259
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1260
    .line 1261
    .line 1262
    move-object v1, v12

    .line 1263
    check-cast v1, Lb7/S0;

    .line 1264
    .line 1265
    iget-object v1, v1, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 1266
    .line 1267
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v1

    .line 1271
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 1272
    .line 1273
    .line 1274
    move-result v1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1275
    const-string v4, "\\\\"

    .line 1276
    .line 1277
    const-string v5, "%20"

    .line 1278
    .line 1279
    if-lez v1, :cond_18

    .line 1280
    .line 1281
    :try_start_7
    move-object v0, v12

    .line 1282
    check-cast v0, Lb7/S0;

    .line 1283
    .line 1284
    iget-object v0, v0, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 1285
    .line 1286
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v0

    .line 1290
    const/4 v1, 0x0

    .line 1291
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v0

    .line 1295
    invoke-virtual {v0, v11, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v0

    .line 1299
    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v0
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1303
    :try_start_8
    move-object v1, v12

    .line 1304
    check-cast v1, Lb7/S0;

    .line 1305
    .line 1306
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v1

    .line 1310
    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v1

    .line 1314
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v0

    .line 1318
    invoke-virtual {v0}, LL2/a;->b()LL2/a;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v0

    .line 1322
    check-cast v0, Lcom/bumptech/glide/l;

    .line 1323
    .line 1324
    move-object v1, v12

    .line 1325
    check-cast v1, Lb7/S0;

    .line 1326
    .line 1327
    iget-object v1, v1, Lb7/S0;->d1:LN2/a;

    .line 1328
    .line 1329
    invoke-static {v1}, LG2/c;->b(LN2/a;)LG2/c;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v1

    .line 1333
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v0

    .line 1337
    const v1, 0x7f08053d

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {v0, v1}, LL2/a;->f(I)LL2/a;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v0

    .line 1344
    check-cast v0, Lcom/bumptech/glide/l;

    .line 1345
    .line 1346
    check-cast v12, Lb7/S0;

    .line 1347
    .line 1348
    iget-object v1, v12, Lb7/S0;->R0:Landroid/widget/ImageView;

    .line 1349
    .line 1350
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1351
    .line 1352
    .line 1353
    goto :goto_b

    .line 1354
    :catch_4
    :try_start_9
    const-string v0, "--------Exception----------- Glide.with"

    .line 1355
    .line 1356
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    .line 1358
    .line 1359
    goto :goto_b

    .line 1360
    :cond_18
    move-object v1, v12

    .line 1361
    check-cast v1, Lb7/S0;

    .line 1362
    .line 1363
    iget-object v1, v1, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 1364
    .line 1365
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v1

    .line 1369
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1370
    .line 1371
    .line 1372
    move-result v1

    .line 1373
    if-eqz v1, :cond_19

    .line 1374
    .line 1375
    goto :goto_b

    .line 1376
    :cond_19
    move-object v1, v12

    .line 1377
    check-cast v1, Lb7/S0;

    .line 1378
    .line 1379
    iget-object v1, v1, Lb7/S0;->c1:Lorg/json/JSONObject;

    .line 1380
    .line 1381
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v0

    .line 1385
    invoke-virtual {v0, v11, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v0

    .line 1389
    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_6

    .line 1393
    :try_start_a
    move-object v1, v12

    .line 1394
    check-cast v1, Lb7/S0;

    .line 1395
    .line 1396
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v1

    .line 1400
    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v1

    .line 1404
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v0

    .line 1408
    invoke-virtual {v0}, LL2/a;->b()LL2/a;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v0

    .line 1412
    check-cast v0, Lcom/bumptech/glide/l;

    .line 1413
    .line 1414
    move-object v1, v12

    .line 1415
    check-cast v1, Lb7/S0;

    .line 1416
    .line 1417
    iget-object v1, v1, Lb7/S0;->d1:LN2/a;

    .line 1418
    .line 1419
    invoke-static {v1}, LG2/c;->b(LN2/a;)LG2/c;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v1

    .line 1423
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v0

    .line 1427
    check-cast v12, Lb7/S0;

    .line 1428
    .line 1429
    iget-object v1, v12, Lb7/S0;->R0:Landroid/widget/ImageView;

    .line 1430
    .line 1431
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 1432
    .line 1433
    .line 1434
    goto :goto_b

    .line 1435
    :catch_5
    :try_start_b
    const-string v0, "Picasso Crashed"

    .line 1436
    .line 1437
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_6

    .line 1438
    .line 1439
    .line 1440
    :catch_6
    :cond_1a
    :goto_b
    return-void

    .line 1441
    :pswitch_4
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1442
    .line 1443
    .line 1444
    check-cast v12, Lpe/hf/black20/ORPlayerMainActivity;

    .line 1445
    .line 1446
    iget-boolean v0, v12, Lpe/hf/black20/ORPlayerMainActivity;->v0:Z

    .line 1447
    .line 1448
    const-string v1, "TV"

    .line 1449
    .line 1450
    const-string v2, "ORT_WHICH_CAT"

    .line 1451
    .line 1452
    if-eqz v0, :cond_1b

    .line 1453
    .line 1454
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v0

    .line 1458
    const-string v3, "ORT_LAST_STREAM_URL"

    .line 1459
    .line 1460
    invoke-virtual {v0, v3, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v0

    .line 1464
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1465
    .line 1466
    .line 1467
    move-result v0

    .line 1468
    if-nez v0, :cond_1d

    .line 1469
    .line 1470
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v0

    .line 1474
    invoke-virtual {v0, v2, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 1475
    .line 1476
    .line 1477
    const/4 v1, 0x0

    .line 1478
    iput-boolean v1, v12, Lpe/hf/black20/ORPlayerMainActivity;->v0:Z

    .line 1479
    .line 1480
    new-instance v0, Landroid/content/Intent;

    .line 1481
    .line 1482
    iget-object v1, v12, Lpe/hf/black20/ORPlayerMainActivity;->e0:Lpe/hf/black20/ORPlayerMainActivity;

    .line 1483
    .line 1484
    const-class v2, Lpe/hf/black20/ChannelListActivity;

    .line 1485
    .line 1486
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1487
    .line 1488
    .line 1489
    const-string v1, "forFavorNot"

    .line 1490
    .line 1491
    const-string v2, "no"

    .line 1492
    .line 1493
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1494
    .line 1495
    .line 1496
    invoke-virtual {v12, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1497
    .line 1498
    .line 1499
    goto/16 :goto_d

    .line 1500
    .line 1501
    :cond_1b
    iget-object v0, v12, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 1502
    .line 1503
    iget-object v0, v0, Lh7/i;->c:Ljava/lang/String;

    .line 1504
    .line 1505
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v0

    .line 1509
    iget-object v10, v12, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 1510
    .line 1511
    iget-object v10, v10, Lh7/i;->d:Ljava/lang/String;

    .line 1512
    .line 1513
    invoke-static {v10}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v10

    .line 1517
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v11

    .line 1521
    invoke-virtual {v11, v2, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 1522
    .line 1523
    .line 1524
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v1

    .line 1528
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v2

    .line 1532
    const-string v11, "ORT_program_reminder_Category_name"

    .line 1533
    .line 1534
    invoke-virtual {v2, v11, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v2

    .line 1538
    const-string v11, "ORT_CAT_NAME"

    .line 1539
    .line 1540
    invoke-virtual {v1, v11, v2}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 1541
    .line 1542
    .line 1543
    new-instance v1, Landroid/content/Intent;

    .line 1544
    .line 1545
    iget-object v2, v12, Lpe/hf/black20/ORPlayerMainActivity;->e0:Lpe/hf/black20/ORPlayerMainActivity;

    .line 1546
    .line 1547
    invoke-direct {v1, v2, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1548
    .line 1549
    .line 1550
    const-string v9, "ORT_program_reminder_Direct_source"

    .line 1551
    .line 1552
    invoke-static {v9, v15, v15}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1553
    .line 1554
    .line 1555
    move-result v11

    .line 1556
    move-object/from16 v16, v2

    .line 1557
    .line 1558
    const-string v2, "ORT_program_reminder_Stream_id"

    .line 1559
    .line 1560
    if-eqz v11, :cond_1c

    .line 1561
    .line 1562
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1563
    .line 1564
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1565
    .line 1566
    .line 1567
    iget-object v11, v12, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 1568
    .line 1569
    iget-object v11, v11, Lh7/i;->e:Ljava/lang/String;

    .line 1570
    .line 1571
    invoke-static {v11}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v11

    .line 1575
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    .line 1577
    .line 1578
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    .line 1580
    .line 1581
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    .line 1583
    .line 1584
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    .line 1586
    .line 1587
    invoke-static {v9, v10, v6}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v0

    .line 1591
    invoke-static {v0}, Lcom/google/protobuf/U2;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v0

    .line 1595
    invoke-static {v2, v15, v0, v5}, Lcom/google/protobuf/U2;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1596
    .line 1597
    .line 1598
    iget-object v5, v12, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1599
    .line 1600
    const/4 v6, 0x0

    .line 1601
    invoke-static {v5, v4, v6, v0}, Lcom/google/protobuf/U2;->h(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v0

    .line 1605
    invoke-virtual {v1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1606
    .line 1607
    .line 1608
    goto :goto_c

    .line 1609
    :cond_1c
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v0

    .line 1613
    invoke-virtual {v0, v9, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v0

    .line 1617
    invoke-virtual {v1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1618
    .line 1619
    .line 1620
    :goto_c
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v0

    .line 1624
    const-string v4, "ORT_program_reminder_Channel_name"

    .line 1625
    .line 1626
    invoke-virtual {v0, v4, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v0

    .line 1630
    invoke-virtual {v1, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1631
    .line 1632
    .line 1633
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v0

    .line 1637
    invoke-virtual {v0, v2, v15}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v0

    .line 1641
    invoke-virtual {v1, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1642
    .line 1643
    .line 1644
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v0

    .line 1648
    const-string v2, "ORT_program_reminder_channel_pos"

    .line 1649
    .line 1650
    invoke-virtual {v0, v2}, LQ5/a;->b(Ljava/lang/String;)I

    .line 1651
    .line 1652
    .line 1653
    move-result v0

    .line 1654
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v0

    .line 1658
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1659
    .line 1660
    .line 1661
    move-object/from16 v0, v16

    .line 1662
    .line 1663
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1664
    .line 1665
    .line 1666
    :cond_1d
    :goto_d
    return-void

    .line 1667
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lk3/j;->c(Ljava/lang/Void;)V

    .line 1668
    .line 1669
    .line 1670
    return-void

    .line 1671
    :pswitch_6
    const-string v0, "portal"

    .line 1672
    .line 1673
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1674
    .line 1675
    .line 1676
    move-object v1, v12

    .line 1677
    check-cast v1, Lpe/hf/black20/DeviceStatus;

    .line 1678
    .line 1679
    iget-object v3, v1, Lpe/hf/black20/DeviceStatus;->G:Landroid/widget/ProgressBar;

    .line 1680
    .line 1681
    const/4 v4, 0x4

    .line 1682
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1683
    .line 1684
    .line 1685
    iget-object v3, v1, Lpe/hf/black20/DeviceStatus;->O:Ljava/lang/String;

    .line 1686
    .line 1687
    const-string v4, "1"

    .line 1688
    .line 1689
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1690
    .line 1691
    .line 1692
    move-result v3

    .line 1693
    if-eqz v3, :cond_1e

    .line 1694
    .line 1695
    iget-object v3, v1, Lpe/hf/black20/DeviceStatus;->P:Ljava/lang/String;

    .line 1696
    .line 1697
    const-string v4, "Active"

    .line 1698
    .line 1699
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1700
    .line 1701
    .line 1702
    move-result v3

    .line 1703
    if-eqz v3, :cond_1e

    .line 1704
    .line 1705
    const-string v3, "------Valid License-----"

    .line 1706
    .line 1707
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    .line 1709
    .line 1710
    iget-object v3, v1, Lpe/hf/black20/DeviceStatus;->I:Lpe/hf/black20/DeviceStatus;

    .line 1711
    .line 1712
    const-string v4, "pe.hf.black20"

    .line 1713
    .line 1714
    const/4 v5, 0x0

    .line 1715
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v3

    .line 1719
    iput-object v3, v1, Lpe/hf/black20/DeviceStatus;->H:Landroid/content/SharedPreferences;

    .line 1720
    .line 1721
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v3

    .line 1725
    :try_start_c
    check-cast v12, Lpe/hf/black20/DeviceStatus;

    .line 1726
    .line 1727
    iget-object v4, v12, Lpe/hf/black20/DeviceStatus;->N:Lorg/json/JSONObject;

    .line 1728
    .line 1729
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1730
    .line 1731
    .line 1732
    move-result-object v4

    .line 1733
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1734
    .line 1735
    .line 1736
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_7

    .line 1737
    .line 1738
    .line 1739
    :catch_7
    const-string v0, "------Invalid License-----"

    .line 1740
    .line 1741
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    .line 1743
    .line 1744
    new-instance v0, Landroid/content/Intent;

    .line 1745
    .line 1746
    invoke-direct {v0, v1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1747
    .line 1748
    .line 1749
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1750
    .line 1751
    .line 1752
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1753
    .line 1754
    .line 1755
    move-object/from16 v3, p0

    .line 1756
    .line 1757
    goto :goto_e

    .line 1758
    :cond_1e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 1759
    .line 1760
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1761
    .line 1762
    .line 1763
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v0

    .line 1767
    const-string v2, "Failed!"

    .line 1768
    .line 1769
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1770
    .line 1771
    .line 1772
    iget-object v2, v1, Lpe/hf/black20/DeviceStatus;->I:Lpe/hf/black20/DeviceStatus;

    .line 1773
    .line 1774
    const v3, 0x7f130223

    .line 1775
    .line 1776
    .line 1777
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v2

    .line 1781
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1782
    .line 1783
    .line 1784
    iget-object v1, v1, Lpe/hf/black20/DeviceStatus;->I:Lpe/hf/black20/DeviceStatus;

    .line 1785
    .line 1786
    const v2, 0x7f1301ee

    .line 1787
    .line 1788
    .line 1789
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v1

    .line 1793
    new-instance v2, Lo3/g;

    .line 1794
    .line 1795
    const/4 v4, 0x3

    .line 1796
    move-object/from16 v3, p0

    .line 1797
    .line 1798
    invoke-direct {v2, v3, v4}, Lo3/g;-><init>(Ljava/lang/Object;I)V

    .line 1799
    .line 1800
    .line 1801
    const/4 v4, -0x3

    .line 1802
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1803
    .line 1804
    .line 1805
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1806
    .line 1807
    .line 1808
    :goto_e
    return-void

    .line 1809
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lk3/j;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lk3/j;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, [Ljava/lang/String;

    .line 10
    .line 11
    const-string p1, "Update Error: "

    .line 12
    .line 13
    const-string v0, "XCIPTV_TAG"

    .line 14
    .line 15
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    :try_start_0
    new-instance v3, Ljava/net/URL;

    .line 18
    .line 19
    sget-object v4, Lpe/hf/black20/util/a;->J:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 29
    .line 30
    const-string v4, "GET"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 40
    .line 41
    .line 42
    sget-object v5, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    new-instance v6, Ljava/io/File;

    .line 53
    .line 54
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 58
    .line 59
    .line 60
    new-instance v7, Ljava/io/File;

    .line 61
    .line 62
    const-string v8, "/xciptv.apk"

    .line 63
    .line 64
    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_0

    .line 72
    .line 73
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    goto :goto_2

    .line 79
    :catch_1
    move-exception v1

    .line 80
    goto :goto_3

    .line 81
    :cond_0
    :goto_0
    new-instance v6, Ljava/io/FileOutputStream;

    .line 82
    .line 83
    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    const/16 v8, 0x1000

    .line 95
    .line 96
    new-array v8, v8, [B

    .line 97
    .line 98
    const/4 v9, 0x0

    .line 99
    :goto_1
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    const/4 v11, -0x1

    .line 104
    if-eq v10, v11, :cond_1

    .line 105
    .line 106
    invoke-virtual {v6, v8, v4, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 107
    .line 108
    .line 109
    add-int/2addr v9, v10

    .line 110
    mul-int/lit8 v10, v9, 0x64

    .line 111
    .line 112
    div-int/2addr v10, v3

    .line 113
    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 118
    .line 119
    .line 120
    check-cast v1, Lpe/hf/black20/util/a;

    .line 121
    .line 122
    invoke-static {v1, v5}, Lpe/hf/black20/util/a;->a(Lpe/hf/black20/util/a;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 164
    .line 165
    :goto_4
    return-object v2

    .line 166
    :pswitch_0
    check-cast p1, [Ljava/lang/Void;

    .line 167
    .line 168
    invoke-virtual {p0}, Lk3/j;->a()V

    .line 169
    .line 170
    .line 171
    return-object v2

    .line 172
    :pswitch_1
    check-cast p1, [Ljava/lang/Void;

    .line 173
    .line 174
    invoke-virtual {p0}, Lk3/j;->a()V

    .line 175
    .line 176
    .line 177
    return-object v2

    .line 178
    :pswitch_2
    check-cast p1, [Ljava/lang/Void;

    .line 179
    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    move-object v0, v1

    .line 186
    check-cast v0, Lpe/hf/black20/ServiceStatusActivity;

    .line 187
    .line 188
    iget-object v3, v0, Lpe/hf/black20/ServiceStatusActivity;->a0:Lh7/i;

    .line 189
    .line 190
    iget-object v3, v3, Lh7/i;->e:Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {v3}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v3, "/server/query_user_days_left?token="

    .line 200
    .line 201
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget-object v0, v0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 205
    .line 206
    const-string v3, "token"

    .line 207
    .line 208
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    const-string v0, "Get Login URL: "

    .line 224
    .line 225
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    :try_start_1
    new-instance v0, LF2/G;

    .line 229
    .line 230
    const/4 v3, 0x5

    .line 231
    invoke-direct {v0, v3}, LF2/G;-><init>(I)V

    .line 232
    .line 233
    .line 234
    move-object v3, v1

    .line 235
    check-cast v3, Lpe/hf/black20/ServiceStatusActivity;

    .line 236
    .line 237
    invoke-virtual {v0, p1}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    iput-object p1, v3, Lpe/hf/black20/ServiceStatusActivity;->b0:Ljava/lang/String;

    .line 242
    .line 243
    check-cast v1, Lpe/hf/black20/ServiceStatusActivity;

    .line 244
    .line 245
    iget-object p1, v1, Lpe/hf/black20/ServiceStatusActivity;->b0:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 246
    .line 247
    :catch_2
    return-object v2

    .line 248
    :pswitch_3
    check-cast p1, [Ljava/lang/Void;

    .line 249
    .line 250
    invoke-virtual {p0}, Lk3/j;->a()V

    .line 251
    .line 252
    .line 253
    return-object v2

    .line 254
    :pswitch_4
    check-cast p1, [Ljava/lang/Void;

    .line 255
    .line 256
    invoke-virtual {p0}, Lk3/j;->a()V

    .line 257
    .line 258
    .line 259
    return-object v2

    .line 260
    :pswitch_5
    check-cast p1, [Ljava/lang/Void;

    .line 261
    .line 262
    invoke-virtual {p0}, Lk3/j;->a()V

    .line 263
    .line 264
    .line 265
    return-object v2

    .line 266
    :pswitch_6
    check-cast p1, [Ljava/lang/Void;

    .line 267
    .line 268
    invoke-virtual {p0}, Lk3/j;->a()V

    .line 269
    .line 270
    .line 271
    return-object v2

    .line 272
    :pswitch_7
    check-cast p1, [Ljava/lang/Void;

    .line 273
    .line 274
    invoke-virtual {p0}, Lk3/j;->a()V

    .line 275
    .line 276
    .line 277
    return-object v2

    .line 278
    :pswitch_8
    check-cast p1, [Ljava/lang/Void;

    .line 279
    .line 280
    const-string p1, ""

    .line 281
    .line 282
    :try_start_2
    move-object v0, v1

    .line 283
    check-cast v0, Lk3/k;

    .line 284
    .line 285
    iget-object v2, v0, Lk3/k;->I:LD4/b;

    .line 286
    .line 287
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 288
    .line 289
    const-wide/16 v4, 0x3e8

    .line 290
    .line 291
    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    check-cast v2, Lcom/google/android/gms/internal/ads/H4;

    .line 296
    .line 297
    iput-object v2, v0, Lk3/k;->N:Lcom/google/android/gms/internal/ads/H4;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3

    .line 298
    .line 299
    goto :goto_7

    .line 300
    :catch_3
    move-exception v0

    .line 301
    goto :goto_5

    .line 302
    :catch_4
    move-exception v0

    .line 303
    goto :goto_6

    .line 304
    :catch_5
    move-exception v0

    .line 305
    goto :goto_6

    .line 306
    :goto_5
    invoke-static {p1, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    .line 308
    .line 309
    goto :goto_7

    .line 310
    :goto_6
    invoke-static {p1, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    .line 312
    .line 313
    :goto_7
    check-cast v1, Lk3/k;

    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    new-instance p1, Landroid/net/Uri$Builder;

    .line 319
    .line 320
    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string v0, "https://"

    .line 324
    .line 325
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    sget-object v2, Lcom/google/android/gms/internal/ads/g8;->d:Lcom/google/android/gms/internal/ads/f8;

    .line 330
    .line 331
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    check-cast v2, Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 338
    .line 339
    .line 340
    iget-object v0, v1, Lk3/k;->K:Ll/x;

    .line 341
    .line 342
    iget-object v2, v0, Ll/x;->J:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v2, Ljava/lang/String;

    .line 345
    .line 346
    const-string v3, "query"

    .line 347
    .line 348
    invoke-virtual {p1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 349
    .line 350
    .line 351
    iget-object v2, v0, Ll/x;->H:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v2, Ljava/lang/String;

    .line 354
    .line 355
    const-string v3, "pubId"

    .line 356
    .line 357
    invoke-virtual {p1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 358
    .line 359
    .line 360
    iget-object v2, v0, Ll/x;->L:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v2, Ljava/lang/String;

    .line 363
    .line 364
    const-string v3, "mappver"

    .line 365
    .line 366
    invoke-virtual {p1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 367
    .line 368
    .line 369
    iget-object v0, v0, Ll/x;->I:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v0, Ljava/util/Map;

    .line 372
    .line 373
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    if-eqz v3, :cond_2

    .line 386
    .line 387
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    check-cast v3, Ljava/lang/String;

    .line 392
    .line 393
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    check-cast v4, Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {p1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 400
    .line 401
    .line 402
    goto :goto_8

    .line 403
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    iget-object v0, v1, Lk3/k;->N:Lcom/google/android/gms/internal/ads/H4;

    .line 408
    .line 409
    if-eqz v0, :cond_3

    .line 410
    .line 411
    :try_start_3
    iget-object v2, v1, Lk3/k;->J:Landroid/content/Context;

    .line 412
    .line 413
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/H4;->b:Lcom/google/android/gms/internal/ads/E4;

    .line 414
    .line 415
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/E4;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/H4;->d(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 420
    .line 421
    .line 422
    move-result-object p1
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/I4; {:try_start_3 .. :try_end_3} :catch_6

    .line 423
    goto :goto_9

    .line 424
    :catch_6
    move-exception v0

    .line 425
    const-string v2, "Unable to process ad data"

    .line 426
    .line 427
    invoke-static {v2, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    .line 429
    .line 430
    :cond_3
    :goto_9
    invoke-virtual {v1}, Lk3/k;->zzq()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    const-string v1, "#"

    .line 439
    .line 440
    invoke-static {v0, v1, p1}, Lcom/google/protobuf/U2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    return-object p1

    .line 445
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lk3/j;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lk3/j;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lpe/hf/black20/util/a;->G:Landroid/app/ProgressDialog;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Lpe/hf/black20/util/a;->G:Landroid/app/ProgressDialog;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lpe/hf/black20/util/a;->G:Landroid/app/ProgressDialog;

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v0, 0x0

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    sget-object p1, Lpe/hf/black20/util/a;->H:Landroid/content/Context;

    .line 39
    .line 40
    const-string v1, "Update Done"

    .line 41
    .line 42
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    sget-object p1, Lpe/hf/black20/util/a;->H:Landroid/content/Context;

    .line 51
    .line 52
    const-string v1, "Error: Try Again"

    .line 53
    .line 54
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void

    .line 62
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lk3/j;->b(Ljava/lang/Void;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_1
    check-cast p1, Ljava/lang/Void;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lk3/j;->b(Ljava/lang/Void;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_2
    check-cast p1, Ljava/lang/String;

    .line 75
    .line 76
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    check-cast v1, Lpe/hf/black20/ServiceStatusActivity;

    .line 80
    .line 81
    iget-object p1, v1, Lpe/hf/black20/ServiceStatusActivity;->b0:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    const-string v0, "daysleft="

    .line 86
    .line 87
    const-string v3, ""

    .line 88
    .line 89
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, v1, Lpe/hf/black20/ServiceStatusActivity;->b0:Ljava/lang/String;

    .line 94
    .line 95
    const-string v0, " "

    .line 96
    .line 97
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, v1, Lpe/hf/black20/ServiceStatusActivity;->b0:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iput-object p1, v1, Lpe/hf/black20/ServiceStatusActivity;->b0:Ljava/lang/String;

    .line 108
    .line 109
    const-string v0, "XCIPTV_TAG"

    .line 110
    .line 111
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    iget-object p1, v1, Lpe/hf/black20/ServiceStatusActivity;->b0:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 121
    .line 122
    const-string v3, "EEE, MMM dd, yyyy"

    .line 123
    .line 124
    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance v3, Ljava/util/Date;

    .line 128
    .line 129
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 137
    .line 138
    .line 139
    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_1

    .line 141
    :catch_0
    move-exception v3

    .line 142
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    .line 144
    .line 145
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 150
    .line 151
    .line 152
    mul-int/lit8 p1, p1, 0x18

    .line 153
    .line 154
    const/16 v2, 0xb

    .line 155
    .line 156
    invoke-virtual {v3, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 157
    .line 158
    .line 159
    iget-object p1, v1, Lpe/hf/black20/ServiceStatusActivity;->W:Landroid/widget/TextView;

    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    :cond_2
    return-void

    .line 173
    :pswitch_3
    check-cast p1, Ljava/lang/Void;

    .line 174
    .line 175
    invoke-virtual {p0, p1}, Lk3/j;->b(Ljava/lang/Void;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :pswitch_4
    check-cast p1, Ljava/lang/Void;

    .line 180
    .line 181
    invoke-virtual {p0, p1}, Lk3/j;->b(Ljava/lang/Void;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_5
    check-cast p1, Ljava/lang/Void;

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Lk3/j;->b(Ljava/lang/Void;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_6
    check-cast p1, Ljava/lang/Void;

    .line 192
    .line 193
    invoke-virtual {p0, p1}, Lk3/j;->b(Ljava/lang/Void;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :pswitch_7
    check-cast p1, Ljava/lang/Void;

    .line 198
    .line 199
    invoke-virtual {p0, p1}, Lk3/j;->b(Ljava/lang/Void;)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :pswitch_8
    check-cast v1, Lk3/k;

    .line 204
    .line 205
    check-cast p1, Ljava/lang/String;

    .line 206
    .line 207
    iget-object v0, v1, Lk3/k;->L:Landroid/webkit/WebView;

    .line 208
    .line 209
    if-eqz v0, :cond_3

    .line 210
    .line 211
    if-eqz p1, :cond_3

    .line 212
    .line 213
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_3
    return-void

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final onPreExecute()V
    .locals 9

    .line 1
    iget v0, p0, Lk3/j;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "XCIPTV_TAG"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v5, p0, Lk3/j;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lpe/hf/black20/util/a;->G:Landroid/app/ProgressDialog;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Landroid/app/ProgressDialog;

    .line 25
    .line 26
    sget-object v1, Lpe/hf/black20/util/a;->H:Landroid/content/Context;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lpe/hf/black20/util/a;->G:Landroid/app/ProgressDialog;

    .line 32
    .line 33
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lpe/hf/black20/util/a;->G:Landroid/app/ProgressDialog;

    .line 37
    .line 38
    const-string v1, "Downloading..."

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lpe/hf/black20/util/a;->G:Landroid/app/ProgressDialog;

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lpe/hf/black20/util/a;->G:Landroid/app/ProgressDialog;

    .line 49
    .line 50
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 51
    .line 52
    .line 53
    sget-object v0, Lpe/hf/black20/util/a;->G:Landroid/app/ProgressDialog;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void

    .line 59
    :pswitch_1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 60
    .line 61
    .line 62
    check-cast v5, Lpe/hf/black20/updatecontents/M3UUpdateContents;

    .line 63
    .line 64
    iget-object v0, v5, Lpe/hf/black20/updatecontents/M3UUpdateContents;->R:Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v1, v5, Lpe/hf/black20/updatecontents/M3UUpdateContents;->K:Lpe/hf/black20/updatecontents/M3UUpdateContents;

    .line 67
    .line 68
    const v3, 0x7f1301eb

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "------DownloadM3U"

    .line 79
    .line 80
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_2
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 85
    .line 86
    .line 87
    check-cast v5, Lpe/hf/black20/UsersHistoryActivity;

    .line 88
    .line 89
    iget-object v0, v5, Lpe/hf/black20/UsersHistoryActivity;->G:Lpe/hf/black20/UsersHistoryActivity;

    .line 90
    .line 91
    sget-object v5, Lpe/hf/black20/util/Methods;->a:Landroid/content/SharedPreferences;

    .line 92
    .line 93
    const-string v5, "pe.hf.black20"

    .line 94
    .line 95
    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    new-instance v6, Lc7/a;

    .line 100
    .line 101
    invoke-direct {v6, v0, v4}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 102
    .line 103
    .line 104
    new-instance v7, Lc7/d;

    .line 105
    .line 106
    invoke-direct {v7, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    new-instance v8, Lc7/b;

    .line 110
    .line 111
    invoke-direct {v8, v0, v3}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 112
    .line 113
    .line 114
    new-instance v3, Lc7/b;

    .line 115
    .line 116
    invoke-direct {v3, v0, v4}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const-string v4, "streamUrl"

    .line 124
    .line 125
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    .line 131
    .line 132
    const-string v4, "streamFormat"

    .line 133
    .line 134
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    .line 140
    .line 141
    const-string v4, "timezone"

    .line 142
    .line 143
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    .line 149
    .line 150
    const-string v4, "message"

    .line 151
    .line 152
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    .line 158
    .line 159
    const-string v4, "is_trial"

    .line 160
    .line 161
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 166
    .line 167
    .line 168
    const-string v4, "max_connections"

    .line 169
    .line 170
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    .line 176
    .line 177
    const-string v4, "exp_date"

    .line 178
    .line 179
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    .line 185
    .line 186
    const-string v4, "status_acc"

    .line 187
    .line 188
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    .line 194
    .line 195
    const-string v4, "appname"

    .line 196
    .line 197
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    .line 203
    .line 204
    const-string v4, "appkey"

    .line 205
    .line 206
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    .line 212
    .line 213
    const-string v4, "customerid"

    .line 214
    .line 215
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    .line 221
    .line 222
    const-string v4, "expire"

    .line 223
    .line 224
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    .line 230
    .line 231
    const-string v4, "status_app"

    .line 232
    .line 233
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    .line 239
    .line 240
    const-string v4, "support_email"

    .line 241
    .line 242
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    .line 248
    .line 249
    const-string v4, "support_phone"

    .line 250
    .line 251
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    .line 257
    .line 258
    const-string v4, "portal"

    .line 259
    .line 260
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 265
    .line 266
    .line 267
    const-string v4, "portal2"

    .line 268
    .line 269
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 274
    .line 275
    .line 276
    const-string v4, "portal3"

    .line 277
    .line 278
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    .line 284
    .line 285
    const-string v4, "timeShiftHR"

    .line 286
    .line 287
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    .line 293
    .line 294
    const-string v4, "timeShiftMin"

    .line 295
    .line 296
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    .line 302
    .line 303
    const-string v4, "tvvodseries_dl_time"

    .line 304
    .line 305
    invoke-interface {v5, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    move-result v8

    .line 309
    if-eqz v8, :cond_1

    .line 310
    .line 311
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 316
    .line 317
    .line 318
    :cond_1
    const-string v4, "epg_dl_time"

    .line 319
    .line 320
    invoke-interface {v5, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result v8

    .line 324
    if-eqz v8, :cond_2

    .line 325
    .line 326
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 331
    .line 332
    .line 333
    :cond_2
    const-string v4, "epg_manual_download"

    .line 334
    .line 335
    invoke-interface {v5, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 336
    .line 337
    .line 338
    move-result v8

    .line 339
    if-eqz v8, :cond_3

    .line 340
    .line 341
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 346
    .line 347
    .line 348
    :cond_3
    const-string v4, "epg_dl_to_db_time"

    .line 349
    .line 350
    invoke-interface {v5, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    if-eqz v8, :cond_4

    .line 355
    .line 356
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 361
    .line 362
    .line 363
    :cond_4
    const-string v4, "cat_filter_dl_time"

    .line 364
    .line 365
    invoke-interface {v5, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 366
    .line 367
    .line 368
    move-result v8

    .line 369
    if-eqz v8, :cond_5

    .line 370
    .line 371
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 376
    .line 377
    .line 378
    :cond_5
    const-string v4, "tv_arraylist_search"

    .line 379
    .line 380
    invoke-interface {v5, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 381
    .line 382
    .line 383
    move-result v8

    .line 384
    if-eqz v8, :cond_6

    .line 385
    .line 386
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 391
    .line 392
    .line 393
    :cond_6
    const-string v4, "last_msg_display"

    .line 394
    .line 395
    invoke-interface {v5, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    if-eqz v5, :cond_7

    .line 400
    .line 401
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 406
    .line 407
    .line 408
    :cond_7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v6}, Lc7/a;->b0()V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    const-string v4, "tv_category"

    .line 419
    .line 420
    invoke-virtual {v0, v4, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    const-string v4, "vod_category"

    .line 424
    .line 425
    invoke-virtual {v0, v4, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    const-string v4, "series_category"

    .line 429
    .line 430
    invoke-virtual {v0, v4, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    const-string v4, "liststreams"

    .line 434
    .line 435
    invoke-virtual {v0, v4, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    const-string v4, "vods"

    .line 439
    .line 440
    invoke-virtual {v0, v4, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    const-string v4, "series"

    .line 444
    .line 445
    invoke-virtual {v0, v4, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    const-string v4, "epg_channel"

    .line 449
    .line 450
    invoke-virtual {v0, v4, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    const-string v4, "epg_programme"

    .line 454
    .line 455
    invoke-virtual {v0, v4, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 459
    .line 460
    .line 461
    const-string v0, "----- Clear All DB streams"

    .line 462
    .line 463
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    const-string v2, "category_filter"

    .line 471
    .line 472
    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 473
    .line 474
    .line 475
    invoke-static {}, Lpe/hf/black20/util/Methods;->B()V

    .line 476
    .line 477
    .line 478
    return-void

    .line 479
    :pswitch_3
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 480
    .line 481
    .line 482
    return-void

    .line 483
    :pswitch_4
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 484
    .line 485
    .line 486
    return-void

    .line 487
    :pswitch_5
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 488
    .line 489
    .line 490
    return-void

    .line 491
    :pswitch_6
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 492
    .line 493
    .line 494
    check-cast v5, Lpe/hf/black20/ORPlayerMainActivity;

    .line 495
    .line 496
    iget-boolean v0, v5, Lpe/hf/black20/ORPlayerMainActivity;->v0:Z

    .line 497
    .line 498
    if-eqz v0, :cond_8

    .line 499
    .line 500
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    iget-object v2, v5, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 505
    .line 506
    const-string v3, "last_profile"

    .line 507
    .line 508
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    const-string v3, "ORT_LAST_PROFILE"

    .line 513
    .line 514
    invoke-virtual {v0, v3, v2}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 515
    .line 516
    .line 517
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    iget-object v2, v5, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 522
    .line 523
    const-string v3, "last_channel_name"

    .line 524
    .line 525
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    const-string v2, "ORT_LAST_CHANNEL_NAME"

    .line 530
    .line 531
    invoke-virtual {v0, v2, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 532
    .line 533
    .line 534
    :cond_8
    return-void

    .line 535
    :pswitch_7
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 536
    .line 537
    .line 538
    return-void

    .line 539
    :pswitch_8
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 540
    .line 541
    .line 542
    check-cast v5, Lpe/hf/black20/DeviceStatus;

    .line 543
    .line 544
    iget-object v0, v5, Lpe/hf/black20/DeviceStatus;->G:Landroid/widget/ProgressBar;

    .line 545
    .line 546
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 547
    .line 548
    .line 549
    return-void

    .line 550
    nop

    .line 551
    :pswitch_data_0
    .packed-switch 0x1
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

.method public final onProgressUpdate([Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lk3/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    check-cast p1, [Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lpe/hf/black20/util/a;->G:Landroid/app/ProgressDialog;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lpe/hf/black20/util/a;->G:Landroid/app/ProgressDialog;

    .line 22
    .line 23
    const/16 v2, 0x64

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lpe/hf/black20/util/a;->G:Landroid/app/ProgressDialog;

    .line 29
    .line 30
    aget-object v2, p1, v1

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 37
    .line 38
    .line 39
    aget-object v0, p1, v1

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/16 v2, 0x63

    .line 46
    .line 47
    if-le v0, v2, :cond_0

    .line 48
    .line 49
    const-string p1, "Finishing... "

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "Downloading... "

    .line 55
    .line 56
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    aget-object p1, p1, v1

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, "%"

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_0
    sget-object v0, Lpe/hf/black20/util/a;->G:Landroid/app/ProgressDialog;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method
