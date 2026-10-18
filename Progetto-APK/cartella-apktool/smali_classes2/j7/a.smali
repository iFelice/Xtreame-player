.class public final synthetic Lj7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/services/OTRServices;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/services/OTRServices;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lj7/a;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lj7/a;->H:Lpe/hf/black20/services/OTRServices;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lj7/a;->G:I

    .line 4
    .line 5
    const-string v2, "ACTIVE"

    .line 6
    .line 7
    const-string v3, "ORT_isUpdateUserInfoRequired"

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    const-string v6, "logurl"

    .line 12
    .line 13
    const-string v7, "las_user_data_update"

    .line 14
    .line 15
    const-string v8, "MM/dd/yyyy HH:mm:ss"

    .line 16
    .line 17
    const-string v9, "XCIPTV_TAG"

    .line 18
    .line 19
    const-string v10, "1"

    .line 20
    .line 21
    const-string v11, "announcement"

    .line 22
    .line 23
    const-string v12, "ann_status"

    .line 24
    .line 25
    const-string v13, "ann_interval"

    .line 26
    .line 27
    const-string v14, "CategoriesActivityProgramAndMessageReceiver"

    .line 28
    .line 29
    const-string v15, "ORT_isCategoriesActivityVisible"

    .line 30
    .line 31
    const-string v5, "ORT_isPlayStreamEPGActivityVisible"

    .line 32
    .line 33
    move-object/from16 v16, v2

    .line 34
    .line 35
    const-string v2, "PlayStreamEPGActivityProgramAndMessageReceiver"

    .line 36
    .line 37
    move-object/from16 v17, v10

    .line 38
    .line 39
    const-string v10, "what"

    .line 40
    .line 41
    move-object/from16 v18, v3

    .line 42
    .line 43
    const-string v3, "0"

    .line 44
    .line 45
    move-object/from16 v19, v13

    .line 46
    .line 47
    iget-object v13, v1, Lj7/a;->H:Lpe/hf/black20/services/OTRServices;

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    packed-switch v0, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    sget v0, Lpe/hf/black20/services/OTRServices;->W:I

    .line 54
    .line 55
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v0, Lc7/c;

    .line 59
    .line 60
    invoke-direct {v0, v13, v1}, Lc7/c;-><init>(Landroid/content/Context;I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-lez v1, :cond_2

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    :goto_0
    iget-object v4, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ge v1, v4, :cond_2

    .line 79
    .line 80
    invoke-static {}, Lpe/hf/black20/util/Methods;->F()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v4}, Lpe/hf/black20/util/Methods;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget-object v6, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Lh7/e;

    .line 95
    .line 96
    iget-object v6, v6, Lh7/e;->i:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_1

    .line 103
    .line 104
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const-string v6, "ORT_lastProgramReminderID"

    .line 109
    .line 110
    invoke-virtual {v4, v6, v3}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    iget-object v4, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Lh7/e;

    .line 121
    .line 122
    iget-object v4, v4, Lh7/e;->a:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-nez v3, :cond_3

    .line 129
    .line 130
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iget-object v4, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    check-cast v4, Lh7/e;

    .line 141
    .line 142
    iget-object v4, v4, Lh7/e;->a:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v3, v6, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 145
    .line 146
    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    iget-object v4, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    check-cast v4, Lh7/e;

    .line 159
    .line 160
    iget-object v4, v4, Lh7/e;->c:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v4, " - "

    .line 166
    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object v4, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    check-cast v4, Lh7/e;

    .line 177
    .line 178
    iget-object v4, v4, Lh7/e;->d:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    iget-object v4, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    check-cast v4, Lh7/e;

    .line 194
    .line 195
    iget-object v4, v4, Lh7/e;->a:Ljava/lang/String;

    .line 196
    .line 197
    const-string v6, "notified"

    .line 198
    .line 199
    invoke-virtual {v0, v4, v6}, Lc7/c;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    const-string v4, "ORT_program_reminder_program_details"

    .line 207
    .line 208
    invoke-virtual {v0, v4, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 209
    .line 210
    .line 211
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iget-object v4, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    check-cast v4, Lh7/e;

    .line 222
    .line 223
    iget-object v4, v4, Lh7/e;->l:Ljava/lang/String;

    .line 224
    .line 225
    const-string v6, "ORT_program_reminder_Direct_source"

    .line 226
    .line 227
    invoke-virtual {v0, v6, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 228
    .line 229
    .line 230
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    iget-object v4, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    check-cast v4, Lh7/e;

    .line 241
    .line 242
    iget-object v4, v4, Lh7/e;->f:Ljava/lang/String;

    .line 243
    .line 244
    const-string v6, "ORT_program_reminder_Stream_id"

    .line 245
    .line 246
    invoke-virtual {v0, v6, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 247
    .line 248
    .line 249
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    iget-object v4, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    check-cast v4, Lh7/e;

    .line 260
    .line 261
    iget-object v4, v4, Lh7/e;->c:Ljava/lang/String;

    .line 262
    .line 263
    const-string v6, "ORT_program_reminder_Channel_name"

    .line 264
    .line 265
    invoke-virtual {v0, v6, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 266
    .line 267
    .line 268
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    iget-object v4, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 273
    .line 274
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    check-cast v4, Lh7/e;

    .line 279
    .line 280
    iget-object v4, v4, Lh7/e;->g:Ljava/lang/String;

    .line 281
    .line 282
    const-string v6, "ORT_program_reminder_Category_id"

    .line 283
    .line 284
    invoke-virtual {v0, v6, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 285
    .line 286
    .line 287
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    iget-object v4, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 292
    .line 293
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    check-cast v4, Lh7/e;

    .line 298
    .line 299
    iget-object v4, v4, Lh7/e;->h:Ljava/lang/String;

    .line 300
    .line 301
    const-string v6, "ORT_program_reminder_Category_name"

    .line 302
    .line 303
    invoke-virtual {v0, v6, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 304
    .line 305
    .line 306
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    const/4 v4, 0x0

    .line 311
    invoke-virtual {v0, v5, v4}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    const-string v4, "Starts at: "

    .line 316
    .line 317
    const-string v5, "time"

    .line 318
    .line 319
    const-string v6, "desc"

    .line 320
    .line 321
    const v7, 0x7f13016c

    .line 322
    .line 323
    .line 324
    const-string v8, "title"

    .line 325
    .line 326
    const-string v9, "pr"

    .line 327
    .line 328
    if-eqz v0, :cond_0

    .line 329
    .line 330
    new-instance v0, Landroid/content/Intent;

    .line 331
    .line 332
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v13, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    .line 347
    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-object v3, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    check-cast v1, Lh7/e;

    .line 360
    .line 361
    iget-object v1, v1, Lh7/e;->i:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    .line 372
    .line 373
    invoke-static {v13}, Li0/c;->a(Landroid/content/Context;)Li0/c;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v1, v0}, Li0/c;->c(Landroid/content/Intent;)V

    .line 378
    .line 379
    .line 380
    goto :goto_1

    .line 381
    :cond_0
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    const/4 v2, 0x0

    .line 386
    invoke-virtual {v0, v15, v2}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    if-eqz v0, :cond_3

    .line 391
    .line 392
    new-instance v0, Landroid/content/Intent;

    .line 393
    .line 394
    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v13, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    .line 409
    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-object v3, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 416
    .line 417
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    check-cast v1, Lh7/e;

    .line 422
    .line 423
    iget-object v1, v1, Lh7/e;->i:Ljava/lang/String;

    .line 424
    .line 425
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    .line 434
    .line 435
    invoke-static {v13}, Li0/c;->a(Landroid/content/Context;)Li0/c;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-virtual {v1, v0}, Li0/c;->c(Landroid/content/Intent;)V

    .line 440
    .line 441
    .line 442
    goto :goto_1

    .line 443
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 444
    .line 445
    goto/16 :goto_0

    .line 446
    .line 447
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 448
    .line 449
    .line 450
    :cond_3
    :goto_1
    return-void

    .line 451
    :pswitch_0
    sget v0, Lpe/hf/black20/services/OTRServices;->W:I

    .line 452
    .line 453
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    const-string v0, "ann_disappear"

    .line 457
    .line 458
    const-string v1, "ann_expire"

    .line 459
    .line 460
    move-object/from16 v20, v14

    .line 461
    .line 462
    const-string v14, "msg_expire"

    .line 463
    .line 464
    move-object/from16 v21, v15

    .line 465
    .line 466
    const-string v15, "msg_status"

    .line 467
    .line 468
    move-object/from16 v22, v10

    .line 469
    .line 470
    const-string v10, "msg_txt"

    .line 471
    .line 472
    move-object/from16 v23, v2

    .line 473
    .line 474
    const-string v2, "success"

    .line 475
    .line 476
    move-object/from16 v24, v5

    .line 477
    .line 478
    const-string v5, "----updateUserInfo------running"

    .line 479
    .line 480
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    invoke-static {v8}, LZ6/b;->a(Ljava/lang/String;)LZ6/b;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    new-instance v8, Ljava/util/Date;

    .line 488
    .line 489
    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 490
    .line 491
    .line 492
    iget-object v5, v5, LZ6/b;->G:LZ6/C;

    .line 493
    .line 494
    invoke-virtual {v5, v8}, LZ6/C;->c(Ljava/util/Date;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v5

    .line 498
    iget-object v8, v13, Lpe/hf/black20/services/OTRServices;->G:Landroid/content/SharedPreferences;

    .line 499
    .line 500
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 501
    .line 502
    .line 503
    move-result-object v8

    .line 504
    invoke-interface {v8, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 505
    .line 506
    .line 507
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 508
    .line 509
    .line 510
    const/16 v5, 0x7d1

    .line 511
    .line 512
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v5

    .line 516
    const v7, 0x7f130021

    .line 517
    .line 518
    .line 519
    move-object/from16 v25, v9

    .line 520
    .line 521
    invoke-virtual {v13, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v9

    .line 525
    new-instance v7, Lc7/a;

    .line 526
    .line 527
    move-object/from16 v26, v0

    .line 528
    .line 529
    const/4 v0, 0x0

    .line 530
    invoke-direct {v7, v13, v0}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 531
    .line 532
    .line 533
    const-string v0, "ORT_PROFILE"

    .line 534
    .line 535
    move-object/from16 v27, v1

    .line 536
    .line 537
    const-string v1, "Default (XC)"

    .line 538
    .line 539
    invoke-static {v0, v1, v7}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    if-eqz v0, :cond_7

    .line 544
    .line 545
    iget-object v0, v0, Lh7/i;->c:Ljava/lang/String;

    .line 546
    .line 547
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    const-string v1, "ORT_WHICH_PANEL"

    .line 552
    .line 553
    const-string v7, "xtreamcodes"

    .line 554
    .line 555
    move-object/from16 v28, v0

    .line 556
    .line 557
    const-string v0, "m3u"

    .line 558
    .line 559
    invoke-static {v1, v7, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    if-eqz v0, :cond_4

    .line 564
    .line 565
    const-string v0, "M3U"

    .line 566
    .line 567
    goto :goto_2

    .line 568
    :cond_4
    move-object/from16 v0, v28

    .line 569
    .line 570
    :goto_2
    new-instance v1, Lorg/json/JSONObject;

    .line 571
    .line 572
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 573
    .line 574
    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .line 579
    .line 580
    iget-object v7, v13, Lpe/hf/black20/services/OTRServices;->G:Landroid/content/SharedPreferences;

    .line 581
    .line 582
    move-object/from16 v28, v12

    .line 583
    .line 584
    const/4 v12, 0x0

    .line 585
    invoke-interface {v7, v6, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v6

    .line 589
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    const-string v6, "ApiIPTV.php?tag=connv2&appid="

    .line 593
    .line 594
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    iget-object v6, v13, Lpe/hf/black20/services/OTRServices;->G:Landroid/content/SharedPreferences;

    .line 598
    .line 599
    const-string v7, "appid"

    .line 600
    .line 601
    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v6

    .line 605
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    const-string v6, "&version="

    .line 609
    .line 610
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    sget-object v6, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 614
    .line 615
    const v7, 0x7f130021

    .line 616
    .line 617
    .line 618
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v6

    .line 622
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    const-string v6, "-7.0-"

    .line 626
    .line 627
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    const-string v5, "&device_type=Android&p=pe.hf.black20&an="

    .line 634
    .line 635
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    const-string v5, "&customerid="

    .line 642
    .line 643
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    iget-object v5, v13, Lpe/hf/black20/services/OTRServices;->G:Landroid/content/SharedPreferences;

    .line 647
    .line 648
    const-string v6, "customerid"

    .line 649
    .line 650
    const/4 v7, 0x0

    .line 651
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v5

    .line 655
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    const-string v5, "&userid="

    .line 659
    .line 660
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    const-string v0, "&online="

    .line 667
    .line 668
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    const-string v5, "ORT_USER_ONLINE_STATUS"

    .line 676
    .line 677
    const-string v6, "no"

    .line 678
    .line 679
    invoke-virtual {v0, v5, v6}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    const-string v0, "&did="

    .line 687
    .line 688
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->G:Landroid/content/SharedPreferences;

    .line 692
    .line 693
    const-string v7, "did"

    .line 694
    .line 695
    const/4 v9, 0x0

    .line 696
    invoke-static {v0, v7, v9, v1}, Lcom/google/protobuf/U2;->h(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    const-string v1, " "

    .line 701
    .line 702
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    new-instance v1, LF2/G;

    .line 707
    .line 708
    const/4 v4, 0x4

    .line 709
    invoke-direct {v1, v4}, LF2/G;-><init>(I)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v1, v0}, LF2/G;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    if-eqz v0, :cond_7

    .line 717
    .line 718
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 719
    .line 720
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    const/4 v1, 0x0

    .line 727
    iput-object v1, v13, Lpe/hf/black20/services/OTRServices;->O:Lorg/json/JSONObject;

    .line 728
    .line 729
    new-instance v1, Lorg/json/JSONObject;

    .line 730
    .line 731
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    iput-object v1, v13, Lpe/hf/black20/services/OTRServices;->O:Lorg/json/JSONObject;

    .line 735
    .line 736
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    iput-object v0, v13, Lpe/hf/black20/services/OTRServices;->P:Ljava/lang/String;

    .line 741
    .line 742
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 743
    .line 744
    .line 745
    move-result v0

    .line 746
    if-nez v0, :cond_7

    .line 747
    .line 748
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->O:Lorg/json/JSONObject;

    .line 749
    .line 750
    const-string v1, "message"

    .line 751
    .line 752
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    iput-object v0, v13, Lpe/hf/black20/services/OTRServices;->Q:Ljava/lang/String;

    .line 757
    .line 758
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->O:Lorg/json/JSONObject;

    .line 759
    .line 760
    const-string v1, "msgid"

    .line 761
    .line 762
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    iput-object v0, v13, Lpe/hf/black20/services/OTRServices;->R:Ljava/lang/String;

    .line 767
    .line 768
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->O:Lorg/json/JSONObject;

    .line 769
    .line 770
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    iput-object v0, v13, Lpe/hf/black20/services/OTRServices;->S:Ljava/lang/String;

    .line 775
    .line 776
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->O:Lorg/json/JSONObject;

    .line 777
    .line 778
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    iput-object v0, v13, Lpe/hf/black20/services/OTRServices;->T:Ljava/lang/String;

    .line 783
    .line 784
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->Q:Ljava/lang/String;

    .line 785
    .line 786
    invoke-interface {v8, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 787
    .line 788
    .line 789
    const-string v0, "msg_id"

    .line 790
    .line 791
    iget-object v1, v13, Lpe/hf/black20/services/OTRServices;->R:Ljava/lang/String;

    .line 792
    .line 793
    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 794
    .line 795
    .line 796
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->S:Ljava/lang/String;

    .line 797
    .line 798
    invoke-interface {v8, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 799
    .line 800
    .line 801
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->T:Ljava/lang/String;

    .line 802
    .line 803
    invoke-interface {v8, v14, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 804
    .line 805
    .line 806
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->O:Lorg/json/JSONObject;

    .line 807
    .line 808
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    invoke-interface {v8, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 813
    .line 814
    .line 815
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->O:Lorg/json/JSONObject;

    .line 816
    .line 817
    move-object/from16 v9, v28

    .line 818
    .line 819
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    invoke-interface {v8, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 824
    .line 825
    .line 826
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->O:Lorg/json/JSONObject;

    .line 827
    .line 828
    move-object/from16 v1, v27

    .line 829
    .line 830
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    invoke-interface {v8, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 835
    .line 836
    .line 837
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->O:Lorg/json/JSONObject;

    .line 838
    .line 839
    move-object/from16 v12, v19

    .line 840
    .line 841
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    invoke-interface {v8, v12, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 846
    .line 847
    .line 848
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->O:Lorg/json/JSONObject;

    .line 849
    .line 850
    move-object/from16 v1, v26

    .line 851
    .line 852
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    invoke-interface {v8, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 857
    .line 858
    .line 859
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 860
    .line 861
    .line 862
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 863
    .line 864
    .line 865
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    move-object/from16 v14, v18

    .line 870
    .line 871
    const/4 v1, 0x0

    .line 872
    invoke-virtual {v0, v14, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 873
    .line 874
    .line 875
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    invoke-virtual {v0, v5, v6}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 880
    .line 881
    .line 882
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->P:Ljava/lang/String;

    .line 883
    .line 884
    move-object/from16 v5, v17

    .line 885
    .line 886
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    move-result v0

    .line 890
    if-eqz v0, :cond_7

    .line 891
    .line 892
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->S:Ljava/lang/String;

    .line 893
    .line 894
    move-object/from16 v15, v16

    .line 895
    .line 896
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    const-string v1, "msg"

    .line 901
    .line 902
    if-eqz v0, :cond_6

    .line 903
    .line 904
    :try_start_1
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 905
    .line 906
    .line 907
    move-result-object v0

    .line 908
    move-object/from16 v3, v24

    .line 909
    .line 910
    const/4 v4, 0x0

    .line 911
    invoke-virtual {v0, v3, v4}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 912
    .line 913
    .line 914
    move-result v0

    .line 915
    if-eqz v0, :cond_5

    .line 916
    .line 917
    new-instance v0, Landroid/content/Intent;

    .line 918
    .line 919
    move-object/from16 v3, v23

    .line 920
    .line 921
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 922
    .line 923
    .line 924
    move-object/from16 v4, v22

    .line 925
    .line 926
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    .line 928
    .line 929
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    .line 931
    .line 932
    iget-object v1, v13, Lpe/hf/black20/services/OTRServices;->Q:Ljava/lang/String;

    .line 933
    .line 934
    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    .line 936
    .line 937
    invoke-static {v13}, Li0/c;->a(Landroid/content/Context;)Li0/c;

    .line 938
    .line 939
    .line 940
    move-result-object v1

    .line 941
    invoke-virtual {v1, v0}, Li0/c;->c(Landroid/content/Intent;)V

    .line 942
    .line 943
    .line 944
    goto :goto_4

    .line 945
    :catch_0
    move-exception v0

    .line 946
    goto :goto_3

    .line 947
    :cond_5
    move-object/from16 v4, v22

    .line 948
    .line 949
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 950
    .line 951
    .line 952
    move-result-object v0

    .line 953
    move-object/from16 v3, v21

    .line 954
    .line 955
    const/4 v6, 0x0

    .line 956
    invoke-virtual {v0, v3, v6}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 957
    .line 958
    .line 959
    move-result v0

    .line 960
    if-eqz v0, :cond_7

    .line 961
    .line 962
    new-instance v0, Landroid/content/Intent;

    .line 963
    .line 964
    move-object/from16 v6, v20

    .line 965
    .line 966
    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    .line 971
    .line 972
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    .line 974
    .line 975
    iget-object v1, v13, Lpe/hf/black20/services/OTRServices;->Q:Ljava/lang/String;

    .line 976
    .line 977
    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    .line 979
    .line 980
    invoke-static {v13}, Li0/c;->a(Landroid/content/Context;)Li0/c;

    .line 981
    .line 982
    .line 983
    move-result-object v1

    .line 984
    invoke-virtual {v1, v0}, Li0/c;->c(Landroid/content/Intent;)V

    .line 985
    .line 986
    .line 987
    goto :goto_4

    .line 988
    :cond_6
    move-object/from16 v6, v20

    .line 989
    .line 990
    move-object/from16 v4, v22

    .line 991
    .line 992
    new-instance v0, Landroid/content/Intent;

    .line 993
    .line 994
    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    .line 1002
    .line 1003
    const-string v1, "No Messages!"

    .line 1004
    .line 1005
    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    .line 1007
    .line 1008
    invoke-static {v13}, Li0/c;->a(Landroid/content/Context;)Li0/c;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v1

    .line 1012
    invoke-virtual {v1, v0}, Li0/c;->c(Landroid/content/Intent;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1013
    .line 1014
    .line 1015
    goto :goto_4

    .line 1016
    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    move-object/from16 v2, v25

    .line 1021
    .line 1022
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    .line 1024
    .line 1025
    :cond_7
    :goto_4
    return-void

    .line 1026
    :pswitch_1
    move-object v0, v2

    .line 1027
    move-object v2, v9

    .line 1028
    move-object v9, v12

    .line 1029
    move-object/from16 v15, v16

    .line 1030
    .line 1031
    move-object/from16 v5, v17

    .line 1032
    .line 1033
    move-object/from16 v14, v18

    .line 1034
    .line 1035
    move-object/from16 v12, v19

    .line 1036
    .line 1037
    sget v16, Lpe/hf/black20/services/OTRServices;->W:I

    .line 1038
    .line 1039
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1040
    .line 1041
    .line 1042
    sget-object v1, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 1043
    .line 1044
    move-object/from16 v25, v2

    .line 1045
    .line 1046
    const-string v2, "pe.hf.black20"

    .line 1047
    .line 1048
    move-object/from16 v22, v10

    .line 1049
    .line 1050
    const/4 v10, 0x0

    .line 1051
    invoke-virtual {v1, v2, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v1

    .line 1055
    iput-object v1, v13, Lpe/hf/black20/services/OTRServices;->G:Landroid/content/SharedPreferences;

    .line 1056
    .line 1057
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v1

    .line 1061
    const-string v2, "ORT_isItRequiresToRunProgramReminderService"

    .line 1062
    .line 1063
    const/4 v10, 0x1

    .line 1064
    invoke-virtual {v1, v2, v10}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 1065
    .line 1066
    .line 1067
    move-result v1

    .line 1068
    if-eqz v1, :cond_d

    .line 1069
    .line 1070
    sget-object v1, Lpe/hf/black20/util/Methods;->a:Landroid/content/SharedPreferences;

    .line 1071
    .line 1072
    new-instance v1, Ljava/util/ArrayList;

    .line 1073
    .line 1074
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    .line 1076
    .line 1077
    move-object/from16 v23, v0

    .line 1078
    .line 1079
    new-instance v0, Lc7/c;

    .line 1080
    .line 1081
    invoke-direct {v0, v13, v10}, Lc7/c;-><init>(Landroid/content/Context;I)V

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1085
    .line 1086
    .line 1087
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v1

    .line 1091
    const-string v10, "ORT_PROFILE_ID"

    .line 1092
    .line 1093
    invoke-virtual {v1, v10, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v1

    .line 1097
    invoke-virtual {v0, v1}, Lc7/c;->a0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v0

    .line 1101
    move-object/from16 v17, v5

    .line 1102
    .line 1103
    const/4 v1, 0x0

    .line 1104
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1105
    .line 1106
    .line 1107
    move-result v5

    .line 1108
    if-ge v1, v5, :cond_b

    .line 1109
    .line 1110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v5

    .line 1114
    check-cast v5, Lh7/e;

    .line 1115
    .line 1116
    iget-object v5, v5, Lh7/e;->k:Ljava/lang/String;

    .line 1117
    .line 1118
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v5

    .line 1122
    move-object/from16 v19, v12

    .line 1123
    .line 1124
    const-string v12, "new"

    .line 1125
    .line 1126
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1127
    .line 1128
    .line 1129
    move-result v5

    .line 1130
    if-eqz v5, :cond_a

    .line 1131
    .line 1132
    invoke-static {}, Lpe/hf/black20/util/Methods;->F()Ljava/lang/String;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v5

    .line 1136
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v5

    .line 1140
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v12

    .line 1144
    check-cast v12, Lh7/e;

    .line 1145
    .line 1146
    iget-object v12, v12, Lh7/e;->i:Ljava/lang/String;

    .line 1147
    .line 1148
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1149
    .line 1150
    .line 1151
    move-result v5

    .line 1152
    if-eqz v5, :cond_8

    .line 1153
    .line 1154
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v0

    .line 1158
    const/4 v1, 0x1

    .line 1159
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 1160
    .line 1161
    .line 1162
    goto :goto_6

    .line 1163
    :cond_8
    invoke-static {}, Lpe/hf/black20/util/Methods;->H()Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v5

    .line 1167
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v12

    .line 1171
    check-cast v12, Lh7/e;

    .line 1172
    .line 1173
    iget-object v12, v12, Lh7/e;->i:Ljava/lang/String;

    .line 1174
    .line 1175
    invoke-static {v5, v12}, Lpe/hf/black20/util/Methods;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v5

    .line 1179
    const-string v12, "smaller"

    .line 1180
    .line 1181
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1182
    .line 1183
    .line 1184
    move-result v5

    .line 1185
    if-eqz v5, :cond_a

    .line 1186
    .line 1187
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v0

    .line 1191
    const/4 v1, 0x1

    .line 1192
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 1193
    .line 1194
    .line 1195
    :goto_6
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 1196
    .line 1197
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1198
    .line 1199
    .line 1200
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v0

    .line 1204
    invoke-virtual {v0, v10, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v0

    .line 1208
    iget-object v1, v13, Lpe/hf/black20/services/OTRServices;->H:Lc7/c;

    .line 1209
    .line 1210
    invoke-virtual {v1, v0}, Lc7/c;->a0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v0

    .line 1214
    iput-object v0, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 1215
    .line 1216
    const/4 v0, 0x0

    .line 1217
    :goto_7
    iget-object v2, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 1218
    .line 1219
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1220
    .line 1221
    .line 1222
    move-result v2

    .line 1223
    if-ge v0, v2, :cond_c

    .line 1224
    .line 1225
    invoke-static {}, Lpe/hf/black20/util/Methods;->F()Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v2

    .line 1229
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v2

    .line 1233
    iget-object v4, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 1234
    .line 1235
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v4

    .line 1239
    check-cast v4, Lh7/e;

    .line 1240
    .line 1241
    iget-object v4, v4, Lh7/e;->i:Ljava/lang/String;

    .line 1242
    .line 1243
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1244
    .line 1245
    .line 1246
    move-result v2

    .line 1247
    if-eqz v2, :cond_9

    .line 1248
    .line 1249
    iget-object v2, v13, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 1250
    .line 1251
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v2

    .line 1255
    check-cast v2, Lh7/e;

    .line 1256
    .line 1257
    iget-object v2, v2, Lh7/e;->a:Ljava/lang/String;

    .line 1258
    .line 1259
    const-string v4, "active"

    .line 1260
    .line 1261
    invoke-virtual {v1, v2, v4}, Lc7/c;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    .line 1263
    .line 1264
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 1265
    .line 1266
    goto :goto_7

    .line 1267
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 1268
    .line 1269
    move-object/from16 v12, v19

    .line 1270
    .line 1271
    goto/16 :goto_5

    .line 1272
    .line 1273
    :cond_b
    move-object/from16 v19, v12

    .line 1274
    .line 1275
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v0

    .line 1279
    const/4 v1, 0x0

    .line 1280
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 1281
    .line 1282
    .line 1283
    :cond_c
    new-instance v0, Ljava/lang/Thread;

    .line 1284
    .line 1285
    new-instance v1, Lj7/a;

    .line 1286
    .line 1287
    const/4 v2, 0x2

    .line 1288
    invoke-direct {v1, v13, v2}, Lj7/a;-><init>(Lpe/hf/black20/services/OTRServices;I)V

    .line 1289
    .line 1290
    .line 1291
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1295
    .line 1296
    .line 1297
    goto :goto_8

    .line 1298
    :cond_d
    move-object/from16 v23, v0

    .line 1299
    .line 1300
    move-object/from16 v17, v5

    .line 1301
    .line 1302
    move-object/from16 v19, v12

    .line 1303
    .line 1304
    :goto_8
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v0

    .line 1308
    const/4 v1, 0x1

    .line 1309
    invoke-virtual {v0, v14, v1}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 1310
    .line 1311
    .line 1312
    move-result v0

    .line 1313
    if-eqz v0, :cond_11

    .line 1314
    .line 1315
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v0

    .line 1319
    const/4 v1, 0x0

    .line 1320
    invoke-virtual {v0, v14, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 1321
    .line 1322
    .line 1323
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->G:Landroid/content/SharedPreferences;

    .line 1324
    .line 1325
    const/4 v1, 0x0

    .line 1326
    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v0

    .line 1330
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1331
    .line 1332
    .line 1333
    move-result v0

    .line 1334
    if-nez v0, :cond_11

    .line 1335
    .line 1336
    invoke-static {v8}, LZ6/b;->a(Ljava/lang/String;)LZ6/b;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v0

    .line 1340
    new-instance v1, Ljava/util/Date;

    .line 1341
    .line 1342
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1343
    .line 1344
    .line 1345
    iget-object v2, v0, LZ6/b;->G:LZ6/C;

    .line 1346
    .line 1347
    invoke-virtual {v2, v1}, LZ6/C;->c(Ljava/util/Date;)Ljava/lang/String;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v1

    .line 1351
    iget-object v2, v13, Lpe/hf/black20/services/OTRServices;->G:Landroid/content/SharedPreferences;

    .line 1352
    .line 1353
    invoke-interface {v2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1354
    .line 1355
    .line 1356
    move-result v2

    .line 1357
    if-eqz v2, :cond_10

    .line 1358
    .line 1359
    :try_start_2
    invoke-virtual {v0, v1}, LZ6/b;->b(Ljava/lang/String;)Ljava/util/Date;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v12

    .line 1363
    iget-object v1, v13, Lpe/hf/black20/services/OTRServices;->G:Landroid/content/SharedPreferences;

    .line 1364
    .line 1365
    const/4 v2, 0x0

    .line 1366
    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v1

    .line 1370
    invoke-virtual {v0, v1}, LZ6/b;->b(Ljava/lang/String;)Ljava/util/Date;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1374
    goto :goto_9

    .line 1375
    :catch_1
    nop

    .line 1376
    const/4 v0, 0x0

    .line 1377
    const/4 v12, 0x0

    .line 1378
    :goto_9
    if-nez v12, :cond_f

    .line 1379
    .line 1380
    if-eqz v0, :cond_e

    .line 1381
    .line 1382
    goto :goto_a

    .line 1383
    :cond_e
    const/4 v2, 0x1

    .line 1384
    goto :goto_b

    .line 1385
    :cond_f
    :goto_a
    sget-object v1, Lpe/hf/black20/util/Methods;->a:Landroid/content/SharedPreferences;

    .line 1386
    .line 1387
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    .line 1388
    .line 1389
    .line 1390
    move-result-wide v1

    .line 1391
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 1392
    .line 1393
    .line 1394
    move-result-wide v3

    .line 1395
    sub-long/2addr v1, v3

    .line 1396
    const-wide/32 v3, 0x5265c00

    .line 1397
    .line 1398
    .line 1399
    div-long v5, v1, v3

    .line 1400
    .line 1401
    rem-long/2addr v1, v3

    .line 1402
    const-wide/32 v3, 0x36ee80

    .line 1403
    .line 1404
    .line 1405
    div-long v7, v1, v3

    .line 1406
    .line 1407
    rem-long/2addr v1, v3

    .line 1408
    const-wide/32 v3, 0xea60

    .line 1409
    .line 1410
    .line 1411
    div-long/2addr v1, v3

    .line 1412
    const-wide/16 v3, 0x5a0

    .line 1413
    .line 1414
    mul-long v5, v5, v3

    .line 1415
    .line 1416
    const-wide/16 v3, 0x3c

    .line 1417
    .line 1418
    mul-long v7, v7, v3

    .line 1419
    .line 1420
    add-long/2addr v7, v1

    .line 1421
    add-long/2addr v7, v5

    .line 1422
    long-to-int v0, v7

    .line 1423
    const/4 v1, 0x5

    .line 1424
    if-le v0, v1, :cond_e

    .line 1425
    .line 1426
    new-instance v0, Ljava/lang/Thread;

    .line 1427
    .line 1428
    new-instance v1, Lj7/a;

    .line 1429
    .line 1430
    const/4 v2, 0x1

    .line 1431
    invoke-direct {v1, v13, v2}, Lj7/a;-><init>(Lpe/hf/black20/services/OTRServices;I)V

    .line 1432
    .line 1433
    .line 1434
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1438
    .line 1439
    .line 1440
    goto :goto_b

    .line 1441
    :cond_10
    const/4 v2, 0x1

    .line 1442
    new-instance v0, Ljava/lang/Thread;

    .line 1443
    .line 1444
    new-instance v1, Lj7/a;

    .line 1445
    .line 1446
    invoke-direct {v1, v13, v2}, Lj7/a;-><init>(Lpe/hf/black20/services/OTRServices;I)V

    .line 1447
    .line 1448
    .line 1449
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1453
    .line 1454
    .line 1455
    :cond_11
    :goto_b
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->G:Landroid/content/SharedPreferences;

    .line 1456
    .line 1457
    invoke-interface {v0, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1458
    .line 1459
    .line 1460
    move-result v0

    .line 1461
    if-eqz v0, :cond_13

    .line 1462
    .line 1463
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->G:Landroid/content/SharedPreferences;

    .line 1464
    .line 1465
    const/4 v1, 0x0

    .line 1466
    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v0

    .line 1470
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1471
    .line 1472
    .line 1473
    move-result v0

    .line 1474
    if-eqz v0, :cond_13

    .line 1475
    .line 1476
    iget-object v0, v13, Lpe/hf/black20/services/OTRServices;->G:Landroid/content/SharedPreferences;

    .line 1477
    .line 1478
    move-object/from16 v1, v17

    .line 1479
    .line 1480
    move-object/from16 v2, v19

    .line 1481
    .line 1482
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v0

    .line 1486
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1487
    .line 1488
    .line 1489
    move-result v0

    .line 1490
    iput v0, v13, Lpe/hf/black20/services/OTRServices;->M:I

    .line 1491
    .line 1492
    iget v0, v13, Lpe/hf/black20/services/OTRServices;->N:I

    .line 1493
    .line 1494
    iget v1, v13, Lpe/hf/black20/services/OTRServices;->L:I

    .line 1495
    .line 1496
    add-int/2addr v0, v1

    .line 1497
    iput v0, v13, Lpe/hf/black20/services/OTRServices;->N:I

    .line 1498
    .line 1499
    iget-boolean v0, v13, Lpe/hf/black20/services/OTRServices;->V:Z

    .line 1500
    .line 1501
    if-nez v0, :cond_12

    .line 1502
    .line 1503
    const/4 v0, 0x1

    .line 1504
    iput-boolean v0, v13, Lpe/hf/black20/services/OTRServices;->V:Z

    .line 1505
    .line 1506
    new-instance v0, Landroid/content/Intent;

    .line 1507
    .line 1508
    move-object/from16 v1, v23

    .line 1509
    .line 1510
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1511
    .line 1512
    .line 1513
    const-string v1, "ann"

    .line 1514
    .line 1515
    move-object/from16 v2, v22

    .line 1516
    .line 1517
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1518
    .line 1519
    .line 1520
    sget-object v1, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 1521
    .line 1522
    invoke-static {v1}, Li0/c;->a(Landroid/content/Context;)Li0/c;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v1

    .line 1526
    invoke-virtual {v1, v0}, Li0/c;->c(Landroid/content/Intent;)V

    .line 1527
    .line 1528
    .line 1529
    :cond_12
    iget v0, v13, Lpe/hf/black20/services/OTRServices;->N:I

    .line 1530
    .line 1531
    iget v1, v13, Lpe/hf/black20/services/OTRServices;->M:I

    .line 1532
    .line 1533
    const v2, 0xea60

    .line 1534
    .line 1535
    .line 1536
    mul-int v1, v1, v2

    .line 1537
    .line 1538
    if-le v0, v1, :cond_13

    .line 1539
    .line 1540
    const/4 v0, 0x0

    .line 1541
    iput-boolean v0, v13, Lpe/hf/black20/services/OTRServices;->V:Z

    .line 1542
    .line 1543
    iput v0, v13, Lpe/hf/black20/services/OTRServices;->N:I

    .line 1544
    .line 1545
    :cond_13
    sget-object v0, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 1546
    .line 1547
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->X(Landroid/content/Context;)V

    .line 1548
    .line 1549
    .line 1550
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v0

    .line 1554
    const-string v1, "ORT_PROCESS_STATUS"

    .line 1555
    .line 1556
    invoke-virtual {v0, v1}, LQ5/a;->b(Ljava/lang/String;)I

    .line 1557
    .line 1558
    .line 1559
    move-result v0

    .line 1560
    if-nez v0, :cond_14

    .line 1561
    .line 1562
    invoke-static {}, Lpe/hf/black20/util/Methods;->O()Z

    .line 1563
    .line 1564
    .line 1565
    move-result v0

    .line 1566
    if-eqz v0, :cond_14

    .line 1567
    .line 1568
    const-string v0, "--------------OTRServices Deleting epg.xml"

    .line 1569
    .line 1570
    move-object/from16 v1, v25

    .line 1571
    .line 1572
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    .line 1574
    .line 1575
    invoke-static {}, Lpe/hf/black20/util/Methods;->B()V

    .line 1576
    .line 1577
    .line 1578
    :cond_14
    return-void

    .line 1579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
