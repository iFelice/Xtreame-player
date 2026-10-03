.class public final LW4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, LW4/a;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LW4/a;->J:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, LW4/a;->H:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, LW4/a;->I:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget p1, p0, LW4/a;->G:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "Name is empty"

    .line 6
    .line 7
    iget-object v3, p0, LW4/a;->I:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, LW4/a;->J:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, p0, LW4/a;->H:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v5, Landroid/widget/Button;

    .line 17
    .line 18
    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    .line 20
    .line 21
    check-cast v4, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 22
    .line 23
    iget-object p1, v4, Lpe/hf/black20/speedtest/SpeedTestActivity;->H:Lk7/j;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    new-instance p1, Lk7/j;

    .line 28
    .line 29
    invoke-direct {p1}, Lk7/j;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, v4, Lpe/hf/black20/speedtest/SpeedTestActivity;->H:Lk7/j;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 35
    .line 36
    .line 37
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    .line 38
    .line 39
    new-instance v0, Ln2/t;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Ln2/t;-><init>(LW4/a;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_0
    check-cast v5, Ljava/lang/String;

    .line 52
    .line 53
    const-string p1, "no"

    .line 54
    .line 55
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    check-cast v4, Lpe/hf/black20/UsersHistoryActivity;

    .line 62
    .line 63
    move-object v9, v3

    .line 64
    check-cast v9, Ljava/lang/String;

    .line 65
    .line 66
    iget-object p1, v4, Lpe/hf/black20/UsersHistoryActivity;->G:Lpe/hf/black20/UsersHistoryActivity;

    .line 67
    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const v2, 0x7f0e0131

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 80
    .line 81
    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 93
    .line 94
    const-string v3, "#99000000"

    .line 95
    .line 96
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 101
    .line 102
    .line 103
    const v3, 0x7f0b0590

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v2, p1, v0, v3}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Landroid/widget/TextView;

    .line 111
    .line 112
    const v1, 0x7f0b0560

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Landroid/widget/TextView;

    .line 120
    .line 121
    const v1, 0x7f0b01d0

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    move-object v7, v1

    .line 129
    check-cast v7, Landroid/widget/EditText;

    .line 130
    .line 131
    const v1, 0x7f0b01ca

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    move-object v8, v1

    .line 139
    check-cast v8, Landroid/widget/EditText;

    .line 140
    .line 141
    const v1, 0x7f0b0133

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Landroid/widget/Button;

    .line 149
    .line 150
    const v2, 0x7f0b00b0

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Landroid/widget/Button;

    .line 158
    .line 159
    new-instance v2, Lb7/L1;

    .line 160
    .line 161
    const/4 v3, 0x3

    .line 162
    invoke-direct {v2, v4, p1, v3}, Lb7/L1;-><init>(Lpe/hf/black20/UsersHistoryActivity;Landroid/app/AlertDialog;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Lb7/q1;

    .line 169
    .line 170
    const/4 v11, 0x1

    .line 171
    move-object v5, v0

    .line 172
    move-object v6, v4

    .line 173
    move-object v10, p1

    .line 174
    invoke-direct/range {v5 .. v11}, Lb7/q1;-><init>(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/Object;Ljava/lang/String;Landroid/app/AlertDialog;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 181
    .line 182
    .line 183
    iget-object p1, v4, Lpe/hf/black20/UsersHistoryActivity;->V:Landroid/app/AlertDialog;

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_1
    check-cast v4, Lpe/hf/black20/UsersHistoryActivity;

    .line 191
    .line 192
    iget-object p1, v4, Lpe/hf/black20/UsersHistoryActivity;->J:Lc7/a;

    .line 193
    .line 194
    check-cast v3, Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {p1, v3}, Lc7/a;->f0(Ljava/lang/String;)Lh7/i;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iput-object p1, v4, Lpe/hf/black20/UsersHistoryActivity;->N:Lh7/i;

    .line 201
    .line 202
    iget-object p1, v4, Lpe/hf/black20/UsersHistoryActivity;->J:Lc7/a;

    .line 203
    .line 204
    invoke-virtual {p1, v3}, Lc7/a;->c0(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object p1, v4, Lpe/hf/black20/UsersHistoryActivity;->K:Lc7/d;

    .line 208
    .line 209
    iget-object v0, v4, Lpe/hf/black20/UsersHistoryActivity;->N:Lh7/i;

    .line 210
    .line 211
    iget-object v0, v0, Lh7/i;->a:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    filled-new-array {v0}, [Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const-string v1, "fav"

    .line 222
    .line 223
    const-string v2, "stream_type =?"

    .line 224
    .line 225
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 229
    .line 230
    .line 231
    iget-object p1, v4, Lpe/hf/black20/UsersHistoryActivity;->L:Lc7/b;

    .line 232
    .line 233
    iget-object v0, v4, Lpe/hf/black20/UsersHistoryActivity;->N:Lh7/i;

    .line 234
    .line 235
    iget-object v0, v0, Lh7/i;->a:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    const-string v2, "DELETE FROM parental_control_tv WHERE parent_id=?"

    .line 242
    .line 243
    filled-new-array {v0}, [Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    invoke-virtual {v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 252
    .line 253
    .line 254
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    const-string v2, "DELETE FROM parental_control_vod WHERE parent_id=?"

    .line 262
    .line 263
    filled-new-array {v0}, [Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-virtual {v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 272
    .line 273
    .line 274
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    const-string v1, "DELETE FROM parental_control_series WHERE parent_id=?"

    .line 282
    .line 283
    filled-new-array {v0}, [Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 292
    .line 293
    .line 294
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 295
    .line 296
    .line 297
    iget-object p1, v4, Lpe/hf/black20/UsersHistoryActivity;->M:Lc7/c;

    .line 298
    .line 299
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    filled-new-array {v3}, [Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    const-string v1, "multiscreen"

    .line 308
    .line 309
    const-string v2, "profile = ?"

    .line 310
    .line 311
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4}, Lpe/hf/black20/UsersHistoryActivity;->d()V

    .line 318
    .line 319
    .line 320
    iget-object p1, v4, Lpe/hf/black20/UsersHistoryActivity;->V:Landroid/app/AlertDialog;

    .line 321
    .line 322
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 323
    .line 324
    .line 325
    :goto_0
    return-void

    .line 326
    :pswitch_1
    check-cast v5, Ljava/lang/String;

    .line 327
    .line 328
    const-string p1, "clearcache"

    .line 329
    .line 330
    if-ne v5, p1, :cond_2

    .line 331
    .line 332
    sget-object p1, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 333
    .line 334
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->z(Landroid/content/Context;)V

    .line 335
    .line 336
    .line 337
    check-cast v4, Lpe/hf/black20/SettingsMenuActivity;

    .line 338
    .line 339
    sget p1, Lpe/hf/black20/SettingsMenuActivity;->W:I

    .line 340
    .line 341
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    new-instance p1, Landroid/content/Intent;

    .line 345
    .line 346
    sget-object v0, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 347
    .line 348
    const-class v1, Lpe/hf/black20/SplashActivity;

    .line 349
    .line 350
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    .line 352
    .line 353
    const v0, 0x10008000

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 357
    .line 358
    .line 359
    sget-object v0, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 360
    .line 361
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 362
    .line 363
    .line 364
    check-cast v3, Landroid/app/AlertDialog;

    .line 365
    .line 366
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 367
    .line 368
    .line 369
    goto :goto_1

    .line 370
    :cond_2
    check-cast v3, Landroid/app/AlertDialog;

    .line 371
    .line 372
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 373
    .line 374
    .line 375
    :goto_1
    return-void

    .line 376
    :pswitch_2
    check-cast v5, Landroid/widget/EditText;

    .line 377
    .line 378
    invoke-static {v5}, La/r;->s(Landroid/widget/EditText;)Z

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    if-eqz p1, :cond_3

    .line 383
    .line 384
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 385
    .line 386
    .line 387
    goto :goto_2

    .line 388
    :cond_3
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    check-cast v4, Lb7/O0;

    .line 397
    .line 398
    iget-object v0, v4, Lb7/O0;->H:Lb7/S0;

    .line 399
    .line 400
    iget-object v0, v0, Lb7/S0;->E0:Lc7/d;

    .line 401
    .line 402
    invoke-virtual {v0, p1}, Lc7/d;->g0(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    iget-object p1, v4, Lb7/O0;->H:Lb7/S0;

    .line 406
    .line 407
    invoke-static {p1}, Lb7/S0;->S(Lb7/S0;)V

    .line 408
    .line 409
    .line 410
    check-cast v3, Landroid/app/AlertDialog;

    .line 411
    .line 412
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 413
    .line 414
    .line 415
    :goto_2
    return-void

    .line 416
    :pswitch_3
    check-cast v5, Landroid/widget/EditText;

    .line 417
    .line 418
    invoke-static {v5}, La/r;->s(Landroid/widget/EditText;)Z

    .line 419
    .line 420
    .line 421
    move-result p1

    .line 422
    if-eqz p1, :cond_4

    .line 423
    .line 424
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 425
    .line 426
    .line 427
    goto :goto_3

    .line 428
    :cond_4
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    check-cast v4, Lb7/J0;

    .line 437
    .line 438
    iget-object v0, v4, Lb7/J0;->H:Lb7/M0;

    .line 439
    .line 440
    iget-object v0, v0, Lb7/M0;->I0:Lc7/d;

    .line 441
    .line 442
    invoke-virtual {v0, p1}, Lc7/d;->g0(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    iget-object p1, v4, Lb7/J0;->H:Lb7/M0;

    .line 446
    .line 447
    invoke-static {p1}, Lb7/M0;->S(Lb7/M0;)V

    .line 448
    .line 449
    .line 450
    check-cast v3, Landroid/app/AlertDialog;

    .line 451
    .line 452
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 453
    .line 454
    .line 455
    :goto_3
    return-void

    .line 456
    :pswitch_4
    check-cast v5, Landroid/widget/EditText;

    .line 457
    .line 458
    invoke-static {v5}, La/r;->s(Landroid/widget/EditText;)Z

    .line 459
    .line 460
    .line 461
    move-result p1

    .line 462
    if-eqz p1, :cond_5

    .line 463
    .line 464
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 465
    .line 466
    .line 467
    goto :goto_4

    .line 468
    :cond_5
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    check-cast v4, Lb7/B0;

    .line 477
    .line 478
    iget-object v0, v4, Lb7/B0;->H:Lb7/I0;

    .line 479
    .line 480
    iget-object v0, v0, Lb7/I0;->E0:Lc7/d;

    .line 481
    .line 482
    invoke-virtual {v0, p1}, Lc7/d;->g0(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    iget-object p1, v4, Lb7/B0;->H:Lb7/I0;

    .line 486
    .line 487
    invoke-static {p1}, Lb7/I0;->S(Lb7/I0;)V

    .line 488
    .line 489
    .line 490
    check-cast v3, Landroid/app/AlertDialog;

    .line 491
    .line 492
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 493
    .line 494
    .line 495
    :goto_4
    return-void

    .line 496
    :pswitch_5
    check-cast v5, Landroid/widget/EditText;

    .line 497
    .line 498
    invoke-static {v5}, La/r;->s(Landroid/widget/EditText;)Z

    .line 499
    .line 500
    .line 501
    move-result p1

    .line 502
    if-eqz p1, :cond_6

    .line 503
    .line 504
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 505
    .line 506
    .line 507
    goto :goto_5

    .line 508
    :cond_6
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    check-cast v4, Lb7/x;

    .line 517
    .line 518
    iget-object v0, v4, Lb7/x;->H:Lpe/hf/black20/ChannelListActivity;

    .line 519
    .line 520
    iget-object v0, v0, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 521
    .line 522
    invoke-virtual {v0, p1}, Lc7/d;->g0(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    iget-object p1, v4, Lb7/x;->H:Lpe/hf/black20/ChannelListActivity;

    .line 526
    .line 527
    invoke-static {p1}, Lpe/hf/black20/ChannelListActivity;->a(Lpe/hf/black20/ChannelListActivity;)V

    .line 528
    .line 529
    .line 530
    check-cast v3, Landroid/app/AlertDialog;

    .line 531
    .line 532
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 533
    .line 534
    .line 535
    :goto_5
    return-void

    .line 536
    :pswitch_6
    check-cast v4, LW4/e;

    .line 537
    .line 538
    iget-object p1, v4, LW4/e;->G:LV4/D;

    .line 539
    .line 540
    if-nez p1, :cond_b

    .line 541
    .line 542
    check-cast v3, Landroid/app/Activity;

    .line 543
    .line 544
    check-cast v5, Ld5/a;

    .line 545
    .line 546
    iget-object p1, v5, Ld5/a;->a:Ljava/lang/String;

    .line 547
    .line 548
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    const/high16 v2, 0x10000000

    .line 553
    .line 554
    const/high16 v5, 0x40000000    # 2.0f

    .line 555
    .line 556
    if-nez p1, :cond_7

    .line 557
    .line 558
    goto :goto_6

    .line 559
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v6

    .line 563
    if-eqz v6, :cond_9

    .line 564
    .line 565
    const-string v7, "http"

    .line 566
    .line 567
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 568
    .line 569
    .line 570
    move-result v7

    .line 571
    if-nez v7, :cond_8

    .line 572
    .line 573
    const-string v7, "https"

    .line 574
    .line 575
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 576
    .line 577
    .line 578
    move-result v6

    .line 579
    if-eqz v6, :cond_9

    .line 580
    .line 581
    :cond_8
    new-instance v6, Landroid/content/Intent;

    .line 582
    .line 583
    const-string v7, "android.support.customtabs.action.CustomTabsService"

    .line 584
    .line 585
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    const-string v7, "com.android.chrome"

    .line 589
    .line 590
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 594
    .line 595
    .line 596
    move-result-object v7

    .line 597
    invoke-virtual {v7, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 598
    .line 599
    .line 600
    move-result-object v6

    .line 601
    if-eqz v6, :cond_9

    .line 602
    .line 603
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 604
    .line 605
    .line 606
    move-result v6

    .line 607
    if-nez v6, :cond_9

    .line 608
    .line 609
    new-instance v1, Lo/g;

    .line 610
    .line 611
    invoke-direct {v1}, Lo/g;-><init>()V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v1}, Lo/g;->a()Lm2/l;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    iget-object v6, v1, Lm2/l;->H:Ljava/lang/Object;

    .line 619
    .line 620
    check-cast v6, Landroid/content/Intent;

    .line 621
    .line 622
    invoke-virtual {v6, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v6, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v1, v3, p1}, Lm2/l;->l(Landroid/content/Context;Landroid/net/Uri;)V

    .line 629
    .line 630
    .line 631
    goto :goto_7

    .line 632
    :cond_9
    :goto_6
    new-instance v6, Landroid/content/Intent;

    .line 633
    .line 634
    const-string v7, "android.intent.action.VIEW"

    .line 635
    .line 636
    invoke-direct {v6, v7, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 640
    .line 641
    .line 642
    move-result-object p1

    .line 643
    invoke-virtual {p1, v6, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 644
    .line 645
    .line 646
    move-result-object p1

    .line 647
    invoke-virtual {v6, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v6, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 651
    .line 652
    .line 653
    if-eqz p1, :cond_a

    .line 654
    .line 655
    invoke-virtual {v3, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 656
    .line 657
    .line 658
    goto :goto_7

    .line 659
    :cond_a
    const-string p1, "Device cannot resolve intent for: android.intent.action.VIEW"

    .line 660
    .line 661
    invoke-static {p1}, Ly4/k;->V(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    :goto_7
    invoke-virtual {v4, v3}, LW4/e;->a(Landroid/app/Activity;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 668
    .line 669
    .line 670
    iput-object v0, v4, LW4/e;->G:LV4/D;

    .line 671
    .line 672
    return-void

    .line 673
    :cond_b
    const-string p1, "Calling callback for click action"

    .line 674
    .line 675
    invoke-static {p1}, Ly4/k;->W(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    iget-object p1, v4, LW4/e;->G:LV4/D;

    .line 679
    .line 680
    check-cast p1, LM1/a;

    .line 681
    .line 682
    invoke-virtual {p1}, LM1/a;->c()V

    .line 683
    .line 684
    .line 685
    throw v0

    .line 686
    nop

    .line 687
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
