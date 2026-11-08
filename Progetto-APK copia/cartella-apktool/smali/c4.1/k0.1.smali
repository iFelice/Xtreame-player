.class public final synthetic Lc4/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc4/M0;


# instance fields
.field public final G:Lc4/l0;


# direct methods
.method public synthetic constructor <init>(Lc4/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc4/k0;->G:Lc4/l0;

    return-void
.end method

.method public constructor <init>(Lc4/l0;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc4/k0;->G:Lc4/l0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 17

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const-string v3, "timestamp"

    .line 8
    .line 9
    const-string v4, "gad_source"

    .line 10
    .line 11
    const-string v5, "gbraid"

    .line 12
    .line 13
    const-string v6, "gclid"

    .line 14
    .line 15
    const-string v7, "deeplink"

    .line 16
    .line 17
    const-string v8, ""

    .line 18
    .line 19
    const/16 v9, 0xc8

    .line 20
    .line 21
    move-object/from16 v10, p0

    .line 22
    .line 23
    iget-object v11, v10, Lc4/k0;->G:Lc4/l0;

    .line 24
    .line 25
    if-eq v0, v9, :cond_0

    .line 26
    .line 27
    const/16 v9, 0xcc

    .line 28
    .line 29
    if-eq v0, v9, :cond_0

    .line 30
    .line 31
    const/16 v9, 0x130

    .line 32
    .line 33
    if-ne v0, v9, :cond_a

    .line 34
    .line 35
    const/16 v0, 0x130

    .line 36
    .line 37
    :cond_0
    if-nez v1, :cond_a

    .line 38
    .line 39
    iget-object v0, v11, Lc4/l0;->N:Lc4/Z;

    .line 40
    .line 41
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, v0, Lc4/Z;->a0:Lc4/Y;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Lc4/Y;->a(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v11, Lc4/l0;->O:Lc4/T;

    .line 51
    .line 52
    if-eqz v2, :cond_9

    .line 53
    .line 54
    array-length v0, v2

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 62
    .line 63
    .line 64
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 65
    .line 66
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_2

    .line 78
    .line 79
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, v1, Lc4/T;->S:Lc4/Q;

    .line 83
    .line 84
    const-string v2, "Deferred Deep Link is empty."

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :catch_0
    move-exception v0

    .line 92
    goto/16 :goto_2

    .line 93
    .line 94
    :cond_2
    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-virtual {v2, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    const-wide/16 v13, 0x0

    .line 107
    .line 108
    invoke-virtual {v2, v3, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 109
    .line 110
    .line 111
    move-result-wide v13

    .line 112
    new-instance v2, Landroid/os/Bundle;

    .line 113
    .line 114
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 115
    .line 116
    .line 117
    iget-object v15, v11, Lc4/l0;->R:Lc4/I1;

    .line 118
    .line 119
    invoke-static {v15}, Lc4/l0;->i(Lc4/s0;)V

    .line 120
    .line 121
    .line 122
    iget-object v10, v15, Lc1/d;->G:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v10, Lc4/l0;

    .line 125
    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v16

    .line 130
    if-eqz v16, :cond_3

    .line 131
    .line 132
    move-object/from16 v16, v1

    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :cond_3
    iget-object v10, v10, Lc4/l0;->G:Landroid/content/Context;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    move-object/from16 v16, v1

    .line 139
    .line 140
    :try_start_1
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    move-object/from16 p1, v15

    .line 145
    .line 146
    new-instance v15, Landroid/content/Intent;

    .line 147
    .line 148
    move-object/from16 p5, v3

    .line 149
    .line 150
    const-string v3, "android.intent.action.VIEW"

    .line 151
    .line 152
    move-wide/from16 p2, v13

    .line 153
    .line 154
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 155
    .line 156
    .line 157
    move-result-object v13

    .line 158
    invoke-direct {v15, v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    .line 160
    .line 161
    const/4 v3, 0x0

    .line 162
    invoke-virtual {v1, v15, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-eqz v1, :cond_8

    .line 167
    .line 168
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_8

    .line 173
    .line 174
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-nez v1, :cond_4

    .line 179
    .line 180
    invoke-virtual {v2, v5, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    .line 185
    move-object/from16 v1, v16

    .line 186
    .line 187
    goto/16 :goto_2

    .line 188
    .line 189
    :cond_4
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_5

    .line 194
    .line 195
    invoke-virtual {v2, v4, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_5
    invoke-virtual {v2, v6, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v1, "_cis"

    .line 202
    .line 203
    const-string v4, "ddp"

    .line 204
    .line 205
    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v11, Lc4/l0;->V:Lc4/K0;

    .line 209
    .line 210
    const-string v4, "auto"

    .line 211
    .line 212
    const-string v5, "_cmp"

    .line 213
    .line 214
    invoke-virtual {v1, v4, v5, v2}, Lc4/K0;->y(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 215
    .line 216
    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 218
    .line 219
    .line 220
    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    if-eqz v1, :cond_6

    .line 222
    .line 223
    goto/16 :goto_4

    .line 224
    .line 225
    :cond_6
    :try_start_2
    const-string v1, "google.analytics.deferred.deeplink.prefs"

    .line 226
    .line 227
    invoke-virtual {v10, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-interface {v1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    .line 237
    .line 238
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 239
    .line 240
    .line 241
    move-result-wide v2

    .line 242
    move-object/from16 v0, p5

    .line 243
    .line 244
    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 245
    .line 246
    .line 247
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    .line 249
    .line 250
    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 251
    if-eqz v0, :cond_b

    .line 252
    .line 253
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    .line 254
    .line 255
    const-string v1, "android.google.analytics.action.DEEPLINK_ACTION"

    .line 256
    .line 257
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    move-object/from16 v1, p1

    .line 261
    .line 262
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v1, Lc4/l0;

    .line 265
    .line 266
    iget-object v1, v1, Lc4/l0;->G:Landroid/content/Context;

    .line 267
    .line 268
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 269
    .line 270
    const/16 v3, 0x22

    .line 271
    .line 272
    if-ge v2, v3, :cond_7

    .line 273
    .line 274
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_7
    invoke-static {}, LL1/d;->f()Landroid/app/BroadcastOptions;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-static {v2}, LL1/d;->g(Landroid/app/BroadcastOptions;)Landroid/app/BroadcastOptions;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-static {v2}, LL1/d;->p(Landroid/app/BroadcastOptions;)Landroid/os/Bundle;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-static {v1, v0, v2}, LL1/d;->v(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 291
    .line 292
    .line 293
    goto :goto_4

    .line 294
    :catch_2
    move-exception v0

    .line 295
    move-object/from16 v1, p1

    .line 296
    .line 297
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v1, Lc4/l0;

    .line 300
    .line 301
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 302
    .line 303
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 304
    .line 305
    .line 306
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 307
    .line 308
    const-string v2, "Failed to persist Deferred Deep Link. exception"

    .line 309
    .line 310
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_8
    :goto_1
    invoke-static/range {v16 .. v16}, Lc4/l0;->k(Lc4/s0;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 315
    .line 316
    .line 317
    move-object/from16 v1, v16

    .line 318
    .line 319
    :try_start_4
    iget-object v2, v1, Lc4/T;->O:Lc4/Q;

    .line 320
    .line 321
    const-string v3, "Deferred Deep Link validation failed. gclid, gbraid, deep link"

    .line 322
    .line 323
    invoke-virtual {v2, v9, v12, v0, v3}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 324
    .line 325
    .line 326
    goto :goto_4

    .line 327
    :goto_2
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 328
    .line 329
    .line 330
    const-string v2, "Failed to parse the Deferred Deep Link response. exception"

    .line 331
    .line 332
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 333
    .line 334
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_9
    :goto_3
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 339
    .line 340
    .line 341
    const-string v0, "Deferred Deep Link response empty."

    .line 342
    .line 343
    iget-object v1, v1, Lc4/T;->S:Lc4/Q;

    .line 344
    .line 345
    invoke-virtual {v1, v0}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    goto :goto_4

    .line 349
    :cond_a
    iget-object v2, v11, Lc4/l0;->O:Lc4/T;

    .line 350
    .line 351
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 352
    .line 353
    .line 354
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    iget-object v2, v2, Lc4/T;->O:Lc4/Q;

    .line 359
    .line 360
    const-string v3, "Network Request for Deferred Deep Link failed. response, exception"

    .line 361
    .line 362
    invoke-virtual {v2, v0, v1, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    :cond_b
    :goto_4
    return-void
.end method

.method public final b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/k0;->G:Lc4/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lc4/l0;->P:Lc4/j0;

    .line 4
    .line 5
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lc4/j0;->m()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lc4/l0;->f()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_3

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    if-ne v2, v1, :cond_1

    .line 31
    .line 32
    const-string p1, "auto"

    .line 33
    .line 34
    :cond_1
    new-instance v1, Landroid/net/Uri$Builder;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-nez p2, :cond_3

    .line 83
    .line 84
    iget-object p2, v0, Lc4/l0;->N:Lc4/Z;

    .line 85
    .line 86
    invoke-static {p2}, Lc4/l0;->i(Lc4/s0;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p2, Lc4/Z;->d0:LB0/c;

    .line 90
    .line 91
    invoke-virtual {v1, p1}, LB0/c;->o(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, v0, Lc4/l0;->T:LP3/b;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    iget-object p1, p2, Lc4/Z;->e0:LE1/I;

    .line 104
    .line 105
    invoke-virtual {p1, v0, v1}, LE1/I;->b(J)V

    .line 106
    .line 107
    .line 108
    :cond_3
    return-void
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/k0;->G:Lc4/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lc4/l0;->H:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 12
    .line 13
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lc4/T;->x()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x3

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method public final d()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lc4/k0;->G:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->N:Lc4/Z;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lc4/Z;->e0:LE1/I;

    .line 9
    .line 10
    invoke-virtual {v0}, LE1/I;->a()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-lez v4, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public final e()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc4/k0;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lc4/k0;->G:Lc4/l0;

    .line 10
    .line 11
    iget-object v2, v0, Lc4/l0;->T:LP3/b;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    iget-object v4, v0, Lc4/l0;->N:Lc4/Z;

    .line 21
    .line 22
    invoke-static {v4}, Lc4/l0;->i(Lc4/s0;)V

    .line 23
    .line 24
    .line 25
    iget-object v4, v4, Lc4/Z;->e0:LE1/I;

    .line 26
    .line 27
    invoke-virtual {v4}, LE1/I;->a()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    sub-long/2addr v2, v4

    .line 32
    sget-object v4, Lc4/E;->j0:Lc4/D;

    .line 33
    .line 34
    iget-object v0, v0, Lc4/l0;->M:Lc4/h;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-virtual {v0, v5, v4}, Lc4/h;->w(Ljava/lang/String;Lc4/D;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    cmp-long v0, v2, v4

    .line 42
    .line 43
    if-lez v0, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    return v0

    .line 47
    :cond_1
    return v1
.end method
