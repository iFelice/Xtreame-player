.class public final LY/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final H:I

.field public final I:Ljava/lang/Object;

.field public final J:Ljava/lang/Object;

.field public final K:Ljava/lang/Object;

.field public final L:Ljava/lang/Object;

.field public final M:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p7, p0, LY/Y;->G:I

    iput-object p1, p0, LY/Y;->M:Ljava/lang/Object;

    iput p2, p0, LY/Y;->H:I

    iput-object p3, p0, LY/Y;->I:Ljava/lang/Object;

    iput-object p4, p0, LY/Y;->J:Ljava/lang/Object;

    iput-object p5, p0, LY/Y;->K:Ljava/lang/Object;

    iput-object p6, p0, LY/Y;->L:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lc4/U;ILjava/io/IOException;[BLjava/util/Map;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, LY/Y;->G:I

    .line 4
    invoke-static {p2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    iput-object p2, p0, LY/Y;->I:Ljava/lang/Object;

    iput p3, p0, LY/Y;->H:I

    iput-object p4, p0, LY/Y;->J:Ljava/lang/Object;

    iput-object p5, p0, LY/Y;->K:Ljava/lang/Object;

    iput-object p1, p0, LY/Y;->L:Ljava/lang/Object;

    iput-object p6, p0, LY/Y;->M:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, LY/Y;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, LY/Y;->I:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lc4/U;

    .line 11
    .line 12
    iget-object v0, p0, LY/Y;->L:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v2, v0

    .line 15
    check-cast v2, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p0, LY/Y;->J:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v4, v0

    .line 20
    check-cast v4, Ljava/lang/Throwable;

    .line 21
    .line 22
    iget-object v0, p0, LY/Y;->K:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v5, v0

    .line 25
    check-cast v5, [B

    .line 26
    .line 27
    iget-object v0, p0, LY/Y;->M:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v6, v0

    .line 30
    check-cast v6, Ljava/util/Map;

    .line 31
    .line 32
    iget v3, p0, LY/Y;->H:I

    .line 33
    .line 34
    invoke-interface/range {v1 .. v6}, Lc4/U;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, LY/Y;->M:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lc4/T;

    .line 41
    .line 42
    iget-object v2, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Lc4/l0;

    .line 45
    .line 46
    iget-object v2, v2, Lc4/l0;->N:Lc4/Z;

    .line 47
    .line 48
    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 49
    .line 50
    .line 51
    iget-boolean v3, v2, Lc4/s0;->H:Z

    .line 52
    .line 53
    if-eqz v3, :cond_c

    .line 54
    .line 55
    iget-char v3, v0, Lc4/T;->I:C

    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    if-nez v3, :cond_5

    .line 59
    .line 60
    iget-object v3, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v3, Lc4/l0;

    .line 63
    .line 64
    iget-object v3, v3, Lc4/l0;->M:Lc4/h;

    .line 65
    .line 66
    iget-object v5, v3, Lc4/h;->K:Ljava/lang/Boolean;

    .line 67
    .line 68
    if-nez v5, :cond_3

    .line 69
    .line 70
    monitor-enter v3

    .line 71
    :try_start_0
    iget-object v5, v3, Lc4/h;->K:Ljava/lang/Boolean;

    .line 72
    .line 73
    if-nez v5, :cond_2

    .line 74
    .line 75
    iget-object v5, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v5, Lc4/l0;

    .line 78
    .line 79
    iget-object v6, v5, Lc4/l0;->G:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-static {}, LP3/c;->c()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    if-eqz v6, :cond_1

    .line 90
    .line 91
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v6, :cond_0

    .line 94
    .line 95
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_0

    .line 100
    .line 101
    const/4 v6, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    const/4 v6, 0x0

    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    goto :goto_1

    .line 107
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    iput-object v6, v3, Lc4/h;->K:Ljava/lang/Boolean;

    .line 112
    .line 113
    :cond_1
    iget-object v6, v3, Lc4/h;->K:Ljava/lang/Boolean;

    .line 114
    .line 115
    if-nez v6, :cond_2

    .line 116
    .line 117
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 118
    .line 119
    iput-object v6, v3, Lc4/h;->K:Ljava/lang/Boolean;

    .line 120
    .line 121
    iget-object v5, v5, Lc4/l0;->O:Lc4/T;

    .line 122
    .line 123
    invoke-static {v5}, Lc4/l0;->k(Lc4/s0;)V

    .line 124
    .line 125
    .line 126
    iget-object v5, v5, Lc4/T;->L:Lc4/Q;

    .line 127
    .line 128
    const-string v6, "My process not in the list of running processes"

    .line 129
    .line 130
    invoke-virtual {v5, v6}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    monitor-exit v3

    .line 134
    goto :goto_2

    .line 135
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    throw v0

    .line 137
    :cond_3
    :goto_2
    iget-object v3, v3, Lc4/h;->K:Ljava/lang/Boolean;

    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_4

    .line 144
    .line 145
    const/16 v3, 0x43

    .line 146
    .line 147
    iput-char v3, v0, Lc4/T;->I:C

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_4
    const/16 v3, 0x63

    .line 151
    .line 152
    iput-char v3, v0, Lc4/T;->I:C

    .line 153
    .line 154
    :cond_5
    :goto_3
    iget-wide v5, v0, Lc4/T;->J:J

    .line 155
    .line 156
    const-wide/16 v7, 0x0

    .line 157
    .line 158
    cmp-long v3, v5, v7

    .line 159
    .line 160
    if-gez v3, :cond_6

    .line 161
    .line 162
    iget-object v3, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v3, Lc4/l0;

    .line 165
    .line 166
    iget-object v3, v3, Lc4/l0;->M:Lc4/h;

    .line 167
    .line 168
    invoke-virtual {v3}, Lc4/h;->u()J

    .line 169
    .line 170
    .line 171
    const-wide/32 v5, 0x1d0da

    .line 172
    .line 173
    .line 174
    iput-wide v5, v0, Lc4/T;->J:J

    .line 175
    .line 176
    :cond_6
    iget v3, p0, LY/Y;->H:I

    .line 177
    .line 178
    const-string v5, "01VDIWEA?"

    .line 179
    .line 180
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    iget-char v5, v0, Lc4/T;->I:C

    .line 185
    .line 186
    iget-wide v9, v0, Lc4/T;->J:J

    .line 187
    .line 188
    iget-object v0, p0, LY/Y;->I:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v0, Ljava/lang/String;

    .line 191
    .line 192
    iget-object v6, p0, LY/Y;->J:Ljava/lang/Object;

    .line 193
    .line 194
    iget-object v11, p0, LY/Y;->K:Ljava/lang/Object;

    .line 195
    .line 196
    iget-object v12, p0, LY/Y;->L:Ljava/lang/Object;

    .line 197
    .line 198
    invoke-static {v4, v0, v6, v11, v12}, Lc4/T;->u(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v11, "2"

    .line 205
    .line 206
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v3, ":"

    .line 219
    .line 220
    invoke-static {v6, v3, v4}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    const/16 v5, 0x400

    .line 229
    .line 230
    if-le v4, v5, :cond_7

    .line 231
    .line 232
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    :cond_7
    iget-object v0, v2, Lc4/Z;->L:Lt2/c;

    .line 237
    .line 238
    if-eqz v0, :cond_d

    .line 239
    .line 240
    iget-object v1, v0, Lt2/c;->H:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v1, Lc4/Z;

    .line 243
    .line 244
    invoke-virtual {v1}, Lc1/d;->m()V

    .line 245
    .line 246
    .line 247
    iget-object v2, v0, Lt2/c;->H:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v2, Lc4/Z;

    .line 250
    .line 251
    invoke-virtual {v2}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    iget-object v4, v0, Lt2/c;->I:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v4, Ljava/lang/String;

    .line 258
    .line 259
    invoke-interface {v2, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 260
    .line 261
    .line 262
    move-result-wide v4

    .line 263
    cmp-long v2, v4, v7

    .line 264
    .line 265
    if-nez v2, :cond_8

    .line 266
    .line 267
    invoke-virtual {v0}, Lt2/c;->e()V

    .line 268
    .line 269
    .line 270
    :cond_8
    if-nez v3, :cond_9

    .line 271
    .line 272
    const-string v3, ""

    .line 273
    .line 274
    :cond_9
    invoke-virtual {v1}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    iget-object v4, v0, Lt2/c;->J:Ljava/io/Serializable;

    .line 279
    .line 280
    check-cast v4, Ljava/lang/String;

    .line 281
    .line 282
    invoke-interface {v2, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 283
    .line 284
    .line 285
    move-result-wide v5

    .line 286
    const-wide/16 v9, 0x1

    .line 287
    .line 288
    cmp-long v2, v5, v7

    .line 289
    .line 290
    if-gtz v2, :cond_a

    .line 291
    .line 292
    invoke-virtual {v1}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    iget-object v0, v0, Lt2/c;->K:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v0, Ljava/lang/String;

    .line 303
    .line 304
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 305
    .line 306
    .line 307
    invoke-interface {v1, v4, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 308
    .line 309
    .line 310
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_a
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v2, Lc4/l0;

    .line 317
    .line 318
    iget-object v2, v2, Lc4/l0;->R:Lc4/I1;

    .line 319
    .line 320
    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2}, Lc4/I1;->y()Ljava/security/SecureRandom;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    .line 328
    .line 329
    .line 330
    move-result-wide v7

    .line 331
    const-wide v11, 0x7fffffffffffffffL

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    and-long/2addr v7, v11

    .line 337
    add-long/2addr v5, v9

    .line 338
    div-long/2addr v11, v5

    .line 339
    invoke-virtual {v1}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    cmp-long v2, v7, v11

    .line 348
    .line 349
    if-gez v2, :cond_b

    .line 350
    .line 351
    iget-object v0, v0, Lt2/c;->K:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v0, Ljava/lang/String;

    .line 354
    .line 355
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 356
    .line 357
    .line 358
    :cond_b
    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 359
    .line 360
    .line 361
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 362
    .line 363
    .line 364
    goto :goto_4

    .line 365
    :cond_c
    invoke-virtual {v0}, Lc4/T;->x()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    const-string v1, "Persisted config not initialized. Not logging error/warn"

    .line 370
    .line 371
    const/4 v2, 0x6

    .line 372
    invoke-static {v2, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    :cond_d
    :goto_4
    return-void

    .line 376
    :goto_5
    :pswitch_1
    iget v0, p0, LY/Y;->H:I

    .line 377
    .line 378
    if-ge v1, v0, :cond_e

    .line 379
    .line 380
    iget-object v0, p0, LY/Y;->I:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast v0, Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    check-cast v0, Landroid/view/View;

    .line 389
    .line 390
    iget-object v2, p0, LY/Y;->J:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast v2, Ljava/util/ArrayList;

    .line 393
    .line 394
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    check-cast v2, Ljava/lang/String;

    .line 399
    .line 400
    sget-object v3, LN/N;->a:Ljava/util/WeakHashMap;

    .line 401
    .line 402
    invoke-static {v0, v2}, LN/E;->m(Landroid/view/View;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    iget-object v0, p0, LY/Y;->K:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v0, Ljava/util/ArrayList;

    .line 408
    .line 409
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    check-cast v0, Landroid/view/View;

    .line 414
    .line 415
    iget-object v2, p0, LY/Y;->L:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v2, Ljava/util/ArrayList;

    .line 418
    .line 419
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    check-cast v2, Ljava/lang/String;

    .line 424
    .line 425
    invoke-static {v0, v2}, LN/E;->m(Landroid/view/View;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    add-int/lit8 v1, v1, 0x1

    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_e
    return-void

    .line 432
    nop

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
