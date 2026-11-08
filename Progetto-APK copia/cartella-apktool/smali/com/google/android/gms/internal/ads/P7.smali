.class public final synthetic Lcom/google/android/gms/internal/ads/P7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Gz;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/P7;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/P7;->H:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/P7;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/sO;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/P7;->H:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/sO;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->a:Lcom/google/android/gms/internal/ads/J7;

    .line 15
    .line 16
    sget-object v0, Ll3/q;->d:Ll3/q;

    .line 17
    .line 18
    iget-object v0, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/P7;->H:Landroid/content/Context;

    .line 21
    .line 22
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/O7;->c:Z

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/O7;->a:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/O7;->c:Z

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    monitor-exit v2

    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :cond_1
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/O7;->d:Z

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/O7;->d:Z

    .line 48
    .line 49
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v6, "com.google.android.gms"

    .line 54
    .line 55
    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/O7;->i:Z

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_3
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/O7;->g:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    :try_start_1
    invoke-static {v1}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/O7;->g:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    const/16 v6, 0x80

    .line 84
    .line 85
    invoke-virtual {v1, v6, v4}, Lcom/google/android/gms/internal/measurement/U1;->b(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 90
    .line 91
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/O7;->f:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    :catch_0
    const/4 v1, 0x0

    .line 94
    :try_start_2
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/O7;->g:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {v4}, LJ3/j;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    if-nez v6, :cond_4

    .line 101
    .line 102
    if-eqz v4, :cond_4

    .line 103
    .line 104
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    if-eqz v6, :cond_5

    .line 109
    .line 110
    :cond_4
    move-object v4, v6

    .line 111
    goto :goto_0

    .line 112
    :catchall_1
    move-exception v3

    .line 113
    goto/16 :goto_6

    .line 114
    .line 115
    :cond_5
    :goto_0
    if-eqz v4, :cond_6

    .line 116
    .line 117
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 118
    .line 119
    iget-object v6, v6, Ll3/q;->b:Lcom/google/android/gms/internal/ads/kH;

    .line 120
    .line 121
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/kH;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    goto :goto_1

    .line 126
    :cond_6
    move-object v6, v3

    .line 127
    :goto_1
    if-eqz v6, :cond_7

    .line 128
    .line 129
    new-instance v7, Lcom/google/android/gms/internal/ads/N7;

    .line 130
    .line 131
    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/N7;-><init>(Landroid/content/SharedPreferences;)V

    .line 132
    .line 133
    .line 134
    sget-object v6, Lcom/google/android/gms/internal/ads/F8;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 135
    .line 136
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/O7;->i:Z

    .line 140
    .line 141
    const-wide/16 v7, 0x0

    .line 142
    .line 143
    if-nez v6, :cond_8

    .line 144
    .line 145
    sget-object v6, Lcom/google/android/gms/internal/ads/l8;->d:Lcom/google/android/gms/internal/ads/f8;

    .line 146
    .line 147
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    check-cast v9, Ljava/lang/Long;

    .line 152
    .line 153
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 154
    .line 155
    .line 156
    move-result-wide v9

    .line 157
    cmp-long v11, v9, v7

    .line 158
    .line 159
    if-lez v11, :cond_8

    .line 160
    .line 161
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/O7;->g:Landroid/content/Context;

    .line 162
    .line 163
    const-string v10, "crash_without_write"

    .line 164
    .line 165
    invoke-static {v9, v10}, Lf/b;->A0(Landroid/content/Context;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    int-to-long v9, v9

    .line 170
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    check-cast v6, Ljava/lang/Long;

    .line 175
    .line 176
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 177
    .line 178
    .line 179
    move-result-wide v11

    .line 180
    cmp-long v6, v9, v11

    .line 181
    .line 182
    if-ltz v6, :cond_8

    .line 183
    .line 184
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/O7;->j:Z

    .line 185
    .line 186
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/O7;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    .line 188
    :try_start_3
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/O7;->d:Z

    .line 189
    .line 190
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/O7;->b:Landroid/os/ConditionVariable;

    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 193
    .line 194
    .line 195
    :goto_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    goto/16 :goto_5

    .line 197
    .line 198
    :cond_8
    :try_start_4
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/O7;->i:Z

    .line 199
    .line 200
    if-nez v6, :cond_9

    .line 201
    .line 202
    sget-object v6, Lcom/google/android/gms/internal/ads/l8;->f:Lcom/google/android/gms/internal/ads/f8;

    .line 203
    .line 204
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    check-cast v9, Ljava/lang/Long;

    .line 209
    .line 210
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 211
    .line 212
    .line 213
    move-result-wide v9

    .line 214
    cmp-long v11, v9, v7

    .line 215
    .line 216
    if-lez v11, :cond_9

    .line 217
    .line 218
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/O7;->g:Landroid/content/Context;

    .line 219
    .line 220
    const-string v8, "init_without_write"

    .line 221
    .line 222
    invoke-static {v7, v8}, Lf/b;->A0(Landroid/content/Context;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    int-to-long v7, v7

    .line 227
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    check-cast v6, Ljava/lang/Long;

    .line 232
    .line 233
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 234
    .line 235
    .line 236
    move-result-wide v9

    .line 237
    cmp-long v6, v7, v9

    .line 238
    .line 239
    if-ltz v6, :cond_9

    .line 240
    .line 241
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/O7;->j:Z

    .line 242
    .line 243
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/O7;->c:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 244
    .line 245
    :try_start_5
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/O7;->d:Z

    .line 246
    .line 247
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/O7;->b:Landroid/os/ConditionVariable;

    .line 248
    .line 249
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_9
    :try_start_6
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/O7;->g:Landroid/content/Context;

    .line 254
    .line 255
    sget-object v7, Lcom/google/android/gms/internal/ads/r8;->h:Lcom/google/android/gms/internal/ads/f8;

    .line 256
    .line 257
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    check-cast v7, Ljava/lang/Boolean;

    .line 262
    .line 263
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    if-eqz v7, :cond_a

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_a
    sget-object v7, Lcom/google/android/gms/internal/ads/r8;->i:Lcom/google/android/gms/internal/ads/f8;

    .line 271
    .line 272
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    check-cast v7, Ljava/lang/Boolean;

    .line 277
    .line 278
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    if-eqz v7, :cond_b

    .line 283
    .line 284
    const-string v7, "admob"

    .line 285
    .line 286
    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    if-eqz v6, :cond_b

    .line 291
    .line 292
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 293
    .line 294
    .line 295
    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 296
    :try_start_7
    new-instance v8, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 297
    .line 298
    invoke-direct {v8, v7}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 314
    .line 315
    .line 316
    const-string v8, "{}"

    .line 317
    .line 318
    const-string v9, "app_settings_json"

    .line 319
    .line 320
    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 324
    :try_start_8
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 325
    .line 326
    .line 327
    :try_start_9
    new-instance v7, Lorg/json/JSONObject;

    .line 328
    .line 329
    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    const-string v6, "local_flags_enabled"

    .line 333
    .line 334
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result v6
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 338
    if-eqz v6, :cond_b

    .line 339
    .line 340
    :goto_3
    :try_start_a
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/O7;->g:Landroid/content/Context;

    .line 341
    .line 342
    goto :goto_4

    .line 343
    :catch_1
    nop

    .line 344
    goto :goto_4

    .line 345
    :catchall_2
    move-exception v3

    .line 346
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 347
    .line 348
    .line 349
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 350
    :cond_b
    :goto_4
    if-nez v4, :cond_c

    .line 351
    .line 352
    :try_start_b
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/O7;->d:Z

    .line 353
    .line 354
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/O7;->b:Landroid/os/ConditionVariable;

    .line 355
    .line 356
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 357
    .line 358
    .line 359
    goto/16 :goto_2

    .line 360
    .line 361
    :cond_c
    :try_start_c
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 362
    .line 363
    iget-object v6, v6, Ll3/q;->b:Lcom/google/android/gms/internal/ads/kH;

    .line 364
    .line 365
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/kH;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/O7;->e:Landroid/content/SharedPreferences;

    .line 370
    .line 371
    sget-object v4, Lcom/google/android/gms/internal/ads/r8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 372
    .line 373
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    check-cast v4, Ljava/lang/Boolean;

    .line 378
    .line 379
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    if-nez v4, :cond_d

    .line 384
    .line 385
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/O7;->e:Landroid/content/SharedPreferences;

    .line 386
    .line 387
    if-eqz v4, :cond_d

    .line 388
    .line 389
    invoke-interface {v4, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 390
    .line 391
    .line 392
    :cond_d
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/O7;->e:Landroid/content/SharedPreferences;

    .line 393
    .line 394
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/O7;->c(Landroid/content/SharedPreferences;)V

    .line 395
    .line 396
    .line 397
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/O7;->c:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 398
    .line 399
    :try_start_d
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/O7;->d:Z

    .line 400
    .line 401
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/O7;->b:Landroid/os/ConditionVariable;

    .line 402
    .line 403
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 404
    .line 405
    .line 406
    monitor-exit v2

    .line 407
    :goto_5
    return-object v3

    .line 408
    :goto_6
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/O7;->d:Z

    .line 409
    .line 410
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/O7;->b:Landroid/os/ConditionVariable;

    .line 411
    .line 412
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 413
    .line 414
    .line 415
    throw v3

    .line 416
    :goto_7
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 417
    throw v0

    .line 418
    nop

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
