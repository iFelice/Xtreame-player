.class public final synthetic Lcom/google/android/gms/internal/ads/Zs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/tu;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/Zs;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zs;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Zs;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Zs;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/os/Bundle;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zs;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "rtb"

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zs;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const-string v1, "adapter_initialization_status"

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zs;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lorg/json/JSONObject;

    .line 36
    .line 37
    check-cast p1, Landroid/os/Bundle;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const-string v1, "fwd_cld"

    .line 42
    .line 43
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zs;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lorg/json/JSONObject;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    const-string v1, "fwd_common_cld"

    .line 57
    .line 58
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zs;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Lcom/google/android/gms/internal/ads/at;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zs;->c:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, Landroid/os/Bundle;

    .line 73
    .line 74
    check-cast p1, Landroid/os/Bundle;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->f5:Lcom/google/android/gms/internal/ads/J7;

    .line 80
    .line 81
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 82
    .line 83
    iget-object v4, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 84
    .line 85
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_3

    .line 96
    .line 97
    const-string v2, "quality_signals"

    .line 98
    .line 99
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->e5:Lcom/google/android/gms/internal/ads/J7;

    .line 104
    .line 105
    iget-object v2, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 106
    .line 107
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_4

    .line 118
    .line 119
    sget-object v1, Lcom/google/android/gms/internal/ads/at;->k:Ljava/lang/Object;

    .line 120
    .line 121
    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/at;->e:Lcom/google/android/gms/internal/ads/Mi;

    .line 123
    .line 124
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/at;->g:Lcom/google/android/gms/internal/ads/Yv;

    .line 125
    .line 126
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 127
    .line 128
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/Mi;->c(Ll3/b1;)V

    .line 129
    .line 130
    .line 131
    const-string v2, "quality_signals"

    .line 132
    .line 133
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/at;->f:Lcom/google/android/gms/internal/ads/jw;

    .line 134
    .line 135
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jw;->a()Landroid/os/Bundle;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 140
    .line 141
    .line 142
    monitor-exit v1

    .line 143
    goto :goto_0

    .line 144
    :catchall_0
    move-exception p1

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    throw p1

    .line 147
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/at;->e:Lcom/google/android/gms/internal/ads/Mi;

    .line 148
    .line 149
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/at;->g:Lcom/google/android/gms/internal/ads/Yv;

    .line 150
    .line 151
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Mi;->c(Ll3/b1;)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/at;->f:Lcom/google/android/gms/internal/ads/jw;

    .line 157
    .line 158
    const-string v2, "quality_signals"

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jw;->a()Landroid/os/Bundle;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 165
    .line 166
    .line 167
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/at;->b:Ljava/lang/String;

    .line 168
    .line 169
    const-string v2, "seq_num"

    .line 170
    .line 171
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/at;->h:Lo3/L;

    .line 175
    .line 176
    invoke-virtual {v1}, Lo3/L;->r()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_5

    .line 181
    .line 182
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/at;->c:Ljava/lang/String;

    .line 183
    .line 184
    const-string v2, "session_id"

    .line 185
    .line 186
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/at;->h:Lo3/L;

    .line 190
    .line 191
    invoke-virtual {v1}, Lo3/L;->r()Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    xor-int/lit8 v1, v1, 0x1

    .line 196
    .line 197
    const-string v2, "client_purpose_one"

    .line 198
    .line 199
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    .line 201
    .line 202
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->g5:Lcom/google/android/gms/internal/ads/J7;

    .line 203
    .line 204
    iget-object v2, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 205
    .line 206
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Ljava/lang/Boolean;

    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_6

    .line 217
    .line 218
    :try_start_1
    const-string v1, "_app_id"

    .line 219
    .line 220
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 221
    .line 222
    iget-object v2, v2, Lk3/l;->c:Lo3/O;

    .line 223
    .line 224
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/at;->a:Landroid/content/Context;

    .line 225
    .line 226
    invoke-static {v2}, Lo3/O;->E(Landroid/content/Context;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :catch_0
    move-exception v1

    .line 235
    goto :goto_1

    .line 236
    :catch_1
    move-exception v1

    .line 237
    :goto_1
    const-string v2, "AppStatsSignal_AppId"

    .line 238
    .line 239
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 240
    .line 241
    iget-object v3, v3, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 242
    .line 243
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    .line 245
    .line 246
    :cond_6
    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->h5:Lcom/google/android/gms/internal/ads/J7;

    .line 247
    .line 248
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 249
    .line 250
    iget-object v3, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 251
    .line 252
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    check-cast v1, Ljava/lang/Boolean;

    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_9

    .line 263
    .line 264
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/at;->g:Lcom/google/android/gms/internal/ads/Yv;

    .line 265
    .line 266
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 267
    .line 268
    if-eqz v1, :cond_9

    .line 269
    .line 270
    new-instance v1, Landroid/os/Bundle;

    .line 271
    .line 272
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 273
    .line 274
    .line 275
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/at;->j:Lcom/google/android/gms/internal/ads/Qi;

    .line 276
    .line 277
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/at;->g:Lcom/google/android/gms/internal/ads/Yv;

    .line 278
    .line 279
    const-string v5, "dload"

    .line 280
    .line 281
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 282
    .line 283
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Qi;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 284
    .line 285
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    check-cast v3, Ljava/lang/Long;

    .line 290
    .line 291
    if-nez v3, :cond_7

    .line 292
    .line 293
    const-wide/16 v3, -0x1

    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 297
    .line 298
    .line 299
    move-result-wide v3

    .line 300
    :goto_3
    invoke-virtual {v1, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 301
    .line 302
    .line 303
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/at;->j:Lcom/google/android/gms/internal/ads/Qi;

    .line 304
    .line 305
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/at;->g:Lcom/google/android/gms/internal/ads/Yv;

    .line 306
    .line 307
    const-string v4, "pcc"

    .line 308
    .line 309
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 310
    .line 311
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Qi;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 312
    .line 313
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Ljava/lang/Integer;

    .line 318
    .line 319
    if-nez v0, :cond_8

    .line 320
    .line 321
    const/4 v0, 0x0

    .line 322
    goto :goto_4

    .line 323
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    :goto_4
    invoke-virtual {v1, v4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 328
    .line 329
    .line 330
    const-string v0, "ad_unit_quality_signals"

    .line 331
    .line 332
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 333
    .line 334
    .line 335
    :cond_9
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->X8:Lcom/google/android/gms/internal/ads/J7;

    .line 336
    .line 337
    iget-object v1, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 338
    .line 339
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    check-cast v0, Ljava/lang/Boolean;

    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-eqz v0, :cond_a

    .line 350
    .line 351
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 352
    .line 353
    iget-object v1, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 354
    .line 355
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/le;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 356
    .line 357
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-lez v1, :cond_a

    .line 362
    .line 363
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 364
    .line 365
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/le;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    const-string v1, "nrwv"

    .line 372
    .line 373
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 374
    .line 375
    .line 376
    :cond_a
    return-void

    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
