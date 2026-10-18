.class public final Lcom/google/android/gms/internal/ads/hf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:J

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;

.field public final synthetic K:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/vu;JLcom/google/android/gms/internal/ads/uu;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/hf;->G:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hf;->I:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/hf;->H:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/hf;->J:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/hf;->K:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p6, p0, Lcom/google/android/gms/internal/ads/hf;->G:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hf;->I:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hf;->J:Ljava/lang/Object;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/hf;->H:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hf;->K:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/hf;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->K:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LY5/E;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hf;->I:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, LY5/D;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->I:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/google/android/gms/internal/ads/vu;

    .line 21
    .line 22
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/hf;->H:J

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hf;->J:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Lcom/google/android/gms/internal/ads/uu;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hf;->K:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v4, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v5, "sig"

    .line 36
    .line 37
    sget-object v6, Lk3/l;->A:Lk3/l;

    .line 38
    .line 39
    iget-object v7, v6, Lk3/l;->j:LP3/b;

    .line 40
    .line 41
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    sub-long/2addr v7, v1

    .line 49
    sget-object v1, Lcom/google/android/gms/internal/ads/t8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-nez v1, :cond_0

    .line 72
    .line 73
    const-string v1, ""

    .line 74
    .line 75
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v9, "Signal runtime (ms) : "

    .line 78
    .line 79
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, " = "

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->U1:Lcom/google/android/gms/internal/ads/J7;

    .line 101
    .line 102
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 103
    .line 104
    iget-object v9, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 105
    .line 106
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_2

    .line 117
    .line 118
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->Y1:Lcom/google/android/gms/internal/ads/J7;

    .line 119
    .line 120
    iget-object v9, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 121
    .line 122
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_2

    .line 133
    .line 134
    monitor-enter v0

    .line 135
    :try_start_0
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/uu;->zza()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    new-instance v9, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v4, v1, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 152
    .line 153
    .line 154
    monitor-exit v0

    .line 155
    goto :goto_0

    .line 156
    :catchall_0
    move-exception v1

    .line 157
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    throw v1

    .line 159
    :cond_2
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->S1:Lcom/google/android/gms/internal/ads/J7;

    .line 160
    .line 161
    iget-object v4, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 162
    .line 163
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Ljava/lang/Boolean;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_3

    .line 174
    .line 175
    goto/16 :goto_4

    .line 176
    .line 177
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vu;->e:Lcom/google/android/gms/internal/ads/Fn;

    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Fn;->a()Lcom/google/android/gms/internal/ads/Om;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    const-string v4, "action"

    .line 184
    .line 185
    const-string v5, "lat_ms"

    .line 186
    .line 187
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v4, "lat_grp"

    .line 191
    .line 192
    const-string v5, "sig_lat_grp"

    .line 193
    .line 194
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/uu;->zza()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    const-string v5, "lat_id"

    .line 206
    .line 207
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    const-string v5, "clat_ms"

    .line 215
    .line 216
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->T1:Lcom/google/android/gms/internal/ads/J7;

    .line 220
    .line 221
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 222
    .line 223
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    check-cast v2, Ljava/lang/Boolean;

    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    const/4 v4, 0x1

    .line 234
    if-eqz v2, :cond_6

    .line 235
    .line 236
    monitor-enter v0

    .line 237
    :try_start_1
    iget v2, v0, Lcom/google/android/gms/internal/ads/vu;->g:I

    .line 238
    .line 239
    add-int/2addr v2, v4

    .line 240
    iput v2, v0, Lcom/google/android/gms/internal/ads/vu;->g:I

    .line 241
    .line 242
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 243
    iget-object v2, v6, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 244
    .line 245
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/le;->c:Lcom/google/android/gms/internal/ads/oe;

    .line 246
    .line 247
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/oe;->c:Lcom/google/android/gms/internal/ads/ne;

    .line 248
    .line 249
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ne;->a()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    const-string v5, "seq_num"

    .line 254
    .line 255
    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    monitor-enter v0

    .line 259
    :try_start_2
    iget v2, v0, Lcom/google/android/gms/internal/ads/vu;->g:I

    .line 260
    .line 261
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/vu;->b:Ljava/util/Set;

    .line 262
    .line 263
    invoke-interface {v5}, Ljava/util/Set;->size()I

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    if-ne v2, v5, :cond_5

    .line 268
    .line 269
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/vu;->f:J

    .line 270
    .line 271
    const-wide/16 v9, 0x0

    .line 272
    .line 273
    cmp-long v2, v7, v9

    .line 274
    .line 275
    if-eqz v2, :cond_5

    .line 276
    .line 277
    const/4 v2, 0x0

    .line 278
    iput v2, v0, Lcom/google/android/gms/internal/ads/vu;->g:I

    .line 279
    .line 280
    iget-object v2, v6, Lk3/l;->j:LP3/b;

    .line 281
    .line 282
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 286
    .line 287
    .line 288
    move-result-wide v5

    .line 289
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/vu;->f:J

    .line 290
    .line 291
    sub-long/2addr v5, v7

    .line 292
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/uu;->zza()I

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    const/16 v6, 0x27

    .line 301
    .line 302
    if-le v5, v6, :cond_4

    .line 303
    .line 304
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/uu;->zza()I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    const/16 v5, 0x34

    .line 309
    .line 310
    if-ge v3, v5, :cond_4

    .line 311
    .line 312
    const-string v3, "lat_gmssg"

    .line 313
    .line 314
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    goto :goto_1

    .line 318
    :catchall_1
    move-exception v1

    .line 319
    goto :goto_2

    .line 320
    :cond_4
    const-string v3, "lat_clsg"

    .line 321
    .line 322
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    :cond_5
    :goto_1
    monitor-exit v0

    .line 326
    goto :goto_3

    .line 327
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 328
    throw v1

    .line 329
    :catchall_2
    move-exception v1

    .line 330
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 331
    throw v1

    .line 332
    :cond_6
    :goto_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v0, Lcom/google/android/gms/internal/ads/Fn;

    .line 335
    .line 336
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Fn;->b:Ljava/util/concurrent/Executor;

    .line 337
    .line 338
    new-instance v2, Lcom/google/android/gms/internal/ads/En;

    .line 339
    .line 340
    invoke-direct {v2, v1, v4}, Lcom/google/android/gms/internal/ads/En;-><init>(Lcom/google/android/gms/internal/ads/Om;I)V

    .line 341
    .line 342
    .line 343
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 344
    .line 345
    .line 346
    :goto_4
    return-void

    .line 347
    :pswitch_1
    new-instance v0, Ljava/util/HashMap;

    .line 348
    .line 349
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 350
    .line 351
    .line 352
    const-string v1, "event"

    .line 353
    .line 354
    const-string v2, "precacheComplete"

    .line 355
    .line 356
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hf;->I:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v1, Ljava/lang/String;

    .line 362
    .line 363
    const-string v2, "src"

    .line 364
    .line 365
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hf;->J:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v1, Ljava/lang/String;

    .line 371
    .line 372
    const-string v2, "cachedSrc"

    .line 373
    .line 374
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    const-string v1, "totalDuration"

    .line 378
    .line 379
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/hf;->H:J

    .line 380
    .line 381
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hf;->K:Ljava/lang/Object;

    .line 389
    .line 390
    check-cast v1, Lcom/google/android/gms/internal/ads/jf;

    .line 391
    .line 392
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jf;->k(Lcom/google/android/gms/internal/ads/jf;Ljava/util/HashMap;)V

    .line 393
    .line 394
    .line 395
    return-void

    .line 396
    nop

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/hf;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hf;->J:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "(scheduled in SynchronizationContext with delay of "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/hf;->H:J

    .line 33
    .line 34
    const-string v3, ")"

    .line 35
    .line 36
    invoke-static {v0, v1, v2, v3}, La/r;->i(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
