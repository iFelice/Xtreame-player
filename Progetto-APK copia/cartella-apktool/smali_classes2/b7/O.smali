.class public final synthetic Lb7/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/LoginActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/LoginActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/O;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/O;->H:Lpe/hf/black20/LoginActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget p1, p0, Lb7/O;->G:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lb7/O;->H:Lpe/hf/black20/LoginActivity;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object p1, Lpe/hf/black20/LoginActivity;->N0:Landroid/widget/Button;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object p1, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "no"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2}, Lpe/hf/black20/LoginActivity;->n()V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object p1, v2, Lpe/hf/black20/LoginActivity;->L:Lpe/hf/black20/LoginActivity;

    .line 31
    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const v3, 0x7f0e012b

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 44
    .line 45
    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 57
    .line 58
    const-string v4, "#99000000"

    .line 59
    .line 60
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 65
    .line 66
    .line 67
    const v4, 0x7f0b013b

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v3, p1, v0, v4}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroid/widget/Button;

    .line 75
    .line 76
    const v3, 0x7f0b00d0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Landroid/widget/Button;

    .line 84
    .line 85
    const v4, 0x7f0b00e5

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Landroid/widget/Button;

    .line 93
    .line 94
    const v5, 0x7f0b009d

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    check-cast v5, Landroid/widget/Button;

    .line 102
    .line 103
    const v6, 0x7f0b00d2

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    check-cast v6, Landroid/widget/Button;

    .line 111
    .line 112
    const v7, 0x7f0b02a8

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    check-cast v7, Landroid/widget/ImageView;

    .line 120
    .line 121
    iput-object v7, v2, Lpe/hf/black20/LoginActivity;->j0:Landroid/widget/ImageView;

    .line 122
    .line 123
    const v7, 0x7f0b0291

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    check-cast v7, Landroid/widget/ImageView;

    .line 131
    .line 132
    iput-object v7, v2, Lpe/hf/black20/LoginActivity;->k0:Landroid/widget/ImageView;

    .line 133
    .line 134
    const v7, 0x7f0b0298

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    check-cast v7, Landroid/widget/ImageView;

    .line 142
    .line 143
    iput-object v7, v2, Lpe/hf/black20/LoginActivity;->l0:Landroid/widget/ImageView;

    .line 144
    .line 145
    const v7, 0x7f0b029c

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Landroid/widget/ImageView;

    .line 153
    .line 154
    iput-object v0, v2, Lpe/hf/black20/LoginActivity;->m0:Landroid/widget/ImageView;

    .line 155
    .line 156
    invoke-virtual {v2}, Lpe/hf/black20/LoginActivity;->q()V

    .line 157
    .line 158
    .line 159
    new-instance v0, Lb7/Q;

    .line 160
    .line 161
    const/4 v7, 0x5

    .line 162
    invoke-direct {v0, v2, p1, v7}, Lb7/Q;-><init>(Lpe/hf/black20/LoginActivity;Landroid/app/AlertDialog;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Lb7/Q;

    .line 169
    .line 170
    const/4 v1, 0x6

    .line 171
    invoke-direct {v0, v2, p1, v1}, Lb7/Q;-><init>(Lpe/hf/black20/LoginActivity;Landroid/app/AlertDialog;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    .line 177
    new-instance v0, Lb7/Q;

    .line 178
    .line 179
    const/4 v1, 0x7

    .line 180
    invoke-direct {v0, v2, p1, v1}, Lb7/Q;-><init>(Lpe/hf/black20/LoginActivity;Landroid/app/AlertDialog;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    new-instance v0, Lb7/Q;

    .line 187
    .line 188
    const/16 v1, 0x8

    .line 189
    .line 190
    invoke-direct {v0, v2, p1, v1}, Lb7/Q;-><init>(Lpe/hf/black20/LoginActivity;Landroid/app/AlertDialog;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Lb7/Q;

    .line 197
    .line 198
    const/16 v1, 0x9

    .line 199
    .line 200
    invoke-direct {v0, v2, p1, v1}, Lb7/Q;-><init>(Lpe/hf/black20/LoginActivity;Landroid/app/AlertDialog;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 207
    .line 208
    .line 209
    :goto_0
    return-void

    .line 210
    :pswitch_0
    iget-object p1, v2, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 211
    .line 212
    const-string v3, "login_type"

    .line 213
    .line 214
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    const-string v4, "activation"

    .line 219
    .line 220
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-eqz p1, :cond_1

    .line 225
    .line 226
    sget-object p1, Lpe/hf/black20/LoginActivity;->Q0:Landroid/widget/EditText;

    .line 227
    .line 228
    sget-object v4, Lpe/hf/black20/LoginActivity;->R0:Landroid/widget/EditText;

    .line 229
    .line 230
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_1
    iget-object p1, v2, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 243
    .line 244
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    const-string v4, "mac"

    .line 249
    .line 250
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    if-eqz p1, :cond_2

    .line 255
    .line 256
    sget-object p1, Lpe/hf/black20/LoginActivity;->Q0:Landroid/widget/EditText;

    .line 257
    .line 258
    iget-object v5, v2, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 259
    .line 260
    invoke-interface {v5, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    .line 266
    .line 267
    sget-object p1, Lpe/hf/black20/LoginActivity;->R0:Landroid/widget/EditText;

    .line 268
    .line 269
    iget-object v5, v2, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 270
    .line 271
    invoke-interface {v5, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    .line 277
    .line 278
    :cond_2
    :goto_1
    iget-object p1, v2, Lpe/hf/black20/LoginActivity;->L:Lpe/hf/black20/LoginActivity;

    .line 279
    .line 280
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->Q(Landroid/content/ContextWrapper;)Z

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-eqz v4, :cond_11

    .line 285
    .line 286
    iget-object v4, v2, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 287
    .line 288
    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    const-string v4, "activationXOR"

    .line 293
    .line 294
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    const v4, 0x7f1301f8

    .line 299
    .line 300
    .line 301
    if-eqz v3, :cond_4

    .line 302
    .line 303
    sget-object v3, Lpe/hf/black20/LoginActivity;->R0:Landroid/widget/EditText;

    .line 304
    .line 305
    invoke-static {v3}, La/r;->s(Landroid/widget/EditText;)Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-eqz v3, :cond_3

    .line 310
    .line 311
    sget-object v0, Lpe/hf/black20/LoginActivity;->R0:Landroid/widget/EditText;

    .line 312
    .line 313
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_3

    .line 321
    .line 322
    :cond_3
    iget-object p1, v2, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 323
    .line 324
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    sget-object v3, Lpe/hf/black20/LoginActivity;->R0:Landroid/widget/EditText;

    .line 329
    .line 330
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-static {v3}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    const-string v4, "xco_activation_cod"

    .line 343
    .line 344
    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    .line 346
    .line 347
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 348
    .line 349
    .line 350
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 351
    .line 352
    .line 353
    new-instance p1, Lb7/S;

    .line 354
    .line 355
    invoke-direct {p1, v2, v1}, Lb7/S;-><init>(Lpe/hf/black20/LoginActivity;Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    new-array v0, v0, [Ljava/lang/Void;

    .line 359
    .line 360
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 361
    .line 362
    .line 363
    goto/16 :goto_3

    .line 364
    .line 365
    :cond_4
    sget-object v0, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 366
    .line 367
    const-string v3, "yes"

    .line 368
    .line 369
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    const v6, 0x7f13021a

    .line 374
    .line 375
    .line 376
    if-eqz v5, :cond_5

    .line 377
    .line 378
    sget-object v5, Lpe/hf/black20/LoginActivity;->P0:Landroid/widget/EditText;

    .line 379
    .line 380
    invoke-static {v5}, La/r;->s(Landroid/widget/EditText;)Z

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-eqz v5, :cond_5

    .line 385
    .line 386
    sget-object v0, Lpe/hf/black20/LoginActivity;->P0:Landroid/widget/EditText;

    .line 387
    .line 388
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 393
    .line 394
    .line 395
    sget-object p1, Lpe/hf/black20/LoginActivity;->P0:Landroid/widget/EditText;

    .line 396
    .line 397
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 398
    .line 399
    .line 400
    goto/16 :goto_3

    .line 401
    .line 402
    :cond_5
    const-string v5, "ORT_WHICH_PANEL"

    .line 403
    .line 404
    const-string v7, "xtreamcodes"

    .line 405
    .line 406
    const-string v8, "m3u"

    .line 407
    .line 408
    invoke-static {v5, v7, v8}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    if-eqz v5, :cond_6

    .line 413
    .line 414
    sget-object v5, Lpe/hf/black20/LoginActivity;->Q0:Landroid/widget/EditText;

    .line 415
    .line 416
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    .line 418
    .line 419
    sget-object v5, Lpe/hf/black20/LoginActivity;->R0:Landroid/widget/EditText;

    .line 420
    .line 421
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    .line 423
    .line 424
    :cond_6
    sget-object v5, Lpe/hf/black20/LoginActivity;->Q0:Landroid/widget/EditText;

    .line 425
    .line 426
    invoke-static {v5}, La/r;->s(Landroid/widget/EditText;)Z

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    if-eqz v5, :cond_7

    .line 431
    .line 432
    sget-object v0, Lpe/hf/black20/LoginActivity;->Q0:Landroid/widget/EditText;

    .line 433
    .line 434
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_3

    .line 442
    .line 443
    :cond_7
    sget-object v5, Lpe/hf/black20/LoginActivity;->R0:Landroid/widget/EditText;

    .line 444
    .line 445
    invoke-static {v5}, La/r;->s(Landroid/widget/EditText;)Z

    .line 446
    .line 447
    .line 448
    move-result v5

    .line 449
    if-eqz v5, :cond_8

    .line 450
    .line 451
    sget-object v0, Lpe/hf/black20/LoginActivity;->R0:Landroid/widget/EditText;

    .line 452
    .line 453
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 458
    .line 459
    .line 460
    goto/16 :goto_3

    .line 461
    .line 462
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result p1

    .line 466
    if-eqz p1, :cond_9

    .line 467
    .line 468
    sget-object p1, Lpe/hf/black20/LoginActivity;->Q0:Landroid/widget/EditText;

    .line 469
    .line 470
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    iput-object p1, v2, Lpe/hf/black20/LoginActivity;->c0:Ljava/lang/String;

    .line 479
    .line 480
    sget-object p1, Lpe/hf/black20/LoginActivity;->R0:Landroid/widget/EditText;

    .line 481
    .line 482
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    iput-object p1, v2, Lpe/hf/black20/LoginActivity;->d0:Ljava/lang/String;

    .line 491
    .line 492
    sget-object p1, Lpe/hf/black20/LoginActivity;->P0:Landroid/widget/EditText;

    .line 493
    .line 494
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    iput-object p1, v2, Lpe/hf/black20/LoginActivity;->e0:Ljava/lang/String;

    .line 503
    .line 504
    new-instance p1, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    const-string v0, "Default "

    .line 507
    .line 508
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    iget-object v0, v2, Lpe/hf/black20/LoginActivity;->v0:Ljava/lang/String;

    .line 512
    .line 513
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    goto/16 :goto_2

    .line 521
    .line 522
    :cond_9
    sget-object p1, Lpe/hf/black20/LoginActivity;->Q0:Landroid/widget/EditText;

    .line 523
    .line 524
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    iput-object p1, v2, Lpe/hf/black20/LoginActivity;->c0:Ljava/lang/String;

    .line 533
    .line 534
    sget-object p1, Lpe/hf/black20/LoginActivity;->R0:Landroid/widget/EditText;

    .line 535
    .line 536
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object p1

    .line 544
    iput-object p1, v2, Lpe/hf/black20/LoginActivity;->d0:Ljava/lang/String;

    .line 545
    .line 546
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    const-string v0, "ORT_PROFILE"

    .line 551
    .line 552
    const-string v4, "Default (XC)"

    .line 553
    .line 554
    invoke-virtual {p1, v0, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object p1

    .line 558
    const-string v5, "PANEL 1"

    .line 559
    .line 560
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 561
    .line 562
    .line 563
    move-result p1

    .line 564
    const-string v5, "PANEL 1 "

    .line 565
    .line 566
    const-string v6, "portal"

    .line 567
    .line 568
    if-eqz p1, :cond_a

    .line 569
    .line 570
    new-instance p1, Ljava/lang/StringBuilder;

    .line 571
    .line 572
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    iget-object v0, v2, Lpe/hf/black20/LoginActivity;->v0:Ljava/lang/String;

    .line 576
    .line 577
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    iget-object v0, v2, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 585
    .line 586
    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    iput-object v0, v2, Lpe/hf/black20/LoginActivity;->e0:Ljava/lang/String;

    .line 591
    .line 592
    goto/16 :goto_2

    .line 593
    .line 594
    :cond_a
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    invoke-virtual {p1, v0, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object p1

    .line 602
    const-string v7, "PANEL 2"

    .line 603
    .line 604
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 605
    .line 606
    .line 607
    move-result p1

    .line 608
    if-eqz p1, :cond_b

    .line 609
    .line 610
    new-instance p1, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    const-string v0, "PANEL 2 "

    .line 613
    .line 614
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    iget-object v0, v2, Lpe/hf/black20/LoginActivity;->v0:Ljava/lang/String;

    .line 618
    .line 619
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object p1

    .line 626
    iget-object v0, v2, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 627
    .line 628
    const-string v3, "portal2"

    .line 629
    .line 630
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    iput-object v0, v2, Lpe/hf/black20/LoginActivity;->e0:Ljava/lang/String;

    .line 635
    .line 636
    goto/16 :goto_2

    .line 637
    .line 638
    :cond_b
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 639
    .line 640
    .line 641
    move-result-object p1

    .line 642
    invoke-virtual {p1, v0, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object p1

    .line 646
    const-string v7, "PANEL 3"

    .line 647
    .line 648
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 649
    .line 650
    .line 651
    move-result p1

    .line 652
    if-eqz p1, :cond_c

    .line 653
    .line 654
    new-instance p1, Ljava/lang/StringBuilder;

    .line 655
    .line 656
    const-string v0, "PANEL 3 "

    .line 657
    .line 658
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    iget-object v0, v2, Lpe/hf/black20/LoginActivity;->v0:Ljava/lang/String;

    .line 662
    .line 663
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object p1

    .line 670
    iget-object v0, v2, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 671
    .line 672
    const-string v3, "portal3"

    .line 673
    .line 674
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    iput-object v0, v2, Lpe/hf/black20/LoginActivity;->e0:Ljava/lang/String;

    .line 679
    .line 680
    goto/16 :goto_2

    .line 681
    .line 682
    :cond_c
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 683
    .line 684
    .line 685
    move-result-object p1

    .line 686
    invoke-virtual {p1, v0, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object p1

    .line 690
    const-string v7, "PANEL 4"

    .line 691
    .line 692
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 693
    .line 694
    .line 695
    move-result p1

    .line 696
    if-eqz p1, :cond_d

    .line 697
    .line 698
    new-instance p1, Ljava/lang/StringBuilder;

    .line 699
    .line 700
    const-string v0, "PANEL 4 "

    .line 701
    .line 702
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    iget-object v0, v2, Lpe/hf/black20/LoginActivity;->v0:Ljava/lang/String;

    .line 706
    .line 707
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object p1

    .line 714
    iget-object v0, v2, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 715
    .line 716
    const-string v3, "portal4"

    .line 717
    .line 718
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    iput-object v0, v2, Lpe/hf/black20/LoginActivity;->e0:Ljava/lang/String;

    .line 723
    .line 724
    goto/16 :goto_2

    .line 725
    .line 726
    :cond_d
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 727
    .line 728
    .line 729
    move-result-object p1

    .line 730
    invoke-virtual {p1, v0, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object p1

    .line 734
    const-string v7, "PANEL 5"

    .line 735
    .line 736
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 737
    .line 738
    .line 739
    move-result p1

    .line 740
    if-eqz p1, :cond_e

    .line 741
    .line 742
    new-instance p1, Ljava/lang/StringBuilder;

    .line 743
    .line 744
    const-string v0, "PANEL 5 "

    .line 745
    .line 746
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    iget-object v0, v2, Lpe/hf/black20/LoginActivity;->v0:Ljava/lang/String;

    .line 750
    .line 751
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object p1

    .line 758
    iget-object v0, v2, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 759
    .line 760
    const-string v3, "portal5"

    .line 761
    .line 762
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    iput-object v0, v2, Lpe/hf/black20/LoginActivity;->e0:Ljava/lang/String;

    .line 767
    .line 768
    goto :goto_2

    .line 769
    :cond_e
    iget-object p1, v2, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 770
    .line 771
    const-string v7, "xciptv_profile"

    .line 772
    .line 773
    invoke-interface {p1, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 774
    .line 775
    .line 776
    move-result p1

    .line 777
    if-eqz p1, :cond_10

    .line 778
    .line 779
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 780
    .line 781
    .line 782
    move-result-object p1

    .line 783
    iget-object v5, v2, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 784
    .line 785
    invoke-interface {v5, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v5

    .line 789
    invoke-virtual {p1, v0, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 790
    .line 791
    .line 792
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 793
    .line 794
    .line 795
    move-result-object p1

    .line 796
    invoke-virtual {p1, v0, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object p1

    .line 800
    iget-object v5, v2, Lpe/hf/black20/LoginActivity;->G:Lc7/a;

    .line 801
    .line 802
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 803
    .line 804
    .line 805
    move-result-object v7

    .line 806
    invoke-virtual {v7, v0, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v7

    .line 810
    invoke-virtual {v5, v7}, Lc7/a;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v5

    .line 814
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v3

    .line 818
    if-eqz v3, :cond_f

    .line 819
    .line 820
    iget-object v1, v2, Lpe/hf/black20/LoginActivity;->G:Lc7/a;

    .line 821
    .line 822
    invoke-static {v0, v4, v1}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    iput-object v0, v2, Lpe/hf/black20/LoginActivity;->I:Lh7/i;

    .line 827
    .line 828
    iget-object v0, v0, Lh7/i;->e:Ljava/lang/String;

    .line 829
    .line 830
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    iput-object v0, v2, Lpe/hf/black20/LoginActivity;->e0:Ljava/lang/String;

    .line 835
    .line 836
    goto :goto_2

    .line 837
    :cond_f
    iget-object v0, v2, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 838
    .line 839
    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    iput-object v0, v2, Lpe/hf/black20/LoginActivity;->e0:Ljava/lang/String;

    .line 844
    .line 845
    goto :goto_2

    .line 846
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 847
    .line 848
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    iget-object v0, v2, Lpe/hf/black20/LoginActivity;->v0:Ljava/lang/String;

    .line 852
    .line 853
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object p1

    .line 860
    iget-object v0, v2, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 861
    .line 862
    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    iput-object v0, v2, Lpe/hf/black20/LoginActivity;->e0:Ljava/lang/String;

    .line 867
    .line 868
    :goto_2
    invoke-virtual {v2, p1}, Lpe/hf/black20/LoginActivity;->p(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    goto :goto_3

    .line 872
    :cond_11
    const v0, 0x7f13016a

    .line 873
    .line 874
    .line 875
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    invoke-static {p1, v0}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    :goto_3
    return-void

    .line 883
    :pswitch_1
    iget-boolean p1, v2, Lpe/hf/black20/LoginActivity;->x0:Z

    .line 884
    .line 885
    if-eqz p1, :cond_12

    .line 886
    .line 887
    iget-object p1, v2, Lpe/hf/black20/LoginActivity;->w0:Landroid/widget/ImageButton;

    .line 888
    .line 889
    const v1, 0x7f08097c

    .line 890
    .line 891
    .line 892
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 893
    .line 894
    .line 895
    sget-object p1, Lpe/hf/black20/LoginActivity;->R0:Landroid/widget/EditText;

    .line 896
    .line 897
    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    .line 898
    .line 899
    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 900
    .line 901
    .line 902
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 903
    .line 904
    .line 905
    iput-boolean v0, v2, Lpe/hf/black20/LoginActivity;->x0:Z

    .line 906
    .line 907
    goto :goto_4

    .line 908
    :cond_12
    iget-object p1, v2, Lpe/hf/black20/LoginActivity;->w0:Landroid/widget/ImageButton;

    .line 909
    .line 910
    const v0, 0x7f08097d

    .line 911
    .line 912
    .line 913
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 914
    .line 915
    .line 916
    sget-object p1, Lpe/hf/black20/LoginActivity;->R0:Landroid/widget/EditText;

    .line 917
    .line 918
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 919
    .line 920
    .line 921
    const/4 p1, 0x1

    .line 922
    iput-boolean p1, v2, Lpe/hf/black20/LoginActivity;->x0:Z

    .line 923
    .line 924
    :goto_4
    return-void

    .line 925
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
