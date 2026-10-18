.class public Lpe/hf/black20/ServiceStatusActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public final G:Lpe/hf/black20/ServiceStatusActivity;

.field public H:Landroid/content/SharedPreferences;

.field public I:Landroid/widget/TextView;

.field public J:Landroid/widget/TextView;

.field public K:Landroid/widget/TextView;

.field public L:Landroid/widget/TextView;

.field public M:Landroid/widget/TextView;

.field public N:Landroid/widget/TextView;

.field public O:Landroid/widget/TextView;

.field public P:Landroid/widget/TextView;

.field public Q:Landroid/widget/TextView;

.field public R:Landroid/widget/TextView;

.field public S:Landroid/widget/TextView;

.field public T:Landroid/widget/TextView;

.field public U:Landroid/widget/TextView;

.field public V:Landroid/widget/TextView;

.field public W:Landroid/widget/TextView;

.field public X:Landroid/widget/TextView;

.field public Y:Landroid/widget/TextView;

.field public Z:Lc7/d;

.field public a0:Lh7/i;

.field public b0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/ServiceStatusActivity;->G:Lpe/hf/black20/ServiceStatusActivity;

    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iput-object v0, p0, Lpe/hf/black20/ServiceStatusActivity;->b0:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e004b

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0b028a

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/ImageView;

    .line 18
    .line 19
    iget-object v0, p0, Lpe/hf/black20/ServiceStatusActivity;->G:Lpe/hf/black20/ServiceStatusActivity;

    .line 20
    .line 21
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const v1, 0x7f0805f0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const v1, 0x7f08053b

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    new-instance p1, Lc7/d;

    .line 41
    .line 42
    invoke-direct {p1, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->Z:Lc7/d;

    .line 46
    .line 47
    new-instance p1, Lc7/a;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-direct {p1, v0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 51
    .line 52
    .line 53
    const-string v2, "ORT_PROFILE"

    .line 54
    .line 55
    const-string v3, "Default (XC)"

    .line 56
    .line 57
    invoke-static {v2, v3, p1}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->a0:Lh7/i;

    .line 62
    .line 63
    const-string p1, "pe.hf.black20"

    .line 64
    .line 65
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 70
    .line 71
    const p1, 0x7f0b0589

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->I:Landroid/widget/TextView;

    .line 81
    .line 82
    const p1, 0x7f0b0593

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->J:Landroid/widget/TextView;

    .line 92
    .line 93
    const p1, 0x7f0b056e

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroid/widget/TextView;

    .line 101
    .line 102
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->K:Landroid/widget/TextView;

    .line 103
    .line 104
    const p1, 0x7f0b0515

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Landroid/widget/TextView;

    .line 112
    .line 113
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->L:Landroid/widget/TextView;

    .line 114
    .line 115
    const p1, 0x7f0b0568

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Landroid/widget/TextView;

    .line 123
    .line 124
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->M:Landroid/widget/TextView;

    .line 125
    .line 126
    const p1, 0x7f0b053a

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Landroid/widget/TextView;

    .line 134
    .line 135
    const p1, 0x7f0b0534

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Landroid/widget/TextView;

    .line 143
    .line 144
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->N:Landroid/widget/TextView;

    .line 145
    .line 146
    const p1, 0x7f0b0583

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Landroid/widget/TextView;

    .line 154
    .line 155
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->O:Landroid/widget/TextView;

    .line 156
    .line 157
    const p1, 0x7f0b0562

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Landroid/widget/TextView;

    .line 165
    .line 166
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->P:Landroid/widget/TextView;

    .line 167
    .line 168
    const p1, 0x7f0b057a

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Landroid/widget/TextView;

    .line 176
    .line 177
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->Q:Landroid/widget/TextView;

    .line 178
    .line 179
    const p1, 0x7f0b055f

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Landroid/widget/TextView;

    .line 187
    .line 188
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->R:Landroid/widget/TextView;

    .line 189
    .line 190
    const p1, 0x7f0b050d

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast p1, Landroid/widget/TextView;

    .line 198
    .line 199
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->S:Landroid/widget/TextView;

    .line 200
    .line 201
    const p1, 0x7f0b050b

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Landroid/widget/TextView;

    .line 209
    .line 210
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->T:Landroid/widget/TextView;

    .line 211
    .line 212
    const p1, 0x7f0b050c

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    check-cast p1, Landroid/widget/TextView;

    .line 220
    .line 221
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->U:Landroid/widget/TextView;

    .line 222
    .line 223
    const p1, 0x7f0b058d

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    check-cast p1, Landroid/widget/TextView;

    .line 231
    .line 232
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->V:Landroid/widget/TextView;

    .line 233
    .line 234
    const p1, 0x7f0b053b

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Landroid/widget/TextView;

    .line 242
    .line 243
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->W:Landroid/widget/TextView;

    .line 244
    .line 245
    const p1, 0x7f0b054b

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    check-cast p1, Landroid/widget/TextView;

    .line 253
    .line 254
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->X:Landroid/widget/TextView;

    .line 255
    .line 256
    const p1, 0x7f0b058c

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    check-cast p1, Landroid/widget/TextView;

    .line 264
    .line 265
    iput-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->Y:Landroid/widget/TextView;

    .line 266
    .line 267
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->I:Landroid/widget/TextView;

    .line 268
    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    iget-object v5, p0, Lpe/hf/black20/ServiceStatusActivity;->Z:Lc7/d;

    .line 275
    .line 276
    const-string v6, "liststreams"

    .line 277
    .line 278
    invoke-virtual {v5, v6}, Lc7/d;->K0(Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v5, "\nCategories: "

    .line 286
    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    iget-object v6, p0, Lpe/hf/black20/ServiceStatusActivity;->Z:Lc7/d;

    .line 291
    .line 292
    const-string v7, "tv_category"

    .line 293
    .line 294
    invoke-virtual {v6, v7}, Lc7/d;->J0(Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->J:Landroid/widget/TextView;

    .line 309
    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    iget-object v6, p0, Lpe/hf/black20/ServiceStatusActivity;->Z:Lc7/d;

    .line 316
    .line 317
    const-string v7, "vods"

    .line 318
    .line 319
    invoke-virtual {v6, v7}, Lc7/d;->K0(Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    iget-object v6, p0, Lpe/hf/black20/ServiceStatusActivity;->Z:Lc7/d;

    .line 330
    .line 331
    const-string v7, "vod_category"

    .line 332
    .line 333
    invoke-virtual {v6, v7}, Lc7/d;->J0(Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    .line 346
    .line 347
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->K:Landroid/widget/TextView;

    .line 348
    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    iget-object v6, p0, Lpe/hf/black20/ServiceStatusActivity;->Z:Lc7/d;

    .line 355
    .line 356
    const-string v7, "series"

    .line 357
    .line 358
    invoke-virtual {v6, v7}, Lc7/d;->K0(Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    iget-object v5, p0, Lpe/hf/black20/ServiceStatusActivity;->Z:Lc7/d;

    .line 369
    .line 370
    const-string v6, "series_category"

    .line 371
    .line 372
    invoke-virtual {v5, v6}, Lc7/d;->J0(Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    move-result v5

    .line 376
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    .line 385
    .line 386
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->M:Landroid/widget/TextView;

    .line 387
    .line 388
    iget-object v4, p0, Lpe/hf/black20/ServiceStatusActivity;->Z:Lc7/d;

    .line 389
    .line 390
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    const/4 v5, 0x1

    .line 395
    const/4 v6, 0x0

    .line 396
    :try_start_0
    const-string v7, "SELECT  * FROM liststreams WHERE stream_type=?"

    .line 397
    .line 398
    new-array v8, v5, [Ljava/lang/String;

    .line 399
    .line 400
    const-string v9, "radio_streams"

    .line 401
    .line 402
    aput-object v9, v8, v1

    .line 403
    .line 404
    invoke-virtual {v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 405
    .line 406
    .line 407
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 408
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 409
    .line 410
    .line 411
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    .line 413
    .line 414
    .line 415
    move-result v8

    .line 416
    if-nez v8, :cond_2

    .line 417
    .line 418
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 419
    .line 420
    .line 421
    goto :goto_2

    .line 422
    :catchall_0
    nop

    .line 423
    goto :goto_1

    .line 424
    :catchall_1
    nop

    .line 425
    move-object v4, v6

    .line 426
    :goto_1
    if-eqz v4, :cond_1

    .line 427
    .line 428
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    .line 429
    .line 430
    .line 431
    move-result v7

    .line 432
    if-nez v7, :cond_1

    .line 433
    .line 434
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 435
    .line 436
    .line 437
    :cond_1
    const/4 v7, 0x0

    .line 438
    :cond_2
    :goto_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    .line 444
    .line 445
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->L:Landroid/widget/TextView;

    .line 446
    .line 447
    iget-object v4, p0, Lpe/hf/black20/ServiceStatusActivity;->Z:Lc7/d;

    .line 448
    .line 449
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    :try_start_2
    const-string v7, "SELECT  * FROM liststreams WHERE tv_archive=?"

    .line 454
    .line 455
    new-array v5, v5, [Ljava/lang/String;

    .line 456
    .line 457
    const-string v8, "1"

    .line 458
    .line 459
    aput-object v8, v5, v1

    .line 460
    .line 461
    invoke-virtual {v4, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 462
    .line 463
    .line 464
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 465
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 466
    .line 467
    .line 468
    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 469
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    .line 470
    .line 471
    .line 472
    move-result v7

    .line 473
    if-nez v7, :cond_4

    .line 474
    .line 475
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 476
    .line 477
    .line 478
    goto :goto_4

    .line 479
    :catchall_2
    nop

    .line 480
    goto :goto_3

    .line 481
    :catchall_3
    nop

    .line 482
    move-object v4, v6

    .line 483
    :goto_3
    if-eqz v4, :cond_3

    .line 484
    .line 485
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    .line 486
    .line 487
    .line 488
    move-result v5

    .line 489
    if-nez v5, :cond_3

    .line 490
    .line 491
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 492
    .line 493
    .line 494
    :cond_3
    const/4 v5, 0x0

    .line 495
    :cond_4
    :goto_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    .line 501
    .line 502
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 503
    .line 504
    const-string v4, "sleep_mode"

    .line 505
    .line 506
    invoke-interface {p1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 507
    .line 508
    .line 509
    move-result p1

    .line 510
    const-string v5, "YES"

    .line 511
    .line 512
    if-eqz p1, :cond_6

    .line 513
    .line 514
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 515
    .line 516
    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    const-string v4, "on"

    .line 521
    .line 522
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result p1

    .line 526
    if-eqz p1, :cond_5

    .line 527
    .line 528
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->T:Landroid/widget/TextView;

    .line 529
    .line 530
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    .line 532
    .line 533
    goto :goto_5

    .line 534
    :cond_5
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->T:Landroid/widget/TextView;

    .line 535
    .line 536
    const-string v4, "NO"

    .line 537
    .line 538
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    .line 540
    .line 541
    goto :goto_5

    .line 542
    :cond_6
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->T:Landroid/widget/TextView;

    .line 543
    .line 544
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    .line 546
    .line 547
    :goto_5
    const-string p1, "bg_epg_update"

    .line 548
    .line 549
    const-string v4, "yes"

    .line 550
    .line 551
    invoke-static {p1, v4, v4}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 552
    .line 553
    .line 554
    move-result p1

    .line 555
    const v5, 0x7f1301f0

    .line 556
    .line 557
    .line 558
    const v7, 0x7f1301ed

    .line 559
    .line 560
    .line 561
    if-eqz p1, :cond_7

    .line 562
    .line 563
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->S:Landroid/widget/TextView;

    .line 564
    .line 565
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v8

    .line 569
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    .line 571
    .line 572
    goto :goto_6

    .line 573
    :cond_7
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->S:Landroid/widget/TextView;

    .line 574
    .line 575
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v8

    .line 579
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    .line 581
    .line 582
    :goto_6
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 583
    .line 584
    const-string v8, "auto_start"

    .line 585
    .line 586
    invoke-interface {p1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 587
    .line 588
    .line 589
    move-result p1

    .line 590
    if-eqz p1, :cond_9

    .line 591
    .line 592
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 593
    .line 594
    invoke-interface {p1, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result p1

    .line 602
    if-eqz p1, :cond_8

    .line 603
    .line 604
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->U:Landroid/widget/TextView;

    .line 605
    .line 606
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v5

    .line 610
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    .line 612
    .line 613
    goto :goto_7

    .line 614
    :cond_8
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->U:Landroid/widget/TextView;

    .line 615
    .line 616
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v5

    .line 620
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    .line 622
    .line 623
    goto :goto_7

    .line 624
    :cond_9
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->U:Landroid/widget/TextView;

    .line 625
    .line 626
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v5

    .line 630
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    .line 632
    .line 633
    :goto_7
    const-string p1, "ORT_WHICH_PANEL"

    .line 634
    .line 635
    const-string v5, "xtreamcodes"

    .line 636
    .line 637
    invoke-static {p1, v5, v5}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 638
    .line 639
    .line 640
    move-result v7

    .line 641
    const-string v8, "UNKNOWN"

    .line 642
    .line 643
    if-eqz v7, :cond_b

    .line 644
    .line 645
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 646
    .line 647
    const-string v9, "timezone"

    .line 648
    .line 649
    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 650
    .line 651
    .line 652
    move-result v7

    .line 653
    if-eqz v7, :cond_a

    .line 654
    .line 655
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->O:Landroid/widget/TextView;

    .line 656
    .line 657
    iget-object v8, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 658
    .line 659
    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v8

    .line 663
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    .line 665
    .line 666
    goto :goto_8

    .line 667
    :cond_a
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->O:Landroid/widget/TextView;

    .line 668
    .line 669
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    .line 671
    .line 672
    goto :goto_8

    .line 673
    :cond_b
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->O:Landroid/widget/TextView;

    .line 674
    .line 675
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    .line 677
    .line 678
    :goto_8
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 679
    .line 680
    const-string v8, "whichplayer_tv"

    .line 681
    .line 682
    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 683
    .line 684
    .line 685
    move-result v7

    .line 686
    const-string v9, "LIVE TV - ExoPlayer\n"

    .line 687
    .line 688
    const-string v10, "EXO"

    .line 689
    .line 690
    if-eqz v7, :cond_d

    .line 691
    .line 692
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 693
    .line 694
    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v7

    .line 698
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 699
    .line 700
    .line 701
    move-result v7

    .line 702
    if-eqz v7, :cond_c

    .line 703
    .line 704
    goto :goto_9

    .line 705
    :cond_c
    const-string v9, "LIVE TV - VLC layer\n"

    .line 706
    .line 707
    :cond_d
    :goto_9
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 708
    .line 709
    const-string v8, "whichplayer_vod"

    .line 710
    .line 711
    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 712
    .line 713
    .line 714
    move-result v7

    .line 715
    const-string v11, "VOD - ExoPlayer\n"

    .line 716
    .line 717
    if-eqz v7, :cond_f

    .line 718
    .line 719
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 720
    .line 721
    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v7

    .line 725
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    move-result v7

    .line 729
    if-eqz v7, :cond_e

    .line 730
    .line 731
    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v7

    .line 735
    goto :goto_a

    .line 736
    :cond_e
    const-string v7, "VOD - VLC Player\n"

    .line 737
    .line 738
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v7

    .line 742
    goto :goto_a

    .line 743
    :cond_f
    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v7

    .line 747
    :goto_a
    iget-object v8, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 748
    .line 749
    const-string v9, "whichplayer_series"

    .line 750
    .line 751
    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 752
    .line 753
    .line 754
    move-result v8

    .line 755
    const-string v11, "SERIES - ExoPlayer\n"

    .line 756
    .line 757
    if-eqz v8, :cond_11

    .line 758
    .line 759
    iget-object v8, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 760
    .line 761
    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v8

    .line 765
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 766
    .line 767
    .line 768
    move-result v8

    .line 769
    if-eqz v8, :cond_10

    .line 770
    .line 771
    invoke-static {v7, v11}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v7

    .line 775
    goto :goto_b

    .line 776
    :cond_10
    const-string v8, "SERIES - VLC Player\n"

    .line 777
    .line 778
    invoke-static {v7, v8}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v7

    .line 782
    goto :goto_b

    .line 783
    :cond_11
    invoke-static {v7, v11}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v7

    .line 787
    :goto_b
    iget-object v8, p0, Lpe/hf/black20/ServiceStatusActivity;->P:Landroid/widget/TextView;

    .line 788
    .line 789
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    .line 791
    .line 792
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 793
    .line 794
    const-string v8, "pc_lock"

    .line 795
    .line 796
    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 797
    .line 798
    .line 799
    move-result v7

    .line 800
    const-string v9, "UNLOCKED"

    .line 801
    .line 802
    if-eqz v7, :cond_13

    .line 803
    .line 804
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 805
    .line 806
    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v7

    .line 810
    const-string v8, "no"

    .line 811
    .line 812
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    move-result v7

    .line 816
    if-eqz v7, :cond_12

    .line 817
    .line 818
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->R:Landroid/widget/TextView;

    .line 819
    .line 820
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    .line 822
    .line 823
    goto :goto_c

    .line 824
    :cond_12
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->R:Landroid/widget/TextView;

    .line 825
    .line 826
    const-string v8, "LOCKED"

    .line 827
    .line 828
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    .line 830
    .line 831
    goto :goto_c

    .line 832
    :cond_13
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->R:Landroid/widget/TextView;

    .line 833
    .line 834
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    .line 836
    .line 837
    :goto_c
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 838
    .line 839
    const-string v8, ""

    .line 840
    .line 841
    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 842
    .line 843
    .line 844
    move-result v7

    .line 845
    const v9, 0x7f130217

    .line 846
    .line 847
    .line 848
    if-eqz v7, :cond_15

    .line 849
    .line 850
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 851
    .line 852
    const-string v10, "streamFormat"

    .line 853
    .line 854
    invoke-interface {v7, v10, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v7

    .line 858
    const-string v10, "ts"

    .line 859
    .line 860
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 861
    .line 862
    .line 863
    move-result v7

    .line 864
    if-eqz v7, :cond_14

    .line 865
    .line 866
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->Q:Landroid/widget/TextView;

    .line 867
    .line 868
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    .line 874
    .line 875
    goto :goto_d

    .line 876
    :cond_14
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->Q:Landroid/widget/TextView;

    .line 877
    .line 878
    const v9, 0x7f130216

    .line 879
    .line 880
    .line 881
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    .line 887
    .line 888
    goto :goto_d

    .line 889
    :cond_15
    iget-object v7, p0, Lpe/hf/black20/ServiceStatusActivity;->Q:Landroid/widget/TextView;

    .line 890
    .line 891
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 896
    .line 897
    .line 898
    :goto_d
    iget-object v0, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 899
    .line 900
    const-string v7, "max_connections"

    .line 901
    .line 902
    invoke-interface {v0, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 903
    .line 904
    .line 905
    move-result v0

    .line 906
    const-string v9, "Unavailable"

    .line 907
    .line 908
    if-eqz v0, :cond_17

    .line 909
    .line 910
    iget-object v0, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 911
    .line 912
    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    const-string v10, "0"

    .line 921
    .line 922
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 923
    .line 924
    .line 925
    move-result v0

    .line 926
    if-eqz v0, :cond_16

    .line 927
    .line 928
    iget-object v0, p0, Lpe/hf/black20/ServiceStatusActivity;->X:Landroid/widget/TextView;

    .line 929
    .line 930
    const v7, 0x7f13019b

    .line 931
    .line 932
    .line 933
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 934
    .line 935
    .line 936
    goto :goto_e

    .line 937
    :cond_16
    iget-object v0, p0, Lpe/hf/black20/ServiceStatusActivity;->X:Landroid/widget/TextView;

    .line 938
    .line 939
    iget-object v10, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 940
    .line 941
    invoke-interface {v10, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v7

    .line 945
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    .line 947
    .line 948
    goto :goto_e

    .line 949
    :cond_17
    iget-object v0, p0, Lpe/hf/black20/ServiceStatusActivity;->X:Landroid/widget/TextView;

    .line 950
    .line 951
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    .line 953
    .line 954
    :goto_e
    invoke-static {p1, v5, v5}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 955
    .line 956
    .line 957
    move-result v0

    .line 958
    const-string v7, "show_expire"

    .line 959
    .line 960
    if-eqz v0, :cond_1b

    .line 961
    .line 962
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 963
    .line 964
    const-string v0, "exp_date"

    .line 965
    .line 966
    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object p1

    .line 970
    const-string v1, "null"

    .line 971
    .line 972
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 973
    .line 974
    .line 975
    move-result v1

    .line 976
    if-nez v1, :cond_19

    .line 977
    .line 978
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 979
    .line 980
    .line 981
    move-result v1

    .line 982
    if-nez v1, :cond_19

    .line 983
    .line 984
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 985
    .line 986
    .line 987
    move-result p1

    .line 988
    if-eqz p1, :cond_18

    .line 989
    .line 990
    goto :goto_f

    .line 991
    :cond_18
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 992
    .line 993
    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object p1

    .line 997
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object p1

    .line 1001
    goto :goto_10

    .line 1002
    :cond_19
    :goto_f
    const p1, 0x7f130150

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object p1

    .line 1009
    :goto_10
    iget-object v0, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 1010
    .line 1011
    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v0

    .line 1015
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v0

    .line 1019
    if-eqz v0, :cond_1a

    .line 1020
    .line 1021
    iget-object v0, p0, Lpe/hf/black20/ServiceStatusActivity;->W:Landroid/widget/TextView;

    .line 1022
    .line 1023
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    .line 1025
    .line 1026
    goto :goto_11

    .line 1027
    :cond_1a
    iget-object v0, p0, Lpe/hf/black20/ServiceStatusActivity;->W:Landroid/widget/TextView;

    .line 1028
    .line 1029
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    .line 1031
    .line 1032
    :goto_11
    const-string v0, "-----------expire--------------"

    .line 1033
    .line 1034
    const-string v1, "XCIPTV_TAG"

    .line 1035
    .line 1036
    invoke-static {v0, p1, v1}, La/r;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    .line 1038
    .line 1039
    goto :goto_12

    .line 1040
    :cond_1b
    const-string v0, "ezserver"

    .line 1041
    .line 1042
    invoke-static {p1, v5, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1043
    .line 1044
    .line 1045
    move-result p1

    .line 1046
    if-eqz p1, :cond_1d

    .line 1047
    .line 1048
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 1049
    .line 1050
    invoke-interface {p1, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object p1

    .line 1054
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1055
    .line 1056
    .line 1057
    move-result p1

    .line 1058
    if-eqz p1, :cond_1c

    .line 1059
    .line 1060
    new-instance p1, Lk3/j;

    .line 1061
    .line 1062
    invoke-direct {p1, p0}, Lk3/j;-><init>(Lpe/hf/black20/ServiceStatusActivity;)V

    .line 1063
    .line 1064
    .line 1065
    new-array v0, v1, [Ljava/lang/Void;

    .line 1066
    .line 1067
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1068
    .line 1069
    .line 1070
    goto :goto_12

    .line 1071
    :cond_1c
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->W:Landroid/widget/TextView;

    .line 1072
    .line 1073
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    .line 1075
    .line 1076
    :cond_1d
    :goto_12
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->V:Landroid/widget/TextView;

    .line 1077
    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1081
    .line 1082
    .line 1083
    iget-object v1, p0, Lpe/hf/black20/ServiceStatusActivity;->a0:Lh7/i;

    .line 1084
    .line 1085
    iget-object v1, v1, Lh7/i;->c:Ljava/lang/String;

    .line 1086
    .line 1087
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v1

    .line 1091
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    .line 1093
    .line 1094
    const-string v1, "\nProfile: "

    .line 1095
    .line 1096
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    .line 1098
    .line 1099
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v1

    .line 1103
    invoke-virtual {v1, v2, v3}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v1

    .line 1107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v0

    .line 1114
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    .line 1116
    .line 1117
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 1118
    .line 1119
    const-string v0, "login_type"

    .line 1120
    .line 1121
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1122
    .line 1123
    .line 1124
    move-result p1

    .line 1125
    if-eqz p1, :cond_1e

    .line 1126
    .line 1127
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 1128
    .line 1129
    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1130
    .line 1131
    .line 1132
    move-result-object p1

    .line 1133
    const-string v0, "activationXOR"

    .line 1134
    .line 1135
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1136
    .line 1137
    .line 1138
    move-result p1

    .line 1139
    if-eqz p1, :cond_1e

    .line 1140
    .line 1141
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->Y:Landroid/widget/TextView;

    .line 1142
    .line 1143
    const-string v0, "Activation Code"

    .line 1144
    .line 1145
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    .line 1147
    .line 1148
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->V:Landroid/widget/TextView;

    .line 1149
    .line 1150
    iget-object v0, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 1151
    .line 1152
    const-string v1, "xco_activation_cod"

    .line 1153
    .line 1154
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v0

    .line 1158
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v0

    .line 1162
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1163
    .line 1164
    .line 1165
    :cond_1e
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 1166
    .line 1167
    const-string v0, "epg_file_size"

    .line 1168
    .line 1169
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1170
    .line 1171
    .line 1172
    move-result p1

    .line 1173
    if-eqz p1, :cond_1f

    .line 1174
    .line 1175
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->N:Landroid/widget/TextView;

    .line 1176
    .line 1177
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1180
    .line 1181
    .line 1182
    iget-object v2, p0, Lpe/hf/black20/ServiceStatusActivity;->H:Landroid/content/SharedPreferences;

    .line 1183
    .line 1184
    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v0

    .line 1188
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    .line 1190
    .line 1191
    const-string v0, " MB (epg.xml)"

    .line 1192
    .line 1193
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v0

    .line 1200
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    .line 1202
    .line 1203
    goto :goto_13

    .line 1204
    :cond_1f
    iget-object p1, p0, Lpe/hf/black20/ServiceStatusActivity;->N:Landroid/widget/TextView;

    .line 1205
    .line 1206
    const-string v0, "0 MB (epg.xml)"

    .line 1207
    .line 1208
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    .line 1210
    .line 1211
    :goto_13
    return-void
.end method
