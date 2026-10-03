.class public final Lb7/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpe/hf/black20/BackupActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/BackupActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb7/e;->a:I

    invoke-direct {p0, p1, v0}, Lb7/e;-><init>(Lpe/hf/black20/BackupActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/BackupActivity;I)V
    .locals 0

    .line 2
    iput p2, p0, Lb7/e;->a:I

    iput-object p1, p0, Lb7/e;->b:Lpe/hf/black20/BackupActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/BackupActivity;La/r;)V
    .locals 0

    .line 3
    const/4 p2, 0x2

    iput p2, p0, Lb7/e;->a:I

    invoke-direct {p0, p1, p2}, Lb7/e;-><init>(Lpe/hf/black20/BackupActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/BackupActivity;Lb7/d;)V
    .locals 0

    .line 4
    const/4 p2, 0x3

    iput p2, p0, Lb7/e;->a:I

    invoke-direct {p0, p1, p2}, Lb7/e;-><init>(Lpe/hf/black20/BackupActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/BackupActivity;Ljava/lang/Object;)V
    .locals 0

    .line 5
    const/4 p2, 0x1

    iput p2, p0, Lb7/e;->a:I

    invoke-direct {p0, p1, p2}, Lb7/e;-><init>(Lpe/hf/black20/BackupActivity;I)V

    return-void
.end method


# virtual methods
.method public final varargs a()V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lb7/e;->a:I

    .line 4
    .line 5
    const/4 v3, 0x6

    .line 6
    const-string v4, "msg"

    .line 7
    .line 8
    const-string v5, "success"

    .line 9
    .line 10
    const/4 v6, 0x5

    .line 11
    const-string v7, "0"

    .line 12
    .line 13
    const-string v8, "XCIPTV_TAG"

    .line 14
    .line 15
    iget-object v9, v1, Lb7/e;->b:Lpe/hf/black20/BackupActivity;

    .line 16
    .line 17
    const/4 v10, 0x0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v2, v9, Lpe/hf/black20/BackupActivity;->l0:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "CloudBackup.php?user="

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, v9, Lpe/hf/black20/BackupActivity;->e0:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, "&pass="

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, v9, Lpe/hf/black20/BackupActivity;->f0:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, v9, Lpe/hf/black20/BackupActivity;->m0:Ljava/lang/String;

    .line 56
    .line 57
    :try_start_0
    new-instance v2, LF2/G;

    .line 58
    .line 59
    invoke-direct {v2, v6}, LF2/G;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, v9, Lpe/hf/black20/BackupActivity;->i0:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    iput-object v10, v9, Lpe/hf/black20/BackupActivity;->o0:Lorg/json/JSONObject;

    .line 71
    .line 72
    new-instance v0, Lorg/json/JSONObject;

    .line 73
    .line 74
    iget-object v2, v9, Lpe/hf/black20/BackupActivity;->i0:Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object v0, v9, Lpe/hf/black20/BackupActivity;->o0:Lorg/json/JSONObject;

    .line 80
    .line 81
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, v9, Lpe/hf/black20/BackupActivity;->g0:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->o0:Lorg/json/JSONObject;

    .line 88
    .line 89
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iput-object v0, v9, Lpe/hf/black20/BackupActivity;->h0:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->o0:Lorg/json/JSONObject;

    .line 96
    .line 97
    const-string v2, "backup"

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, v9, Lpe/hf/black20/BackupActivity;->k0:Ljava/lang/String;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    goto :goto_0

    .line 108
    :cond_0
    iput-object v7, v9, Lpe/hf/black20/BackupActivity;->g0:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :goto_0
    iput-object v7, v9, Lpe/hf/black20/BackupActivity;->g0:Ljava/lang/String;

    .line 112
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v3, "BackupActivity - JSONException "

    .line 116
    .line 117
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :goto_1
    return-void

    .line 131
    :pswitch_0
    :try_start_1
    new-instance v0, LF2/G;

    .line 132
    .line 133
    invoke-direct {v0, v3}, LF2/G;-><init>(I)V

    .line 134
    .line 135
    .line 136
    iget-object v2, v9, Lpe/hf/black20/BackupActivity;->m0:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v3, v9, Lpe/hf/black20/BackupActivity;->n0:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v0, v2, v3}, LF2/G;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iput-object v0, v9, Lpe/hf/black20/BackupActivity;->i0:Ljava/lang/String;

    .line 145
    .line 146
    if-eqz v0, :cond_1

    .line 147
    .line 148
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    iput-object v10, v9, Lpe/hf/black20/BackupActivity;->o0:Lorg/json/JSONObject;

    .line 152
    .line 153
    new-instance v0, Lorg/json/JSONObject;

    .line 154
    .line 155
    iget-object v2, v9, Lpe/hf/black20/BackupActivity;->i0:Ljava/lang/String;

    .line 156
    .line 157
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iput-object v0, v9, Lpe/hf/black20/BackupActivity;->o0:Lorg/json/JSONObject;

    .line 161
    .line 162
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iput-object v0, v9, Lpe/hf/black20/BackupActivity;->g0:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->o0:Lorg/json/JSONObject;

    .line 169
    .line 170
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iput-object v0, v9, Lpe/hf/black20/BackupActivity;->h0:Ljava/lang/String;

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_1
    iput-object v7, v9, Lpe/hf/black20/BackupActivity;->g0:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :catch_1
    iput-object v7, v9, Lpe/hf/black20/BackupActivity;->g0:Ljava/lang/String;

    .line 181
    .line 182
    :goto_2
    return-void

    .line 183
    :pswitch_1
    const-string v0, "fav_profiles"

    .line 184
    .line 185
    const-string v3, "pc_lock"

    .line 186
    .line 187
    const-string v4, "ovpn_auto"

    .line 188
    .line 189
    const-string v5, "xciptv_profile"

    .line 190
    .line 191
    const-string v6, "whichplayer_series"

    .line 192
    .line 193
    const-string v7, "whichplayer_vod"

    .line 194
    .line 195
    const-string v11, "whichplayer_tv"

    .line 196
    .line 197
    const-string v12, "parental_contorl"

    .line 198
    .line 199
    const-string v13, "multiscreen"

    .line 200
    .line 201
    const-string v14, "favouriteprofiles"

    .line 202
    .line 203
    const-string v15, "watched"

    .line 204
    .line 205
    :try_start_2
    new-instance v10, Lorg/json/JSONObject;

    .line 206
    .line 207
    iget-object v2, v9, Lpe/hf/black20/BackupActivity;->k0:Ljava/lang/String;

    .line 208
    .line 209
    iget-object v1, v9, Lpe/hf/black20/BackupActivity;->f0:Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {v2, v1}, Lpe/hf/black20/encryption/BackupEncrypt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    invoke-direct {v10, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string v1, "favourites"

    .line 222
    .line 223
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    new-instance v2, Lorg/json/JSONArray;

    .line 228
    .line 229
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v16

    .line 236
    if-eqz v16, :cond_2

    .line 237
    .line 238
    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    :cond_2
    const-string v14, "resumes"

    .line 243
    .line 244
    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 245
    .line 246
    .line 247
    move-result-object v14

    .line 248
    move-object/from16 v16, v14

    .line 249
    .line 250
    const-string v14, "userslist"

    .line 251
    .line 252
    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 253
    .line 254
    .line 255
    move-result-object v14

    .line 256
    move-object/from16 v17, v2

    .line 257
    .line 258
    const-string v2, "parentaltv"

    .line 259
    .line 260
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    move-object/from16 v18, v1

    .line 265
    .line 266
    const-string v1, "parentalvod"

    .line 267
    .line 268
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    move-object/from16 v19, v8

    .line 273
    .line 274
    const-string v8, "parentalseries"

    .line 275
    .line 276
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    move-object/from16 v20, v8

    .line 281
    .line 282
    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    move-object/from16 v21, v8

    .line 287
    .line 288
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    move-object/from16 v22, v13

    .line 293
    .line 294
    const-string v13, "program_reminders"

    .line 295
    .line 296
    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 297
    .line 298
    .line 299
    move-result-object v13

    .line 300
    move-object/from16 v23, v13

    .line 301
    .line 302
    iget-object v13, v9, Lpe/hf/black20/BackupActivity;->G:Lpe/hf/black20/BackupActivity;

    .line 303
    .line 304
    move-object/from16 v24, v8

    .line 305
    .line 306
    const-string v8, "pe.hf.black20"

    .line 307
    .line 308
    move-object/from16 v25, v1

    .line 309
    .line 310
    const/4 v1, 0x0

    .line 311
    invoke-virtual {v13, v8, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    iput-object v1, v9, Lpe/hf/black20/BackupActivity;->H:Landroid/content/SharedPreferences;

    .line 316
    .line 317
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    invoke-interface {v1, v15, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    invoke-interface {v1, v12, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v8

    .line 339
    invoke-interface {v1, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 375
    .line 376
    .line 377
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 378
    .line 379
    .line 380
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 381
    .line 382
    .line 383
    iget-object v1, v9, Lpe/hf/black20/BackupActivity;->I:Lc7/a;

    .line 384
    .line 385
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 386
    .line 387
    .line 388
    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 389
    :try_start_3
    const-string v3, "user_history"

    .line 390
    .line 391
    const/4 v4, 0x0

    .line 392
    invoke-virtual {v1, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 393
    .line 394
    .line 395
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 396
    .line 397
    .line 398
    iget-object v1, v9, Lpe/hf/black20/BackupActivity;->M:Lc7/d;

    .line 399
    .line 400
    invoke-virtual {v1}, Lc7/d;->L0()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {v1, v0, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 411
    .line 412
    .line 413
    iget-object v1, v9, Lpe/hf/black20/BackupActivity;->I:Lc7/a;

    .line 414
    .line 415
    invoke-virtual {v1, v14}, Lc7/a;->g0(Lorg/json/JSONArray;)V

    .line 416
    .line 417
    .line 418
    iget-object v1, v9, Lpe/hf/black20/BackupActivity;->L:Lc7/b;

    .line 419
    .line 420
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    const-string v3, "parental_control_tv"

    .line 425
    .line 426
    const/4 v4, 0x0

    .line 427
    invoke-virtual {v1, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    const-string v3, "parental_control_vod"

    .line 431
    .line 432
    invoke-virtual {v1, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    const-string v3, "parental_control_series"

    .line 436
    .line 437
    invoke-virtual {v1, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 441
    .line 442
    .line 443
    iget-object v1, v9, Lpe/hf/black20/BackupActivity;->L:Lc7/b;

    .line 444
    .line 445
    const-string v3, "TV"

    .line 446
    .line 447
    invoke-virtual {v1, v2, v3}, Lc7/b;->a0(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    iget-object v1, v9, Lpe/hf/black20/BackupActivity;->L:Lc7/b;

    .line 451
    .line 452
    const-string v2, "VOD"

    .line 453
    .line 454
    move-object/from16 v3, v25

    .line 455
    .line 456
    invoke-virtual {v1, v3, v2}, Lc7/b;->a0(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    iget-object v1, v9, Lpe/hf/black20/BackupActivity;->L:Lc7/b;

    .line 460
    .line 461
    const-string v2, "SERIES"

    .line 462
    .line 463
    move-object/from16 v3, v20

    .line 464
    .line 465
    invoke-virtual {v1, v3, v2}, Lc7/b;->a0(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    iget-object v1, v9, Lpe/hf/black20/BackupActivity;->M:Lc7/d;

    .line 469
    .line 470
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    const-string v2, "fav"

    .line 475
    .line 476
    const/4 v3, 0x0

    .line 477
    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    const-string v0, "resume"

    .line 484
    .line 485
    invoke-virtual {v1, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 489
    .line 490
    .line 491
    const-string v0, "----- DeleteFavAndResumeData"

    .line 492
    .line 493
    move-object/from16 v1, v19

    .line 494
    .line 495
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->M:Lc7/d;

    .line 499
    .line 500
    move-object/from16 v1, v18

    .line 501
    .line 502
    invoke-virtual {v0, v1}, Lc7/d;->w0(Lorg/json/JSONArray;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    if-lez v0, :cond_3

    .line 510
    .line 511
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->M:Lc7/d;

    .line 512
    .line 513
    move-object/from16 v2, v17

    .line 514
    .line 515
    invoke-virtual {v0, v2}, Lc7/d;->x0(Lorg/json/JSONArray;)V

    .line 516
    .line 517
    .line 518
    :cond_3
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->M:Lc7/d;

    .line 519
    .line 520
    move-object/from16 v1, v16

    .line 521
    .line 522
    invoke-virtual {v0, v1}, Lc7/d;->y0(Lorg/json/JSONArray;)V

    .line 523
    .line 524
    .line 525
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->J:Lc7/b;

    .line 526
    .line 527
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    const-string v1, "episode"

    .line 532
    .line 533
    const/4 v2, 0x0

    .line 534
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 538
    .line 539
    .line 540
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->J:Lc7/b;

    .line 541
    .line 542
    move-object/from16 v1, v24

    .line 543
    .line 544
    invoke-virtual {v0, v1}, Lc7/b;->b0(Lorg/json/JSONArray;)V

    .line 545
    .line 546
    .line 547
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->K:Lc7/c;

    .line 548
    .line 549
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    move-object/from16 v2, v22

    .line 554
    .line 555
    const/4 v1, 0x0

    .line 556
    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 560
    .line 561
    .line 562
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->K:Lc7/c;

    .line 563
    .line 564
    move-object/from16 v1, v21

    .line 565
    .line 566
    invoke-virtual {v0, v1}, Lc7/c;->E(Lorg/json/JSONArray;)V

    .line 567
    .line 568
    .line 569
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->N:Lc7/c;

    .line 570
    .line 571
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    const-string v1, "program_reminds"

    .line 576
    .line 577
    const/4 v2, 0x0

    .line 578
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 582
    .line 583
    .line 584
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->N:Lc7/c;

    .line 585
    .line 586
    move-object/from16 v1, v23

    .line 587
    .line 588
    invoke-virtual {v0, v1}, Lc7/c;->c0(Lorg/json/JSONArray;)V

    .line 589
    .line 590
    .line 591
    goto :goto_3

    .line 592
    :catchall_0
    move-exception v0

    .line 593
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 594
    .line 595
    .line 596
    throw v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 597
    :catch_2
    :goto_3
    return-void

    .line 598
    :pswitch_2
    const-string v0, "SELECT * FROM fav"

    .line 599
    .line 600
    iget-object v1, v9, Lpe/hf/black20/BackupActivity;->M:Lc7/d;

    .line 601
    .line 602
    iget-object v2, v1, Lc7/d;->L:Ljava/util/ArrayList;

    .line 603
    .line 604
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    const/4 v4, 0x3

    .line 612
    const/4 v5, 0x2

    .line 613
    const/4 v7, 0x1

    .line 614
    const/4 v8, 0x0

    .line 615
    :try_start_5
    invoke-virtual {v1, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 616
    .line 617
    .line 618
    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 619
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 620
    .line 621
    .line 622
    move-result v8

    .line 623
    if-eqz v8, :cond_5

    .line 624
    .line 625
    :cond_4
    new-instance v8, Lm2/o;

    .line 626
    .line 627
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 628
    .line 629
    .line 630
    const/4 v10, 0x0

    .line 631
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v11

    .line 635
    iput-object v11, v8, Lm2/o;->G:Ljava/lang/Object;

    .line 636
    .line 637
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v10

    .line 641
    iput-object v10, v8, Lm2/o;->H:Ljava/lang/Object;

    .line 642
    .line 643
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v10

    .line 647
    iput-object v10, v8, Lm2/o;->I:Ljava/lang/Object;

    .line 648
    .line 649
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v10

    .line 653
    iput-object v10, v8, Lm2/o;->J:Ljava/lang/Object;

    .line 654
    .line 655
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 659
    .line 660
    .line 661
    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 662
    if-nez v8, :cond_4

    .line 663
    .line 664
    goto :goto_4

    .line 665
    :catchall_1
    nop

    .line 666
    goto :goto_5

    .line 667
    :cond_5
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 668
    .line 669
    .line 670
    goto :goto_6

    .line 671
    :catchall_2
    nop

    .line 672
    const/4 v1, 0x0

    .line 673
    :goto_5
    if-eqz v1, :cond_6

    .line 674
    .line 675
    goto :goto_4

    .line 676
    :cond_6
    :goto_6
    iput-object v2, v9, Lpe/hf/black20/BackupActivity;->O:Ljava/util/ArrayList;

    .line 677
    .line 678
    iget-object v1, v9, Lpe/hf/black20/BackupActivity;->M:Lc7/d;

    .line 679
    .line 680
    invoke-virtual {v1}, Lc7/d;->E0()Ljava/util/ArrayList;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    iput-object v1, v9, Lpe/hf/black20/BackupActivity;->Q:Ljava/util/ArrayList;

    .line 685
    .line 686
    iget-object v1, v9, Lpe/hf/black20/BackupActivity;->M:Lc7/d;

    .line 687
    .line 688
    iget-object v2, v1, Lc7/d;->M:Ljava/util/ArrayList;

    .line 689
    .line 690
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    const/4 v8, 0x0

    .line 698
    :try_start_7
    invoke-virtual {v1, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 699
    .line 700
    .line 701
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 702
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 703
    .line 704
    .line 705
    move-result v1

    .line 706
    if-eqz v1, :cond_8

    .line 707
    .line 708
    :cond_7
    new-instance v1, Lh7/c;

    .line 709
    .line 710
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 711
    .line 712
    .line 713
    const/4 v8, 0x0

    .line 714
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v10

    .line 718
    iput-object v10, v1, Lh7/c;->a:Ljava/lang/String;

    .line 719
    .line 720
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v8

    .line 724
    iput-object v8, v1, Lh7/c;->b:Ljava/lang/String;

    .line 725
    .line 726
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v8

    .line 730
    iput-object v8, v1, Lh7/c;->c:Ljava/lang/String;

    .line 731
    .line 732
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 736
    .line 737
    .line 738
    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 739
    if-nez v1, :cond_7

    .line 740
    .line 741
    goto :goto_7

    .line 742
    :catchall_3
    nop

    .line 743
    goto :goto_8

    .line 744
    :cond_8
    :goto_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 745
    .line 746
    .line 747
    goto :goto_9

    .line 748
    :catchall_4
    nop

    .line 749
    const/4 v0, 0x0

    .line 750
    :goto_8
    if-eqz v0, :cond_9

    .line 751
    .line 752
    goto :goto_7

    .line 753
    :cond_9
    :goto_9
    iput-object v2, v9, Lpe/hf/black20/BackupActivity;->P:Ljava/util/ArrayList;

    .line 754
    .line 755
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->I:Lc7/a;

    .line 756
    .line 757
    invoke-virtual {v0}, Lc7/a;->d0()Ljava/util/ArrayList;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    iput-object v0, v9, Lpe/hf/black20/BackupActivity;->R:Ljava/util/ArrayList;

    .line 762
    .line 763
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->L:Lc7/b;

    .line 764
    .line 765
    iget-object v1, v0, Lc7/b;->H:Ljava/util/ArrayList;

    .line 766
    .line 767
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    :try_start_9
    const-string v2, "SELECT * FROM parental_control_tv"

    .line 775
    .line 776
    const/4 v8, 0x0

    .line 777
    invoke-virtual {v0, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 778
    .line 779
    .line 780
    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 781
    :try_start_a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 782
    .line 783
    .line 784
    move-result v2

    .line 785
    if-eqz v2, :cond_b

    .line 786
    .line 787
    :cond_a
    new-instance v2, LZ3/y;

    .line 788
    .line 789
    invoke-direct {v2, v7}, LZ3/y;-><init>(I)V

    .line 790
    .line 791
    .line 792
    const/4 v8, 0x0

    .line 793
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v10

    .line 797
    packed-switch v7, :pswitch_data_1

    .line 798
    .line 799
    .line 800
    iput-object v10, v2, LZ3/y;->a:Ljava/lang/String;

    .line 801
    .line 802
    goto :goto_a

    .line 803
    :pswitch_3
    iput-object v10, v2, LZ3/y;->a:Ljava/lang/String;

    .line 804
    .line 805
    :goto_a
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v8

    .line 809
    iput-object v8, v2, LZ3/y;->b:Ljava/lang/String;

    .line 810
    .line 811
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v8

    .line 815
    iput-object v8, v2, LZ3/y;->c:Ljava/lang/String;

    .line 816
    .line 817
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 821
    .line 822
    .line 823
    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 824
    if-nez v2, :cond_a

    .line 825
    .line 826
    goto :goto_b

    .line 827
    :catchall_5
    nop

    .line 828
    goto :goto_c

    .line 829
    :cond_b
    :goto_b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 830
    .line 831
    .line 832
    goto :goto_d

    .line 833
    :catchall_6
    nop

    .line 834
    const/4 v0, 0x0

    .line 835
    :goto_c
    if-eqz v0, :cond_c

    .line 836
    .line 837
    goto :goto_b

    .line 838
    :cond_c
    :goto_d
    iput-object v1, v9, Lpe/hf/black20/BackupActivity;->S:Ljava/util/ArrayList;

    .line 839
    .line 840
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->L:Lc7/b;

    .line 841
    .line 842
    iget-object v1, v0, Lc7/b;->I:Ljava/util/ArrayList;

    .line 843
    .line 844
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    :try_start_b
    const-string v2, "SELECT * FROM parental_control_vod"

    .line 852
    .line 853
    const/4 v8, 0x0

    .line 854
    invoke-virtual {v0, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 855
    .line 856
    .line 857
    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 858
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 859
    .line 860
    .line 861
    move-result v2

    .line 862
    if-eqz v2, :cond_e

    .line 863
    .line 864
    :cond_d
    new-instance v2, LZ3/y;

    .line 865
    .line 866
    invoke-direct {v2, v7}, LZ3/y;-><init>(I)V

    .line 867
    .line 868
    .line 869
    const/4 v8, 0x0

    .line 870
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v10

    .line 874
    packed-switch v7, :pswitch_data_2

    .line 875
    .line 876
    .line 877
    iput-object v10, v2, LZ3/y;->a:Ljava/lang/String;

    .line 878
    .line 879
    goto :goto_e

    .line 880
    :pswitch_4
    iput-object v10, v2, LZ3/y;->a:Ljava/lang/String;

    .line 881
    .line 882
    :goto_e
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v8

    .line 886
    iput-object v8, v2, LZ3/y;->b:Ljava/lang/String;

    .line 887
    .line 888
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v8

    .line 892
    iput-object v8, v2, LZ3/y;->c:Ljava/lang/String;

    .line 893
    .line 894
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    .line 896
    .line 897
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 898
    .line 899
    .line 900
    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 901
    if-nez v2, :cond_d

    .line 902
    .line 903
    goto :goto_f

    .line 904
    :catchall_7
    nop

    .line 905
    goto :goto_10

    .line 906
    :cond_e
    :goto_f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 907
    .line 908
    .line 909
    goto :goto_11

    .line 910
    :catchall_8
    nop

    .line 911
    const/4 v0, 0x0

    .line 912
    :goto_10
    if-eqz v0, :cond_f

    .line 913
    .line 914
    goto :goto_f

    .line 915
    :cond_f
    :goto_11
    iput-object v1, v9, Lpe/hf/black20/BackupActivity;->T:Ljava/util/ArrayList;

    .line 916
    .line 917
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->L:Lc7/b;

    .line 918
    .line 919
    iget-object v1, v0, Lc7/b;->J:Ljava/util/ArrayList;

    .line 920
    .line 921
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    :try_start_d
    const-string v2, "SELECT * FROM parental_control_series"

    .line 929
    .line 930
    const/4 v8, 0x0

    .line 931
    invoke-virtual {v0, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 932
    .line 933
    .line 934
    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 935
    :try_start_e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 936
    .line 937
    .line 938
    move-result v2

    .line 939
    if-eqz v2, :cond_11

    .line 940
    .line 941
    :cond_10
    new-instance v2, LZ3/y;

    .line 942
    .line 943
    invoke-direct {v2, v7}, LZ3/y;-><init>(I)V

    .line 944
    .line 945
    .line 946
    const/4 v8, 0x0

    .line 947
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v10

    .line 951
    packed-switch v7, :pswitch_data_3

    .line 952
    .line 953
    .line 954
    iput-object v10, v2, LZ3/y;->a:Ljava/lang/String;

    .line 955
    .line 956
    goto :goto_12

    .line 957
    :pswitch_5
    iput-object v10, v2, LZ3/y;->a:Ljava/lang/String;

    .line 958
    .line 959
    :goto_12
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v8

    .line 963
    iput-object v8, v2, LZ3/y;->b:Ljava/lang/String;

    .line 964
    .line 965
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v8

    .line 969
    iput-object v8, v2, LZ3/y;->c:Ljava/lang/String;

    .line 970
    .line 971
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    .line 973
    .line 974
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 975
    .line 976
    .line 977
    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 978
    if-nez v2, :cond_10

    .line 979
    .line 980
    goto :goto_13

    .line 981
    :catchall_9
    nop

    .line 982
    goto :goto_14

    .line 983
    :cond_11
    :goto_13
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 984
    .line 985
    .line 986
    goto :goto_15

    .line 987
    :catchall_a
    nop

    .line 988
    const/4 v0, 0x0

    .line 989
    :goto_14
    if-eqz v0, :cond_12

    .line 990
    .line 991
    goto :goto_13

    .line 992
    :cond_12
    :goto_15
    iput-object v1, v9, Lpe/hf/black20/BackupActivity;->U:Ljava/util/ArrayList;

    .line 993
    .line 994
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->K:Lc7/c;

    .line 995
    .line 996
    iget-object v1, v0, Lc7/c;->H:Ljava/util/ArrayList;

    .line 997
    .line 998
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    :try_start_f
    const-string v2, "SELECT * FROM multiscreen"

    .line 1006
    .line 1007
    const/4 v8, 0x0

    .line 1008
    invoke-virtual {v0, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    .line 1012
    :try_start_10
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1013
    .line 1014
    .line 1015
    move-result v2

    .line 1016
    if-eqz v2, :cond_14

    .line 1017
    .line 1018
    :cond_13
    new-instance v2, Le2/z;

    .line 1019
    .line 1020
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1021
    .line 1022
    .line 1023
    const/4 v8, 0x0

    .line 1024
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v10

    .line 1028
    iput-object v10, v2, Le2/z;->a:Ljava/lang/Object;

    .line 1029
    .line 1030
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v8

    .line 1034
    iput-object v8, v2, Le2/z;->b:Ljava/lang/Object;

    .line 1035
    .line 1036
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v8

    .line 1040
    iput-object v8, v2, Le2/z;->c:Ljava/lang/Object;

    .line 1041
    .line 1042
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v8

    .line 1046
    iput-object v8, v2, Le2/z;->d:Ljava/lang/Object;

    .line 1047
    .line 1048
    const/4 v8, 0x4

    .line 1049
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v8

    .line 1053
    iput-object v8, v2, Le2/z;->e:Ljava/lang/Object;

    .line 1054
    .line 1055
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v8

    .line 1059
    iput-object v8, v2, Le2/z;->f:Ljava/lang/Object;

    .line 1060
    .line 1061
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v8

    .line 1065
    iput-object v8, v2, Le2/z;->g:Ljava/lang/Object;

    .line 1066
    .line 1067
    const/4 v8, 0x7

    .line 1068
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v8

    .line 1072
    iput-object v8, v2, Le2/z;->h:Ljava/lang/Object;

    .line 1073
    .line 1074
    const/16 v8, 0x8

    .line 1075
    .line 1076
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v8

    .line 1080
    iput-object v8, v2, Le2/z;->i:Ljava/lang/Object;

    .line 1081
    .line 1082
    const/16 v8, 0x9

    .line 1083
    .line 1084
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v8

    .line 1088
    iput-object v8, v2, Le2/z;->j:Ljava/lang/Object;

    .line 1089
    .line 1090
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    .line 1092
    .line 1093
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1094
    .line 1095
    .line 1096
    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .line 1097
    if-nez v2, :cond_13

    .line 1098
    .line 1099
    goto :goto_16

    .line 1100
    :catchall_b
    nop

    .line 1101
    move-object v4, v0

    .line 1102
    goto :goto_17

    .line 1103
    :cond_14
    :goto_16
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1104
    .line 1105
    .line 1106
    goto :goto_18

    .line 1107
    :catchall_c
    nop

    .line 1108
    const/4 v4, 0x0

    .line 1109
    :goto_17
    if-eqz v4, :cond_15

    .line 1110
    .line 1111
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1112
    .line 1113
    .line 1114
    :cond_15
    :goto_18
    iput-object v1, v9, Lpe/hf/black20/BackupActivity;->V:Ljava/util/ArrayList;

    .line 1115
    .line 1116
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->J:Lc7/b;

    .line 1117
    .line 1118
    iget-object v1, v0, Lc7/b;->J:Ljava/util/ArrayList;

    .line 1119
    .line 1120
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    :try_start_11
    const-string v2, "SELECT * FROM episode"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    .line 1128
    .line 1129
    const/4 v3, 0x0

    .line 1130
    :try_start_12
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    .line 1134
    :try_start_13
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1135
    .line 1136
    .line 1137
    move-result v0

    .line 1138
    if-eqz v0, :cond_17

    .line 1139
    .line 1140
    :cond_16
    new-instance v0, LZ3/y;

    .line 1141
    .line 1142
    invoke-direct {v0, v5}, LZ3/y;-><init>(I)V

    .line 1143
    .line 1144
    .line 1145
    const/4 v2, 0x0

    .line 1146
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v3

    .line 1150
    packed-switch v5, :pswitch_data_4

    .line 1151
    .line 1152
    .line 1153
    iput-object v3, v0, LZ3/y;->a:Ljava/lang/String;

    .line 1154
    .line 1155
    goto :goto_19

    .line 1156
    :pswitch_6
    iput-object v3, v0, LZ3/y;->a:Ljava/lang/String;

    .line 1157
    .line 1158
    :goto_19
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v3

    .line 1162
    iput-object v3, v0, LZ3/y;->b:Ljava/lang/String;

    .line 1163
    .line 1164
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v3

    .line 1168
    iput-object v3, v0, LZ3/y;->c:Ljava/lang/String;

    .line 1169
    .line 1170
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    .line 1172
    .line 1173
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 1174
    .line 1175
    .line 1176
    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    .line 1177
    if-nez v0, :cond_16

    .line 1178
    .line 1179
    goto :goto_1a

    .line 1180
    :catchall_d
    nop

    .line 1181
    goto :goto_1d

    .line 1182
    :cond_17
    :goto_1a
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    .line 1183
    .line 1184
    .line 1185
    move-result v0

    .line 1186
    if-nez v0, :cond_18

    .line 1187
    .line 1188
    :goto_1b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1189
    .line 1190
    .line 1191
    goto :goto_1e

    .line 1192
    :catchall_e
    :goto_1c
    nop

    .line 1193
    move-object v10, v3

    .line 1194
    goto :goto_1d

    .line 1195
    :catchall_f
    const/4 v3, 0x0

    .line 1196
    goto :goto_1c

    .line 1197
    :goto_1d
    if-eqz v10, :cond_18

    .line 1198
    .line 1199
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    .line 1200
    .line 1201
    .line 1202
    move-result v0

    .line 1203
    if-nez v0, :cond_18

    .line 1204
    .line 1205
    goto :goto_1b

    .line 1206
    :cond_18
    :goto_1e
    iput-object v1, v9, Lpe/hf/black20/BackupActivity;->W:Ljava/util/ArrayList;

    .line 1207
    .line 1208
    iget-object v0, v9, Lpe/hf/black20/BackupActivity;->N:Lc7/c;

    .line 1209
    .line 1210
    const-string v1, "all"

    .line 1211
    .line 1212
    invoke-virtual {v0, v1}, Lc7/c;->a0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v0

    .line 1216
    iput-object v0, v9, Lpe/hf/black20/BackupActivity;->X:Ljava/util/ArrayList;

    .line 1217
    .line 1218
    return-void

    .line 1219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public final b(Ljava/lang/Void;)V
    .locals 13

    .line 1
    iget v0, p0, Lb7/e;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v5, p0, Lb7/e;->b:Lpe/hf/black20/BackupActivity;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->g0:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "1"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->k0:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, " "

    .line 29
    .line 30
    const-string v2, "+"

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, v5, Lpe/hf/black20/BackupActivity;->k0:Ljava/lang/String;

    .line 37
    .line 38
    new-instance p1, Lb7/e;

    .line 39
    .line 40
    invoke-direct {p1, v5, v1}, Lb7/e;-><init>(Lpe/hf/black20/BackupActivity;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-array v0, v4, [Ljava/lang/Void;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->Y:Landroid/widget/Button;

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 52
    .line 53
    .line 54
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->a0:Landroid/widget/Button;

    .line 55
    .line 56
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 57
    .line 58
    .line 59
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->Z:Landroid/widget/Button;

    .line 60
    .line 61
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 62
    .line 63
    .line 64
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->p0:Landroid/widget/ProgressBar;

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->b0:Landroid/widget/TextView;

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const v1, 0x7f130175

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v1, v5, Lpe/hf/black20/BackupActivity;->h0:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->h0:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v5, p1}, Lpe/hf/black20/BackupActivity;->a(Lpe/hf/black20/BackupActivity;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void

    .line 104
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->p0:Landroid/widget/ProgressBar;

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->b0:Landroid/widget/TextView;

    .line 113
    .line 114
    const v0, 0x7f13002a

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 118
    .line 119
    .line 120
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->h0:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v5, p1}, Lpe/hf/black20/BackupActivity;->a(Lpe/hf/black20/BackupActivity;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->Y:Landroid/widget/Button;

    .line 130
    .line 131
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 132
    .line 133
    .line 134
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->a0:Landroid/widget/Button;

    .line 135
    .line 136
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 137
    .line 138
    .line 139
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->Z:Landroid/widget/Button;

    .line 140
    .line 141
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    .line 143
    .line 144
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->p0:Landroid/widget/ProgressBar;

    .line 145
    .line 146
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->b0:Landroid/widget/TextView;

    .line 150
    .line 151
    const v0, 0x7f130178

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 155
    .line 156
    .line 157
    const p1, 0x7f130177

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {v5, p1}, Lpe/hf/black20/BackupActivity;->a(Lpe/hf/black20/BackupActivity;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    new-instance p1, Landroid/content/Intent;

    .line 168
    .line 169
    const-class v0, Lpe/hf/black20/SplashActivity;

    .line 170
    .line 171
    iget-object v1, v5, Lpe/hf/black20/BackupActivity;->G:Lpe/hf/black20/BackupActivity;

    .line 172
    .line 173
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .line 175
    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 177
    .line 178
    const/16 v2, 0x1f

    .line 179
    .line 180
    const v5, 0x1e240

    .line 181
    .line 182
    .line 183
    if-lt v0, v2, :cond_1

    .line 184
    .line 185
    const/high16 v0, 0x4000000

    .line 186
    .line 187
    invoke-static {v1, v5, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    goto :goto_1

    .line 192
    :cond_1
    const/high16 v0, 0x12000000

    .line 193
    .line 194
    invoke-static {v1, v5, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    :goto_1
    const-string v0, "alarm"

    .line 199
    .line 200
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Landroid/app/AlarmManager;

    .line 205
    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 207
    .line 208
    .line 209
    move-result-wide v1

    .line 210
    const-wide/16 v5, 0x1

    .line 211
    .line 212
    add-long/2addr v1, v5

    .line 213
    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :pswitch_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->H:Landroid/content/SharedPreferences;

    .line 224
    .line 225
    const-string v0, "xciptv_profile"

    .line 226
    .line 227
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-eqz p1, :cond_2

    .line 232
    .line 233
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->H:Landroid/content/SharedPreferences;

    .line 234
    .line 235
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    goto :goto_2

    .line 240
    :cond_2
    const-string p1, "Default (XC)"

    .line 241
    .line 242
    :goto_2
    iget-object v2, v5, Lpe/hf/black20/BackupActivity;->H:Landroid/content/SharedPreferences;

    .line 243
    .line 244
    const-string v6, "parental_contorl"

    .line 245
    .line 246
    invoke-interface {v2, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_3

    .line 251
    .line 252
    iget-object v2, v5, Lpe/hf/black20/BackupActivity;->H:Landroid/content/SharedPreferences;

    .line 253
    .line 254
    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    goto :goto_3

    .line 259
    :cond_3
    const-string v2, "0000"

    .line 260
    .line 261
    :goto_3
    iget-object v7, v5, Lpe/hf/black20/BackupActivity;->H:Landroid/content/SharedPreferences;

    .line 262
    .line 263
    const-string v8, "pc_lock"

    .line 264
    .line 265
    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    if-eqz v7, :cond_4

    .line 270
    .line 271
    iget-object v7, v5, Lpe/hf/black20/BackupActivity;->H:Landroid/content/SharedPreferences;

    .line 272
    .line 273
    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    goto :goto_4

    .line 278
    :cond_4
    const-string v7, "no"

    .line 279
    .line 280
    :goto_4
    new-instance v9, Lcom/google/gson/GsonBuilder;

    .line 281
    .line 282
    invoke-direct {v9}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v9}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    new-instance v10, Lcom/google/gson/JsonObject;

    .line 290
    .line 291
    invoke-direct {v10}, Lcom/google/gson/JsonObject;-><init>()V

    .line 292
    .line 293
    .line 294
    iget-object v11, v5, Lpe/hf/black20/BackupActivity;->O:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v9, v11}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    .line 297
    .line 298
    .line 299
    move-result-object v11

    .line 300
    const-string v12, "favourites"

    .line 301
    .line 302
    invoke-virtual {v10, v12, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 303
    .line 304
    .line 305
    iget-object v11, v5, Lpe/hf/black20/BackupActivity;->P:Ljava/util/ArrayList;

    .line 306
    .line 307
    invoke-virtual {v9, v11}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    .line 308
    .line 309
    .line 310
    move-result-object v11

    .line 311
    const-string v12, "favouriteprofiles"

    .line 312
    .line 313
    invoke-virtual {v10, v12, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 314
    .line 315
    .line 316
    iget-object v11, v5, Lpe/hf/black20/BackupActivity;->Q:Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-virtual {v9, v11}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    .line 319
    .line 320
    .line 321
    move-result-object v11

    .line 322
    const-string v12, "resumes"

    .line 323
    .line 324
    invoke-virtual {v10, v12, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 325
    .line 326
    .line 327
    iget-object v11, v5, Lpe/hf/black20/BackupActivity;->R:Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-virtual {v9, v11}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    .line 330
    .line 331
    .line 332
    move-result-object v11

    .line 333
    const-string v12, "userslist"

    .line 334
    .line 335
    invoke-virtual {v10, v12, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 336
    .line 337
    .line 338
    iget-object v11, v5, Lpe/hf/black20/BackupActivity;->S:Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-virtual {v9, v11}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    .line 341
    .line 342
    .line 343
    move-result-object v11

    .line 344
    const-string v12, "parentaltv"

    .line 345
    .line 346
    invoke-virtual {v10, v12, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 347
    .line 348
    .line 349
    iget-object v11, v5, Lpe/hf/black20/BackupActivity;->T:Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-virtual {v9, v11}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    .line 352
    .line 353
    .line 354
    move-result-object v11

    .line 355
    const-string v12, "parentalvod"

    .line 356
    .line 357
    invoke-virtual {v10, v12, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 358
    .line 359
    .line 360
    iget-object v11, v5, Lpe/hf/black20/BackupActivity;->U:Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-virtual {v9, v11}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    .line 363
    .line 364
    .line 365
    move-result-object v11

    .line 366
    const-string v12, "parentalseries"

    .line 367
    .line 368
    invoke-virtual {v10, v12, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 369
    .line 370
    .line 371
    iget-object v11, v5, Lpe/hf/black20/BackupActivity;->V:Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-virtual {v9, v11}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    .line 374
    .line 375
    .line 376
    move-result-object v11

    .line 377
    const-string v12, "multiscreen"

    .line 378
    .line 379
    invoke-virtual {v10, v12, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 380
    .line 381
    .line 382
    iget-object v11, v5, Lpe/hf/black20/BackupActivity;->W:Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-virtual {v9, v11}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    .line 385
    .line 386
    .line 387
    move-result-object v11

    .line 388
    const-string v12, "watched"

    .line 389
    .line 390
    invoke-virtual {v10, v12, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 391
    .line 392
    .line 393
    iget-object v11, v5, Lpe/hf/black20/BackupActivity;->X:Ljava/util/ArrayList;

    .line 394
    .line 395
    invoke-virtual {v9, v11}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    const-string v11, "program_reminders"

    .line 400
    .line 401
    invoke-virtual {v10, v11, v9}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 402
    .line 403
    .line 404
    iget-object v9, v5, Lpe/hf/black20/BackupActivity;->H:Landroid/content/SharedPreferences;

    .line 405
    .line 406
    const-string v11, "version"

    .line 407
    .line 408
    invoke-interface {v9, v11, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v9

    .line 412
    invoke-virtual {v10, v11, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-object v9, v5, Lpe/hf/black20/BackupActivity;->H:Landroid/content/SharedPreferences;

    .line 416
    .line 417
    const-string v11, "versioncode"

    .line 418
    .line 419
    invoke-interface {v9, v11, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v9

    .line 423
    invoke-virtual {v10, v11, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v10, v6, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    iget-object v2, v5, Lpe/hf/black20/BackupActivity;->H:Landroid/content/SharedPreferences;

    .line 430
    .line 431
    const-string v6, "whichplayer_tv"

    .line 432
    .line 433
    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-virtual {v10, v6, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    iget-object v2, v5, Lpe/hf/black20/BackupActivity;->H:Landroid/content/SharedPreferences;

    .line 441
    .line 442
    const-string v6, "whichplayer_vod"

    .line 443
    .line 444
    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-virtual {v10, v6, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    iget-object v2, v5, Lpe/hf/black20/BackupActivity;->H:Landroid/content/SharedPreferences;

    .line 452
    .line 453
    const-string v6, "whichplayer_series"

    .line 454
    .line 455
    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    invoke-virtual {v10, v6, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v10, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    const-string p1, "ovpn_auto"

    .line 466
    .line 467
    const-string v0, "off"

    .line 468
    .line 469
    invoke-virtual {v10, p1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v10, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    const-string v0, "\\r\\n|\\r|\\n"

    .line 480
    .line 481
    const-string v2, ""

    .line 482
    .line 483
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->Y:Landroid/widget/Button;

    .line 487
    .line 488
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 489
    .line 490
    .line 491
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->a0:Landroid/widget/Button;

    .line 492
    .line 493
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 494
    .line 495
    .line 496
    iget-object p1, v5, Lpe/hf/black20/BackupActivity;->Z:Landroid/widget/Button;

    .line 497
    .line 498
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 499
    .line 500
    .line 501
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    iput-object p1, v5, Lpe/hf/black20/BackupActivity;->d0:Ljava/lang/String;

    .line 506
    .line 507
    :try_start_0
    const-string v0, "\\\\"

    .line 508
    .line 509
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    new-instance v0, Ljava/io/File;

    .line 514
    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .line 519
    .line 520
    iget-object v3, v5, Lpe/hf/black20/BackupActivity;->G:Lpe/hf/black20/BackupActivity;

    .line 521
    .line 522
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    const-string v3, "/backup.json"

    .line 534
    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 546
    .line 547
    .line 548
    move-result v2

    .line 549
    if-nez v2, :cond_5

    .line 550
    .line 551
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 552
    .line 553
    .line 554
    :cond_5
    new-instance v2, Ljava/io/FileWriter;

    .line 555
    .line 556
    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .line 567
    .line 568
    :catch_0
    new-instance p1, Lb7/e;

    .line 569
    .line 570
    invoke-direct {p1, v5, v1}, Lb7/e;-><init>(Lpe/hf/black20/BackupActivity;La/r;)V

    .line 571
    .line 572
    .line 573
    new-array v0, v4, [Ljava/lang/Void;

    .line 574
    .line 575
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 576
    .line 577
    .line 578
    return-void

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lb7/e;->a:I

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
    invoke-virtual {p0}, Lb7/e;->a()V

    .line 10
    .line 11
    .line 12
    return-object v1

    .line 13
    :pswitch_0
    check-cast p1, [Ljava/lang/Void;

    .line 14
    .line 15
    invoke-virtual {p0}, Lb7/e;->a()V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :pswitch_1
    check-cast p1, [Ljava/lang/Void;

    .line 20
    .line 21
    invoke-virtual {p0}, Lb7/e;->a()V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :pswitch_2
    check-cast p1, [Ljava/lang/Void;

    .line 26
    .line 27
    invoke-virtual {p0}, Lb7/e;->a()V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lb7/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Void;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lb7/e;->b(Ljava/lang/Void;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lb7/e;->b(Ljava/lang/Void;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast p1, Ljava/lang/Void;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lb7/e;->b(Ljava/lang/Void;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    check-cast p1, Ljava/lang/Void;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lb7/e;->b(Ljava/lang/Void;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreExecute()V
    .locals 9

    .line 1
    iget v0, p0, Lb7/e;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lb7/e;->b:Lpe/hf/black20/BackupActivity;

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
    iget-object v0, v2, Lpe/hf/black20/BackupActivity;->p0:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v2, Lpe/hf/black20/BackupActivity;->b0:Landroid/widget/TextView;

    .line 18
    .line 19
    const v1, 0x7f130179

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 27
    .line 28
    .line 29
    iget-object v0, v2, Lpe/hf/black20/BackupActivity;->d0:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, v2, Lpe/hf/black20/BackupActivity;->f0:Ljava/lang/String;

    .line 32
    .line 33
    sget-object v4, Lpe/hf/black20/encryption/BackupEncrypt;->a:Ljava/lang/String;

    .line 34
    .line 35
    const/16 v4, 0x10

    .line 36
    .line 37
    new-array v5, v4, [B

    .line 38
    .line 39
    invoke-static {v5, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 40
    .line 41
    .line 42
    :try_start_0
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    .line 43
    .line 44
    sget-object v7, Lpe/hf/black20/encryption/BackupEncrypt;->a:Ljava/lang/String;

    .line 45
    .line 46
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    array-length v7, v3

    .line 60
    if-ge v7, v4, :cond_0

    .line 61
    .line 62
    array-length v4, v3

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    .line 68
    .line 69
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 70
    .line 71
    const-string v4, "AES"

    .line 72
    .line 73
    invoke-direct {v3, v5, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v4, "AES/CBC/PKCS5PADDING"

    .line 77
    .line 78
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const/4 v5, 0x1

    .line 83
    invoke-virtual {v4, v5, v3, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v4, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_2

    .line 99
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    const-string v0, "XCIPTV_TAG"

    .line 103
    .line 104
    const-string v1, "BackupEncrypt - Encrypt Exception------------------------"

    .line 105
    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    const/4 v0, 0x0

    .line 110
    :goto_2
    iput-object v0, v2, Lpe/hf/black20/BackupActivity;->d0:Ljava/lang/String;

    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    iget-object v1, v2, Lpe/hf/black20/BackupActivity;->l0:Ljava/lang/String;

    .line 118
    .line 119
    const-string v3, "CloudBackup.php"

    .line 120
    .line 121
    invoke-static {v0, v1, v3}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iput-object v0, v2, Lpe/hf/black20/BackupActivity;->m0:Ljava/lang/String;

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v1, "user="

    .line 130
    .line 131
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v2, Lpe/hf/black20/BackupActivity;->e0:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, "&pass="

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v1, v2, Lpe/hf/black20/BackupActivity;->f0:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v1, "&resetcode="

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v1, v2, Lpe/hf/black20/BackupActivity;->j0:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v1, "&backup="

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object v1, v2, Lpe/hf/black20/BackupActivity;->d0:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iput-object v0, v2, Lpe/hf/black20/BackupActivity;->n0:Ljava/lang/String;

    .line 174
    .line 175
    return-void

    .line 176
    :pswitch_1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 177
    .line 178
    .line 179
    iget-object v0, v2, Lpe/hf/black20/BackupActivity;->b0:Landroid/widget/TextView;

    .line 180
    .line 181
    const v1, 0x7f13002b

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_2
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 189
    .line 190
    .line 191
    iget-object v0, v2, Lpe/hf/black20/BackupActivity;->p0:Landroid/widget/ProgressBar;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    iget-object v0, v2, Lpe/hf/black20/BackupActivity;->b0:Landroid/widget/TextView;

    .line 197
    .line 198
    const v1, 0x7f1301ae

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
