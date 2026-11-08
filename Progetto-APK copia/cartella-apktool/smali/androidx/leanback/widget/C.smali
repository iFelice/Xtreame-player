.class public final Landroidx/leanback/widget/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final H:I

.field public final synthetic I:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LH3/x;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroidx/leanback/widget/C;->G:I

    .line 3
    iput-object p1, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    iput p2, p0, Landroidx/leanback/widget/C;->H:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroidx/leanback/widget/C;->G:I

    iput-object p1, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    iput p2, p0, Landroidx/leanback/widget/C;->H:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroidx/leanback/widget/C;->G:I

    iput p2, p0, Landroidx/leanback/widget/C;->H:I

    iput-object p1, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lpe/hf/black20/CatchupPlayerActivity;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 7
    iput v0, p0, Landroidx/leanback/widget/C;->G:I

    .line 8
    iput-object p1, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroidx/leanback/widget/C;->H:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Landroidx/leanback/widget/C;->G:I

    .line 2
    .line 3
    const-wide/16 v1, -0x2

    .line 4
    .line 5
    const-string v3, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    const/4 v6, 0x4

    .line 10
    const/4 v7, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lpe/hf/black20/CatchupPlayerActivity;

    .line 17
    .line 18
    iget-object v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 19
    .line 20
    invoke-virtual {v1}, LB0/O;->v()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    long-to-int v2, v1

    .line 25
    iget v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->i0:I

    .line 26
    .line 27
    if-eq v2, v1, :cond_0

    .line 28
    .line 29
    iget-object v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->a0:Landroid/widget/SeekBar;

    .line 30
    .line 31
    iget v3, v0, Lpe/hf/black20/CatchupPlayerActivity;->h0:I

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->U:Landroid/widget/TextView;

    .line 37
    .line 38
    iget v3, v0, Lpe/hf/black20/CatchupPlayerActivity;->h0:I

    .line 39
    .line 40
    invoke-static {v3}, Lpe/hf/black20/util/Methods;->a(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iput v2, v0, Lpe/hf/black20/CatchupPlayerActivity;->i0:I

    .line 48
    .line 49
    :cond_0
    iget-object v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->j0:Ljava/lang/String;

    .line 50
    .line 51
    const-string v2, "playing"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->h0:I

    .line 60
    .line 61
    iget v2, v0, Lpe/hf/black20/CatchupPlayerActivity;->f0:I

    .line 62
    .line 63
    if-ne v1, v2, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Lpe/hf/black20/CatchupPlayerActivity;->e()V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->c0:Landroid/os/Handler;

    .line 69
    .line 70
    iget-object v0, v0, Lpe/hf/black20/CatchupPlayerActivity;->d0:Landroidx/leanback/widget/C;

    .line 71
    .line 72
    const-wide/16 v2, 0x3e8

    .line 73
    .line 74
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, LZ5/q;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    throw v0

    .line 87
    :pswitch_1
    iget-object v0, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, LZ5/u;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    throw v0

    .line 96
    :pswitch_2
    iget-object v0, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 97
    .line 98
    move-object v1, v0

    .line 99
    check-cast v1, Lcom/google/android/gms/internal/ads/bD;

    .line 100
    .line 101
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v2, LZ5/V;

    .line 104
    .line 105
    invoke-virtual {v2}, LZ5/V;->k()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_2

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    :try_start_0
    check-cast v0, Lcom/google/android/gms/internal/ads/bD;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v0, LZ5/V;

    .line 117
    .line 118
    iget v2, p0, Landroidx/leanback/widget/C;->H:I

    .line 119
    .line 120
    invoke-virtual {v0, v2}, LZ5/V;->E(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v2, LZ5/u;

    .line 128
    .line 129
    invoke-virtual {v2, v0}, LZ5/u;->i(Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v0, LZ5/V;

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 137
    .line 138
    .line 139
    :goto_0
    return-void

    .line 140
    :pswitch_3
    iget-object v0, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v0, Lcom/google/android/gms/internal/pal/A1;

    .line 143
    .line 144
    iget v8, p0, Landroidx/leanback/widget/C;->H:I

    .line 145
    .line 146
    if-lez v8, :cond_3

    .line 147
    .line 148
    mul-int/lit16 v8, v8, 0x3e8

    .line 149
    .line 150
    int-to-long v8, v8

    .line 151
    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    .line 153
    .line 154
    :catch_0
    :cond_3
    :try_start_2
    iget-object v8, v0, Lcom/google/android/gms/internal/pal/A1;->a:Landroid/content/Context;

    .line 155
    .line 156
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    iget-object v9, v0, Lcom/google/android/gms/internal/pal/A1;->a:Landroid/content/Context;

    .line 161
    .line 162
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    invoke-virtual {v8, v9, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/A1;->a:Landroid/content/Context;

    .line 171
    .line 172
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 177
    .line 178
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    new-instance v10, Lcom/google/android/gms/internal/pal/v2;

    .line 183
    .line 184
    invoke-direct {v10, v0, v9, v8}, Lcom/google/android/gms/internal/pal/v2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    .line 186
    .line 187
    :try_start_3
    iget-object v0, v10, Lcom/google/android/gms/internal/pal/v2;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 188
    .line 189
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 190
    .line 191
    const-wide/16 v9, 0x1388

    .line 192
    .line 193
    invoke-virtual {v0, v9, v10, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Lcom/google/android/gms/internal/pal/m0;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :catch_1
    nop

    .line 201
    move-object v0, v4

    .line 202
    :goto_1
    if-nez v0, :cond_4

    .line 203
    .line 204
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/internal/pal/v2;->a()Lcom/google/android/gms/internal/pal/m0;

    .line 205
    .line 206
    .line 207
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 208
    :cond_4
    move-object v4, v0

    .line 209
    :catchall_1
    iget-object v0, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v0, Lcom/google/android/gms/internal/pal/A1;

    .line 212
    .line 213
    iput-object v4, v0, Lcom/google/android/gms/internal/pal/A1;->j:Lcom/google/android/gms/internal/pal/m0;

    .line 214
    .line 215
    iget v0, p0, Landroidx/leanback/widget/C;->H:I

    .line 216
    .line 217
    if-ge v0, v6, :cond_7

    .line 218
    .line 219
    if-nez v4, :cond_5

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/m0;->U()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_6

    .line 227
    .line 228
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/m0;->e0()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-nez v0, :cond_6

    .line 237
    .line 238
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/m0;->V()Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_6

    .line 243
    .line 244
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/m0;->d0()Lcom/google/android/gms/internal/pal/M0;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/M0;->p()Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_6

    .line 253
    .line 254
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/m0;->d0()Lcom/google/android/gms/internal/pal/M0;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/M0;->m()J

    .line 259
    .line 260
    .line 261
    move-result-wide v3

    .line 262
    cmp-long v0, v3, v1

    .line 263
    .line 264
    if-eqz v0, :cond_6

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_6
    :goto_2
    iget-object v0, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v0, Lcom/google/android/gms/internal/pal/A1;

    .line 270
    .line 271
    iget v1, p0, Landroidx/leanback/widget/C;->H:I

    .line 272
    .line 273
    add-int/2addr v1, v5

    .line 274
    iget-boolean v2, v0, Lcom/google/android/gms/internal/pal/A1;->n:Z

    .line 275
    .line 276
    if-eqz v2, :cond_7

    .line 277
    .line 278
    iget-object v2, v0, Lcom/google/android/gms/internal/pal/A1;->b:Ljava/util/concurrent/ExecutorService;

    .line 279
    .line 280
    new-instance v3, Landroidx/leanback/widget/C;

    .line 281
    .line 282
    const/16 v4, 0x8

    .line 283
    .line 284
    invoke-direct {v3, v0, v1, v4, v7}, Landroidx/leanback/widget/C;-><init>(Ljava/lang/Object;III)V

    .line 285
    .line 286
    .line 287
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    if-nez v1, :cond_7

    .line 292
    .line 293
    iput-object v2, v0, Lcom/google/android/gms/internal/pal/A1;->k:Ljava/util/concurrent/Future;

    .line 294
    .line 295
    :cond_7
    :goto_3
    return-void

    .line 296
    :pswitch_4
    iget-object v0, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v0, Lcom/google/android/gms/internal/ads/XJ;

    .line 299
    .line 300
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/XJ;->b:Lcom/google/android/gms/internal/ads/ZJ;

    .line 301
    .line 302
    iget v1, p0, Landroidx/leanback/widget/C;->H:I

    .line 303
    .line 304
    const/4 v2, -0x3

    .line 305
    const/4 v3, -0x2

    .line 306
    if-eq v1, v2, :cond_a

    .line 307
    .line 308
    if-eq v1, v3, :cond_a

    .line 309
    .line 310
    const/4 v2, -0x1

    .line 311
    if-eq v1, v2, :cond_9

    .line 312
    .line 313
    if-eq v1, v5, :cond_8

    .line 314
    .line 315
    const-string v0, "Unknown focus change type: "

    .line 316
    .line 317
    const-string v2, "AudioFocusManager"

    .line 318
    .line 319
    invoke-static {v0, v1, v2}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_8
    const/4 v1, 0x2

    .line 324
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ZJ;->c(I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/ZJ;->b(I)V

    .line 328
    .line 329
    .line 330
    goto :goto_4

    .line 331
    :cond_9
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ZJ;->b(I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ZJ;->a()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/ZJ;->c(I)V

    .line 338
    .line 339
    .line 340
    goto :goto_4

    .line 341
    :cond_a
    if-eq v1, v3, :cond_b

    .line 342
    .line 343
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/ZJ;->c(I)V

    .line 344
    .line 345
    .line 346
    goto :goto_4

    .line 347
    :cond_b
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/ZJ;->b(I)V

    .line 348
    .line 349
    .line 350
    const/4 v1, 0x3

    .line 351
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ZJ;->c(I)V

    .line 352
    .line 353
    .line 354
    :goto_4
    return-void

    .line 355
    :pswitch_5
    iget-object v0, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v0, Lcom/google/android/gms/internal/ads/We;

    .line 358
    .line 359
    iget v1, p0, Landroidx/leanback/widget/C;->H:I

    .line 360
    .line 361
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/We;->L:Lcom/google/android/gms/internal/ads/Ce;

    .line 362
    .line 363
    if-eqz v0, :cond_c

    .line 364
    .line 365
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 366
    .line 367
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Ge;->onWindowVisibilityChanged(I)V

    .line 368
    .line 369
    .line 370
    :cond_c
    return-void

    .line 371
    :pswitch_6
    iget-object v0, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v0, Lcom/google/android/gms/internal/ads/Be;

    .line 374
    .line 375
    iget v1, p0, Landroidx/leanback/widget/C;->H:I

    .line 376
    .line 377
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Be;->V:Lcom/google/android/gms/internal/ads/Ce;

    .line 378
    .line 379
    if-eqz v0, :cond_d

    .line 380
    .line 381
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Ge;->onWindowVisibilityChanged(I)V

    .line 384
    .line 385
    .line 386
    :cond_d
    return-void

    .line 387
    :pswitch_7
    iget v0, p0, Landroidx/leanback/widget/C;->H:I

    .line 388
    .line 389
    iget-object v8, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v8, Lcom/google/android/gms/internal/ads/V4;

    .line 392
    .line 393
    if-lez v0, :cond_e

    .line 394
    .line 395
    mul-int/lit16 v0, v0, 0x3e8

    .line 396
    .line 397
    int-to-long v9, v0

    .line 398
    :try_start_5
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 399
    .line 400
    .line 401
    :catch_2
    :cond_e
    :try_start_6
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/V4;->a:Landroid/content/Context;

    .line 402
    .line 403
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/V4;->a:Landroid/content/Context;

    .line 408
    .line 409
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v9

    .line 413
    invoke-virtual {v0, v9, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/V4;->a:Landroid/content/Context;

    .line 418
    .line 419
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v9

    .line 423
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 424
    .line 425
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-static {v8, v9, v0}, Lcom/google/android/gms/internal/measurement/H1;->C(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/j4;

    .line 430
    .line 431
    .line 432
    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 433
    :catchall_2
    iget-object v0, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast v0, Lcom/google/android/gms/internal/ads/V4;

    .line 436
    .line 437
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/V4;->j:Lcom/google/android/gms/internal/ads/j4;

    .line 438
    .line 439
    iget v0, p0, Landroidx/leanback/widget/C;->H:I

    .line 440
    .line 441
    if-ge v0, v6, :cond_12

    .line 442
    .line 443
    if-nez v4, :cond_f

    .line 444
    .line 445
    goto :goto_5

    .line 446
    :cond_f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/j4;->k0()Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-eqz v0, :cond_10

    .line 451
    .line 452
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/j4;->y0()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    if-nez v0, :cond_10

    .line 461
    .line 462
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/j4;->l0()Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-eqz v0, :cond_10

    .line 467
    .line 468
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/j4;->w0()Lcom/google/android/gms/internal/ads/q4;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q4;->D()Z

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    if-eqz v0, :cond_10

    .line 477
    .line 478
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/j4;->w0()Lcom/google/android/gms/internal/ads/q4;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q4;->A()J

    .line 483
    .line 484
    .line 485
    move-result-wide v3

    .line 486
    cmp-long v0, v3, v1

    .line 487
    .line 488
    if-eqz v0, :cond_10

    .line 489
    .line 490
    goto :goto_6

    .line 491
    :cond_10
    :goto_5
    iget-object v0, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 492
    .line 493
    check-cast v0, Lcom/google/android/gms/internal/ads/V4;

    .line 494
    .line 495
    iget v1, p0, Landroidx/leanback/widget/C;->H:I

    .line 496
    .line 497
    add-int/2addr v1, v5

    .line 498
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/V4;->n:Z

    .line 499
    .line 500
    if-nez v2, :cond_11

    .line 501
    .line 502
    goto :goto_6

    .line 503
    :cond_11
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/V4;->b:Ljava/util/concurrent/ExecutorService;

    .line 504
    .line 505
    new-instance v3, Landroidx/leanback/widget/C;

    .line 506
    .line 507
    invoke-direct {v3, v0, v1, v6, v7}, Landroidx/leanback/widget/C;-><init>(Ljava/lang/Object;III)V

    .line 508
    .line 509
    .line 510
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    if-nez v1, :cond_12

    .line 515
    .line 516
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/V4;->k:Ljava/util/concurrent/Future;

    .line 517
    .line 518
    :cond_12
    :goto_6
    return-void

    .line 519
    :pswitch_8
    iget-object v0, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 520
    .line 521
    check-cast v0, LK3/z;

    .line 522
    .line 523
    iget v1, p0, Landroidx/leanback/widget/C;->H:I

    .line 524
    .line 525
    invoke-virtual {v0, v1}, LK3/z;->g(I)V

    .line 526
    .line 527
    .line 528
    return-void

    .line 529
    :pswitch_9
    iget-object v0, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 530
    .line 531
    check-cast v0, LH3/x;

    .line 532
    .line 533
    iget-object v0, v0, LH3/x;->c:LD3/I;

    .line 534
    .line 535
    iget v1, p0, Landroidx/leanback/widget/C;->H:I

    .line 536
    .line 537
    invoke-virtual {v0, v1}, LD3/I;->b(I)V

    .line 538
    .line 539
    .line 540
    return-void

    .line 541
    :pswitch_a
    iget-object v0, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 542
    .line 543
    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 544
    .line 545
    iget-object v0, v0, Landroidx/work/impl/foreground/SystemForegroundService;->K:Landroid/app/NotificationManager;

    .line 546
    .line 547
    iget v1, p0, Landroidx/leanback/widget/C;->H:I

    .line 548
    .line 549
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 550
    .line 551
    .line 552
    return-void

    .line 553
    :pswitch_b
    iget-object v0, p0, Landroidx/leanback/widget/C;->I:Ljava/lang/Object;

    .line 554
    .line 555
    check-cast v0, Landroidx/leanback/widget/SearchBar;

    .line 556
    .line 557
    iget-object v1, v0, Landroidx/leanback/widget/SearchBar;->d0:Landroid/util/SparseIntArray;

    .line 558
    .line 559
    iget v2, p0, Landroidx/leanback/widget/C;->H:I

    .line 560
    .line 561
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 562
    .line 563
    .line 564
    move-result v4

    .line 565
    iget-object v3, v0, Landroidx/leanback/widget/SearchBar;->c0:Landroid/media/SoundPool;

    .line 566
    .line 567
    const/4 v8, 0x0

    .line 568
    const/high16 v9, 0x3f800000    # 1.0f

    .line 569
    .line 570
    const/high16 v5, 0x3f800000    # 1.0f

    .line 571
    .line 572
    const/high16 v6, 0x3f800000    # 1.0f

    .line 573
    .line 574
    const/4 v7, 0x1

    .line 575
    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 576
    .line 577
    .line 578
    return-void

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
