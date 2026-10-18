.class public final synthetic Lcom/google/android/gms/internal/ads/Vt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/tu;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/Ss;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Ss;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Vt;->a:Lcom/google/android/gms/internal/ads/Ss;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Vt;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vt;->a:Lcom/google/android/gms/internal/ads/Ss;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Vt;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v2, "native_version"

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    const-string v2, "native_templates"

    .line 17
    .line 18
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 22
    .line 23
    const-string v2, "native_custom_templates"

    .line 24
    .line 25
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yv;->h:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yv;->i:Lcom/google/android/gms/internal/ads/M8;

    .line 33
    .line 34
    iget v1, v1, Lcom/google/android/gms/internal/ads/M8;->G:I

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    const/4 v4, 0x1

    .line 38
    if-le v1, v3, :cond_4

    .line 39
    .line 40
    const-string v1, "enable_native_media_orientation"

    .line 41
    .line 42
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yv;->i:Lcom/google/android/gms/internal/ads/M8;

    .line 48
    .line 49
    iget v1, v1, Lcom/google/android/gms/internal/ads/M8;->N:I

    .line 50
    .line 51
    if-eq v1, v4, :cond_3

    .line 52
    .line 53
    if-eq v1, v2, :cond_2

    .line 54
    .line 55
    if-eq v1, v3, :cond_1

    .line 56
    .line 57
    const/4 v5, 0x4

    .line 58
    if-eq v1, v5, :cond_0

    .line 59
    .line 60
    const-string v1, "unknown"

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-string v1, "square"

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const-string v1, "portrait"

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const-string v1, "landscape"

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const-string v1, "any"

    .line 73
    .line 74
    :goto_0
    const-string v5, "unknown"

    .line 75
    .line 76
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_4

    .line 81
    .line 82
    const-string v5, "native_media_orientation"

    .line 83
    .line 84
    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 88
    .line 89
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yv;->i:Lcom/google/android/gms/internal/ads/M8;

    .line 90
    .line 91
    iget v1, v1, Lcom/google/android/gms/internal/ads/M8;->I:I

    .line 92
    .line 93
    if-eqz v1, :cond_7

    .line 94
    .line 95
    if-eq v1, v4, :cond_6

    .line 96
    .line 97
    if-eq v1, v2, :cond_5

    .line 98
    .line 99
    const-string v1, "unknown"

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    const-string v1, "landscape"

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    const-string v1, "portrait"

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_7
    const-string v1, "any"

    .line 109
    .line 110
    :goto_1
    const-string v5, "unknown"

    .line 111
    .line 112
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-nez v5, :cond_8

    .line 117
    .line 118
    const-string v5, "native_image_orientation"

    .line 119
    .line 120
    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 124
    .line 125
    const-string v5, "native_multiple_images"

    .line 126
    .line 127
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yv;->i:Lcom/google/android/gms/internal/ads/M8;

    .line 128
    .line 129
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/M8;->J:Z

    .line 130
    .line 131
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 135
    .line 136
    const-string v5, "use_custom_mute"

    .line 137
    .line 138
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yv;->i:Lcom/google/android/gms/internal/ads/M8;

    .line 139
    .line 140
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/M8;->M:Z

    .line 141
    .line 142
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 146
    .line 147
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yv;->i:Lcom/google/android/gms/internal/ads/M8;

    .line 148
    .line 149
    iget v5, v1, Lcom/google/android/gms/internal/ads/M8;->O:I

    .line 150
    .line 151
    if-eqz v5, :cond_9

    .line 152
    .line 153
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/M8;->P:Z

    .line 154
    .line 155
    const-string v5, "sccg_tap"

    .line 156
    .line 157
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 161
    .line 162
    const-string v5, "sccg_dir"

    .line 163
    .line 164
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yv;->i:Lcom/google/android/gms/internal/ads/M8;

    .line 165
    .line 166
    iget v1, v1, Lcom/google/android/gms/internal/ads/M8;->O:I

    .line 167
    .line 168
    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ss;->d:Landroid/os/Parcelable;

    .line 172
    .line 173
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 174
    .line 175
    if-nez v1, :cond_a

    .line 176
    .line 177
    const/4 v1, 0x0

    .line 178
    goto :goto_2

    .line 179
    :cond_a
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 180
    .line 181
    :goto_2
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Ss;->e:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v5, Lo3/K;

    .line 184
    .line 185
    check-cast v5, Lo3/L;

    .line 186
    .line 187
    invoke-virtual {v5}, Lo3/L;->s()V

    .line 188
    .line 189
    .line 190
    iget-object v6, v5, Lo3/L;->a:Ljava/lang/Object;

    .line 191
    .line 192
    monitor-enter v6

    .line 193
    :try_start_0
    iget v5, v5, Lo3/L;->r:I

    .line 194
    .line 195
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    if-le v1, v5, :cond_b

    .line 197
    .line 198
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Ss;->e:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v5, Lo3/K;

    .line 201
    .line 202
    check-cast v5, Lo3/L;

    .line 203
    .line 204
    invoke-virtual {v5}, Lo3/L;->G()V

    .line 205
    .line 206
    .line 207
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Ss;->e:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v5, Lo3/K;

    .line 210
    .line 211
    check-cast v5, Lo3/L;

    .line 212
    .line 213
    invoke-virtual {v5, v1}, Lo3/L;->H(I)V

    .line 214
    .line 215
    .line 216
    :cond_b
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ss;->e:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v1, Lo3/K;

    .line 219
    .line 220
    check-cast v1, Lo3/L;

    .line 221
    .line 222
    invoke-virtual {v1}, Lo3/L;->E()Lorg/json/JSONObject;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    const/4 v5, 0x0

    .line 227
    if-eqz v1, :cond_c

    .line 228
    .line 229
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 230
    .line 231
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    if-eqz v1, :cond_c

    .line 238
    .line 239
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    :cond_c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-nez v1, :cond_d

    .line 248
    .line 249
    const-string v1, "native_advanced_settings"

    .line 250
    .line 251
    invoke-virtual {p1, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    :cond_d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 255
    .line 256
    iget v1, v1, Lcom/google/android/gms/internal/ads/Yv;->k:I

    .line 257
    .line 258
    if-le v1, v4, :cond_e

    .line 259
    .line 260
    const-string v5, "max_num_ads"

    .line 261
    .line 262
    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 263
    .line 264
    .line 265
    :cond_e
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 266
    .line 267
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yv;->b:Lcom/google/android/gms/internal/ads/la;

    .line 268
    .line 269
    if-eqz v1, :cond_15

    .line 270
    .line 271
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/la;->I:Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-eqz v5, :cond_14

    .line 278
    .line 279
    iget v5, v1, Lcom/google/android/gms/internal/ads/la;->G:I

    .line 280
    .line 281
    if-lt v5, v2, :cond_11

    .line 282
    .line 283
    iget v1, v1, Lcom/google/android/gms/internal/ads/la;->J:I

    .line 284
    .line 285
    if-eq v1, v2, :cond_10

    .line 286
    .line 287
    if-eq v1, v3, :cond_f

    .line 288
    .line 289
    const-string v1, "l"

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_f
    const-string v1, "p"

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_10
    const-string v1, "l"

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_11
    iget v1, v1, Lcom/google/android/gms/internal/ads/la;->H:I

    .line 299
    .line 300
    if-eq v1, v4, :cond_12

    .line 301
    .line 302
    if-eq v1, v2, :cond_13

    .line 303
    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string v3, "Instream ad video aspect ratio "

    .line 307
    .line 308
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v1, " is wrong."

    .line 315
    .line 316
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-static {v1}, Lp3/h;->d(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    :cond_12
    const-string v1, "l"

    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_13
    const-string v1, "p"

    .line 330
    .line 331
    :goto_3
    const-string v2, "ia_var"

    .line 332
    .line 333
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_14
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/la;->I:Ljava/lang/String;

    .line 338
    .line 339
    const-string v2, "ad_tag"

    .line 340
    .line 341
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :goto_4
    const-string v1, "instr"

    .line 345
    .line 346
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 347
    .line 348
    .line 349
    :cond_15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 350
    .line 351
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Yv;->a()Lcom/google/android/gms/internal/ads/y9;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    if-eqz v1, :cond_16

    .line 356
    .line 357
    const-string v1, "has_delayed_banner_listener"

    .line 358
    .line 359
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 360
    .line 361
    .line 362
    :cond_16
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->db:Lcom/google/android/gms/internal/ads/J7;

    .line 363
    .line 364
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 365
    .line 366
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 367
    .line 368
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    check-cast v1, Ljava/lang/Boolean;

    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_18

    .line 379
    .line 380
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 381
    .line 382
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yv;->i:Lcom/google/android/gms/internal/ads/M8;

    .line 383
    .line 384
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/M8;->L:Ll3/Y0;

    .line 385
    .line 386
    if-eqz v1, :cond_17

    .line 387
    .line 388
    new-instance v1, Landroid/os/Bundle;

    .line 389
    .line 390
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 391
    .line 392
    .line 393
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 394
    .line 395
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Yv;->i:Lcom/google/android/gms/internal/ads/M8;

    .line 396
    .line 397
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/M8;->L:Ll3/Y0;

    .line 398
    .line 399
    iget-boolean v2, v2, Ll3/Y0;->G:Z

    .line 400
    .line 401
    const-string v3, "startMuted"

    .line 402
    .line 403
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 404
    .line 405
    .line 406
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 407
    .line 408
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Yv;->i:Lcom/google/android/gms/internal/ads/M8;

    .line 409
    .line 410
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/M8;->L:Ll3/Y0;

    .line 411
    .line 412
    iget-boolean v2, v2, Ll3/Y0;->I:Z

    .line 413
    .line 414
    const-string v3, "clickToExpandRequested"

    .line 415
    .line 416
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 417
    .line 418
    .line 419
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 420
    .line 421
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Yv;->i:Lcom/google/android/gms/internal/ads/M8;

    .line 422
    .line 423
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/M8;->L:Ll3/Y0;

    .line 424
    .line 425
    iget-boolean v2, v2, Ll3/Y0;->H:Z

    .line 426
    .line 427
    const-string v3, "customControlsRequested"

    .line 428
    .line 429
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 430
    .line 431
    .line 432
    const-string v2, "video"

    .line 433
    .line 434
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 435
    .line 436
    .line 437
    :cond_17
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 438
    .line 439
    const-string v2, "disable_image_loading"

    .line 440
    .line 441
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yv;->i:Lcom/google/android/gms/internal/ads/M8;

    .line 442
    .line 443
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/M8;->H:Z

    .line 444
    .line 445
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    .line 447
    .line 448
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 449
    .line 450
    const-string v1, "preferred_ad_choices_position"

    .line 451
    .line 452
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yv;->i:Lcom/google/android/gms/internal/ads/M8;

    .line 453
    .line 454
    iget v0, v0, Lcom/google/android/gms/internal/ads/M8;->K:I

    .line 455
    .line 456
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 457
    .line 458
    .line 459
    :cond_18
    return-void

    .line 460
    :catchall_0
    move-exception p1

    .line 461
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    throw p1
.end method
