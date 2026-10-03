.class public final Lb7/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/CategoriesActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/CategoriesActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/p;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/p;->H:Lpe/hf/black20/CategoriesActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    iget p1, p0, Lb7/p;->G:I

    .line 2
    .line 3
    const-string v0, "TV"

    .line 4
    .line 5
    const-string v1, "ORT_SELECTED_POS"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "no"

    .line 9
    .line 10
    const-string v4, "forFavorNot"

    .line 11
    .line 12
    const-class v5, Lpe/hf/black20/ChannelListActivity;

    .line 13
    .line 14
    const-string v6, "ORT_WHICH_CAT"

    .line 15
    .line 16
    const v7, 0x7f1301a5

    .line 17
    .line 18
    .line 19
    const v8, 0x7f130021

    .line 20
    .line 21
    .line 22
    const-string v9, " "

    .line 23
    .line 24
    const v10, 0x7f13023d

    .line 25
    .line 26
    .line 27
    const/high16 v11, 0x4000000

    .line 28
    .line 29
    iget-object v12, p0, Lb7/p;->H:Lpe/hf/black20/CategoriesActivity;

    .line 30
    .line 31
    packed-switch p1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    iget-object p1, v12, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 35
    .line 36
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->N(Lpe/hf/black20/CategoriesActivity;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "CATCHUP"

    .line 47
    .line 48
    invoke-virtual {p1, v6, v0}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 49
    .line 50
    .line 51
    new-instance p1, Landroid/content/Intent;

    .line 52
    .line 53
    invoke-direct {p1, v12, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object v0, v12, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 75
    .line 76
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    sget-object v1, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v12, p1}, Lpe/hf/black20/CategoriesActivity;->c(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iget-object p1, v12, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 114
    .line 115
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->N(Lpe/hf/black20/CategoriesActivity;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_1

    .line 120
    .line 121
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string v0, "SERIES"

    .line 126
    .line 127
    invoke-virtual {p1, v6, v0}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1, v2, v1}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 135
    .line 136
    .line 137
    new-instance p1, Landroid/content/Intent;

    .line 138
    .line 139
    invoke-direct {p1, v12, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    iget-object v0, v12, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 161
    .line 162
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    sget-object v1, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 173
    .line 174
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {v12, p1}, Lpe/hf/black20/CategoriesActivity;->c(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :goto_1
    return-void

    .line 199
    :pswitch_1
    iget-object p1, v12, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 200
    .line 201
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->N(Lpe/hf/black20/CategoriesActivity;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_2

    .line 206
    .line 207
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    const-string v0, "VOD"

    .line 212
    .line 213
    invoke-virtual {p1, v6, v0}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p1, v2, v1}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 221
    .line 222
    .line 223
    new-instance p1, Landroid/content/Intent;

    .line 224
    .line 225
    invoke-direct {p1, v12, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    iget-object v0, v12, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 247
    .line 248
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    sget-object v1, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 259
    .line 260
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {v12, p1}, Lpe/hf/black20/CategoriesActivity;->c(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    :goto_2
    return-void

    .line 285
    :pswitch_2
    iget-object p1, v12, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 286
    .line 287
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->N(Lpe/hf/black20/CategoriesActivity;)Z

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    if-eqz p1, :cond_3

    .line 292
    .line 293
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p1, v6, v0}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 298
    .line 299
    .line 300
    new-instance p1, Landroid/content/Intent;

    .line 301
    .line 302
    const-class v0, Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 303
    .line 304
    invoke-direct {p1, v12, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    iget-object v0, v12, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 323
    .line 324
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    sget-object v1, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 335
    .line 336
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-virtual {v12, p1}, Lpe/hf/black20/CategoriesActivity;->c(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    :goto_3
    return-void

    .line 361
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    .line 362
    .line 363
    const-class v0, Lpe/hf/black20/SearchActivity;

    .line 364
    .line 365
    invoke-direct {p1, v12, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    .line 379
    .line 380
    const-class v0, Lpe/hf/black20/ProgramRemindersActivity;

    .line 381
    .line 382
    invoke-direct {p1, v12, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 392
    .line 393
    .line 394
    return-void

    .line 395
    :pswitch_5
    sget-object p1, Lpe/hf/black20/CategoriesActivity;->THEME:Ljava/lang/String;

    .line 396
    .line 397
    invoke-virtual {v12}, Lpe/hf/black20/CategoriesActivity;->k()V

    .line 398
    .line 399
    .line 400
    return-void

    .line 401
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    .line 402
    .line 403
    const-class v0, Lpe/hf/black20/RecordsActivity;

    .line 404
    .line 405
    invoke-direct {p1, v12, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :pswitch_7
    iget-object p1, v12, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 419
    .line 420
    const-string v0, "msg_status"

    .line 421
    .line 422
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 423
    .line 424
    .line 425
    move-result p1

    .line 426
    const v1, 0x7f130152

    .line 427
    .line 428
    .line 429
    if-eqz p1, :cond_5

    .line 430
    .line 431
    iget-object p1, v12, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 432
    .line 433
    const/4 v2, 0x0

    .line 434
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    const-string v0, "ACTIVE"

    .line 439
    .line 440
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result p1

    .line 444
    if-eqz p1, :cond_4

    .line 445
    .line 446
    new-instance p1, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    const-string v0, "Message!\n"

    .line 449
    .line 450
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    iget-object v0, v12, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 454
    .line 455
    const-string v1, "msg_txt"

    .line 456
    .line 457
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    invoke-virtual {v12, p1}, Lpe/hf/black20/CategoriesActivity;->c(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    goto :goto_4

    .line 472
    :cond_4
    invoke-virtual {v12, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    invoke-virtual {v12, p1}, Lpe/hf/black20/CategoriesActivity;->c(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    goto :goto_4

    .line 480
    :cond_5
    invoke-virtual {v12, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    invoke-virtual {v12, p1}, Lpe/hf/black20/CategoriesActivity;->c(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    :goto_4
    return-void

    .line 488
    :pswitch_8
    new-instance p1, Landroid/content/Intent;

    .line 489
    .line 490
    invoke-direct {p1, v12, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 494
    .line 495
    .line 496
    const-string v0, "yes"

    .line 497
    .line 498
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    .line 500
    .line 501
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 505
    .line 506
    .line 507
    return-void

    .line 508
    :pswitch_9
    iget-object p1, v12, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 509
    .line 510
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->N(Lpe/hf/black20/CategoriesActivity;)Z

    .line 511
    .line 512
    .line 513
    move-result p1

    .line 514
    if-eqz p1, :cond_6

    .line 515
    .line 516
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-virtual {p1, v6, v0}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 521
    .line 522
    .line 523
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    invoke-virtual {p1, v2, v1}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 528
    .line 529
    .line 530
    new-instance p1, Landroid/content/Intent;

    .line 531
    .line 532
    invoke-direct {p1, v12, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    .line 540
    .line 541
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 545
    .line 546
    .line 547
    goto :goto_5

    .line 548
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .line 552
    .line 553
    iget-object v0, v12, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 554
    .line 555
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    sget-object v1, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 566
    .line 567
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    invoke-virtual {v12, p1}, Lpe/hf/black20/CategoriesActivity;->c(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    :goto_5
    return-void

    .line 592
    :pswitch_a
    new-instance p1, Landroid/content/Intent;

    .line 593
    .line 594
    const-class v0, Lpe/hf/black20/MultiScreenActivityEXO;

    .line 595
    .line 596
    invoke-direct {p1, v12, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 606
    .line 607
    .line 608
    return-void

    .line 609
    :pswitch_b
    new-instance p1, Landroid/content/Intent;

    .line 610
    .line 611
    const-class v0, Lpe/hf/black20/UsersHistoryActivity;

    .line 612
    .line 613
    invoke-direct {p1, v12, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 623
    .line 624
    .line 625
    return-void

    .line 626
    :pswitch_c
    iget-object p1, v12, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 627
    .line 628
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->N(Lpe/hf/black20/CategoriesActivity;)Z

    .line 629
    .line 630
    .line 631
    move-result p1

    .line 632
    if-eqz p1, :cond_7

    .line 633
    .line 634
    new-instance p1, Landroid/content/Intent;

    .line 635
    .line 636
    const-class v0, Lpe/hf/black20/SettingsMenuActivity;

    .line 637
    .line 638
    invoke-direct {p1, v12, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 648
    .line 649
    .line 650
    goto :goto_6

    .line 651
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    .line 655
    .line 656
    iget-object v0, v12, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 657
    .line 658
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    sget-object v1, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 669
    .line 670
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object p1

    .line 691
    invoke-virtual {v12, p1}, Lpe/hf/black20/CategoriesActivity;->c(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    :goto_6
    return-void

    .line 695
    :pswitch_d
    iget-object p1, v12, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 696
    .line 697
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->N(Lpe/hf/black20/CategoriesActivity;)Z

    .line 698
    .line 699
    .line 700
    move-result p1

    .line 701
    if-eqz p1, :cond_8

    .line 702
    .line 703
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 704
    .line 705
    .line 706
    move-result-object p1

    .line 707
    const-string v0, "RADIO"

    .line 708
    .line 709
    invoke-virtual {p1, v6, v0}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 710
    .line 711
    .line 712
    new-instance p1, Landroid/content/Intent;

    .line 713
    .line 714
    invoke-direct {p1, v12, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    .line 722
    .line 723
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 727
    .line 728
    .line 729
    goto :goto_7

    .line 730
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 731
    .line 732
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 733
    .line 734
    .line 735
    iget-object v0, v12, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 736
    .line 737
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    sget-object v1, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 748
    .line 749
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object p1

    .line 770
    invoke-virtual {v12, p1}, Lpe/hf/black20/CategoriesActivity;->c(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    :goto_7
    return-void

    .line 774
    :pswitch_e
    iget-object p1, v12, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 775
    .line 776
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->N(Lpe/hf/black20/CategoriesActivity;)Z

    .line 777
    .line 778
    .line 779
    move-result p1

    .line 780
    if-eqz p1, :cond_9

    .line 781
    .line 782
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 783
    .line 784
    .line 785
    move-result-object p1

    .line 786
    invoke-virtual {p1, v6, v0}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 787
    .line 788
    .line 789
    new-instance p1, Landroid/content/Intent;

    .line 790
    .line 791
    invoke-direct {p1, v12, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    .line 799
    .line 800
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v12, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 804
    .line 805
    .line 806
    goto :goto_8

    .line 807
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 808
    .line 809
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 810
    .line 811
    .line 812
    iget-object v0, v12, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 813
    .line 814
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    sget-object v1, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 825
    .line 826
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v1

    .line 830
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object p1

    .line 847
    invoke-virtual {v12, p1}, Lpe/hf/black20/CategoriesActivity;->c(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    :goto_8
    return-void

    .line 851
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
